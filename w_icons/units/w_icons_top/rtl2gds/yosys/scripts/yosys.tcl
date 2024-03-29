yosys -import


# Read verilog files
foreach file $::env(VLOG_SOURCES_NTB_NPADLIB) {
  read_verilog  -sv  $file
}
read_liberty -lib $::env(IO_LIB);
read_liberty -lib $::env(STC_CELL_LIB);
#- to define the top-level
hierarchy -top $::env(DESIGN);
#- to inckude the library if needed
#hierarchy -libdir $DIR;
#- to check the design
hierarchy -check ;
# convert high-level behavioral parts ("processes") to d-type flip-flops and muxes and latchs
procs; opt; proc_dlatch;
synth     -run coarse;
techmap;
dfflibmap -liberty $::env(STC_CELL_LIB) ;
abc       -liberty $::env(STC_CELL_LIB) ;
#abc       -liberty $::env(STC_CELL_LIB) $::env(IO_LIB) ;
opt;
opt_clean;
hierarchy -check; 

set file_name  $::env(DESIGN)
stat      -top $::env(DESIGN) 
#./reports/${file_name}.rpt 
write_verilog -noexpr -attr2comment -noattr  -nohex -nodec ./results/w_icons_top_netlist.v;


#https://www.reddit.com/r/yosys/comments/3djedt/timing_constraints_in_yosys_abc/
#So ultimately timing constraints must be handled by the place&route tool.
#https://github.com/YosysHQ/nextpnr/issues/470
#https://github.com/YosysHQ/yosys/discussions/3897