set_property IOSTANDARD LVCMOS18 [get_ports clk]

set_property PACKAGE_PIN AT16  [get_ports clk]
# set_property PACKAGE_PIN P25 [get_ports rdy]
# set_property PACKAGE_PIN BA9 [get_ports rnd]


set_property PACKAGE_PIN R15 [get_ports row0]
set_property PACKAGE_PIN M14 [get_ports rdy0]
set_property PACKAGE_PIN AC3 [get_ports nhits0]
set_property PACKAGE_PIN R3 [get_ports nbits0]



create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
