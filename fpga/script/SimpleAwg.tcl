# Step 3 -- a pulse generator on the RF Data Converter.
#   cd fpga/build && vivado -mode batch -source ../script/SimpleAwg.tcl
set TOP_MODULE SimpleAwg
set BD_NAME bd
set SCRIPT_PATH [file dirname [file normalize [info script]]]
set SOURCE_PATH ${SCRIPT_PATH}/../src
set BUILD_PREFIX ./${TOP_MODULE}

# 1. Project: two RTL modules now (the design + the clock buffers), LED and clock constraints
create_project ${TOP_MODULE} ${BUILD_PREFIX} -part xczu49dr-ffvf1760-2-e -force
set_property board_part xilinx.com:zcu216:part0:2.0 [current_project]
add_files [list ${SOURCE_PATH}/rtl/${TOP_MODULE}.v ${SOURCE_PATH}/rtl/ClockInterface.v]
add_files -fileset constrs_1 [list ${SOURCE_PATH}/constraints/zcu216-led.xdc ${SOURCE_PATH}/constraints/zcu216-rf.xdc]

# 2. Block design
create_bd_design -dir ${BUILD_PREFIX}/bd ${BD_NAME}
source ${SCRIPT_PATH}/utils/ZynqPs.tcl
create_bd_cell -type module -reference ${TOP_MODULE} Top
connect_bd_net [get_bd_pins zynq_ps/pl_clk0] [get_bd_pins Top/clk]
connect_bd_net [get_bd_pins ps_rst/peripheral_reset] [get_bd_pins Top/reset]
create_bd_port -dir O -from 7 -to 0 led_r
connect_bd_net [get_bd_ports led_r] [get_bd_pins Top/io_led]

# second clock domain: 500 MHz dspClk from the CLK104 board clock, with its own reset synchroniser
create_bd_cell -type module -reference ClockInterface clk_ifc
create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 dspClk
connect_bd_intf_net [get_bd_intf_ports dspClk] [get_bd_intf_pins clk_ifc/dspClk_diff]
create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 user_sysref
connect_bd_intf_net [get_bd_intf_ports user_sysref] [get_bd_intf_pins clk_ifc/user_sysref_diff]
set_property CONFIG.FREQ_HZ 500000000 [get_bd_intf_ports dspClk]
connect_bd_net [get_bd_pins clk_ifc/dspClk] [get_bd_pins Top/dspClk]

create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 dsp_rst
connect_bd_net [get_bd_pins clk_ifc/dspClk] [get_bd_pins dsp_rst/slowest_sync_clk]
connect_bd_net [get_bd_pins zynq_ps/pl_resetn0] [get_bd_pins dsp_rst/ext_reset_in]
connect_bd_net [get_bd_pins dsp_rst/peripheral_reset] [get_bd_pins Top/dspRst]

# processor bus and the converters
source ${SCRIPT_PATH}/utils/AxiSmartConnect.tcl
source ${SCRIPT_PATH}/utils/Rfdc.tcl
assign_bd_address -offset 0x80000000 -range 0x00400000 \
  -target_address_space [get_bd_addr_spaces zynq_ps/Data] [get_bd_addr_segs Top/S_AXI/reg0] -force
assign_bd_address ;# let Vivado pick an address for the converter's registers

# 3. Wrapper, synthesis, implementation, bitstream
source ${SCRIPT_PATH}/utils/Finish.tcl
