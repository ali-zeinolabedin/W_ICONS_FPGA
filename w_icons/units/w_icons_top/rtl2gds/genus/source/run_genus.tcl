# ----------------------------------------------------------------------------------------------
# H I S T O R Y 
# ----------------------------------------------------------------------------------------------
# 2017-06-27 : MR - used latest export_oa_db in Genus
# 2017-07-06 : MR - added a write_def in lefDef mode,as missing in 17.10
# 2017-07-19 : MR - modified write_do_lec commands to conform with latest 17.10 GN-LEC flow
# 2017-11-13 : MR - added a patch to avoid license issue in version prior GN-17.12
# 2017-12-12 : MR - removed redundnat write_def
# 2017-12-18 : MR - removed note on layout_fp and access feature key for 16.1



if {![info exists useModus]}        {set useModus       true} ;   # false if you want to use ET

if {![info exists startWithOAlib]}  {set startWithOAlib false } ;   # false if you want to start with lef
if {![info exists runLec ]}         {set runLec         false} ;   # put true if you want LEC runs to be started during the synthesis process. (requires LEC-XL License)
if {![info exists runAtpg ]}        {set runAtpg        false} ;   # put true if you want the ATPG runs to be started during the synthesis process. (requires ET/Modus License)

set PRJ_DIR "../../../../../"
set script_dir "../../genus/source"

if {![is_common_ui]} {
  puts "mrWARNING: the tool should be in Stylus. Next time start genus without the -legacy_ui switch"
  puts "mrINFO: switching to Stylus"
  set_attribute common_ui true /
}

#used to mimic a non-cadence environment
set_db enable_domain_name_check 0

#extract program version information
regexp {([0-9.]*)-(.*)} [lindex [get_db program_version] 0] wholeVersion majorVersion subVersion

if {$majorVersion < 17.1} {
  puts "ERROR: incorrect Genus version used : $wholeVersion. Please use 17.1 or newer"
  exit 123
}

#provide access to limited feature
if {$startWithOAlib} {
   set_db limited_access_feature {{oa_support 241331664}}    ;#  for  17.1
}

set_db max_cpus_per_server 1 ; # limiting to 1 CPU

#clean the output synthDb directory
file delete -force synthDb1

#hide the GUI
gui_hide

#set bloc w_icons_core
set bloc w_icons_top

set_db hdl_track_filename_row_col                 true   ;#used for cross probing and datapath report. May be memory consuming
set_db verification_directory_naming_style        "./LEC"

set_db lp_insert_clock_gating                     true   ;#enables clock gating insertion during synthesis

#List of global Power nets
set_db init_power_nets                            "VDD"
set_db init_ground_nets                           "VSS"

#reads the libraries
read_mmmc                                         "${script_dir}/viewDefinition.tcl"
if {$startWithOAlib} {
  if {($majorVersion < 17.12) || (($majorVersion == 17.12) && ($subVersion < "s021"))} {
    # CCR1839016 : license issue in release before 17.12-s021 (requires an additional Physical token)
    # so only reading the libraries.
    import_oa_db -ref_lib gsclib090
  } else {
    # normal behavior, the FP is read in Genus.
    import_oa_db -ref_lib gsclib090 -design_lib DesignLib -design_cell myAlu -design_view fplan
  }
} else {
  read_physical -lef "${PRJ_DIR}/resources/LEF_STDCELL_1.8V/tcb018gbwp7t_6lm.lef"
}

#reads the RTL
source "../source/rtl.vlog.sources.tcl"


#elaborate the top level
elaborate $bloc

init_design
check_design -unresolved

check_design -all > RPT/${bloc}.generic.check_design.rpt
#if !{$startWithOAlib} {
#  read_def 
#}

#prevent auto ungrouping to better analyze the deisgn on this discovery kit.
#in real life this is better to keep the default value to make the optimization better
set_db auto_ungroup none

#verify there is no big hole in the timing constraints
check_timing_intent
check_timing_intent -verbose > RPT/check_timing_intent.rpt
puts "\033\[0;34m======================================================================\033\[0m "
puts "\033\[1;31m  T I M I N G   C O N S T R A I N T S   L I N T  \033\[0m "
puts "\033\[0;34m======================================================================"
puts " - verify the above table and check there are no big problems reported,"
puts "   (like some DFF not receiving a clock signal) "
puts ""
puts " - a more exhaustive report has been generated and stored in RPT/check_timing_intent.rpt"
puts "======================================================================\033\[0m "

#suspend
#source ${script_dir}/dft_setup.tcl

#perform a synthesis. DFF will be mapped to scan if check_dft_rules has been run and the library is containing scan DFF
syn_generic
syn_map

#create the Data set for runing logic equivalence checking using Conformal LEC
file mkdir ./LEC
write_do_lec -revised fv_map -no_exit -log ./LEC/w_icons_core.tcl.log > ./LEC/w_icons_core_INT2RTL.tcl

if {$runLec} {
  puts "\nINFO: starting LEC job ./LEC/myAlu_INT2RTL.tcl in batch mode\n"
  #add exit at the end of the script so we can run it in batch mode
  exec echo "exit -force"  >> ./LEC/w_icons_core_INT2RTL.tcl
  exec lec -xl -nogui -dofile ./LEC/w_icons_core_INT2RTL.tcl >& lec.out.log &
}

