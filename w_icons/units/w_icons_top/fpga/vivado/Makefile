##################################################################
#  Author:  Ali Zeinolabedin			                         #
#  Description: very inital version and it                       #
#  should be improved in each section                            #
#  TBD: adding synth feature/opt/phys_opt/post_route_opt to flow #
##################################################################

TOP_MODULE   := w_icons_top
PROJECT      := w_icons_top_fpga
TOOL_PATH    := 

#===============================================================================
# Device choice
#===============================================================================
SYN_FAMILY  := 
SYN_DEVICE  := xc7a100tcsg324
SYN_PACKAGE := 
SYN_GRADE   := -1

#===============================================================================
# The following statements usually could be changed but carefully
#===============================================================================
SYN_PRE_PROJECT_CMD  := 
SYN_POST_PROJECT_CMD := 

SYN_PRE_SYNTHESIZE_CMD  := 
SYN_POST_SYNTHESIZE_CMD := 

SYN_PRE_PAR_CMD  := 
SYN_POST_PAR_CMD := 

SYN_PRE_BITSTREAM_CMD  := 
SYN_POST_BITSTREAM_CMD := 

#===============================================================================
# The following statements usually need not to be changed
#===============================================================================
VLOG_SRC_FILES   += $(wildcard sources/*)
VLOG_SRC_ARGS    += $(addprefix -f ,$(VLOG_SRC_FILES))
VLOG_SOURCES_all += $(foreach f,$(VLOG_SRC_FILES), $(shell echo $(shell cat $f | sed -e 'sX^\(\#\|//\).*XX')))

#VLOG_SOURCES_NTB_NPAD      += $(filter-out /home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/units/w_icons_top/source/rtl/verilog/w_icons_pads.v, $(VLOG_SOURCES_all))
#VLOG_SOURCES_NTB_NPAD_NTOP += $(filter-out /home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/units/w_icons_top/source/rtl/verilog/w_icons_top.v, $(VLOG_SOURCES_NTB_NPAD))
VLOG_SOURCES               += $(VLOG_SOURCES_all) #$(filter-out /home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/units/rec_stim64ch_macro/source/behavioral/verilog/rec_stim64ch_macro.v, $(VLOG_SOURCES_NTB_NPAD_NTOP))

SOURCES_VerilogFile := $(VLOG_SOURCES)
$(info $(VLOG_SOURCES))
SOURCES_XDCFile     := ./constraints/Arty-A7-100-Master.xdc
$(info $(SOURCES_XDCFile))

# ------------  build and run tools  -------------------------------------------
TCL_INTERPRETER := vivado -mode tcl -source 
ifneq ($(strip $(TOOL_PATH)),)
TCL_INTERPRETER := $(TOOL_PATH)/$(TCL_INTERPRETER)
endif

#-------------  working directory  ---------------------------------------------
LOG_DIR      ?= .work.fpga
REPORT_DIR   ?= report
PROJECT_FILE := ./$(LOG_DIR)/$(PROJECT).xpr

TCL_CREATE   := create_project $(PROJECT) ./$(LOG_DIR)/
TCL_OPEN     := open_project $(PROJECT_FILE)
TCL_CLOSE    := exit

ifneq ($(wildcard $(PROJECT_FILE)),)
TCL_CREATE   := $(TCL_OPEN)
endif
# ------------  tool flags for VIVADO  ---------------------------------------
VIVADO_FLAGS     ?= -tempDir ./$(LOG_DIR)  -log ./$(LOG_DIR)/$(TOP_MODULE).vivado.log
VIVADO_FLAGS_SYN ?= -tempDir ./$(LOG_DIR)  -log ./$(LOG_DIR)/$(TOP_MODULE).vivado.syn.log
VIVADO_FLAGS_PAR ?= -tempDir ./$(LOG_DIR)  -log ./$(LOG_DIR)/$(TOP_MODULE).vivado.par.log


#target for performing local synthesis
all: bitstream

files.tcl: | $(LOG_DIR)  
		@$(foreach sourcefile, $(SOURCES_VerilogFile), echo "add_files -norecurse $(sourcefile); set_property IS_GLOBAL_INCLUDE 1 [get_files $(sourcefile)]" >> tcls/$@ &)
		@$(foreach sourcefile, $(SOURCES_XDCFile), echo "add_files -norecurse $(sourcefile); set_property IS_GLOBAL_INCLUDE 1 [get_files $(sourcefile)]" >> tcls/$@ &)

project.tcl:
		echo $(TCL_CREATE) >> tcls/$@
		echo # project properties >> tcls/$@
		echo set_property "part" "$(SYN_DEVICE)$(SYN_PACKAGE)$(SYN_GRADE)" [current_project] >> tcls/$@
		echo set_property "target_language" "verilog" [current_project] >> tcls/$@
		echo set_property "top" "$(TOP_MODULE)" [get_property srcset [current_run]] >> tcls/$@
		echo source tcls/files.tcl >> tcls/$@
		echo update_compile_order -fileset sources_1 >> tcls/$@
		echo update_compile_order -fileset sim_1 >> tcls/$@
		echo $(TCL_CLOSE) >> tcls/$@

project: | files.tcl project.tcl
		$(SYN_PRE_PROJECT_CMD)
		$(TCL_INTERPRETER) tcls/$@.tcl tcls/project.tcl $(VIVADO_FLAGS)
		$(SYN_POST_PROJECT_CMD)
		touch $(LOG_DIR)/$@.step.log

synthesize.tcl:
		echo $(TCL_OPEN) >> tcls/$@
		echo # synthesize properties >> tcls/$@
		echo reset_run synth_1 >> tcls/$@
		echo launch_runs synth_1 >> tcls/$@
		echo wait_on_run synth_1 >> tcls/$@
		#open the run to generate the timing
		echo open_run synth_1 >> tcls/$@
		echo report_timing_summary -file ./$(REPORT_DIR)/synth_timing_report.txt >> tcls/$@
		echo set result [get_property STATUS [get_runs synth_1]] >> tcls/$@
		echo set keyword [lindex [split '$$'result " "] end] >> tcls/$@
		echo if { '$$'keyword != \"Complete!\" } { >> tcls/$@
		echo     exit 1 >> tcls/$@
		echo } >> tcls/$@
		echo $(TCL_CLOSE) >> tcls/$@

synthesize: project | synthesize.tcl
		$(SYN_PRE_SYNTHESIZE_CMD)
		$(TCL_INTERPRETER) tcls/$@.tcl $(VIVADO_FLAGS_SYN)
		$(SYN_POST_SYNTHESIZE_CMD)
		touch $(LOG_DIR)/$@.step.log
par.tcl:
		echo $(TCL_OPEN) >> tcls/$@
		echo # par properties >> tcls/$@
		echo reset_run impl_1 >> tcls/$@
		echo launch_runs impl_1 >> tcls/$@
		echo wait_on_run impl_1 >> tcls/$@
		#open the run to generate the timing
		echo open_run impl_1 >> tcls/$@
		echo report_timing_summary -file ./$(REPORT_DIR)/impl_timing_report.txt >> tcls/$@
		echo set result [get_property STATUS [get_runs impl_1]] >> tcls/$@
		echo set keyword [lindex [split '$$'result " "] end] >> tcls/$@
		echo if { '$$'keyword != \"Complete!\" } { >> tcls/$@
		echo     exit 1 >> tcls/$@
		echo } >> tcls/$@
		echo $(TCL_CLOSE) >> tcls/$@

par: synthesize | par.tcl
		$(SYN_PRE_PAR_CMD)
		$(TCL_INTERPRETER) tcls/$@.tcl $(VIVADO_FLAGS_PAR)
		$(SYN_POST_PAR_CMD)
		touch $(LOG_DIR)/$@.step.log

bitstream.tcl:
		echo $(TCL_OPEN) >> tcls/$@
		echo launch_runs impl_1 -to_step write_bitstream >> tcls/$@
		echo wait_on_run impl_1 >> tcls/$@
		echo $(TCL_CLOSE) >> tcls/$@

bitstream:  bitstream.tcl
		$(SYN_PRE_BITSTREAM_CMD)
		$(TCL_INTERPRETER) tcls/$@.tcl  $(VIVADO_FLAGS_PAR)
		$(SYN_POST_BITSTREAM_CMD)
		touch $(LOG_DIR)/$@.step.log

CLEAN_TARGETS := $(LIBS) .Xil *.jou *.log *.pb *.dmp $(PROJECT).cache $(PROJECT).data work $(PROJECT).runs $(PROJECT).hw $(PROJECT).ip_user_files $(PROJECT_FILE)

$(LOG_DIR):
	@mkdir -p $(LOG_DIR)
	@mkdir -p $(REPORT_DIR)


clean:
		rm -rf $(CLEAN_TARGETS)
		rm -rf project synthesize translate map par bitstream
		rm -rf tcls/files.tcl tcls/project.tcl tcls/synthesize.tcl tcls/par.tcl tcls/bitstream.tcl
		rm -rf $(LOG_DIR)
		rm -rf $(REPORT_DIR)
		
mrproper: clean
		rm -rf *.bit *.bin
		

.PHONY: mrproper clean all
