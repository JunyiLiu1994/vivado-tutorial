# Step 1 -- Zynq PS + a SpinalHDL LED blinker.
#   cd fpga/build && vivado -mode batch -source ../script/BlinkLed.tcl
set TOP_MODULE BlinkLed
set BD_NAME bd
set SCRIPT_PATH [file dirname [file normalize [info script]]]
set SOURCE_PATH ${SCRIPT_PATH}/../src
set BUILD_PREFIX ./${TOP_MODULE}

# 1. Project: the FPGA part, the RTL and the pin constraints
create_project ${TOP_MODULE} ${BUILD_PREFIX} -part xczu49dr-ffvf1760-2-e -force
set_property board_part xilinx.com:zcu216:part0:2.0 [current_project]
add_files ${SOURCE_PATH}/rtl/${TOP_MODULE}.v
add_files -fileset constrs_1 ${SOURCE_PATH}/constraints/zcu216-led.xdc

# 2. Block design: the processing system and our module, clocked from the PS
create_bd_design -dir ${BUILD_PREFIX}/bd ${BD_NAME}
source ${SCRIPT_PATH}/utils/ZynqPs.tcl
create_bd_cell -type module -reference ${TOP_MODULE} Top
connect_bd_net [get_bd_pins zynq_ps/pl_clk0] [get_bd_pins Top/clk]
connect_bd_net [get_bd_pins ps_rst/peripheral_reset] [get_bd_pins Top/reset]

# the LED output leaves the block design through a port; the .xdc binds the port to pins
create_bd_port -dir O -from 7 -to 0 led_r
connect_bd_net [get_bd_ports led_r] [get_bd_pins Top/io_led]

# 3. Wrapper, synthesis, implementation, bitstream
source ${SCRIPT_PATH}/utils/Finish.tcl