#preview the scan chains
#--> you may add the -auto switch if you have not defined the correct amount of SI-SO ports to handle all the scan chains
#connect_scan_chain -preview

#connect the scan chains
#--> you may add the -auto switch if you have not defined the correct amount of SI-SO ports to handle all the scan chains
#connect_scan_chain

#run incremental optimization
syn_opt

# output a description of the scan chains in DEF file
# will also be done by the write_design command.
file mkdir synthDb1
#write_scandef > synthDb/final.scan.def

#write the scripts for the ATPG
#if {$useModus} {
  #note : requiresat least Genus v16.1x
#  write_dft_atpg \
#    -tcl \
#    -library ../DATA/LIBS/atpg/slow.v \
#    -directory ./atpg_scripts \
#    /designs/myAlu

#} else {
#  write_et_atpg \
#    -library ../DATA/LIBS/atpg/slow.v \
#    -directory ./atpg_scripts \
#    /designs/myAlu
#}

#if {$runAtpg} {
#  puts "\nINFO: starting ATPG job in batch mode\n"
#  if {$useModus} {
#    exec modus -lic_preference vdt -file ./atpg_scripts/runmodus.atpg.tcl >& atpg.out.log &
#  } else {
#    exec et -e atpg_scripts/runet.atpg >& atpg.out.log &
#  }
#}

#create the Data set for runing logic equivalence checking using Conformal LEC
#will compare final netlist vs. intermediate 
write_do_lec -golden fv_map -revised ./synthDb1/final.v -no_exit -log ./LEC/w_icons_core_FIN2INT.tcl.log > ./LEC/myAlu_FIN2INT.tcl

#write the final database
if {$startWithOAlib} {
  export_oa_db -ref_lib gsclib090 -design_lib DesignLib -design_view synth_out -invs_write_design_dir ./synthDb1/synth_out
  write_hdl > ./synthDb1/final.v ;#netlit used to run LEC
} else {
  set finalDb ./synthDb1/final
  file mkdir $finalDb
  write_design -encounter -basename $finalDb
}

#if {$runLec} {
#  puts "\nINFO: starting LEC job ./LEC/myAlu_FIN2INT.tcl in batch mode\n"
  #add exit at the end of the script so we can run it in batch mode
#  exec echo "exit -force"  >> ./LEC/myAlu_FIN2INT.tcl
#  exec lec -xl -nogui -dofile ./LEC/myAlu_FIN2INT.tcl >>& lec.out.log &
#}

#output the quality of results report
file mkdir RPT
report qor > RPT/final.qor

puts "\033\[0;34m======================================================================\033\[0m "
puts "\033\[1;31m  L O G I C   E Q U I V A L E N C E   C H E C K I N G \033\[0m "
puts "\033\[0;34m======================================================================"
puts " - some files have been created during this run for logic equivalence"
if {!$runLec} {
puts ""
puts " - Ensure you have access to the Conformal LEC-XL license "
puts "   and run this two commands after exiting Genus"
puts "     unix> lec -xl ./LEC/myAlu_INT2RTL.tcl"
puts "     unix> lec -xl ./LEC/myAlu_FIN2INT.tcl"
puts ""
puts "   Then check for results in the two logfiles"
} else {
puts "   and two runs have been executed in batch mode"
puts " - check for results in the two logfiles"
}
puts "     ./LEC/myAlu_INT2RTL.tcl.log"
puts "     ./LEC/myAlu_FIN2INT.tcl.log"
puts "======================================================================\033\[0m "

puts "\033\[0;34m======================================================================\033\[0m "
puts "\033\[1;31m  T E S T   V E C T O R   G E N E R A T I O N \033\[0m "
puts "\033\[0;34m======================================================================"
puts " - some files have been created to run the ATPG (Automatic TestPattern Generator)"
if {!$runAtpg} {
puts ""
if {$useModus} {
puts " - Ensure you have access to the Modus Test Solution license "
puts "   and run this command after exiting Genus to generate the vectors "
puts "     unix> modus -lic_preference vdt -file atpg_scripts/runmodus.atpg.tcl "
} else {
puts " - Ensure you have access to the Encounter Test license "
puts "   and run this command after exiting Genus to generate the vectors "
puts "     unix> et -e atpg_scripts/runet.atpg "
}
puts ""
puts "   Then check for results in the following logfile:"
} else {
puts "   and the run has been executed in batch mode"
puts " - check for results in the following logfile:"
}
puts "     atpg_scripts/testresults/logs/log_create_logic_tests_FULLSCAN_myAlu_atpg"
puts "======================================================================\033\[0m "

#trick to open the schematic TAB with the desing in it
::uiHalo::sch::crossProbeToSchematic main module w_icons_core genusHaloMain.schematic_tk design
uikit::widget::DndWin:add $uigRcDndWin -form schematic@frameOnly -type right

#display the GUI
gui_raise
gui_sv_load w_icons_core

puts "\033\[0;32m\nINFO: Type 'exit' when you are done\n\033\[0m "

