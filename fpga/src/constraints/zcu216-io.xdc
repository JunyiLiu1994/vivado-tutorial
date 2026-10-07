# ZCU216: green and blue LED channels, DIP switches and push buttons.
# Ports: led_g[7:0], led_b[7:0], dip_sw[7:0], btn[4:0] = {C, W, S, E, N}.

# green LEDs 0..3 sit in a 1.8 V bank, 4..7 in a 1.2 V bank
set_property -dict {PACKAGE_PIN C13  IOSTANDARD LVCMOS18} [get_ports {led_g[0]}]
set_property -dict {PACKAGE_PIN D14  IOSTANDARD LVCMOS18} [get_ports {led_g[1]}]
set_property -dict {PACKAGE_PIN D12  IOSTANDARD LVCMOS18} [get_ports {led_g[2]}]
set_property -dict {PACKAGE_PIN D13  IOSTANDARD LVCMOS18} [get_ports {led_g[3]}]
set_property -dict {PACKAGE_PIN AW18 IOSTANDARD LVCMOS12} [get_ports {led_g[4]}]
set_property -dict {PACKAGE_PIN AV18 IOSTANDARD LVCMOS12} [get_ports {led_g[5]}]
set_property -dict {PACKAGE_PIN BA19 IOSTANDARD LVCMOS12} [get_ports {led_g[6]}]
set_property -dict {PACKAGE_PIN AP21 IOSTANDARD LVCMOS12} [get_ports {led_g[7]}]

set_property -dict {PACKAGE_PIN B26  IOSTANDARD LVCMOS12} [get_ports {led_b[0]}]
set_property -dict {PACKAGE_PIN E24  IOSTANDARD LVCMOS12} [get_ports {led_b[1]}]
set_property -dict {PACKAGE_PIN G26  IOSTANDARD LVCMOS12} [get_ports {led_b[2]}]
set_property -dict {PACKAGE_PIN J23  IOSTANDARD LVCMOS12} [get_ports {led_b[3]}]
set_property -dict {PACKAGE_PIN L24  IOSTANDARD LVCMOS12} [get_ports {led_b[4]}]
set_property -dict {PACKAGE_PIN P21  IOSTANDARD LVCMOS12} [get_ports {led_b[5]}]
set_property -dict {PACKAGE_PIN AV21 IOSTANDARD LVCMOS12} [get_ports {led_b[6]}]
set_property -dict {PACKAGE_PIN AR21 IOSTANDARD LVCMOS12} [get_ports {led_b[7]}]

set_property -dict {PACKAGE_PIN AY10 IOSTANDARD LVCMOS18} [get_ports {dip_sw[0]}]
set_property -dict {PACKAGE_PIN AY11 IOSTANDARD LVCMOS18} [get_ports {dip_sw[1]}]
set_property -dict {PACKAGE_PIN BA9  IOSTANDARD LVCMOS18} [get_ports {dip_sw[2]}]
set_property -dict {PACKAGE_PIN AY9  IOSTANDARD LVCMOS18} [get_ports {dip_sw[3]}]
set_property -dict {PACKAGE_PIN BB9  IOSTANDARD LVCMOS18} [get_ports {dip_sw[4]}]
set_property -dict {PACKAGE_PIN BA10 IOSTANDARD LVCMOS18} [get_ports {dip_sw[5]}]
set_property -dict {PACKAGE_PIN BB10 IOSTANDARD LVCMOS18} [get_ports {dip_sw[6]}]
set_property -dict {PACKAGE_PIN BB11 IOSTANDARD LVCMOS18} [get_ports {dip_sw[7]}]

set_property -dict {PACKAGE_PIN J11  IOSTANDARD LVCMOS18} [get_ports {btn[0]}] ;# GPIO_SW_N
set_property -dict {PACKAGE_PIN J12  IOSTANDARD LVCMOS18} [get_ports {btn[1]}] ;# GPIO_SW_E
set_property -dict {PACKAGE_PIN H10  IOSTANDARD LVCMOS18} [get_ports {btn[2]}] ;# GPIO_SW_S
set_property -dict {PACKAGE_PIN K12  IOSTANDARD LVCMOS18} [get_ports {btn[3]}] ;# GPIO_SW_W
set_property -dict {PACKAGE_PIN K11  IOSTANDARD LVCMOS18} [get_ports {btn[4]}] ;# GPIO_SW_C
