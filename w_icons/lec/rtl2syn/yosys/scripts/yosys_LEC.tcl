yosys -import


# Read verilog files
foreach file $::env(VLOG_SOURCES_NTB_NPADLIB) {
  read_verilog  -sv  $file
}
#prep -flatten -top $::env(DESIGN)
#memory
#splitnets -ports;;
hierarchy -top $::env(DESIGN);
design -stash gold

read_verilog $::env(POST_SYN_NET)
read_verilog -DNTC $::env(LIB_VERILOG) 
#prep -flatten -top $::env(DESIGN)
#memory
#splitnets -ports;;
design -stash gate

# prove equivalence
design -copy-from gold -as gold $::env(DESIGN)
design -copy-from gate -as gate $::env(DESIGN)
equiv_make gold gate equiv
hierarchy -top equiv
equiv_simple 
equiv_status -assert

#miter -equiv -flatten gold gate miter
#hierarchy -top miter
#sat -verify -tempinduct -prove trigger 0 -set-init-undef -set-def-inputs
#sat -verify -tempinduct -prove trigger 0  -seq 1 -set-at 1 in_up,in_down 0

#miter -equiv -flatten -ignore_gold_x gold gate miter
#hierarchy -top miter
#sat -verify -tempinduct -prove trigger 0 -set-init-undef -set-def-inputs
#sat -verify -tempinduct -prove trigger 0 -seq 1 