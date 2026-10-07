package vivado.tutorial

import spinal.core._

/** Step 1: the smallest possible design. A free-running counter drives the 8 red LEDs; LED 0
  * blinks at about 3 Hz on the 100 MHz PS clock, every next LED at half the rate.
  */
case class BlinkLed() extends Component {
  val io = new Bundle {
    val led = out Bits (8 bits)
  }
  VivadoHelper.clockDomain(ClockDomain.current)

  val counter = Reg(UInt(32 bits)) init 0
  counter := counter + 1
  io.led := counter(31 downto 24).asBits
}

object BlinkLed extends App {
  SpinalConfig(mode = Verilog, targetDirectory = "./fpga/src/rtl").generate(BlinkLed())
}
