open_project ./.work.fpga/w_icons_top_fpga.xpr
reset_run impl_1
launch_runs impl_1
wait_on_run impl_1
open_run impl_1
report_timing_summary -file ./report/impl_timing_report.txt
set result [get_property STATUS [get_runs impl_1]]
set keyword [lindex [split $result  ] end]
if { $keyword != "Complete!" } {
exit 1
}
exit
