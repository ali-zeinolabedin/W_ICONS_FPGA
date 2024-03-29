##############################################
# Makefile.yosys (flow template)
#
# Company          :   BRN
# Author           :   Ali Zeinolabedin
##############################################


##############################################

export DESIGN    = w_icons_core
DESIGN_ID        := 
SYN_TOOL         := yosys 
RUN_LOGS         = ./logfiles

# ==============================================================================
#  ______   ___   _ _____ _   _ _____ ____ ___ ____
# / ___\ \ / / \ | |_   _| | | | ____/ ___|_ _/ ___|
# \___ \\ V /|  \| | | | | |_| |  _| \___ \| |\___ \
#  ___) || | | |\  | | | |  _  | |___ ___) | | ___) |
# |____/ |_| |_| \_| |_| |_| |_|_____|____/___|____/

export VLOG_SRC_FILES += $(wildcard sources/res.vlog.sources)
export VLOG_SRC_FILES += $(wildcard sources/rtl.vlog.sources)
export VLOG_SRC_FILES += $(wildcard sources/tb.vlog.sources)

export VLOG_SRC_NTB             += $(filter-out sources/tb.vlog.sources ,  $(VLOG_SRC_FILES))
export VLOG_SOURCES_NTB         += $(foreach f,$(VLOG_SRC_NTB), $(shell echo $(shell cat $f | sed -e 'sX^\(\#\|//\).*XX')))
export VLOG_SOURCES_NTB_NAM     += $(filter-out /home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/units/rec_stim64ch_macro/source/behavioral/verilog/rec_stim64ch_macro.v, $(VLOG_SOURCES_NTB))
export VLOG_SOURCES_NTB_NPADLIB += $(filter-out /home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/resources/tpd018bcdnv5.v, $(VLOG_SOURCES_NTB_NAM))

#Library Sets Definition
export IO_LIB                   += ${PRJ_DIR}/resources/LIB_IOCELL_1.8V_NLDM/tpd018bcdnv5wc.lib
export STC_CELL_LIB             += ${PRJ_DIR}/resources/LIB_STDCELL_1.8V_NLDM/tcb018gbwp7twc.lib
export LIB_VERILOG              += ${PRJ_DIR}/resources/tcb018gbwp7t_updated.v
export POST_SYN_NET             += ${PRJ_DIR}/export/synthesis/netlist/231220/w_icons_top.v
export SDC_FILE                 += ./constraints/timing_set.tcl
#$(info $(VLOG_SRC_NTB))
export DESIGN


export GALLERY_REPORT         ?= 0
# Enables hierarchical yosys
export SYNTH_HIERARCHICAL     ?= 0
# Enables Re-synthesis for area reclaim
export RESYNTH_AREA_RECOVER   ?= 0
export RESYNTH_TIMING_RECOVER ?= 0
export ABC_AREA               ?= 0
# Global setting for Synthesis
export SYNTH_ARGS             ?= -flatten

YOSYS_FLAGS += -v 3

##############################################
TIME_CMD = /usr/bin/time -f 'Elapsed time: %E[h:]min:sec. CPU time: user %U sys %S (%P). Peak memory: %MKB.'
TIME_TEST = $(shell $(TIME_CMD) echo foo 2>/dev/null)

.PHONY: lec
lec step.lec: config
	$(TIME_CMD) $(SYN_TOOL) -c scripts/yosys_LEC.tcl 2>&1 | tee $(RUN_LOGS)/$(DESIGN).lec.log
	echo ${HOSTNAME} > step.lec


##############################################################################
# Configuration
##############################################################################
.PHONY: config
config:
	$(shell mkdir -p $(RUN_LOGS))
	

##############################################################################
# show resources
##############################################################################
.PHONY: show_src
show_src:
ifneq (,$(strip $(VLOG_SOURCES_NTB_NPADLIB) ))
	
	$(info $(VLOG_SOURCES_NTB_NPADLIB))
endif
	

##############################################################################
# clean working directory
##############################################################################
.PHONY: clean
clean:
	rm -rf $(RUN_LOGS)/*
	rm -rf step.*

##############################################################################
# check the version
##############################################################################
.PHONY: ver
ver:
	@$(SYN_TOOL) -V