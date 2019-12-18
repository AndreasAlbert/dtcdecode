set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN E3 [get_ports clk]							
set_property PACKAGE_PIN E3 [get_ports rdy]
create_clock -add -name sys_clk_pin -period 100.00 -waveform {0 1} [get_ports clk]
