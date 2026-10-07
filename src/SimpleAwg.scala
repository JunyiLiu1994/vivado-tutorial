package vivado.tutorial

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.misc.SizeMapping

/** Step 3: a minimal arbitrary waveform generator on the RF Data Converter.
  *
  * Every channel owns a pulse memory (1024 x 256 bit = 16384 DAC samples) and a timer. Writing a
  * duration (in 500 MHz cycles) starts the channel: while the timer runs, the pulse memory is
  * streamed to the DAC, one 256-bit word (16 samples) per cycle, wrapping around at the end of the
  * memory so a long duration repeats the waveform. While any channel plays, every ADC stream is
  * recorded into a record buffer (1024 x 64 bit = 4096 ADC samples), so a DAC looped back into an
  * ADC can be read back by the processor.
  *
  * The processor talks to the design over one AXI4 slave (host clock), the converters run on the
  * 500 MHz `dspClk`. The two clock domains meet in dual-clock block RAMs and toggle synchronisers.
  *
  * Memory map (S_AXI at 0x8000_0000, 4 MB, see fpga/script/SimpleAwg.tcl):
  * {{{
  *   0x8000_0000 + 4*c              W  duration of channel c in dspClk cycles; writing starts it
  *   0x8000_0040                    R  number of 64-bit words recorded since the last start
  *   0x8000_0044                    R  bit c = channel c is playing
  *   0x8010_0000 + 0x8000*c  (32 KB) W  pulse memory of channel c, 16-bit samples, oldest first
  *   0x8020_0000 + 0x2000*c  ( 8 KB) R  record buffer of ADC c, 16-bit samples, oldest first
  * }}}
  */
case class SimpleAwg(channels: Int = 16) extends Component {
  val io = new Bundle {
    val axi = slave(Axi4(Axi4Config(addressWidth = 32, dataWidth = 32, idWidth = 2)))
    val dac = Vec.fill(channels)(master(Stream(Bits(256 bits))))
    val adc = Vec.fill(channels)(slave(Stream(Bits(64 bits))))
    val led = out Bits (8 bits)
  }
  val dspClk, dspRst = in Bool ()

  val hostCd = ClockDomain.current
  val dspCd = ClockDomain(dspClk, dspRst)
  val dacNames = (0 until channels).map(c => s"DAC${c}_AXIS")
  val adcNames = (0 until channels).map(c => s"ADC${c}_AXIS")
  VivadoHelper.clockDomain(hostCd, "S_AXI")
  VivadoHelper.clock(dspClk, "dspClk", dspRst, "dspRst", 500000000, (dacNames ++ adcNames): _*)
  VivadoHelper.axi4(io.axi, "S_AXI")
  for (c <- 0 until channels) {
    VivadoHelper.axis(io.dac(c), dacNames(c))
    VivadoHelper.axis(io.adc(c), adcNames(c))
    io.dac(c).valid := True
    io.adc(c).ready := True
  }

  val pulseMems = List.fill(channels)(Mem(Bits(256 bits), 1024).addAttribute("ram_style", "block"))
  val recordMems = List.fill(channels)(Mem(Bits(64 bits), 1024).addAttribute("ram_style", "block"))

  // ---- host side (pl_clk0) -------------------------------------------------------------------
  val base = 0x80000000L
  val factory = Axi4SlaveFactory(io.axi)
  val starts = (0 until channels).map(c => factory.createAndDriveFlow(UInt(32 bits), base + 4 * c))
  for (c <- 0 until channels) {
    factory.writeMemMultiWord(pulseMems(c), base + 0x100000 + c * 0x8000)

    // read the 64-bit record buffer as two 32-bit words (the library helper does not know the
    // memory is written from another clock domain, so this is spelled out here)
    val mapping = SizeMapping(base + 0x200000 + c * 0x2000, 0x2000)
    val byteAddr = factory.readAddress(mapping)
    val word = recordMems(c).readSync((byteAddr >> 3).resized, clockCrossing = true)
    factory.multiCycleRead(mapping, 2)
    factory.readPrimitive(word.subdivideIn(32 bits)(byteAddr(2).asUInt), mapping, 0, null)
  }

  // ---- converter side (dspClk) ---------------------------------------------------------------
  val dsp = new ClockingArea(dspCd) {
    val chans = for (c <- 0 until channels) yield new Area {
      val start = starts(c).ccToggle(hostCd, dspCd)
      val timer = Reg(UInt(32 bits)) init 0
      val addr = Reg(UInt(10 bits)) init 0
      val fire = RegNext(timer =/= 0) init False
      when(start.valid) {
        timer := start.payload
        addr := 0
      } elsewhen (timer =/= 0) {
        timer := timer - 1
      }
      when(fire) {
        addr := addr + 1
      }
      val sample = pulseMems(c).readSync(addr, clockCrossing = true) // 1 cycle after addr
      // two registers: Vivado folds the first into the block RAM, the second lands next to the converter
      io.dac(c).payload := RegNext(RegNext(Mux(RegNext(fire), sample, B(0, 256 bits))))
    }

    // record all ADCs from the first start until the record buffers are full
    val anyStart = chans.map(_.start.valid).orR
    val anyFire = RegNext(chans.map(_.fire).orR) init False
    anyFire.addAttribute("MAX_FANOUT", "64")
    val recAddr = Reg(UInt(11 bits)) init 1024 // bit 10 set = buffer full
    val recording = anyFire && !recAddr.msb
    when(anyStart) {
      recAddr := 0
    } elsewhen (recording) {
      recAddr := recAddr + 1
    }
    val recWrite = RegNext(recording) init False
    val recWrAddr = RegNext(recAddr(9 downto 0))
    for (c <- 0 until channels) {
      val adcWord = RegNext(io.adc(c).payload) // a register next to the converter eases the 2 ns budget
      recordMems(c).write(recWrAddr, adcWord, enable = recWrite)
    }

    // LED c toggles every time channel c starts playing
    val led = Reg(Bits(8 bits)) init 0
    for (c <- 0 until (8 min channels)) {
      when(chans(c).fire.rise()) {
        led(c) := !led(c)
      }
    }
    io.led := led
  }

  factory.read(BufferCC(dsp.recAddr), base + 0x40)
  factory.read(BufferCC(Vec(dsp.chans.map(_.fire)).asBits), base + 0x44)
}

object SimpleAwg extends App {
  SpinalConfig(mode = Verilog, targetDirectory = "./fpga/src/rtl").generate(SimpleAwg())
  SpinalConfig(mode = Verilog, targetDirectory = "./fpga/src/rtl").generate(ClockInterface())
}
