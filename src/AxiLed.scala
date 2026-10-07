package vivado.tutorial

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._

/** Step 2: the processor controls the LEDs through memory-mapped registers.
  *
  * Register map (the block design places S_AXI at 0x8000_0000, see fpga/script/AxiLed.tcl):
  * {{{
  *   0x8000_0000  R/W  red   LEDs, bit i = LED i
  *   0x8000_0004  R/W  green LEDs
  *   0x8000_0008  R/W  blue  LEDs
  *   0x8000_000C  R    DIP switches
  *   0x8000_0010  R    push buttons N, E, S, W, C
  * }}}
  */
case class AxiLed() extends Component {
  val io = new Bundle {
    val axi = slave(Axi4(Axi4Config(addressWidth = 32, dataWidth = 32, idWidth = 2)))
    val ledR, ledG, ledB = out Bits (8 bits)
    val dipSw = in Bits (8 bits)
    val btn = in Bits (5 bits)
  }
  VivadoHelper.axi4(io.axi, "S_AXI")
  VivadoHelper.clockDomain(ClockDomain.current, "S_AXI")

  val base = 0x80000000L
  val factory = Axi4SlaveFactory(io.axi)
  factory.driveAndRead(io.ledR, base + 0x00) init 0
  factory.driveAndRead(io.ledG, base + 0x04) init 0
  factory.driveAndRead(io.ledB, base + 0x08) init 0
  factory.read(io.dipSw, base + 0x0C)
  factory.read(io.btn, base + 0x10)
}

object AxiLed extends App {
  SpinalConfig(mode = Verilog, targetDirectory = "./fpga/src/rtl").generate(AxiLed())
}
