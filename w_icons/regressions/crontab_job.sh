#!/bin/tcsh

cd /home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/regressions/
#for RTL regression
#make reg_all
#make reg_rep COMMENTS="short running time for each tc"

#for netlist regression
make reg_all_net
make reg_rep RELEASE="Ulka:231226" NETLIST_VER="PnR: SDF->(BC)" COMMENTS="short running time for each tc"
make collect_rep RELEASE="Ulka:231226" NETLIST_VER="PnR: SDF->(BC)" COMMENTS="Waiving Warnings: output port was not connected."

#for Coverage Analysis on each tc
#make reg_all COVERAGE_EN=1
#make reg_rep COMMENTS="short running time for each tc"