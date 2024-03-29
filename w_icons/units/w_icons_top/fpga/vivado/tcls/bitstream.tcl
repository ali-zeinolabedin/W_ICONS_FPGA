open_project ./.work.fpga/w_icons_top_fpga.xpr
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
exit
