# Set the project directory
set PRJ_DIR "/home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons"


# Create the full path to the target folder
set target_folder "${PRJ_DIR}/units/w_icons_top/simulation/generic/"

# Change the current working directory to the target folder
cd $target_folder

# Find all *.ucd files in the current directory and its subdirectories
set ucd_files [glob -nocomplain -types d tc_*]

# Print the list of *.ucd files
puts "UCD Files:"
foreach ucd_file $ucd_files {
    append path_coverage "$ucd_file/.work.xcelium/cov_work/scope/$ucd_file/ "
}
puts "$path_coverage"


#set path_coverage "tc_sanity/.work.xcelium/cov_work/scope/tc_sanity " ;
#append path_coverage "tc_sanity_stim/.work.xcelium/cov_work/scope/tc_sanity_stim";
merge $path_coverage -out ${PRJ_DIR}/regressions/coverage/xcelium/merge_union_data -initial_model union_all -overwrite -out ${PRJ_DIR}/regressions/coverage/xcelium/cov_merged
#-message 1

#load ${PRJ_DIR}/regressions/coverage/xcelium/cov_merged
#report_metrics -detail -inst *... -detail -metrics all -overwrite -out ${PRJ_DIR}/regressions/coverage/xcelium/cov_report.txt
