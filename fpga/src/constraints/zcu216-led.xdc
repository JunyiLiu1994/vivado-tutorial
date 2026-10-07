# ZCU216: the red channel of the 8 RGB LEDs, block-design port led_r[7:0].
# Pin numbers and voltage standards come from the board master constraint file (zcu216_reference.xdc).
set_property -dict {PACKAGE_PIN AN14 IOSTANDARD LVCMOS12} [get_ports {led_r[0]}]
set_property -dict {PACKAGE_PIN AP16 IOSTANDARD LVCMOS12} [get_ports {led_r[1]}]
set_property -dict {PACKAGE_PIN AP14 IOSTANDARD LVCMOS12} [get_ports {led_r[2]}]
set_property -dict {PACKAGE_PIN AU16 IOSTANDARD LVCMOS12} [get_ports {led_r[3]}]
set_property -dict {PACKAGE_PIN AW12 IOSTANDARD LVCMOS12} [get_ports {led_r[4]}]
set_property -dict {PACKAGE_PIN AY16 IOSTANDARD LVCMOS12} [get_ports {led_r[5]}]
set_property -dict {PACKAGE_PIN BB12 IOSTANDARD LVCMOS12} [get_ports {led_r[6]}]
set_property -dict {PACKAGE_PIN E25  IOSTANDARD LVCMOS12} [get_ports {led_r[7]}]
