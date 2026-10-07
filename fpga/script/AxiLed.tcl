# Step 2 -- the processor drives the LEDs through memory-mapped registers.
#   cd fpga/build && vivado -mode batch -source ../script/AxiLed.tcl
set TOP_MODULE AxiLed
set BD_NAME bd
set SCRIPT_PATH [file dirname [file normalize [info script]]]
set SOURCE_PATH ${SCRIPT_PATH}/../src
set BUILD_PREFIX ./${TOP_MODULE}

# 1. Project
create_project ${TOP_MODULE} ${BUILD_PREFIX} -part xczu49dr-ffvf1760-2-e -force
set_property board_part xilinx.com:zcu216:part0:2.0 [current_project]
add_files ${SOURCE_PATH}/rtl/${TOP_MODULE}.v
add_files -fileset constrs_1 [list ${SOURCE_PATH}/constraints/zcu216-led.xdc ${SOURCE_PATH}/constraints/zcu216-io.xdc]

# 2. Block design
create_bd_design -dir ${BUILD_PREFIX}/bd ${BD_NAME}
source ${SCRIPT_PATH}/utils/ZynqPs.tcl
create_bd_cell -type module -reference ${TOP_MODULE} Top
connect_bd_net [get_bd_pins zynq_ps/pl_clk0] [get_bd_pins Top/clk]
connect_bd_net [get_bd_pins ps_rst/peripheral_reset] [get_bd_pins Top/reset]

# board I/O
foreach {port width pin} {led_r 8 io_ledR  led_g 8 io_ledG  led_b 8 io_ledB} {
  create_bd_port -dir O -from [expr {$width - 1}] -to 0 $port
  connect_bd_net [get_bd_ports $port] [get_bd_pins Top/$pin]
}
foreach {port width pin} {dip_sw 8 io_dipSw  btn 5 io_btn} {
  create_bd_port -dir I -from [expr {$width - 1}] -to 0 $port
  connect_bd_net [get_bd_ports $port] [get_bd_pins Top/$pin]
}

# the AXI path from the processor to our registers, and where they appear in its address space
source ${SCRIPT_PATH}/utils/AxiSmartConnect.tcl
assign_bd_address -offset 0x80000000 -range 0x00010000 \
  -target_address_space [get_bd_addr_spaces zynq_ps/Data] [get_bd_addr_segs Top/S_AXI/reg0] -force

# 3. Wrapper, synthesis, implementation, bitstream
source ${SCRIPT_PATH}/utils/Finish.tcl
