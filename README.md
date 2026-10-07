# vivado-tutorial

Three progressive Vivado projects for the Xilinx ZCU216 (Zynq UltraScale+ RFSoC), written in
SpinalHDL and built from Tcl: a blinking LED, memory-mapped LEDs over AXI, and a pulse generator on
the RF data converters. The full walkthrough is in [Tutorial.md](Tutorial.md).

```sh
mill runMain vivado.tutorial.BlinkLed                 # Scala -> fpga/src/rtl/BlinkLed.v
cd fpga/build && vivado -mode batch -source ../script/BlinkLed.tcl
# -> fpga/build/BlinkLed/BlinkLed.bit + BlinkLed.hwh
```

Requires Vivado 2026.1 (with the ZCU216 board files), Mill 1.1 and a JDK. Replace `BlinkLed` with
`AxiLed` or `SimpleAwg` for the other steps; `software/` holds the PYNQ host examples.
