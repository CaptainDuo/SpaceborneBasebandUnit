set_property SRC_FILE_INFO {cfile:c:/Users/86183/Desktop/Microblaze_xzjddy/clk_wiz_0_1/clk_wiz_0.xdc rfile:../../../clk_wiz_0_1/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:U1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/86183/Desktop/Microblaze_xzjddy/clk_wiz_1/clk_wiz_1.xdc rfile:../../../clk_wiz_1/clk_wiz_1.xdc id:2 order:EARLY scoped_inst:U2/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.16129000000000002