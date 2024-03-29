create_project w_icons_top_fpga ./.work.fpga/
set_property part xc7a100tcsg324-1 [current_project]
set_property target_language verilog [current_project]
set_property top w_icons_top [get_property srcset [current_run]]
source tcls/files.tcl
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
exit
