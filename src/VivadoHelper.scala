package vivado.tutorial

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._

/** Attributes that let Vivado's block design recognise the ports of a plain Verilog module as
  * standard interfaces (clock, reset, AXI4, AXI4-Stream, differential clock). Without them the
  * module still works, but every signal has to be wired by hand in the block design.
  */
object VivadoHelper {

  /** Name `clk`/`rst` and mark them as a clock + active-high reset pair. `busIfs` lists the bus
    * interfaces (by name) that are synchronous to this clock. `freqHz` = 0 leaves the frequency to
    * the block design (use that for clocks coming from the processing system).
    */
  def clock(clk: Bool, clkName: String, rst: Bool, rstName: String, freqHz: Long, busIfs: String*): Unit = {
    clk.setName(clkName)
    rst.setName(rstName)
    val assoc = if (busIfs.isEmpty) "" else s"ASSOCIATED_BUSIF ${busIfs.mkString(":")}, "
    val freq = if (freqHz > 0) s", FREQ_HZ $freqHz" else ""
    clk.addAttribute("X_INTERFACE_INFO", s"xilinx.com:signal:clock:1.0 $clkName CLK")
    clk.addAttribute("X_INTERFACE_PARAMETER", s"${assoc}ASSOCIATED_RESET $rstName$freq")
    rst.addAttribute("X_INTERFACE_INFO", s"xilinx.com:signal:reset:1.0 $rstName RST")
    rst.addAttribute("X_INTERFACE_PARAMETER", "POLARITY ACTIVE_HIGH")
  }

  /** Same for the component's own clock domain (ports `clk` / `reset`, frequency from the block design). */
  def clockDomain(cd: ClockDomain, busIfs: String*): Unit =
    clock(cd.readClockWire, "clk", cd.readResetWire, "reset", 0, busIfs: _*)

  /** Group the signals of an AXI4 bus into one interface called `name`. */
  def axi4(axi: Axi4, name: String): Unit = {
    val aw = axi.aw; val w = axi.w; val b = axi.b; val ar = axi.ar; val r = axi.r
    val signals = Seq[(Data, String)](
      aw.valid -> "AWVALID", aw.ready -> "AWREADY", aw.addr -> "AWADDR", aw.id -> "AWID",
      aw.len -> "AWLEN", aw.size -> "AWSIZE", aw.burst -> "AWBURST", aw.lock -> "AWLOCK",
      aw.cache -> "AWCACHE", aw.qos -> "AWQOS", aw.prot -> "AWPROT", aw.region -> "AWREGION",
      w.valid -> "WVALID", w.ready -> "WREADY", w.data -> "WDATA", w.strb -> "WSTRB", w.last -> "WLAST",
      b.valid -> "BVALID", b.ready -> "BREADY", b.id -> "BID", b.resp -> "BRESP",
      ar.valid -> "ARVALID", ar.ready -> "ARREADY", ar.addr -> "ARADDR", ar.id -> "ARID",
      ar.len -> "ARLEN", ar.size -> "ARSIZE", ar.burst -> "ARBURST", ar.lock -> "ARLOCK",
      ar.cache -> "ARCACHE", ar.qos -> "ARQOS", ar.prot -> "ARPROT", ar.region -> "ARREGION",
      r.valid -> "RVALID", r.ready -> "RREADY", r.data -> "RDATA", r.id -> "RID",
      r.resp -> "RRESP", r.last -> "RLAST"
    )
    for ((sig, port) <- signals if sig != null)
      sig.addAttribute("X_INTERFACE_INFO", s"xilinx.com:interface:aximm:1.0 $name $port")
  }

  /** Group a Stream into an AXI4-Stream interface called `name`. */
  def axis[T <: Data](s: Stream[T], name: String): Unit = {
    s.payload.addAttribute("X_INTERFACE_INFO", s"xilinx.com:interface:axis:1.0 $name TDATA")
    s.valid.addAttribute("X_INTERFACE_INFO", s"xilinx.com:interface:axis:1.0 $name TVALID")
    s.ready.addAttribute("X_INTERFACE_INFO", s"xilinx.com:interface:axis:1.0 $name TREADY")
  }

  /** Group a differential pair into a `diff_clock` interface called `name`. */
  def diffClock(p: Bool, n: Bool, name: String): Unit = {
    p.addAttribute("X_INTERFACE_INFO", s"xilinx.com:interface:diff_clock:1.0 $name CLK_P")
    n.addAttribute("X_INTERFACE_INFO", s"xilinx.com:interface:diff_clock:1.0 $name CLK_N")
  }
}

// Xilinx clock primitives, instantiated as black boxes
case class IBUFGDS() extends BlackBox {
  val I, IB = in Bool ()
  val O = out Bool ()
}

case class BUFG() extends BlackBox {
  val I = in Bool ()
  val O = out Bool ()
}

/** Turns the ZCU216 board clocks (LVDS pairs) into single-ended clocks for the block design:
  * the 500 MHz CLK104 PL clock becomes `dspClk`, the CLK104 SYSREF becomes `user_sysref`.
  */
case class ClockInterface() extends Component {
  val dspClk_clk_p, dspClk_clk_n = in Bool ()
  val user_sysref_clk_p, user_sysref_clk_n = in Bool ()
  val dspClk, user_sysref = out Bool ()
  VivadoHelper.diffClock(dspClk_clk_p, dspClk_clk_n, "dspClk_diff")
  VivadoHelper.diffClock(user_sysref_clk_p, user_sysref_clk_n, "user_sysref_diff")
  dspClk.addAttribute("X_INTERFACE_INFO", "xilinx.com:signal:clock:1.0 dspClk CLK")
  dspClk.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 500000000")
  user_sysref.addAttribute("X_INTERFACE_INFO", "xilinx.com:signal:clock:1.0 user_sysref CLK")

  val dspIbuf = IBUFGDS()
  dspIbuf.I := dspClk_clk_p
  dspIbuf.IB := dspClk_clk_n
  val dspBufg = BUFG()
  dspBufg.I := dspIbuf.O
  dspClk := dspBufg.O

  val sysrefIbuf = IBUFGDS()
  sysrefIbuf.I := user_sysref_clk_p
  sysrefIbuf.IB := user_sysref_clk_n
  user_sysref := sysrefIbuf.O
}

object ClockInterface extends App {
  SpinalConfig(mode = Verilog, targetDirectory = "./fpga/src/rtl").generate(ClockInterface())
}
