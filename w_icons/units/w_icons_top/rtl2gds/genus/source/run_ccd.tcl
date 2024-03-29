##**************************************************
##*                                                
##* Copyright (C) 2011 Cadence Design Systems, Inc.
##* All rights reserved.
##*
##* NOTE: Requires Conformal Constraint Designer
##*       Release 08.10 or later
##*
##**************************************************

##***********************************************
## set up log file, get misc info about the run
##***********************************************
tclmode
file mkdir ./ccd
set_log_file ./ccd/checkSdcCCD.log -replace
set_dofile_abort off
set_undefined_cell Black_box
set_rule_handling -limit 1000 *

##*****************************************************************
## turns *off* propagation of constants through sequential elements
## Note: ccd default: on, cte default: off
##*****************************************************************
set_flatten_model -nocase_analysis_sequential_propagation


##***********************************************
## read library in verilog or liberty format
##***********************************************
read_library -liberty  "../DATA/LIBS/lib/slow.lib"
    

##***********************************************
## read design
##***********************************************
read_design  "../DATA/RTL/myAluAsynchReset.v" -replace

##***********************************************
## Default enabled CCD rules
##***********************************************
set_ccd_parameter SDC_AUTO_CHECK_SEVERITY Error

##***********************************************
## User enabled CCD rules
##***********************************************
add_rule_set -file ccd_default_sdc_ruleset.ntcl > /dev/null


##***********************************************
## check if designs are clean + report design data
##***********************************************
report_design_data
report_black_box
## report module
report_floating_signals
usage

##***********************************************
## read SDCs
##***********************************************
set_system_mode setup
set_sdc_design /
read_sdc "../DATA/CONSTRAINTS/myAluAsynchReset.sdc" -replace

report_rule_check -sdc_lint * -status fail -verbose > "./ccd/sdc_lint_checks.rpt"
##***********************************************
## read user do files
##***********************************************

set_system_mode verify
usage

##***********************************************
## delete the default clock group as SDC has no set_clock_group.
##***********************************************
delete_clock_group -all
add_clock_group -single
commit_clock
report_clock_group

##***********************************************
## check SDC Constraints:
##***********************************************
run_rule_check sdc_def_checks
report_rule_check sdc_def_checks -status fail -verbose -limit 100 > "./ccd/rule_check.quality.rpt"
echo "==============================================================================="
echo "=            Rule Check Summary    "
echo "==============================================================================="
report_rule_check sdc_def_checks

usage

echo " Info: Generated SDC rule check report:"
echo "       ./ccd/rule_check.quality.rpt"

usage

##***********************************************
## start GUI
##***********************************************
## set_gui on

##***********************************************
## exit CCD
##***********************************************
exit
