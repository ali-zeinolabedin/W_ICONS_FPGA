#-------------------------------------
#  Module : Makefile
#  Author : Ali Zeinolabedin 
#  Company: Blackrock Neurotech
#-------------------------------------

OLDAFTERDAYS := 10
COVERAGE_EN  := 0

# Only update the following if needed
DEST_DIR_STM     := ./export_rtl/

# defining the tcs for the RTL regression
TESTCASES := \
	w_icons_top.tc_sanity \
	w_icons_top.tc_sanity_stim \
	w_icons_top.tc_rec_all_chs \
	w_icons_top.tc_rec_discharge \
	w_icons_top.tc_rec_test_mode \
	w_icons_top.tc_stim_mask_chk_err \
	w_icons_top.tc_crc5 \
	w_icons_top.tc_rec_impedance \
	w_icons_top.tc_rf_toggle \
	w_icons_top.tc_stim_random_chs \
	w_icons_top.tc_stim_selected_chs \
	w_icons_top.tc_stim_all_mask_chk_err \
    w_icons_top.tc_rec_selected_chs \
	w_icons_top.tc_stim_1ch \
	w_icons_top.tc_stim_ch_err \
	w_icons_top.tc_stim_1ch_long \
	w_icons_top.tc_rec_impedance_1ch \

#TESTCASES_NET := \
	w_icons_top.tc_sanity \
	w_icons_top.tc_sanity_stim \
	w_icons_top.tc_rec_all_chs \
	w_icons_top.tc_rec_discharge \
	w_icons_top.tc_rec_test_mode \
	w_icons_top.tc_stim_mask_chk_err \
	w_icons_top.tc_rec_impedance \
	w_icons_top.tc_rf_toggle \
	w_icons_top.tc_stim_random_chs \
	w_icons_top.tc_stim_selected_chs \
	w_icons_top.tc_stim_all_mask_chk_err \
    w_icons_top.tc_stim_1ch \
	w_icons_top.tc_stim_ch_err \
	
TESTCASES_NET := \
	w_icons_top.tc_sanity \
	w_icons_top.tc_sanity_stim \
	w_icons_top.tc_rec_all_chs \
	w_icons_top.tc_rec_discharge \
	w_icons_top.tc_rec_test_mode \
	w_icons_top.tc_stim_mask_chk_err \
	w_icons_top.tc_crc5 \
	w_icons_top.tc_rec_impedance \
	w_icons_top.tc_rf_toggle \
	w_icons_top.tc_stim_random_chs \
	w_icons_top.tc_stim_selected_chs \
	w_icons_top.tc_stim_all_mask_chk_err \
    w_icons_top.tc_rec_selected_chs \
	w_icons_top.tc_stim_1ch \
	w_icons_top.tc_stim_ch_err \
	w_icons_top.tc_stim_1ch_long \
	w_icons_top.tc_rec_impedance_1ch \

#===============================================================================
# The following statements usually need not to be changed
#===============================================================================
# Setting for the RTL files extraction
VLOG_SRC_FILES   := $(wildcard sources/rtl.vlog.sources)
VLOG_SOURCES     := $(foreach f,$(VLOG_SRC_FILES), $(shell echo $(shell cat $f | sed -e 'sX^\(\#\|//\).*XX')))
VLOG_SOURCES_RTL := $(filter-out ${PRJ_DIR}/units/rec_stim64ch_macro/source/behavioral/verilog/rec_stim64ch_macro.v, $(VLOG_SOURCES))
DIR_NAME_P1      := top_level_$(shell date "+%a")_$(shell git log -n1 --format=%H | cut -c1-5)
DIR_NAME_P2      := ${DIR_NAME_P1}_$(shell date '+%H_%M')
DEST_DIR         := ${DEST_DIR_STM}${DIR_NAME_P2}
#$(info $(VLOG_SOURCES) )

include ${PRJ_DIR}/env/regression/Makefile.regression
