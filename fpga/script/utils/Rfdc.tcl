# RF Data Converter: the DAC/ADC tiles of the RFSoC. Our module streams 256-bit DAC words into
# s<tile><slice>_axis and receives 64-bit ADC words from m<tile><slice>_axis, all on dspClk.
create_bd_cell -type ip -vlnv xilinx.com:ip:usp_rf_data_converter:2.6 rfdc
source ${SCRIPT_PATH}/utils/RfdcConfig.tcl

# analog pins + data streams, channel i of our module <-> tile i/4, slice i%4
for {set t 0} {$t < 4} {incr t} {
  for {set s 0} {$s < 4} {incr s} {
    set i [expr {$t * 4 + $s}]
    create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout${t}${s}
    connect_bd_intf_net [get_bd_intf_pins rfdc/vout${t}${s}] [get_bd_intf_ports vout${t}${s}]
    create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vin${t}${s}
    connect_bd_intf_net [get_bd_intf_pins rfdc/vin${t}${s}] [get_bd_intf_ports vin${t}${s}]
    connect_bd_intf_net [get_bd_intf_pins Top/DAC${i}_AXIS] [get_bd_intf_pins rfdc/s${t}${s}_axis]
    connect_bd_intf_net [get_bd_intf_pins Top/ADC${i}_AXIS] [get_bd_intf_pins rfdc/m${t}${s}_axis]
  }
}

# converter reference clocks and SYSREF from the CLK104 (tile 2 distributes to the other tiles)
create_bd_intf_port -mode Slave -vlnv xilinx.com:display_usp_rf_data_converter:diff_pins_rtl:1.0 sysref_in
create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 dac_clk
create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 adc_clk
connect_bd_intf_net [get_bd_intf_ports sysref_in] [get_bd_intf_pins rfdc/sysref_in]
connect_bd_intf_net [get_bd_intf_ports dac_clk] [get_bd_intf_pins rfdc/dac2_clk]
connect_bd_intf_net [get_bd_intf_ports adc_clk] [get_bd_intf_pins rfdc/adc2_clk]
connect_bd_net [get_bd_pins clk_ifc/user_sysref] [get_bd_pins rfdc/user_sysref_adc] [get_bd_pins rfdc/user_sysref_dac]

# stream clocks/resets: the dspClk domain
foreach grp {s0 s1 s2 s3 m0 m1 m2 m3} {
  connect_bd_net [get_bd_pins clk_ifc/dspClk] [get_bd_pins rfdc/${grp}_axis_aclk]
  connect_bd_net [get_bd_pins dsp_rst/peripheral_aresetn] [get_bd_pins rfdc/${grp}_axis_aresetn]
}

# the converter's own control registers: a second master port on the SmartConnect, pl_clk0 domain
set_property CONFIG.NUM_MI {2} [get_bd_cells axi_smc]
connect_bd_intf_net [get_bd_intf_pins axi_smc/M01_AXI] [get_bd_intf_pins rfdc/s_axi]
connect_bd_net [get_bd_pins zynq_ps/pl_clk0] [get_bd_pins rfdc/s_axi_aclk]
connect_bd_net [get_bd_pins ps_rst/peripheral_aresetn] [get_bd_pins rfdc/s_axi_aresetn]
