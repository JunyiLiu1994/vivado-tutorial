# Common ending of every step: wrapper, synthesis, implementation, bitstream, reports.
# Expects TOP_MODULE, BD_NAME and BUILD_PREFIX to be set by the calling script.

# 1. Check the block design and wrap it in a Verilog top level the tools can synthesise
validate_bd_design
make_wrapper -files [get_files ${BD_NAME}.bd] -top -import -force
close_bd_design ${BD_NAME}
generate_target all [get_files ${BD_NAME}.bd]
set_property top ${BD_NAME}_wrapper [current_fileset]

# 2. Synthesis: RTL -> netlist of LUTs, flip-flops, block RAMs, ...
launch_runs synth_1 -jobs 8
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} { error "synthesis failed" }

# 3. Implementation: place the netlist on the die, route the wires, check timing, write the bitstream
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} { error "implementation failed" }

# 4. Reports, plus the two files a PYNQ host needs side by side: <name>.bit and <name>.hwh
open_run impl_1
report_timing_summary -file ${BUILD_PREFIX}/${TOP_MODULE}_timing.rpt
report_utilization -file ${BUILD_PREFIX}/${TOP_MODULE}_utilization.rpt
file copy -force ${BUILD_PREFIX}/${TOP_MODULE}.runs/impl_1/${BD_NAME}_wrapper.bit ${BUILD_PREFIX}/${TOP_MODULE}.bit
file copy -force ${BUILD_PREFIX}/bd/${BD_NAME}/hw_handoff/${BD_NAME}.hwh ${BUILD_PREFIX}/${TOP_MODULE}.hwh
puts "bitstream: ${BUILD_PREFIX}/${TOP_MODULE}.bit"
