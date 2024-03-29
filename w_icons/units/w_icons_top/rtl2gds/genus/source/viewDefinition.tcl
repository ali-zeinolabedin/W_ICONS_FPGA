#create_library_set -name WC_libs -timing [ list ${PRJ_DIR}/resources/LIB_STDCELL_1.8V_NLDM/tcb018gbwp7twc.lib ${PRJ_DIR}/resources/rec_stim64ch_macro_125C_wc.lib ${PRJ_DIR}/resources/LIB_IOCELL_1.8V_NLDM/tpd018bcdnv5wc.lib]
#create_library_set -name BC_libs -timing [ list ${PRJ_DIR}/resources/LIB_STDCELL_1.8V_NLDM/tcb018gbwp7tbc.lib ${PRJ_DIR}/resources/rec_stim64ch_macro_0C_bc.lib ${PRJ_DIR}/resources/LIB_IOCELL_1.8V_NLDM/tpd018bcdnv5bc.lib]

create_library_set -name WC_libs -timing [ list ${PRJ_DIR}/resources/LIB_STDCELL_1.8V_NLDM/tcb018gbwp7twc.lib ${PRJ_DIR}/resources/rec_stim64ch_macro_125C_wc.lib /collab/UlkaSemi/DKITS/TSMC/PDK/180HVBCD/Generated_files/PDUW0412_wc_1p62_125C.lib]
create_library_set -name BC_libs -timing [ list ${PRJ_DIR}/resources/LIB_STDCELL_1.8V_NLDM/tcb018gbwp7tbc.lib ${PRJ_DIR}/resources/rec_stim64ch_macro_0C_bc.lib /collab/UlkaSemi/DKITS/TSMC/PDK/180HVBCD/Generated_files/PDUW0412_bc_1p98_0C.lib]
create_library_set -name TC_libs -timing [ list ${PRJ_DIR}/resources/LIB_STDCELL_1.8V_NLDM/tcb018gbwp7ttc.lib ${PRJ_DIR}/resources/rec_stim64ch_macro_25C_tc.lib /collab/UlkaSemi/DKITS/TSMC/PDK/180HVBCD/Generated_files/PDUW0412_tt_1p8_25C.lib]




#create_library_set -name WC_libs -timing [ list ${PRJ_DIR}/resources/LIB_STDCELL_1.8V_NLDM/tcb018gbwp7twc.lib ${PRJ_DIR}/resources/rec_stim64ch_macro_125C_wc.lib]
#create_library_set -name BC_libs -timing [ list ${PRJ_DIR}/resources/LIB_STDCELL_1.8V_NLDM/tcb018gbwp7tbc.lib ${PRJ_DIR}/resources/rec_stim64ch_macro_0C_bc.lib]


create_opcond -name op_cond_slow -process 1 -voltage 0.9 -temperature 125
create_opcond -name op_cond_fast -process 1 -voltage 1.1 -temperature 0
create_opcond -name op_cond_typ -process 1 -voltage 1.8 -temperature 25

create_timing_condition -name WC_tc -opcond op_cond_slow -library_sets WC_libs
create_timing_condition -name BC_tc -opcond op_cond_fast -library_sets BC_libs
create_timing_condition -name TC_tc -opcond op_cond_typ -library_sets TC_libs

create_rc_corner -name WC_rc -temperature 125 -qrc_tech ../../genus/source/QRC/qrcTechFile_wc
create_rc_corner -name BC_rc -temperature 0   -qrc_tech ../../genus/source/QRC/qrcTechFile_bc
create_rc_corner -name TC_rc -temperature 25  -qrc_tech ../../genus/source/QRC/qrcTechFile_tc

create_delay_corner -name WC_dc -timing_condition WC_tc -rc_corner WC_rc
create_delay_corner -name BC_dc -timing_condition BC_tc -rc_corner BC_rc
create_delay_corner -name TC_dc -timing_condition TC_tc -rc_corner TC_rc

#create_delay_corner -name WC_dc -timing_condition WC_tc
#create_delay_corner -name BC_dc -timing_condition BC_tc

#create_constraint_mode -name func_const -sdc_files ../source/w_icons_core.sdc
#create_constraint_mode -name scan_const -sdc_files ../source/w_icons_core_scan.sdc
create_constraint_mode -name func_const -sdc_files ../source/w_icons_top.sdc



create_analysis_view -name func_WC -delay_corner WC_dc -constraint_mode func_const
create_analysis_view -name func_BC -delay_corner BC_dc -constraint_mode func_const
create_analysis_view -name func_TC -delay_corner TC_dc -constraint_mode func_const

#create_analysis_view -name scan_BC -delay_corner BC_dc -constraint_mode scan_const

#set_analysis_view -setup [list func_WC] -hold [list func_BC]
set_analysis_view -setup [list func_TC] -hold [list func_WC]
