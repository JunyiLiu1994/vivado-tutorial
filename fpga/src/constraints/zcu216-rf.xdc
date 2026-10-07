# ZCU216 clocks for the RF design (from the RISC-Q reference constraints).
# The CLK104 clock module drives a 500 MHz PL clock (our dspClk) and SYSREF into these LVDS pins.
set_property -dict {PACKAGE_PIN E10 IOSTANDARD LVDS_25} [get_ports {dspClk_clk_p}]
set_property -dict {PACKAGE_PIN E9  IOSTANDARD LVDS_25} [get_ports {dspClk_clk_n}]
create_clock -period 2.000 -name dspClk_clk_p [get_ports {dspClk_clk_p}]

set_property -dict {PACKAGE_PIN E11 IOSTANDARD LVDS_25} [get_ports {user_sysref_clk_p}]
set_property -dict {PACKAGE_PIN D11 IOSTANDARD LVDS_25} [get_ports {user_sysref_clk_n}]

# converter sample clocks (fixed pins on the RF tiles, only the period is needed)
create_clock -period 2.000 -name dac_clk_clk_p [get_ports {dac_clk_clk_p}]
create_clock -period 2.000 -name adc_clk_clk_p [get_ports {adc_clk_clk_p}]

# dspClk has no fixed phase relation to the PS clock: do not time paths between them
# (the design crosses the domains with dual-clock RAMs and synchronisers)
set_clock_groups -asynchronous -group {dspClk_clk_p}
