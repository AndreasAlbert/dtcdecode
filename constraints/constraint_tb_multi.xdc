set_property IOSTANDARD LVCMOS18 [get_ports clk]
set_property PACKAGE_PIN AT16  [get_ports clk]


# INPUT
# Connect each row bit to a separate pin
set_property PACKAGE_PIN BB28 [get_ports row0[0]]
set_property PACKAGE_PIN BB29 [get_ports row0[1]]
set_property PACKAGE_PIN AY28 [get_ports row0[2]]
set_property PACKAGE_PIN BA28 [get_ports row0[3]]
set_property PACKAGE_PIN BA29 [get_ports row0[4]]
set_property PACKAGE_PIN BA30 [get_ports row0[5]]
set_property PACKAGE_PIN AW28 [get_ports row0[6]]
set_property PACKAGE_PIN AW29 [get_ports row0[7]]
set_property PACKAGE_PIN BA31 [get_ports row0[8]]
set_property PACKAGE_PIN BB31 [get_ports row0[9]]
set_property PACKAGE_PIN AY30 [get_ports row0[10]]
set_property PACKAGE_PIN AY31 [get_ports row0[11]]
set_property PACKAGE_PIN BB32 [get_ports row0[12]]
set_property PACKAGE_PIN AV30 [get_ports row0[13]]
# Reset switch
set_property PACKAGE_PIN E28 [get_ports reset0]

# OUTPUT
# decoder ready flag
set_property PACKAGE_PIN AV31 [get_ports rdy0]
# # Number of hits
# set_property PACKAGE_PIN AT28 [get_ports nhits0[0]]
# set_property PACKAGE_PIN AU28 [get_ports nhits0[1]]
# set_property PACKAGE_PIN AU32 [get_ports nhits0[2]]
# set_property PACKAGE_PIN AV32 [get_ports nhits0[3]]
# # Number of bits
# set_property PACKAGE_PIN AV29 [get_ports nbits0[0]]
# set_property PACKAGE_PIN AT31 [get_ports nbits0[1]]
# set_property PACKAGE_PIN AU31 [get_ports nbits0[2]]
# set_property PACKAGE_PIN AT29 [get_ports nbits0[3]]

# Clock
create_clock -period 1.66 -name sys_clk_pin -waveform {0.000 0.830} -add [get_ports clk]
