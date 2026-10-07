# AXI SmartConnect: routes the processor's HPM0_LPD master to our module's S_AXI slave and adapts
# the data width / ID width between them. Single clock: pl_clk0 on both sides.
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {1} CONFIG.HAS_ARESETN {0}] [get_bd_cells axi_smc]
connect_bd_net [get_bd_pins zynq_ps/pl_clk0] [get_bd_pins axi_smc/aclk]
connect_bd_intf_net [get_bd_intf_pins zynq_ps/M_AXI_HPM0_LPD] [get_bd_intf_pins axi_smc/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins Top/S_AXI]
