/*
 * Module: w_icons_rf
 * Author: Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
`timescale 1ns/1ps

module w_icons_rf (
    apb_resetn_i,
    apb_clk_i,
    apb_addr_i,
    apb_sel_i,
    apb_enable_i,
    apb_wdata_i,
    apb_write_i,
    apb_strb_i,
    apb_rdata_o,
    apb_ready_o,
    apb_slverr_o,
    apb_prot_i,
    apb_prot_en_i,
    chip_id_i,
    stim_mask_en_o,
    amp_gain_g1_o,
    amp_gain_g2_o,
    chip_error_load_o,
    chip_error_cmd_o,
    chip_error_crc5_o,
    en_rec_ch_g1_o,
    en_rec_ch_g2_o,
    stim_monophasic_o,
    stim_mask0_g1_o,
    stim_mask0_g2_o,
    stim_mask1_g1_o,
    stim_mask1_g2_o,
    stim_mask2_g1_o,
    stim_mask2_g2_o,
    stim_mask3_g1_o,
    stim_mask3_g2_o,
    stim_mask4_g1_o,
    stim_mask4_g2_o,
    stim_mask5_g1_o,
    stim_mask5_g2_o,
    stim_mask6_g1_o,
    stim_mask6_g2_o,
    stim_mask7_g1_o,
    stim_mask7_g2_o,
    stim0_interval_o,
    stim0_ia_o,
    stim0_ic_o,
    stim0_pulse_wc_o,
    stim0_pulse_gap_o,
    stim0_pulse_wa_o,
    stim0_pulse_num_o,
    stim0_pol_o,
    stim1_interval_o,
    stim1_ia_o,
    stim1_ic_o,
    stim1_pulse_wc_o,
    stim1_pulse_gap_o,
    stim1_pulse_wa_o,
    stim1_pulse_num_o,
    stim1_pol_o,
    stim2_interval_o,
    stim2_ia_o,
    stim2_ic_o,
    stim2_pulse_wc_o,
    stim2_pulse_gap_o,
    stim2_pulse_wa_o,
    stim2_pulse_num_o,
    stim2_pol_o,
    stim3_interval_o,
    stim3_ia_o,
    stim3_ic_o,
    stim3_pulse_wc_o,
    stim3_pulse_gap_o,
    stim3_pulse_wa_o,
    stim3_pulse_num_o,
    stim3_pol_o,
    stim4_interval_o,
    stim4_ia_o,
    stim4_ic_o,
    stim4_pulse_wc_o,
    stim4_pulse_gap_o,
    stim4_pulse_wa_o,
    stim4_pulse_num_o,
    stim4_pol_o,
    stim5_interval_o,
    stim5_ia_o,
    stim5_ic_o,
    stim5_pulse_wc_o,
    stim5_pulse_gap_o,
    stim5_pulse_wa_o,
    stim5_pulse_num_o,
    stim5_pol_o,
    stim6_interval_o,
    stim6_ia_o,
    stim6_ic_o,
    stim6_pulse_wc_o,
    stim6_pulse_gap_o,
    stim6_pulse_wa_o,
    stim6_pulse_num_o,
    stim6_pol_o,
    stim7_interval_o,
    stim7_ia_o,
    stim7_ic_o,
    stim7_pulse_wc_o,
    stim7_pulse_gap_o,
    stim7_pulse_wa_o,
    stim7_pulse_num_o,
    stim7_pol_o,
    stim8_interval_o,
    stim8_ia_o,
    stim8_ic_o,
    stim8_pulse_wc_o,
    stim8_pulse_gap_o,
    stim8_pulse_wa_o,
    stim8_pulse_num_o,
    stim8_pol_o,
    stim9_interval_o,
    stim9_ia_o,
    stim9_ic_o,
    stim9_pulse_wc_o,
    stim9_pulse_gap_o,
    stim9_pulse_wa_o,
    stim9_pulse_num_o,
    stim9_pol_o,
    stim10_interval_o,
    stim10_ia_o,
    stim10_ic_o,
    stim10_pulse_wc_o,
    stim10_pulse_gap_o,
    stim10_pulse_wa_o,
    stim10_pulse_num_o,
    stim10_pol_o,
    stim11_interval_o,
    stim11_ia_o,
    stim11_ic_o,
    stim11_pulse_wc_o,
    stim11_pulse_gap_o,
    stim11_pulse_wa_o,
    stim11_pulse_num_o,
    stim11_pol_o,
    stim12_interval_o,
    stim12_ia_o,
    stim12_ic_o,
    stim12_pulse_wc_o,
    stim12_pulse_gap_o,
    stim12_pulse_wa_o,
    stim12_pulse_num_o,
    stim12_pol_o,
    stim13_interval_o,
    stim13_ia_o,
    stim13_ic_o,
    stim13_pulse_wc_o,
    stim13_pulse_gap_o,
    stim13_pulse_wa_o,
    stim13_pulse_num_o,
    stim13_pol_o,
    stim14_interval_o,
    stim14_ia_o,
    stim14_ic_o,
    stim14_pulse_wc_o,
    stim14_pulse_gap_o,
    stim14_pulse_wa_o,
    stim14_pulse_num_o,
    stim14_pol_o,
    stim15_interval_o,
    stim15_ia_o,
    stim15_ic_o,
    stim15_pulse_wc_o,
    stim15_pulse_gap_o,
    stim15_pulse_wa_o,
    stim15_pulse_num_o,
    stim15_pol_o,
    stim16_interval_o,
    stim16_ia_o,
    stim16_ic_o,
    stim16_pulse_wc_o,
    stim16_pulse_gap_o,
    stim16_pulse_wa_o,
    stim16_pulse_num_o,
    stim16_pol_o,
    stim17_interval_o,
    stim17_ia_o,
    stim17_ic_o,
    stim17_pulse_wc_o,
    stim17_pulse_gap_o,
    stim17_pulse_wa_o,
    stim17_pulse_num_o,
    stim17_pol_o,
    stim18_interval_o,
    stim18_ia_o,
    stim18_ic_o,
    stim18_pulse_wc_o,
    stim18_pulse_gap_o,
    stim18_pulse_wa_o,
    stim18_pulse_num_o,
    stim18_pol_o,
    stim19_interval_o,
    stim19_ia_o,
    stim19_ic_o,
    stim19_pulse_wc_o,
    stim19_pulse_gap_o,
    stim19_pulse_wa_o,
    stim19_pulse_num_o,
    stim19_pol_o,
    stim20_interval_o,
    stim20_ia_o,
    stim20_ic_o,
    stim20_pulse_wc_o,
    stim20_pulse_gap_o,
    stim20_pulse_wa_o,
    stim20_pulse_num_o,
    stim20_pol_o,
    stim21_interval_o,
    stim21_ia_o,
    stim21_ic_o,
    stim21_pulse_wc_o,
    stim21_pulse_gap_o,
    stim21_pulse_wa_o,
    stim21_pulse_num_o,
    stim21_pol_o,
    stim22_interval_o,
    stim22_ia_o,
    stim22_ic_o,
    stim22_pulse_wc_o,
    stim22_pulse_gap_o,
    stim22_pulse_wa_o,
    stim22_pulse_num_o,
    stim22_pol_o,
    stim23_interval_o,
    stim23_ia_o,
    stim23_ic_o,
    stim23_pulse_wc_o,
    stim23_pulse_gap_o,
    stim23_pulse_wa_o,
    stim23_pulse_num_o,
    stim23_pol_o,
    stim24_interval_o,
    stim24_ia_o,
    stim24_ic_o,
    stim24_pulse_wc_o,
    stim24_pulse_gap_o,
    stim24_pulse_wa_o,
    stim24_pulse_num_o,
    stim24_pol_o,
    stim25_interval_o,
    stim25_ia_o,
    stim25_ic_o,
    stim25_pulse_wc_o,
    stim25_pulse_gap_o,
    stim25_pulse_wa_o,
    stim25_pulse_num_o,
    stim25_pol_o,
    stim26_interval_o,
    stim26_ia_o,
    stim26_ic_o,
    stim26_pulse_wc_o,
    stim26_pulse_gap_o,
    stim26_pulse_wa_o,
    stim26_pulse_num_o,
    stim26_pol_o,
    stim27_interval_o,
    stim27_ia_o,
    stim27_ic_o,
    stim27_pulse_wc_o,
    stim27_pulse_gap_o,
    stim27_pulse_wa_o,
    stim27_pulse_num_o,
    stim27_pol_o,
    stim28_interval_o,
    stim28_ia_o,
    stim28_ic_o,
    stim28_pulse_wc_o,
    stim28_pulse_gap_o,
    stim28_pulse_wa_o,
    stim28_pulse_num_o,
    stim28_pol_o,
    stim29_interval_o,
    stim29_ia_o,
    stim29_ic_o,
    stim29_pulse_wc_o,
    stim29_pulse_gap_o,
    stim29_pulse_wa_o,
    stim29_pulse_num_o,
    stim29_pol_o,
    stim30_interval_o,
    stim30_ia_o,
    stim30_ic_o,
    stim30_pulse_wc_o,
    stim30_pulse_gap_o,
    stim30_pulse_wa_o,
    stim30_pulse_num_o,
    stim30_pol_o,
    stim31_interval_o,
    stim31_ia_o,
    stim31_ic_o,
    stim31_pulse_wc_o,
    stim31_pulse_gap_o,
    stim31_pulse_wa_o,
    stim31_pulse_num_o,
    stim31_pol_o,
    stim32_interval_o,
    stim32_ia_o,
    stim32_ic_o,
    stim32_pulse_wc_o,
    stim32_pulse_gap_o,
    stim32_pulse_wa_o,
    stim32_pulse_num_o,
    stim32_pol_o,
    stim33_interval_o,
    stim33_ia_o,
    stim33_ic_o,
    stim33_pulse_wc_o,
    stim33_pulse_gap_o,
    stim33_pulse_wa_o,
    stim33_pulse_num_o,
    stim33_pol_o,
    stim34_interval_o,
    stim34_ia_o,
    stim34_ic_o,
    stim34_pulse_wc_o,
    stim34_pulse_gap_o,
    stim34_pulse_wa_o,
    stim34_pulse_num_o,
    stim34_pol_o,
    stim35_interval_o,
    stim35_ia_o,
    stim35_ic_o,
    stim35_pulse_wc_o,
    stim35_pulse_gap_o,
    stim35_pulse_wa_o,
    stim35_pulse_num_o,
    stim35_pol_o,
    stim36_interval_o,
    stim36_ia_o,
    stim36_ic_o,
    stim36_pulse_wc_o,
    stim36_pulse_gap_o,
    stim36_pulse_wa_o,
    stim36_pulse_num_o,
    stim36_pol_o,
    stim37_interval_o,
    stim37_ia_o,
    stim37_ic_o,
    stim37_pulse_wc_o,
    stim37_pulse_gap_o,
    stim37_pulse_wa_o,
    stim37_pulse_num_o,
    stim37_pol_o,
    stim38_interval_o,
    stim38_ia_o,
    stim38_ic_o,
    stim38_pulse_wc_o,
    stim38_pulse_gap_o,
    stim38_pulse_wa_o,
    stim38_pulse_num_o,
    stim38_pol_o,
    stim39_interval_o,
    stim39_ia_o,
    stim39_ic_o,
    stim39_pulse_wc_o,
    stim39_pulse_gap_o,
    stim39_pulse_wa_o,
    stim39_pulse_num_o,
    stim39_pol_o,
    stim40_interval_o,
    stim40_ia_o,
    stim40_ic_o,
    stim40_pulse_wc_o,
    stim40_pulse_gap_o,
    stim40_pulse_wa_o,
    stim40_pulse_num_o,
    stim40_pol_o,
    stim41_interval_o,
    stim41_ia_o,
    stim41_ic_o,
    stim41_pulse_wc_o,
    stim41_pulse_gap_o,
    stim41_pulse_wa_o,
    stim41_pulse_num_o,
    stim41_pol_o,
    stim42_interval_o,
    stim42_ia_o,
    stim42_ic_o,
    stim42_pulse_wc_o,
    stim42_pulse_gap_o,
    stim42_pulse_wa_o,
    stim42_pulse_num_o,
    stim42_pol_o,
    stim43_interval_o,
    stim43_ia_o,
    stim43_ic_o,
    stim43_pulse_wc_o,
    stim43_pulse_gap_o,
    stim43_pulse_wa_o,
    stim43_pulse_num_o,
    stim43_pol_o,
    stim44_interval_o,
    stim44_ia_o,
    stim44_ic_o,
    stim44_pulse_wc_o,
    stim44_pulse_gap_o,
    stim44_pulse_wa_o,
    stim44_pulse_num_o,
    stim44_pol_o,
    stim45_interval_o,
    stim45_ia_o,
    stim45_ic_o,
    stim45_pulse_wc_o,
    stim45_pulse_gap_o,
    stim45_pulse_wa_o,
    stim45_pulse_num_o,
    stim45_pol_o,
    stim46_interval_o,
    stim46_ia_o,
    stim46_ic_o,
    stim46_pulse_wc_o,
    stim46_pulse_gap_o,
    stim46_pulse_wa_o,
    stim46_pulse_num_o,
    stim46_pol_o,
    stim47_interval_o,
    stim47_ia_o,
    stim47_ic_o,
    stim47_pulse_wc_o,
    stim47_pulse_gap_o,
    stim47_pulse_wa_o,
    stim47_pulse_num_o,
    stim47_pol_o,
    stim48_interval_o,
    stim48_ia_o,
    stim48_ic_o,
    stim48_pulse_wc_o,
    stim48_pulse_gap_o,
    stim48_pulse_wa_o,
    stim48_pulse_num_o,
    stim48_pol_o,
    stim49_interval_o,
    stim49_ia_o,
    stim49_ic_o,
    stim49_pulse_wc_o,
    stim49_pulse_gap_o,
    stim49_pulse_wa_o,
    stim49_pulse_num_o,
    stim49_pol_o,
    stim50_interval_o,
    stim50_ia_o,
    stim50_ic_o,
    stim50_pulse_wc_o,
    stim50_pulse_gap_o,
    stim50_pulse_wa_o,
    stim50_pulse_num_o,
    stim50_pol_o,
    stim51_interval_o,
    stim51_ia_o,
    stim51_ic_o,
    stim51_pulse_wc_o,
    stim51_pulse_gap_o,
    stim51_pulse_wa_o,
    stim51_pulse_num_o,
    stim51_pol_o,
    stim52_interval_o,
    stim52_ia_o,
    stim52_ic_o,
    stim52_pulse_wc_o,
    stim52_pulse_gap_o,
    stim52_pulse_wa_o,
    stim52_pulse_num_o,
    stim52_pol_o,
    stim53_interval_o,
    stim53_ia_o,
    stim53_ic_o,
    stim53_pulse_wc_o,
    stim53_pulse_gap_o,
    stim53_pulse_wa_o,
    stim53_pulse_num_o,
    stim53_pol_o,
    stim54_interval_o,
    stim54_ia_o,
    stim54_ic_o,
    stim54_pulse_wc_o,
    stim54_pulse_gap_o,
    stim54_pulse_wa_o,
    stim54_pulse_num_o,
    stim54_pol_o,
    stim55_interval_o,
    stim55_ia_o,
    stim55_ic_o,
    stim55_pulse_wc_o,
    stim55_pulse_gap_o,
    stim55_pulse_wa_o,
    stim55_pulse_num_o,
    stim55_pol_o,
    stim56_interval_o,
    stim56_ia_o,
    stim56_ic_o,
    stim56_pulse_wc_o,
    stim56_pulse_gap_o,
    stim56_pulse_wa_o,
    stim56_pulse_num_o,
    stim56_pol_o,
    stim57_interval_o,
    stim57_ia_o,
    stim57_ic_o,
    stim57_pulse_wc_o,
    stim57_pulse_gap_o,
    stim57_pulse_wa_o,
    stim57_pulse_num_o,
    stim57_pol_o,
    stim58_interval_o,
    stim58_ia_o,
    stim58_ic_o,
    stim58_pulse_wc_o,
    stim58_pulse_gap_o,
    stim58_pulse_wa_o,
    stim58_pulse_num_o,
    stim58_pol_o,
    stim59_interval_o,
    stim59_ia_o,
    stim59_ic_o,
    stim59_pulse_wc_o,
    stim59_pulse_gap_o,
    stim59_pulse_wa_o,
    stim59_pulse_num_o,
    stim59_pol_o,
    stim60_interval_o,
    stim60_ia_o,
    stim60_ic_o,
    stim60_pulse_wc_o,
    stim60_pulse_gap_o,
    stim60_pulse_wa_o,
    stim60_pulse_num_o,
    stim60_pol_o,
    stim61_interval_o,
    stim61_ia_o,
    stim61_ic_o,
    stim61_pulse_wc_o,
    stim61_pulse_gap_o,
    stim61_pulse_wa_o,
    stim61_pulse_num_o,
    stim61_pol_o,
    stim62_interval_o,
    stim62_ia_o,
    stim62_ic_o,
    stim62_pulse_wc_o,
    stim62_pulse_gap_o,
    stim62_pulse_wa_o,
    stim62_pulse_num_o,
    stim62_pol_o,
    stim63_interval_o,
    stim63_ia_o,
    stim63_ic_o,
    stim63_pulse_wc_o,
    stim63_pulse_gap_o,
    stim63_pulse_wa_o,
    stim63_pulse_num_o,
    stim63_pol_o,
    stim_range_unsync_o,
    div_clk_stim_o,
    en_clk_stim_o,
    div_clk_discharge_o,
    en_clk_discharge_o,
    pw_discharge_o,
    rec_en_o
);

    parameter IN_WIDTH_IA        = 8;
    parameter IN_WIDTH_WA        = 14;
    parameter STIM_CLKDIV_W      = 12;
    parameter CLKDIV_W_DISCHARGE = 8;

    input                           apb_resetn_i;
    input                           apb_clk_i;
    input                     [9:0] apb_addr_i;
    input                           apb_sel_i;
    input                           apb_enable_i;
    input                    [31:0] apb_wdata_i;
    input                           apb_write_i;
    input                     [3:0] apb_strb_i;
    output                   [31:0] apb_rdata_o;
    output                          apb_ready_o;
    output                          apb_slverr_o;
    input                     [2:0] apb_prot_i;
    input                           apb_prot_en_i;
    input                    [31:0] chip_id_i;
    output                    [7:0] stim_mask_en_o;
    output                   [31:0] amp_gain_g1_o;
    output                   [31:0] amp_gain_g2_o;
    output                   [31:0] chip_error_load_o;
    output                    [3:0] chip_error_cmd_o;
    output                    [4:0] chip_error_crc5_o;
    output                   [31:0] en_rec_ch_g1_o;
    output                   [31:0] en_rec_ch_g2_o;
    output                          stim_monophasic_o;
    output                   [31:0] stim_mask0_g1_o;
    output                   [31:0] stim_mask0_g2_o;
    output                   [31:0] stim_mask1_g1_o;
    output                   [31:0] stim_mask1_g2_o;
    output                   [31:0] stim_mask2_g1_o;
    output                   [31:0] stim_mask2_g2_o;
    output                   [31:0] stim_mask3_g1_o;
    output                   [31:0] stim_mask3_g2_o;
    output                   [31:0] stim_mask4_g1_o;
    output                   [31:0] stim_mask4_g2_o;
    output                   [31:0] stim_mask5_g1_o;
    output                   [31:0] stim_mask5_g2_o;
    output                   [31:0] stim_mask6_g1_o;
    output                   [31:0] stim_mask6_g2_o;
    output                   [31:0] stim_mask7_g1_o;
    output                   [31:0] stim_mask7_g2_o;
    output                   [15:0] stim0_interval_o;
    output                    [7:0] stim0_ia_o;
    output                    [7:0] stim0_ic_o;
    output                   [13:0] stim0_pulse_wc_o;
    output                   [13:0] stim0_pulse_gap_o;
    output                   [13:0] stim0_pulse_wa_o;
    output                   [11:0] stim0_pulse_num_o;
    output                          stim0_pol_o;
    output                   [15:0] stim1_interval_o;
    output                    [7:0] stim1_ia_o;
    output                    [7:0] stim1_ic_o;
    output                   [13:0] stim1_pulse_wc_o;
    output                   [13:0] stim1_pulse_gap_o;
    output                   [13:0] stim1_pulse_wa_o;
    output                   [11:0] stim1_pulse_num_o;
    output                          stim1_pol_o;
    output                   [15:0] stim2_interval_o;
    output                    [7:0] stim2_ia_o;
    output                    [7:0] stim2_ic_o;
    output                   [13:0] stim2_pulse_wc_o;
    output                   [13:0] stim2_pulse_gap_o;
    output                   [13:0] stim2_pulse_wa_o;
    output                   [11:0] stim2_pulse_num_o;
    output                          stim2_pol_o;
    output                   [15:0] stim3_interval_o;
    output                    [7:0] stim3_ia_o;
    output                    [7:0] stim3_ic_o;
    output                   [13:0] stim3_pulse_wc_o;
    output                   [13:0] stim3_pulse_gap_o;
    output                   [13:0] stim3_pulse_wa_o;
    output                   [11:0] stim3_pulse_num_o;
    output                          stim3_pol_o;
    output                   [15:0] stim4_interval_o;
    output                    [7:0] stim4_ia_o;
    output                    [7:0] stim4_ic_o;
    output                   [13:0] stim4_pulse_wc_o;
    output                   [13:0] stim4_pulse_gap_o;
    output                   [13:0] stim4_pulse_wa_o;
    output                   [11:0] stim4_pulse_num_o;
    output                          stim4_pol_o;
    output                   [15:0] stim5_interval_o;
    output                    [7:0] stim5_ia_o;
    output                    [7:0] stim5_ic_o;
    output                   [13:0] stim5_pulse_wc_o;
    output                   [13:0] stim5_pulse_gap_o;
    output                   [13:0] stim5_pulse_wa_o;
    output                   [11:0] stim5_pulse_num_o;
    output                          stim5_pol_o;
    output                   [15:0] stim6_interval_o;
    output                    [7:0] stim6_ia_o;
    output                    [7:0] stim6_ic_o;
    output                   [13:0] stim6_pulse_wc_o;
    output                   [13:0] stim6_pulse_gap_o;
    output                   [13:0] stim6_pulse_wa_o;
    output                   [11:0] stim6_pulse_num_o;
    output                          stim6_pol_o;
    output                   [15:0] stim7_interval_o;
    output                    [7:0] stim7_ia_o;
    output                    [7:0] stim7_ic_o;
    output                   [13:0] stim7_pulse_wc_o;
    output                   [13:0] stim7_pulse_gap_o;
    output                   [13:0] stim7_pulse_wa_o;
    output                   [11:0] stim7_pulse_num_o;
    output                          stim7_pol_o;
    output                   [15:0] stim8_interval_o;
    output                    [7:0] stim8_ia_o;
    output                    [7:0] stim8_ic_o;
    output                   [13:0] stim8_pulse_wc_o;
    output                   [13:0] stim8_pulse_gap_o;
    output                   [13:0] stim8_pulse_wa_o;
    output                   [11:0] stim8_pulse_num_o;
    output                          stim8_pol_o;
    output                   [15:0] stim9_interval_o;
    output                    [7:0] stim9_ia_o;
    output                    [7:0] stim9_ic_o;
    output                   [13:0] stim9_pulse_wc_o;
    output                   [13:0] stim9_pulse_gap_o;
    output                   [13:0] stim9_pulse_wa_o;
    output                   [11:0] stim9_pulse_num_o;
    output                          stim9_pol_o;
    output                   [15:0] stim10_interval_o;
    output                    [7:0] stim10_ia_o;
    output                    [7:0] stim10_ic_o;
    output                   [13:0] stim10_pulse_wc_o;
    output                   [13:0] stim10_pulse_gap_o;
    output                   [13:0] stim10_pulse_wa_o;
    output                   [11:0] stim10_pulse_num_o;
    output                          stim10_pol_o;
    output                   [15:0] stim11_interval_o;
    output                    [7:0] stim11_ia_o;
    output                    [7:0] stim11_ic_o;
    output                   [13:0] stim11_pulse_wc_o;
    output                   [13:0] stim11_pulse_gap_o;
    output                   [13:0] stim11_pulse_wa_o;
    output                   [11:0] stim11_pulse_num_o;
    output                          stim11_pol_o;
    output                   [15:0] stim12_interval_o;
    output                    [7:0] stim12_ia_o;
    output                    [7:0] stim12_ic_o;
    output                   [13:0] stim12_pulse_wc_o;
    output                   [13:0] stim12_pulse_gap_o;
    output                   [13:0] stim12_pulse_wa_o;
    output                   [11:0] stim12_pulse_num_o;
    output                          stim12_pol_o;
    output                   [15:0] stim13_interval_o;
    output                    [7:0] stim13_ia_o;
    output                    [7:0] stim13_ic_o;
    output                   [13:0] stim13_pulse_wc_o;
    output                   [13:0] stim13_pulse_gap_o;
    output                   [13:0] stim13_pulse_wa_o;
    output                   [11:0] stim13_pulse_num_o;
    output                          stim13_pol_o;
    output                   [15:0] stim14_interval_o;
    output                    [7:0] stim14_ia_o;
    output                    [7:0] stim14_ic_o;
    output                   [13:0] stim14_pulse_wc_o;
    output                   [13:0] stim14_pulse_gap_o;
    output                   [13:0] stim14_pulse_wa_o;
    output                   [11:0] stim14_pulse_num_o;
    output                          stim14_pol_o;
    output                   [15:0] stim15_interval_o;
    output                    [7:0] stim15_ia_o;
    output                    [7:0] stim15_ic_o;
    output                   [13:0] stim15_pulse_wc_o;
    output                   [13:0] stim15_pulse_gap_o;
    output                   [13:0] stim15_pulse_wa_o;
    output                   [11:0] stim15_pulse_num_o;
    output                          stim15_pol_o;
    output                   [15:0] stim16_interval_o;
    output                    [7:0] stim16_ia_o;
    output                    [7:0] stim16_ic_o;
    output                   [13:0] stim16_pulse_wc_o;
    output                   [13:0] stim16_pulse_gap_o;
    output                   [13:0] stim16_pulse_wa_o;
    output                   [11:0] stim16_pulse_num_o;
    output                          stim16_pol_o;
    output                   [15:0] stim17_interval_o;
    output                    [7:0] stim17_ia_o;
    output                    [7:0] stim17_ic_o;
    output                   [13:0] stim17_pulse_wc_o;
    output                   [13:0] stim17_pulse_gap_o;
    output                   [13:0] stim17_pulse_wa_o;
    output                   [11:0] stim17_pulse_num_o;
    output                          stim17_pol_o;
    output                   [15:0] stim18_interval_o;
    output                    [7:0] stim18_ia_o;
    output                    [7:0] stim18_ic_o;
    output                   [13:0] stim18_pulse_wc_o;
    output                   [13:0] stim18_pulse_gap_o;
    output                   [13:0] stim18_pulse_wa_o;
    output                   [11:0] stim18_pulse_num_o;
    output                          stim18_pol_o;
    output                   [15:0] stim19_interval_o;
    output                    [7:0] stim19_ia_o;
    output                    [7:0] stim19_ic_o;
    output                   [13:0] stim19_pulse_wc_o;
    output                   [13:0] stim19_pulse_gap_o;
    output                   [13:0] stim19_pulse_wa_o;
    output                   [11:0] stim19_pulse_num_o;
    output                          stim19_pol_o;
    output                   [15:0] stim20_interval_o;
    output                    [7:0] stim20_ia_o;
    output                    [7:0] stim20_ic_o;
    output                   [13:0] stim20_pulse_wc_o;
    output                   [13:0] stim20_pulse_gap_o;
    output                   [13:0] stim20_pulse_wa_o;
    output                   [11:0] stim20_pulse_num_o;
    output                          stim20_pol_o;
    output                   [15:0] stim21_interval_o;
    output                    [7:0] stim21_ia_o;
    output                    [7:0] stim21_ic_o;
    output                   [13:0] stim21_pulse_wc_o;
    output                   [13:0] stim21_pulse_gap_o;
    output                   [13:0] stim21_pulse_wa_o;
    output                   [11:0] stim21_pulse_num_o;
    output                          stim21_pol_o;
    output                   [15:0] stim22_interval_o;
    output                    [7:0] stim22_ia_o;
    output                    [7:0] stim22_ic_o;
    output                   [13:0] stim22_pulse_wc_o;
    output                   [13:0] stim22_pulse_gap_o;
    output                   [13:0] stim22_pulse_wa_o;
    output                   [11:0] stim22_pulse_num_o;
    output                          stim22_pol_o;
    output                   [15:0] stim23_interval_o;
    output                    [7:0] stim23_ia_o;
    output                    [7:0] stim23_ic_o;
    output                   [13:0] stim23_pulse_wc_o;
    output                   [13:0] stim23_pulse_gap_o;
    output                   [13:0] stim23_pulse_wa_o;
    output                   [11:0] stim23_pulse_num_o;
    output                          stim23_pol_o;
    output                   [15:0] stim24_interval_o;
    output                    [7:0] stim24_ia_o;
    output                    [7:0] stim24_ic_o;
    output                   [13:0] stim24_pulse_wc_o;
    output                   [13:0] stim24_pulse_gap_o;
    output                   [13:0] stim24_pulse_wa_o;
    output                   [11:0] stim24_pulse_num_o;
    output                          stim24_pol_o;
    output                   [15:0] stim25_interval_o;
    output                    [7:0] stim25_ia_o;
    output                    [7:0] stim25_ic_o;
    output                   [13:0] stim25_pulse_wc_o;
    output                   [13:0] stim25_pulse_gap_o;
    output                   [13:0] stim25_pulse_wa_o;
    output                   [11:0] stim25_pulse_num_o;
    output                          stim25_pol_o;
    output                   [15:0] stim26_interval_o;
    output                    [7:0] stim26_ia_o;
    output                    [7:0] stim26_ic_o;
    output                   [13:0] stim26_pulse_wc_o;
    output                   [13:0] stim26_pulse_gap_o;
    output                   [13:0] stim26_pulse_wa_o;
    output                   [11:0] stim26_pulse_num_o;
    output                          stim26_pol_o;
    output                   [15:0] stim27_interval_o;
    output                    [7:0] stim27_ia_o;
    output                    [7:0] stim27_ic_o;
    output                   [13:0] stim27_pulse_wc_o;
    output                   [13:0] stim27_pulse_gap_o;
    output                   [13:0] stim27_pulse_wa_o;
    output                   [11:0] stim27_pulse_num_o;
    output                          stim27_pol_o;
    output                   [15:0] stim28_interval_o;
    output                    [7:0] stim28_ia_o;
    output                    [7:0] stim28_ic_o;
    output                   [13:0] stim28_pulse_wc_o;
    output                   [13:0] stim28_pulse_gap_o;
    output                   [13:0] stim28_pulse_wa_o;
    output                   [11:0] stim28_pulse_num_o;
    output                          stim28_pol_o;
    output                   [15:0] stim29_interval_o;
    output                    [7:0] stim29_ia_o;
    output                    [7:0] stim29_ic_o;
    output                   [13:0] stim29_pulse_wc_o;
    output                   [13:0] stim29_pulse_gap_o;
    output                   [13:0] stim29_pulse_wa_o;
    output                   [11:0] stim29_pulse_num_o;
    output                          stim29_pol_o;
    output                   [15:0] stim30_interval_o;
    output                    [7:0] stim30_ia_o;
    output                    [7:0] stim30_ic_o;
    output                   [13:0] stim30_pulse_wc_o;
    output                   [13:0] stim30_pulse_gap_o;
    output                   [13:0] stim30_pulse_wa_o;
    output                   [11:0] stim30_pulse_num_o;
    output                          stim30_pol_o;
    output                   [15:0] stim31_interval_o;
    output                    [7:0] stim31_ia_o;
    output                    [7:0] stim31_ic_o;
    output                   [13:0] stim31_pulse_wc_o;
    output                   [13:0] stim31_pulse_gap_o;
    output                   [13:0] stim31_pulse_wa_o;
    output                   [11:0] stim31_pulse_num_o;
    output                          stim31_pol_o;
    output                   [15:0] stim32_interval_o;
    output                    [7:0] stim32_ia_o;
    output                    [7:0] stim32_ic_o;
    output                   [13:0] stim32_pulse_wc_o;
    output                   [13:0] stim32_pulse_gap_o;
    output                   [13:0] stim32_pulse_wa_o;
    output                   [11:0] stim32_pulse_num_o;
    output                          stim32_pol_o;
    output                   [15:0] stim33_interval_o;
    output                    [7:0] stim33_ia_o;
    output                    [7:0] stim33_ic_o;
    output                   [13:0] stim33_pulse_wc_o;
    output                   [13:0] stim33_pulse_gap_o;
    output                   [13:0] stim33_pulse_wa_o;
    output                   [11:0] stim33_pulse_num_o;
    output                          stim33_pol_o;
    output                   [15:0] stim34_interval_o;
    output                    [7:0] stim34_ia_o;
    output                    [7:0] stim34_ic_o;
    output                   [13:0] stim34_pulse_wc_o;
    output                   [13:0] stim34_pulse_gap_o;
    output                   [13:0] stim34_pulse_wa_o;
    output                   [11:0] stim34_pulse_num_o;
    output                          stim34_pol_o;
    output                   [15:0] stim35_interval_o;
    output                    [7:0] stim35_ia_o;
    output                    [7:0] stim35_ic_o;
    output                   [13:0] stim35_pulse_wc_o;
    output                   [13:0] stim35_pulse_gap_o;
    output                   [13:0] stim35_pulse_wa_o;
    output                   [11:0] stim35_pulse_num_o;
    output                          stim35_pol_o;
    output                   [15:0] stim36_interval_o;
    output                    [7:0] stim36_ia_o;
    output                    [7:0] stim36_ic_o;
    output                   [13:0] stim36_pulse_wc_o;
    output                   [13:0] stim36_pulse_gap_o;
    output                   [13:0] stim36_pulse_wa_o;
    output                   [11:0] stim36_pulse_num_o;
    output                          stim36_pol_o;
    output                   [15:0] stim37_interval_o;
    output                    [7:0] stim37_ia_o;
    output                    [7:0] stim37_ic_o;
    output                   [13:0] stim37_pulse_wc_o;
    output                   [13:0] stim37_pulse_gap_o;
    output                   [13:0] stim37_pulse_wa_o;
    output                   [11:0] stim37_pulse_num_o;
    output                          stim37_pol_o;
    output                   [15:0] stim38_interval_o;
    output                    [7:0] stim38_ia_o;
    output                    [7:0] stim38_ic_o;
    output                   [13:0] stim38_pulse_wc_o;
    output                   [13:0] stim38_pulse_gap_o;
    output                   [13:0] stim38_pulse_wa_o;
    output                   [11:0] stim38_pulse_num_o;
    output                          stim38_pol_o;
    output                   [15:0] stim39_interval_o;
    output                    [7:0] stim39_ia_o;
    output                    [7:0] stim39_ic_o;
    output                   [13:0] stim39_pulse_wc_o;
    output                   [13:0] stim39_pulse_gap_o;
    output                   [13:0] stim39_pulse_wa_o;
    output                   [11:0] stim39_pulse_num_o;
    output                          stim39_pol_o;
    output                   [15:0] stim40_interval_o;
    output                    [7:0] stim40_ia_o;
    output                    [7:0] stim40_ic_o;
    output                   [13:0] stim40_pulse_wc_o;
    output                   [13:0] stim40_pulse_gap_o;
    output                   [13:0] stim40_pulse_wa_o;
    output                   [11:0] stim40_pulse_num_o;
    output                          stim40_pol_o;
    output                   [15:0] stim41_interval_o;
    output                    [7:0] stim41_ia_o;
    output                    [7:0] stim41_ic_o;
    output                   [13:0] stim41_pulse_wc_o;
    output                   [13:0] stim41_pulse_gap_o;
    output                   [13:0] stim41_pulse_wa_o;
    output                   [11:0] stim41_pulse_num_o;
    output                          stim41_pol_o;
    output                   [15:0] stim42_interval_o;
    output                    [7:0] stim42_ia_o;
    output                    [7:0] stim42_ic_o;
    output                   [13:0] stim42_pulse_wc_o;
    output                   [13:0] stim42_pulse_gap_o;
    output                   [13:0] stim42_pulse_wa_o;
    output                   [11:0] stim42_pulse_num_o;
    output                          stim42_pol_o;
    output                   [15:0] stim43_interval_o;
    output                    [7:0] stim43_ia_o;
    output                    [7:0] stim43_ic_o;
    output                   [13:0] stim43_pulse_wc_o;
    output                   [13:0] stim43_pulse_gap_o;
    output                   [13:0] stim43_pulse_wa_o;
    output                   [11:0] stim43_pulse_num_o;
    output                          stim43_pol_o;
    output                   [15:0] stim44_interval_o;
    output                    [7:0] stim44_ia_o;
    output                    [7:0] stim44_ic_o;
    output                   [13:0] stim44_pulse_wc_o;
    output                   [13:0] stim44_pulse_gap_o;
    output                   [13:0] stim44_pulse_wa_o;
    output                   [11:0] stim44_pulse_num_o;
    output                          stim44_pol_o;
    output                   [15:0] stim45_interval_o;
    output                    [7:0] stim45_ia_o;
    output                    [7:0] stim45_ic_o;
    output                   [13:0] stim45_pulse_wc_o;
    output                   [13:0] stim45_pulse_gap_o;
    output                   [13:0] stim45_pulse_wa_o;
    output                   [11:0] stim45_pulse_num_o;
    output                          stim45_pol_o;
    output                   [15:0] stim46_interval_o;
    output                    [7:0] stim46_ia_o;
    output                    [7:0] stim46_ic_o;
    output                   [13:0] stim46_pulse_wc_o;
    output                   [13:0] stim46_pulse_gap_o;
    output                   [13:0] stim46_pulse_wa_o;
    output                   [11:0] stim46_pulse_num_o;
    output                          stim46_pol_o;
    output                   [15:0] stim47_interval_o;
    output                    [7:0] stim47_ia_o;
    output                    [7:0] stim47_ic_o;
    output                   [13:0] stim47_pulse_wc_o;
    output                   [13:0] stim47_pulse_gap_o;
    output                   [13:0] stim47_pulse_wa_o;
    output                   [11:0] stim47_pulse_num_o;
    output                          stim47_pol_o;
    output                   [15:0] stim48_interval_o;
    output                    [7:0] stim48_ia_o;
    output                    [7:0] stim48_ic_o;
    output                   [13:0] stim48_pulse_wc_o;
    output                   [13:0] stim48_pulse_gap_o;
    output                   [13:0] stim48_pulse_wa_o;
    output                   [11:0] stim48_pulse_num_o;
    output                          stim48_pol_o;
    output                   [15:0] stim49_interval_o;
    output                    [7:0] stim49_ia_o;
    output                    [7:0] stim49_ic_o;
    output                   [13:0] stim49_pulse_wc_o;
    output                   [13:0] stim49_pulse_gap_o;
    output                   [13:0] stim49_pulse_wa_o;
    output                   [11:0] stim49_pulse_num_o;
    output                          stim49_pol_o;
    output                   [15:0] stim50_interval_o;
    output                    [7:0] stim50_ia_o;
    output                    [7:0] stim50_ic_o;
    output                   [13:0] stim50_pulse_wc_o;
    output                   [13:0] stim50_pulse_gap_o;
    output                   [13:0] stim50_pulse_wa_o;
    output                   [11:0] stim50_pulse_num_o;
    output                          stim50_pol_o;
    output                   [15:0] stim51_interval_o;
    output                    [7:0] stim51_ia_o;
    output                    [7:0] stim51_ic_o;
    output                   [13:0] stim51_pulse_wc_o;
    output                   [13:0] stim51_pulse_gap_o;
    output                   [13:0] stim51_pulse_wa_o;
    output                   [11:0] stim51_pulse_num_o;
    output                          stim51_pol_o;
    output                   [15:0] stim52_interval_o;
    output                    [7:0] stim52_ia_o;
    output                    [7:0] stim52_ic_o;
    output                   [13:0] stim52_pulse_wc_o;
    output                   [13:0] stim52_pulse_gap_o;
    output                   [13:0] stim52_pulse_wa_o;
    output                   [11:0] stim52_pulse_num_o;
    output                          stim52_pol_o;
    output                   [15:0] stim53_interval_o;
    output                    [7:0] stim53_ia_o;
    output                    [7:0] stim53_ic_o;
    output                   [13:0] stim53_pulse_wc_o;
    output                   [13:0] stim53_pulse_gap_o;
    output                   [13:0] stim53_pulse_wa_o;
    output                   [11:0] stim53_pulse_num_o;
    output                          stim53_pol_o;
    output                   [15:0] stim54_interval_o;
    output                    [7:0] stim54_ia_o;
    output                    [7:0] stim54_ic_o;
    output                   [13:0] stim54_pulse_wc_o;
    output                   [13:0] stim54_pulse_gap_o;
    output                   [13:0] stim54_pulse_wa_o;
    output                   [11:0] stim54_pulse_num_o;
    output                          stim54_pol_o;
    output                   [15:0] stim55_interval_o;
    output                    [7:0] stim55_ia_o;
    output                    [7:0] stim55_ic_o;
    output                   [13:0] stim55_pulse_wc_o;
    output                   [13:0] stim55_pulse_gap_o;
    output                   [13:0] stim55_pulse_wa_o;
    output                   [11:0] stim55_pulse_num_o;
    output                          stim55_pol_o;
    output                   [15:0] stim56_interval_o;
    output                    [7:0] stim56_ia_o;
    output                    [7:0] stim56_ic_o;
    output                   [13:0] stim56_pulse_wc_o;
    output                   [13:0] stim56_pulse_gap_o;
    output                   [13:0] stim56_pulse_wa_o;
    output                   [11:0] stim56_pulse_num_o;
    output                          stim56_pol_o;
    output                   [15:0] stim57_interval_o;
    output                    [7:0] stim57_ia_o;
    output                    [7:0] stim57_ic_o;
    output                   [13:0] stim57_pulse_wc_o;
    output                   [13:0] stim57_pulse_gap_o;
    output                   [13:0] stim57_pulse_wa_o;
    output                   [11:0] stim57_pulse_num_o;
    output                          stim57_pol_o;
    output                   [15:0] stim58_interval_o;
    output                    [7:0] stim58_ia_o;
    output                    [7:0] stim58_ic_o;
    output                   [13:0] stim58_pulse_wc_o;
    output                   [13:0] stim58_pulse_gap_o;
    output                   [13:0] stim58_pulse_wa_o;
    output                   [11:0] stim58_pulse_num_o;
    output                          stim58_pol_o;
    output                   [15:0] stim59_interval_o;
    output                    [7:0] stim59_ia_o;
    output                    [7:0] stim59_ic_o;
    output                   [13:0] stim59_pulse_wc_o;
    output                   [13:0] stim59_pulse_gap_o;
    output                   [13:0] stim59_pulse_wa_o;
    output                   [11:0] stim59_pulse_num_o;
    output                          stim59_pol_o;
    output                   [15:0] stim60_interval_o;
    output                    [7:0] stim60_ia_o;
    output                    [7:0] stim60_ic_o;
    output                   [13:0] stim60_pulse_wc_o;
    output                   [13:0] stim60_pulse_gap_o;
    output                   [13:0] stim60_pulse_wa_o;
    output                   [11:0] stim60_pulse_num_o;
    output                          stim60_pol_o;
    output                   [15:0] stim61_interval_o;
    output                    [7:0] stim61_ia_o;
    output                    [7:0] stim61_ic_o;
    output                   [13:0] stim61_pulse_wc_o;
    output                   [13:0] stim61_pulse_gap_o;
    output                   [13:0] stim61_pulse_wa_o;
    output                   [11:0] stim61_pulse_num_o;
    output                          stim61_pol_o;
    output                   [15:0] stim62_interval_o;
    output                    [7:0] stim62_ia_o;
    output                    [7:0] stim62_ic_o;
    output                   [13:0] stim62_pulse_wc_o;
    output                   [13:0] stim62_pulse_gap_o;
    output                   [13:0] stim62_pulse_wa_o;
    output                   [11:0] stim62_pulse_num_o;
    output                          stim62_pol_o;
    output                   [15:0] stim63_interval_o;
    output                    [7:0] stim63_ia_o;
    output                    [7:0] stim63_ic_o;
    output                   [13:0] stim63_pulse_wc_o;
    output                   [13:0] stim63_pulse_gap_o;
    output                   [13:0] stim63_pulse_wa_o;
    output                   [11:0] stim63_pulse_num_o;
    output                          stim63_pol_o;
    output                   [63:0] stim_range_unsync_o;
    output      [STIM_CLKDIV_W-1:0] div_clk_stim_o;
    output                          en_clk_stim_o;
    output [CLKDIV_W_DISCHARGE-1:0] div_clk_discharge_o;
    output                          en_clk_discharge_o;
    output                   [19:0] pw_discharge_o;
    output                          rec_en_o;

    wire  [7:0] stim0_ia_mux_s;
    wire [13:0] stim0_pulse_wa_mux_s;
    wire        stim0_mode_s;
    wire        stim0_range_s;
    wire  [7:0] stim1_ia_mux_s;
    wire [13:0] stim1_pulse_wa_mux_s;
    wire        stim1_mode_s;
    wire        stim1_range_s;
    wire  [7:0] stim2_ia_mux_s;
    wire [13:0] stim2_pulse_wa_mux_s;
    wire        stim2_mode_s;
    wire        stim2_range_s;
    wire  [7:0] stim3_ia_mux_s;
    wire [13:0] stim3_pulse_wa_mux_s;
    wire        stim3_mode_s;
    wire        stim3_range_s;
    wire  [7:0] stim4_ia_mux_s;
    wire [13:0] stim4_pulse_wa_mux_s;
    wire        stim4_mode_s;
    wire        stim4_range_s;
    wire  [7:0] stim5_ia_mux_s;
    wire [13:0] stim5_pulse_wa_mux_s;
    wire        stim5_mode_s;
    wire        stim5_range_s;
    wire  [7:0] stim6_ia_mux_s;
    wire [13:0] stim6_pulse_wa_mux_s;
    wire        stim6_mode_s;
    wire        stim6_range_s;
    wire  [7:0] stim7_ia_mux_s;
    wire [13:0] stim7_pulse_wa_mux_s;
    wire        stim7_mode_s;
    wire        stim7_range_s;
    wire  [7:0] stim8_ia_mux_s;
    wire [13:0] stim8_pulse_wa_mux_s;
    wire        stim8_mode_s;
    wire        stim8_range_s;
    wire  [7:0] stim9_ia_mux_s;
    wire [13:0] stim9_pulse_wa_mux_s;
    wire        stim9_mode_s;
    wire        stim9_range_s;
    wire  [7:0] stim10_ia_mux_s;
    wire [13:0] stim10_pulse_wa_mux_s;
    wire        stim10_mode_s;
    wire        stim10_range_s;
    wire  [7:0] stim11_ia_mux_s;
    wire [13:0] stim11_pulse_wa_mux_s;
    wire        stim11_mode_s;
    wire        stim11_range_s;
    wire  [7:0] stim12_ia_mux_s;
    wire [13:0] stim12_pulse_wa_mux_s;
    wire        stim12_mode_s;
    wire        stim12_range_s;
    wire  [7:0] stim13_ia_mux_s;
    wire [13:0] stim13_pulse_wa_mux_s;
    wire        stim13_mode_s;
    wire        stim13_range_s;
    wire  [7:0] stim14_ia_mux_s;
    wire [13:0] stim14_pulse_wa_mux_s;
    wire        stim14_mode_s;
    wire        stim14_range_s;
    wire  [7:0] stim15_ia_mux_s;
    wire [13:0] stim15_pulse_wa_mux_s;
    wire        stim15_mode_s;
    wire        stim15_range_s;
    wire  [7:0] stim16_ia_mux_s;
    wire [13:0] stim16_pulse_wa_mux_s;
    wire        stim16_mode_s;
    wire        stim16_range_s;
    wire  [7:0] stim17_ia_mux_s;
    wire [13:0] stim17_pulse_wa_mux_s;
    wire        stim17_mode_s;
    wire        stim17_range_s;
    wire  [7:0] stim18_ia_mux_s;
    wire [13:0] stim18_pulse_wa_mux_s;
    wire        stim18_mode_s;
    wire        stim18_range_s;
    wire  [7:0] stim19_ia_mux_s;
    wire [13:0] stim19_pulse_wa_mux_s;
    wire        stim19_mode_s;
    wire        stim19_range_s;
    wire  [7:0] stim20_ia_mux_s;
    wire [13:0] stim20_pulse_wa_mux_s;
    wire        stim20_mode_s;
    wire        stim20_range_s;
    wire  [7:0] stim21_ia_mux_s;
    wire [13:0] stim21_pulse_wa_mux_s;
    wire        stim21_mode_s;
    wire        stim21_range_s;
    wire  [7:0] stim22_ia_mux_s;
    wire [13:0] stim22_pulse_wa_mux_s;
    wire        stim22_mode_s;
    wire        stim22_range_s;
    wire  [7:0] stim23_ia_mux_s;
    wire [13:0] stim23_pulse_wa_mux_s;
    wire        stim23_mode_s;
    wire        stim23_range_s;
    wire  [7:0] stim24_ia_mux_s;
    wire [13:0] stim24_pulse_wa_mux_s;
    wire        stim24_mode_s;
    wire        stim24_range_s;
    wire  [7:0] stim25_ia_mux_s;
    wire [13:0] stim25_pulse_wa_mux_s;
    wire        stim25_mode_s;
    wire        stim25_range_s;
    wire  [7:0] stim26_ia_mux_s;
    wire [13:0] stim26_pulse_wa_mux_s;
    wire        stim26_mode_s;
    wire        stim26_range_s;
    wire  [7:0] stim27_ia_mux_s;
    wire [13:0] stim27_pulse_wa_mux_s;
    wire        stim27_mode_s;
    wire        stim27_range_s;
    wire  [7:0] stim28_ia_mux_s;
    wire [13:0] stim28_pulse_wa_mux_s;
    wire        stim28_mode_s;
    wire        stim28_range_s;
    wire  [7:0] stim29_ia_mux_s;
    wire [13:0] stim29_pulse_wa_mux_s;
    wire        stim29_mode_s;
    wire        stim29_range_s;
    wire  [7:0] stim30_ia_mux_s;
    wire [13:0] stim30_pulse_wa_mux_s;
    wire        stim30_mode_s;
    wire        stim30_range_s;
    wire  [7:0] stim31_ia_mux_s;
    wire [13:0] stim31_pulse_wa_mux_s;
    wire        stim31_mode_s;
    wire        stim31_range_s;
    wire  [7:0] stim32_ia_mux_s;
    wire [13:0] stim32_pulse_wa_mux_s;
    wire        stim32_mode_s;
    wire        stim32_range_s;
    wire  [7:0] stim33_ia_mux_s;
    wire [13:0] stim33_pulse_wa_mux_s;
    wire        stim33_mode_s;
    wire        stim33_range_s;
    wire  [7:0] stim34_ia_mux_s;
    wire [13:0] stim34_pulse_wa_mux_s;
    wire        stim34_mode_s;
    wire        stim34_range_s;
    wire  [7:0] stim35_ia_mux_s;
    wire [13:0] stim35_pulse_wa_mux_s;
    wire        stim35_mode_s;
    wire        stim35_range_s;
    wire  [7:0] stim36_ia_mux_s;
    wire [13:0] stim36_pulse_wa_mux_s;
    wire        stim36_mode_s;
    wire        stim36_range_s;
    wire  [7:0] stim37_ia_mux_s;
    wire [13:0] stim37_pulse_wa_mux_s;
    wire        stim37_mode_s;
    wire        stim37_range_s;
    wire  [7:0] stim38_ia_mux_s;
    wire [13:0] stim38_pulse_wa_mux_s;
    wire        stim38_mode_s;
    wire        stim38_range_s;
    wire  [7:0] stim39_ia_mux_s;
    wire [13:0] stim39_pulse_wa_mux_s;
    wire        stim39_mode_s;
    wire        stim39_range_s;
    wire  [7:0] stim40_ia_mux_s;
    wire [13:0] stim40_pulse_wa_mux_s;
    wire        stim40_mode_s;
    wire        stim40_range_s;
    wire  [7:0] stim41_ia_mux_s;
    wire [13:0] stim41_pulse_wa_mux_s;
    wire        stim41_mode_s;
    wire        stim41_range_s;
    wire  [7:0] stim42_ia_mux_s;
    wire [13:0] stim42_pulse_wa_mux_s;
    wire        stim42_mode_s;
    wire        stim42_range_s;
    wire  [7:0] stim43_ia_mux_s;
    wire [13:0] stim43_pulse_wa_mux_s;
    wire        stim43_mode_s;
    wire        stim43_range_s;
    wire  [7:0] stim44_ia_mux_s;
    wire [13:0] stim44_pulse_wa_mux_s;
    wire        stim44_mode_s;
    wire        stim44_range_s;
    wire  [7:0] stim45_ia_mux_s;
    wire [13:0] stim45_pulse_wa_mux_s;
    wire        stim45_mode_s;
    wire        stim45_range_s;
    wire  [7:0] stim46_ia_mux_s;
    wire [13:0] stim46_pulse_wa_mux_s;
    wire        stim46_mode_s;
    wire        stim46_range_s;
    wire  [7:0] stim47_ia_mux_s;
    wire [13:0] stim47_pulse_wa_mux_s;
    wire        stim47_mode_s;
    wire        stim47_range_s;
    wire  [7:0] stim48_ia_mux_s;
    wire [13:0] stim48_pulse_wa_mux_s;
    wire        stim48_mode_s;
    wire        stim48_range_s;
    wire  [7:0] stim49_ia_mux_s;
    wire [13:0] stim49_pulse_wa_mux_s;
    wire        stim49_mode_s;
    wire        stim49_range_s;
    wire  [7:0] stim50_ia_mux_s;
    wire [13:0] stim50_pulse_wa_mux_s;
    wire        stim50_mode_s;
    wire        stim50_range_s;
    wire  [7:0] stim51_ia_mux_s;
    wire [13:0] stim51_pulse_wa_mux_s;
    wire        stim51_mode_s;
    wire        stim51_range_s;
    wire  [7:0] stim52_ia_mux_s;
    wire [13:0] stim52_pulse_wa_mux_s;
    wire        stim52_mode_s;
    wire        stim52_range_s;
    wire  [7:0] stim53_ia_mux_s;
    wire [13:0] stim53_pulse_wa_mux_s;
    wire        stim53_mode_s;
    wire        stim53_range_s;
    wire  [7:0] stim54_ia_mux_s;
    wire [13:0] stim54_pulse_wa_mux_s;
    wire        stim54_mode_s;
    wire        stim54_range_s;
    wire  [7:0] stim55_ia_mux_s;
    wire [13:0] stim55_pulse_wa_mux_s;
    wire        stim55_mode_s;
    wire        stim55_range_s;
    wire  [7:0] stim56_ia_mux_s;
    wire [13:0] stim56_pulse_wa_mux_s;
    wire        stim56_mode_s;
    wire        stim56_range_s;
    wire  [7:0] stim57_ia_mux_s;
    wire [13:0] stim57_pulse_wa_mux_s;
    wire        stim57_mode_s;
    wire        stim57_range_s;
    wire  [7:0] stim58_ia_mux_s;
    wire [13:0] stim58_pulse_wa_mux_s;
    wire        stim58_mode_s;
    wire        stim58_range_s;
    wire  [7:0] stim59_ia_mux_s;
    wire [13:0] stim59_pulse_wa_mux_s;
    wire        stim59_mode_s;
    wire        stim59_range_s;
    wire  [7:0] stim60_ia_mux_s;
    wire [13:0] stim60_pulse_wa_mux_s;
    wire        stim60_mode_s;
    wire        stim60_range_s;
    wire  [7:0] stim61_ia_mux_s;
    wire [13:0] stim61_pulse_wa_mux_s;
    wire        stim61_mode_s;
    wire        stim61_range_s;
    wire  [7:0] stim62_ia_mux_s;
    wire [13:0] stim62_pulse_wa_mux_s;
    wire        stim62_mode_s;
    wire        stim62_range_s;
    wire  [7:0] stim63_ia_mux_s;
    wire [13:0] stim63_pulse_wa_mux_s;
    wire        stim63_mode_s;
    wire        stim63_range_s;


    /*************************************************************************/
    /* Regfile ADDRESS definition                                            */
    /*************************************************************************/
    localparam RA_CHIP_STATUS_ID        = 10'h000;
    localparam RA_CHIP_ERROR_STATUS1    = 10'h004;
    localparam RA_CHIP_ERROR_STATUS2    = 10'h008;
    localparam RA_ADC_AMP1              = 10'h00C;
    localparam RA_ADC_AMP2              = 10'h010;
    localparam RA_REC_STIM_CONTROL      = 10'h014;
    localparam RA_STIM_MASK0_P1         = 10'h018;
    localparam RA_STIM_MASK0_P2         = 10'h01C;
    localparam RA_STIM_MASK1_P1         = 10'h020;
    localparam RA_STIM_MASK1_P2         = 10'h024;
    localparam RA_STIM_MASK2_P1         = 10'h028;
    localparam RA_STIM_MASK2_P2         = 10'h02C;
    localparam RA_STIM_MASK3_P1         = 10'h030;
    localparam RA_STIM_MASK3_P2         = 10'h034;
    localparam RA_STIM_MASK4_P1         = 10'h038;
    localparam RA_STIM_MASK4_P2         = 10'h03C;
    localparam RA_STIM_MASK5_P1         = 10'h040;
    localparam RA_STIM_MASK5_P2         = 10'h044;
    localparam RA_STIM_MASK6_P1         = 10'h048;
    localparam RA_STIM_MASK6_P2         = 10'h04C;
    localparam RA_STIM_MASK7_P1         = 10'h050;
    localparam RA_STIM_MASK7_P2         = 10'h054;
    localparam RA_ENABLED_CH_REC_G1     = 10'h058;
    localparam RA_ENABLED_CH_REC_G2     = 10'h05C;
    localparam RA_REC_DISCHARGE_CONTROL = 10'h060;
    localparam RA_STIM_CH0_P0           = 10'h064;
    localparam RA_STIM_CH0_PULSE_P1     = 10'h068;
    localparam RA_STIM_CH0_PULSE_P2     = 10'h06C;
    localparam RA_STIM_CH1_P0           = 10'h070;
    localparam RA_STIM_CH1_PULSE_P1     = 10'h074;
    localparam RA_STIM_CH1_PULSE_P2     = 10'h078;
    localparam RA_STIM_CH2_P0           = 10'h07C;
    localparam RA_STIM_CH2_PULSE_P1     = 10'h080;
    localparam RA_STIM_CH2_PULSE_P2     = 10'h084;
    localparam RA_STIM_CH3_P0           = 10'h088;
    localparam RA_STIM_CH3_PULSE_P1     = 10'h08C;
    localparam RA_STIM_CH3_PULSE_P2     = 10'h090;
    localparam RA_STIM_CH4_P0           = 10'h094;
    localparam RA_STIM_CH4_PULSE_P1     = 10'h098;
    localparam RA_STIM_CH4_PULSE_P2     = 10'h09C;
    localparam RA_STIM_CH5_P0           = 10'h0A0;
    localparam RA_STIM_CH5_PULSE_P1     = 10'h0A4;
    localparam RA_STIM_CH5_PULSE_P2     = 10'h0A8;
    localparam RA_STIM_CH6_P0           = 10'h0AC;
    localparam RA_STIM_CH6_PULSE_P1     = 10'h0B0;
    localparam RA_STIM_CH6_PULSE_P2     = 10'h0B4;
    localparam RA_STIM_CH7_P0           = 10'h0B8;
    localparam RA_STIM_CH7_PULSE_P1     = 10'h0BC;
    localparam RA_STIM_CH7_PULSE_P2     = 10'h0C0;
    localparam RA_STIM_CH8_P0           = 10'h0C4;
    localparam RA_STIM_CH8_PULSE_P1     = 10'h0C8;
    localparam RA_STIM_CH8_PULSE_P2     = 10'h0CC;
    localparam RA_STIM_CH9_P0           = 10'h0D0;
    localparam RA_STIM_CH9_PULSE_P1     = 10'h0D4;
    localparam RA_STIM_CH9_PULSE_P2     = 10'h0D8;
    localparam RA_STIM_CH10_P0          = 10'h0DC;
    localparam RA_STIM_CH10_PULSE_P1    = 10'h0E0;
    localparam RA_STIM_CH10_PULSE_P2    = 10'h0E4;
    localparam RA_STIM_CH11_P0          = 10'h0E8;
    localparam RA_STIM_CH11_PULSE_P1    = 10'h0EC;
    localparam RA_STIM_CH11_PULSE_P2    = 10'h0F0;
    localparam RA_STIM_CH12_P0          = 10'h0F4;
    localparam RA_STIM_CH12_PULSE_P1    = 10'h0F8;
    localparam RA_STIM_CH12_PULSE_P2    = 10'h0FC;
    localparam RA_STIM_CH13_P0          = 10'h100;
    localparam RA_STIM_CH13_PULSE_P1    = 10'h104;
    localparam RA_STIM_CH13_PULSE_P2    = 10'h108;
    localparam RA_STIM_CH14_P0          = 10'h10C;
    localparam RA_STIM_CH14_PULSE_P1    = 10'h110;
    localparam RA_STIM_CH14_PULSE_P2    = 10'h114;
    localparam RA_STIM_CH15_P0          = 10'h118;
    localparam RA_STIM_CH15_PULSE_P1    = 10'h11C;
    localparam RA_STIM_CH15_PULSE_P2    = 10'h120;
    localparam RA_STIM_CH16_P0          = 10'h124;
    localparam RA_STIM_CH16_PULSE_P1    = 10'h128;
    localparam RA_STIM_CH16_PULSE_P2    = 10'h12C;
    localparam RA_STIM_CH17_P0          = 10'h130;
    localparam RA_STIM_CH17_PULSE_P1    = 10'h134;
    localparam RA_STIM_CH17_PULSE_P2    = 10'h138;
    localparam RA_STIM_CH18_P0          = 10'h13C;
    localparam RA_STIM_CH18_PULSE_P1    = 10'h140;
    localparam RA_STIM_CH18_PULSE_P2    = 10'h144;
    localparam RA_STIM_CH19_P0          = 10'h148;
    localparam RA_STIM_CH19_PULSE_P1    = 10'h14C;
    localparam RA_STIM_CH19_PULSE_P2    = 10'h150;
    localparam RA_STIM_CH20_P0          = 10'h154;
    localparam RA_STIM_CH20_PULSE_P1    = 10'h158;
    localparam RA_STIM_CH20_PULSE_P2    = 10'h15C;
    localparam RA_STIM_CH21_P0          = 10'h160;
    localparam RA_STIM_CH21_PULSE_P1    = 10'h164;
    localparam RA_STIM_CH21_PULSE_P2    = 10'h168;
    localparam RA_STIM_CH22_P0          = 10'h16C;
    localparam RA_STIM_CH22_PULSE_P1    = 10'h170;
    localparam RA_STIM_CH22_PULSE_P2    = 10'h174;
    localparam RA_STIM_CH23_P0          = 10'h178;
    localparam RA_STIM_CH23_PULSE_P1    = 10'h17C;
    localparam RA_STIM_CH23_PULSE_P2    = 10'h180;
    localparam RA_STIM_CH24_P0          = 10'h184;
    localparam RA_STIM_CH24_PULSE_P1    = 10'h188;
    localparam RA_STIM_CH24_PULSE_P2    = 10'h18C;
    localparam RA_STIM_CH25_P0          = 10'h190;
    localparam RA_STIM_CH25_PULSE_P1    = 10'h194;
    localparam RA_STIM_CH25_PULSE_P2    = 10'h198;
    localparam RA_STIM_CH26_P0          = 10'h19C;
    localparam RA_STIM_CH26_PULSE_P1    = 10'h1A0;
    localparam RA_STIM_CH26_PULSE_P2    = 10'h1A4;
    localparam RA_STIM_CH27_P0          = 10'h1A8;
    localparam RA_STIM_CH27_PULSE_P1    = 10'h1AC;
    localparam RA_STIM_CH27_PULSE_P2    = 10'h1B0;
    localparam RA_STIM_CH28_P0          = 10'h1B4;
    localparam RA_STIM_CH28_PULSE_P1    = 10'h1B8;
    localparam RA_STIM_CH28_PULSE_P2    = 10'h1BC;
    localparam RA_STIM_CH29_P0          = 10'h1C0;
    localparam RA_STIM_CH29_PULSE_P1    = 10'h1C4;
    localparam RA_STIM_CH29_PULSE_P2    = 10'h1C8;
    localparam RA_STIM_CH30_P0          = 10'h1CC;
    localparam RA_STIM_CH30_PULSE_P1    = 10'h1D0;
    localparam RA_STIM_CH30_PULSE_P2    = 10'h1D4;
    localparam RA_STIM_CH31_P0          = 10'h1D8;
    localparam RA_STIM_CH31_PULSE_P1    = 10'h1DC;
    localparam RA_STIM_CH31_PULSE_P2    = 10'h1E0;
    localparam RA_STIM_CH32_P0          = 10'h1E4;
    localparam RA_STIM_CH32_PULSE_P1    = 10'h1E8;
    localparam RA_STIM_CH32_PULSE_P2    = 10'h1EC;
    localparam RA_STIM_CH33_P0          = 10'h1F0;
    localparam RA_STIM_CH33_PULSE_P1    = 10'h1F4;
    localparam RA_STIM_CH33_PULSE_P2    = 10'h1F8;
    localparam RA_STIM_CH34_P0          = 10'h1FC;
    localparam RA_STIM_CH34_PULSE_P1    = 10'h200;
    localparam RA_STIM_CH34_PULSE_P2    = 10'h204;
    localparam RA_STIM_CH35_P0          = 10'h208;
    localparam RA_STIM_CH35_PULSE_P1    = 10'h20C;
    localparam RA_STIM_CH35_PULSE_P2    = 10'h210;
    localparam RA_STIM_CH36_P0          = 10'h214;
    localparam RA_STIM_CH36_PULSE_P1    = 10'h218;
    localparam RA_STIM_CH36_PULSE_P2    = 10'h21C;
    localparam RA_STIM_CH37_P0          = 10'h220;
    localparam RA_STIM_CH37_PULSE_P1    = 10'h224;
    localparam RA_STIM_CH37_PULSE_P2    = 10'h228;
    localparam RA_STIM_CH38_P0          = 10'h22C;
    localparam RA_STIM_CH38_PULSE_P1    = 10'h230;
    localparam RA_STIM_CH38_PULSE_P2    = 10'h234;
    localparam RA_STIM_CH39_P0          = 10'h238;
    localparam RA_STIM_CH39_PULSE_P1    = 10'h23C;
    localparam RA_STIM_CH39_PULSE_P2    = 10'h240;
    localparam RA_STIM_CH40_P0          = 10'h244;
    localparam RA_STIM_CH40_PULSE_P1    = 10'h248;
    localparam RA_STIM_CH40_PULSE_P2    = 10'h24C;
    localparam RA_STIM_CH41_P0          = 10'h250;
    localparam RA_STIM_CH41_PULSE_P1    = 10'h254;
    localparam RA_STIM_CH41_PULSE_P2    = 10'h258;
    localparam RA_STIM_CH42_P0          = 10'h25C;
    localparam RA_STIM_CH42_PULSE_P1    = 10'h260;
    localparam RA_STIM_CH42_PULSE_P2    = 10'h264;
    localparam RA_STIM_CH43_P0          = 10'h268;
    localparam RA_STIM_CH43_PULSE_P1    = 10'h26C;
    localparam RA_STIM_CH43_PULSE_P2    = 10'h270;
    localparam RA_STIM_CH44_P0          = 10'h274;
    localparam RA_STIM_CH44_PULSE_P1    = 10'h278;
    localparam RA_STIM_CH44_PULSE_P2    = 10'h27C;
    localparam RA_STIM_CH45_P0          = 10'h280;
    localparam RA_STIM_CH45_PULSE_P1    = 10'h284;
    localparam RA_STIM_CH45_PULSE_P2    = 10'h288;
    localparam RA_STIM_CH46_P0          = 10'h28C;
    localparam RA_STIM_CH46_PULSE_P1    = 10'h290;
    localparam RA_STIM_CH46_PULSE_P2    = 10'h294;
    localparam RA_STIM_CH47_P0          = 10'h298;
    localparam RA_STIM_CH47_PULSE_P1    = 10'h29C;
    localparam RA_STIM_CH47_PULSE_P2    = 10'h2A0;
    localparam RA_STIM_CH48_P0          = 10'h2A4;
    localparam RA_STIM_CH48_PULSE_P1    = 10'h2A8;
    localparam RA_STIM_CH48_PULSE_P2    = 10'h2AC;
    localparam RA_STIM_CH49_P0          = 10'h2B0;
    localparam RA_STIM_CH49_PULSE_P1    = 10'h2B4;
    localparam RA_STIM_CH49_PULSE_P2    = 10'h2B8;
    localparam RA_STIM_CH50_P0          = 10'h2BC;
    localparam RA_STIM_CH50_PULSE_P1    = 10'h2C0;
    localparam RA_STIM_CH50_PULSE_P2    = 10'h2C4;
    localparam RA_STIM_CH51_P0          = 10'h2C8;
    localparam RA_STIM_CH51_PULSE_P1    = 10'h2CC;
    localparam RA_STIM_CH51_PULSE_P2    = 10'h2D0;
    localparam RA_STIM_CH52_P0          = 10'h2D4;
    localparam RA_STIM_CH52_PULSE_P1    = 10'h2D8;
    localparam RA_STIM_CH52_PULSE_P2    = 10'h2DC;
    localparam RA_STIM_CH53_P0          = 10'h2E0;
    localparam RA_STIM_CH53_PULSE_P1    = 10'h2E4;
    localparam RA_STIM_CH53_PULSE_P2    = 10'h2E8;
    localparam RA_STIM_CH54_P0          = 10'h2EC;
    localparam RA_STIM_CH54_PULSE_P1    = 10'h2F0;
    localparam RA_STIM_CH54_PULSE_P2    = 10'h2F4;
    localparam RA_STIM_CH55_P0          = 10'h2F8;
    localparam RA_STIM_CH55_PULSE_P1    = 10'h2FC;
    localparam RA_STIM_CH55_PULSE_P2    = 10'h300;
    localparam RA_STIM_CH56_P0          = 10'h304;
    localparam RA_STIM_CH56_PULSE_P1    = 10'h308;
    localparam RA_STIM_CH56_PULSE_P2    = 10'h30C;
    localparam RA_STIM_CH57_P0          = 10'h310;
    localparam RA_STIM_CH57_PULSE_P1    = 10'h314;
    localparam RA_STIM_CH57_PULSE_P2    = 10'h318;
    localparam RA_STIM_CH58_P0          = 10'h31C;
    localparam RA_STIM_CH58_PULSE_P1    = 10'h320;
    localparam RA_STIM_CH58_PULSE_P2    = 10'h324;
    localparam RA_STIM_CH59_P0          = 10'h328;
    localparam RA_STIM_CH59_PULSE_P1    = 10'h32C;
    localparam RA_STIM_CH59_PULSE_P2    = 10'h330;
    localparam RA_STIM_CH60_P0          = 10'h334;
    localparam RA_STIM_CH60_PULSE_P1    = 10'h338;
    localparam RA_STIM_CH60_PULSE_P2    = 10'h33C;
    localparam RA_STIM_CH61_P0          = 10'h340;
    localparam RA_STIM_CH61_PULSE_P1    = 10'h344;
    localparam RA_STIM_CH61_PULSE_P2    = 10'h348;
    localparam RA_STIM_CH62_P0          = 10'h34C;
    localparam RA_STIM_CH62_PULSE_P1    = 10'h350;
    localparam RA_STIM_CH62_PULSE_P2    = 10'h354;
    localparam RA_STIM_CH63_P0          = 10'h358;
    localparam RA_STIM_CH63_PULSE_P1    = 10'h35C;
    localparam RA_STIM_CH63_PULSE_P2    = 10'h360;

    /*************************************************************************/
    /* regfile signal definition                                             */
    /*************************************************************************/

    reg   [31:0] apb_rf_r_data;
    reg          apb_ready;
    reg          apb_slverr;
    wire         rf_w_sel;
    wire         rf_r_sel;
    wire         rf_apb_prot_ok;
    reg          rf_write_permitted;
    reg          rf_next_write_permitted;
    reg          rf_read_permitted;
    reg          rf_next_read_permitted;

    // regfile registers / wires
    wire  [31:0] val_chip_status_id;

    wire  [31:0] val_chip_error_status1;
    reg   [31:0] reg_chip_error_status1_chip_error_load;

    wire  [31:0] val_chip_error_status2;
    reg    [3:0] reg_chip_error_status2_chip_error_cmd;
    reg    [4:0] reg_chip_error_status2_chip_error_crc5;

    wire  [31:0] val_adc_amp1;
    reg   [31:0] reg_adc_amp1_amp_gain_g1;

    wire  [31:0] val_adc_amp2;
    reg   [31:0] reg_adc_amp2_amp_gain_g2;

    wire  [31:0] val_rec_stim_control;
    reg   [11:0] reg_rec_stim_control_div_clk_stim;
    reg          reg_rec_stim_control_en_clk_stim;
    reg    [7:0] reg_rec_stim_control_stim_mask_en;
    reg          reg_rec_stim_control_rec_en;

    wire  [31:0] val_stim_mask0_p1;
    reg   [31:0] reg_stim_mask0_p1_stim_mask0_g1;

    wire  [31:0] val_stim_mask0_p2;
    reg   [31:0] reg_stim_mask0_p2_stim_mask0_g2;

    wire  [31:0] val_stim_mask1_p1;
    reg   [31:0] reg_stim_mask1_p1_stim_mask1_g1;

    wire  [31:0] val_stim_mask1_p2;
    reg   [31:0] reg_stim_mask1_p2_stim_mask1_g2;

    wire  [31:0] val_stim_mask2_p1;
    reg   [31:0] reg_stim_mask2_p1_stim_mask2_g1;

    wire  [31:0] val_stim_mask2_p2;
    reg   [31:0] reg_stim_mask2_p2_stim_mask2_g2;

    wire  [31:0] val_stim_mask3_p1;
    reg   [31:0] reg_stim_mask3_p1_stim_mask3_g1;

    wire  [31:0] val_stim_mask3_p2;
    reg   [31:0] reg_stim_mask3_p2_stim_mask3_g2;

    wire  [31:0] val_stim_mask4_p1;
    reg   [31:0] reg_stim_mask4_p1_stim_mask4_g1;

    wire  [31:0] val_stim_mask4_p2;
    reg   [31:0] reg_stim_mask4_p2_stim_mask4_g2;

    wire  [31:0] val_stim_mask5_p1;
    reg   [31:0] reg_stim_mask5_p1_stim_mask5_g1;

    wire  [31:0] val_stim_mask5_p2;
    reg   [31:0] reg_stim_mask5_p2_stim_mask5_g2;

    wire  [31:0] val_stim_mask6_p1;
    reg   [31:0] reg_stim_mask6_p1_stim_mask6_g1;

    wire  [31:0] val_stim_mask6_p2;
    reg   [31:0] reg_stim_mask6_p2_stim_mask6_g2;

    wire  [31:0] val_stim_mask7_p1;
    reg   [31:0] reg_stim_mask7_p1_stim_mask7_g1;

    wire  [31:0] val_stim_mask7_p2;
    reg   [31:0] reg_stim_mask7_p2_stim_mask7_g2;

    wire  [31:0] val_enabled_ch_rec_g1;
    reg   [31:0] reg_enabled_ch_rec_g1_en_rec_ch_g1;

    wire  [31:0] val_enabled_ch_rec_g2;
    reg   [31:0] reg_enabled_ch_rec_g2_en_rec_ch_g2;

    wire  [31:0] val_rec_discharge_control;
    reg    [7:0] reg_rec_discharge_control_div_clk_discharge;
    reg          reg_rec_discharge_control_en_clk_discharge;
    reg   [19:0] reg_rec_discharge_control_pw_discharge;

    wire  [31:0] val_stim_ch0_p0;
    reg   [15:0] reg_stim_ch0_p0_stim0_interval;
    reg    [7:0] reg_stim_ch0_p0_stim0_ia_mux;
    reg    [7:0] reg_stim_ch0_p0_stim0_ic;

    wire  [31:0] val_stim_ch0_pulse_p1;
    reg   [13:0] reg_stim_ch0_pulse_p1_stim0_pulse_wc;
    reg   [13:0] reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux;

    wire  [31:0] val_stim_ch0_pulse_p2;
    reg   [13:0] reg_stim_ch0_pulse_p2_stim0_pulse_gap;
    reg   [11:0] reg_stim_ch0_pulse_p2_stim0_pulse_num;
    reg          reg_stim_ch0_pulse_p2_stim0_pol;
    reg          reg_stim_ch0_pulse_p2_stim0_range;

    wire  [31:0] val_stim_ch1_p0;
    reg   [15:0] reg_stim_ch1_p0_stim1_interval;
    reg    [7:0] reg_stim_ch1_p0_stim1_ia_mux;
    reg    [7:0] reg_stim_ch1_p0_stim1_ic;

    wire  [31:0] val_stim_ch1_pulse_p1;
    reg   [13:0] reg_stim_ch1_pulse_p1_stim1_pulse_wc;
    reg   [13:0] reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux;

    wire  [31:0] val_stim_ch1_pulse_p2;
    reg   [13:0] reg_stim_ch1_pulse_p2_stim1_pulse_gap;
    reg   [11:0] reg_stim_ch1_pulse_p2_stim1_pulse_num;
    reg          reg_stim_ch1_pulse_p2_stim1_pol;
    reg          reg_stim_ch1_pulse_p2_stim1_range;

    wire  [31:0] val_stim_ch2_p0;
    reg   [15:0] reg_stim_ch2_p0_stim2_interval;
    reg    [7:0] reg_stim_ch2_p0_stim2_ia_mux;
    reg    [7:0] reg_stim_ch2_p0_stim2_ic;

    wire  [31:0] val_stim_ch2_pulse_p1;
    reg   [13:0] reg_stim_ch2_pulse_p1_stim2_pulse_wc;
    reg   [13:0] reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux;

    wire  [31:0] val_stim_ch2_pulse_p2;
    reg   [13:0] reg_stim_ch2_pulse_p2_stim2_pulse_gap;
    reg   [11:0] reg_stim_ch2_pulse_p2_stim2_pulse_num;
    reg          reg_stim_ch2_pulse_p2_stim2_pol;
    reg          reg_stim_ch2_pulse_p2_stim2_range;

    wire  [31:0] val_stim_ch3_p0;
    reg   [15:0] reg_stim_ch3_p0_stim3_interval;
    reg    [7:0] reg_stim_ch3_p0_stim3_ia_mux;
    reg    [7:0] reg_stim_ch3_p0_stim3_ic;

    wire  [31:0] val_stim_ch3_pulse_p1;
    reg   [13:0] reg_stim_ch3_pulse_p1_stim3_pulse_wc;
    reg   [13:0] reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux;

    wire  [31:0] val_stim_ch3_pulse_p2;
    reg   [13:0] reg_stim_ch3_pulse_p2_stim3_pulse_gap;
    reg   [11:0] reg_stim_ch3_pulse_p2_stim3_pulse_num;
    reg          reg_stim_ch3_pulse_p2_stim3_pol;
    reg          reg_stim_ch3_pulse_p2_stim3_range;

    wire  [31:0] val_stim_ch4_p0;
    reg   [15:0] reg_stim_ch4_p0_stim4_interval;
    reg    [7:0] reg_stim_ch4_p0_stim4_ia_mux;
    reg    [7:0] reg_stim_ch4_p0_stim4_ic;

    wire  [31:0] val_stim_ch4_pulse_p1;
    reg   [13:0] reg_stim_ch4_pulse_p1_stim4_pulse_wc;
    reg   [13:0] reg_stim_ch4_pulse_p1_stim4_pulse_wa_mux;

    wire  [31:0] val_stim_ch4_pulse_p2;
    reg   [13:0] reg_stim_ch4_pulse_p2_stim4_pulse_gap;
    reg   [11:0] reg_stim_ch4_pulse_p2_stim4_pulse_num;
    reg          reg_stim_ch4_pulse_p2_stim4_pol;
    reg          reg_stim_ch4_pulse_p2_stim4_range;

    wire  [31:0] val_stim_ch5_p0;
    reg   [15:0] reg_stim_ch5_p0_stim5_interval;
    reg    [7:0] reg_stim_ch5_p0_stim5_ia_mux;
    reg    [7:0] reg_stim_ch5_p0_stim5_ic;

    wire  [31:0] val_stim_ch5_pulse_p1;
    reg   [13:0] reg_stim_ch5_pulse_p1_stim5_pulse_wc;
    reg   [13:0] reg_stim_ch5_pulse_p1_stim5_pulse_wa_mux;

    wire  [31:0] val_stim_ch5_pulse_p2;
    reg   [13:0] reg_stim_ch5_pulse_p2_stim5_pulse_gap;
    reg   [11:0] reg_stim_ch5_pulse_p2_stim5_pulse_num;
    reg          reg_stim_ch5_pulse_p2_stim5_pol;
    reg          reg_stim_ch5_pulse_p2_stim5_range;

    wire  [31:0] val_stim_ch6_p0;
    reg   [15:0] reg_stim_ch6_p0_stim6_interval;
    reg    [7:0] reg_stim_ch6_p0_stim6_ia_mux;
    reg    [7:0] reg_stim_ch6_p0_stim6_ic;

    wire  [31:0] val_stim_ch6_pulse_p1;
    reg   [13:0] reg_stim_ch6_pulse_p1_stim6_pulse_wc;
    reg   [13:0] reg_stim_ch6_pulse_p1_stim6_pulse_wa_mux;

    wire  [31:0] val_stim_ch6_pulse_p2;
    reg   [13:0] reg_stim_ch6_pulse_p2_stim6_pulse_gap;
    reg   [11:0] reg_stim_ch6_pulse_p2_stim6_pulse_num;
    reg          reg_stim_ch6_pulse_p2_stim6_pol;
    reg          reg_stim_ch6_pulse_p2_stim6_range;

    wire  [31:0] val_stim_ch7_p0;
    reg   [15:0] reg_stim_ch7_p0_stim7_interval;
    reg    [7:0] reg_stim_ch7_p0_stim7_ia_mux;
    reg    [7:0] reg_stim_ch7_p0_stim7_ic;

    wire  [31:0] val_stim_ch7_pulse_p1;
    reg   [13:0] reg_stim_ch7_pulse_p1_stim7_pulse_wc;
    reg   [13:0] reg_stim_ch7_pulse_p1_stim7_pulse_wa_mux;

    wire  [31:0] val_stim_ch7_pulse_p2;
    reg   [13:0] reg_stim_ch7_pulse_p2_stim7_pulse_gap;
    reg   [11:0] reg_stim_ch7_pulse_p2_stim7_pulse_num;
    reg          reg_stim_ch7_pulse_p2_stim7_pol;
    reg          reg_stim_ch7_pulse_p2_stim7_range;

    wire  [31:0] val_stim_ch8_p0;
    reg   [15:0] reg_stim_ch8_p0_stim8_interval;
    reg    [7:0] reg_stim_ch8_p0_stim8_ia_mux;
    reg    [7:0] reg_stim_ch8_p0_stim8_ic;

    wire  [31:0] val_stim_ch8_pulse_p1;
    reg   [13:0] reg_stim_ch8_pulse_p1_stim8_pulse_wc;
    reg   [13:0] reg_stim_ch8_pulse_p1_stim8_pulse_wa_mux;

    wire  [31:0] val_stim_ch8_pulse_p2;
    reg   [13:0] reg_stim_ch8_pulse_p2_stim8_pulse_gap;
    reg   [11:0] reg_stim_ch8_pulse_p2_stim8_pulse_num;
    reg          reg_stim_ch8_pulse_p2_stim8_pol;
    reg          reg_stim_ch8_pulse_p2_stim8_range;

    wire  [31:0] val_stim_ch9_p0;
    reg   [15:0] reg_stim_ch9_p0_stim9_interval;
    reg    [7:0] reg_stim_ch9_p0_stim9_ia_mux;
    reg    [7:0] reg_stim_ch9_p0_stim9_ic;

    wire  [31:0] val_stim_ch9_pulse_p1;
    reg   [13:0] reg_stim_ch9_pulse_p1_stim9_pulse_wc;
    reg   [13:0] reg_stim_ch9_pulse_p1_stim9_pulse_wa_mux;

    wire  [31:0] val_stim_ch9_pulse_p2;
    reg   [13:0] reg_stim_ch9_pulse_p2_stim9_pulse_gap;
    reg   [11:0] reg_stim_ch9_pulse_p2_stim9_pulse_num;
    reg          reg_stim_ch9_pulse_p2_stim9_pol;
    reg          reg_stim_ch9_pulse_p2_stim9_range;

    wire  [31:0] val_stim_ch10_p0;
    reg   [15:0] reg_stim_ch10_p0_stim10_interval;
    reg    [7:0] reg_stim_ch10_p0_stim10_ia_mux;
    reg    [7:0] reg_stim_ch10_p0_stim10_ic;

    wire  [31:0] val_stim_ch10_pulse_p1;
    reg   [13:0] reg_stim_ch10_pulse_p1_stim10_pulse_wc;
    reg   [13:0] reg_stim_ch10_pulse_p1_stim10_pulse_wa_mux;

    wire  [31:0] val_stim_ch10_pulse_p2;
    reg   [13:0] reg_stim_ch10_pulse_p2_stim10_pulse_gap;
    reg   [11:0] reg_stim_ch10_pulse_p2_stim10_pulse_num;
    reg          reg_stim_ch10_pulse_p2_stim10_pol;
    reg          reg_stim_ch10_pulse_p2_stim10_range;

    wire  [31:0] val_stim_ch11_p0;
    reg   [15:0] reg_stim_ch11_p0_stim11_interval;
    reg    [7:0] reg_stim_ch11_p0_stim11_ia_mux;
    reg    [7:0] reg_stim_ch11_p0_stim11_ic;

    wire  [31:0] val_stim_ch11_pulse_p1;
    reg   [13:0] reg_stim_ch11_pulse_p1_stim11_pulse_wc;
    reg   [13:0] reg_stim_ch11_pulse_p1_stim11_pulse_wa_mux;

    wire  [31:0] val_stim_ch11_pulse_p2;
    reg   [13:0] reg_stim_ch11_pulse_p2_stim11_pulse_gap;
    reg   [11:0] reg_stim_ch11_pulse_p2_stim11_pulse_num;
    reg          reg_stim_ch11_pulse_p2_stim11_pol;
    reg          reg_stim_ch11_pulse_p2_stim11_range;

    wire  [31:0] val_stim_ch12_p0;
    reg   [15:0] reg_stim_ch12_p0_stim12_interval;
    reg    [7:0] reg_stim_ch12_p0_stim12_ia_mux;
    reg    [7:0] reg_stim_ch12_p0_stim12_ic;

    wire  [31:0] val_stim_ch12_pulse_p1;
    reg   [13:0] reg_stim_ch12_pulse_p1_stim12_pulse_wc;
    reg   [13:0] reg_stim_ch12_pulse_p1_stim12_pulse_wa_mux;

    wire  [31:0] val_stim_ch12_pulse_p2;
    reg   [13:0] reg_stim_ch12_pulse_p2_stim12_pulse_gap;
    reg   [11:0] reg_stim_ch12_pulse_p2_stim12_pulse_num;
    reg          reg_stim_ch12_pulse_p2_stim12_pol;
    reg          reg_stim_ch12_pulse_p2_stim12_range;

    wire  [31:0] val_stim_ch13_p0;
    reg   [15:0] reg_stim_ch13_p0_stim13_interval;
    reg    [7:0] reg_stim_ch13_p0_stim13_ia_mux;
    reg    [7:0] reg_stim_ch13_p0_stim13_ic;

    wire  [31:0] val_stim_ch13_pulse_p1;
    reg   [13:0] reg_stim_ch13_pulse_p1_stim13_pulse_wc;
    reg   [13:0] reg_stim_ch13_pulse_p1_stim13_pulse_wa_mux;

    wire  [31:0] val_stim_ch13_pulse_p2;
    reg   [13:0] reg_stim_ch13_pulse_p2_stim13_pulse_gap;
    reg   [11:0] reg_stim_ch13_pulse_p2_stim13_pulse_num;
    reg          reg_stim_ch13_pulse_p2_stim13_pol;
    reg          reg_stim_ch13_pulse_p2_stim13_range;

    wire  [31:0] val_stim_ch14_p0;
    reg   [15:0] reg_stim_ch14_p0_stim14_interval;
    reg    [7:0] reg_stim_ch14_p0_stim14_ia_mux;
    reg    [7:0] reg_stim_ch14_p0_stim14_ic;

    wire  [31:0] val_stim_ch14_pulse_p1;
    reg   [13:0] reg_stim_ch14_pulse_p1_stim14_pulse_wc;
    reg   [13:0] reg_stim_ch14_pulse_p1_stim14_pulse_wa_mux;

    wire  [31:0] val_stim_ch14_pulse_p2;
    reg   [13:0] reg_stim_ch14_pulse_p2_stim14_pulse_gap;
    reg   [11:0] reg_stim_ch14_pulse_p2_stim14_pulse_num;
    reg          reg_stim_ch14_pulse_p2_stim14_pol;
    reg          reg_stim_ch14_pulse_p2_stim14_range;

    wire  [31:0] val_stim_ch15_p0;
    reg   [15:0] reg_stim_ch15_p0_stim15_interval;
    reg    [7:0] reg_stim_ch15_p0_stim15_ia_mux;
    reg    [7:0] reg_stim_ch15_p0_stim15_ic;

    wire  [31:0] val_stim_ch15_pulse_p1;
    reg   [13:0] reg_stim_ch15_pulse_p1_stim15_pulse_wc;
    reg   [13:0] reg_stim_ch15_pulse_p1_stim15_pulse_wa_mux;

    wire  [31:0] val_stim_ch15_pulse_p2;
    reg   [13:0] reg_stim_ch15_pulse_p2_stim15_pulse_gap;
    reg   [11:0] reg_stim_ch15_pulse_p2_stim15_pulse_num;
    reg          reg_stim_ch15_pulse_p2_stim15_pol;
    reg          reg_stim_ch15_pulse_p2_stim15_range;

    wire  [31:0] val_stim_ch16_p0;
    reg   [15:0] reg_stim_ch16_p0_stim16_interval;
    reg    [7:0] reg_stim_ch16_p0_stim16_ia_mux;
    reg    [7:0] reg_stim_ch16_p0_stim16_ic;

    wire  [31:0] val_stim_ch16_pulse_p1;
    reg   [13:0] reg_stim_ch16_pulse_p1_stim16_pulse_wc;
    reg   [13:0] reg_stim_ch16_pulse_p1_stim16_pulse_wa_mux;

    wire  [31:0] val_stim_ch16_pulse_p2;
    reg   [13:0] reg_stim_ch16_pulse_p2_stim16_pulse_gap;
    reg   [11:0] reg_stim_ch16_pulse_p2_stim16_pulse_num;
    reg          reg_stim_ch16_pulse_p2_stim16_pol;
    reg          reg_stim_ch16_pulse_p2_stim16_range;

    wire  [31:0] val_stim_ch17_p0;
    reg   [15:0] reg_stim_ch17_p0_stim17_interval;
    reg    [7:0] reg_stim_ch17_p0_stim17_ia_mux;
    reg    [7:0] reg_stim_ch17_p0_stim17_ic;

    wire  [31:0] val_stim_ch17_pulse_p1;
    reg   [13:0] reg_stim_ch17_pulse_p1_stim17_pulse_wc;
    reg   [13:0] reg_stim_ch17_pulse_p1_stim17_pulse_wa_mux;

    wire  [31:0] val_stim_ch17_pulse_p2;
    reg   [13:0] reg_stim_ch17_pulse_p2_stim17_pulse_gap;
    reg   [11:0] reg_stim_ch17_pulse_p2_stim17_pulse_num;
    reg          reg_stim_ch17_pulse_p2_stim17_pol;
    reg          reg_stim_ch17_pulse_p2_stim17_range;

    wire  [31:0] val_stim_ch18_p0;
    reg   [15:0] reg_stim_ch18_p0_stim18_interval;
    reg    [7:0] reg_stim_ch18_p0_stim18_ia_mux;
    reg    [7:0] reg_stim_ch18_p0_stim18_ic;

    wire  [31:0] val_stim_ch18_pulse_p1;
    reg   [13:0] reg_stim_ch18_pulse_p1_stim18_pulse_wc;
    reg   [13:0] reg_stim_ch18_pulse_p1_stim18_pulse_wa_mux;

    wire  [31:0] val_stim_ch18_pulse_p2;
    reg   [13:0] reg_stim_ch18_pulse_p2_stim18_pulse_gap;
    reg   [11:0] reg_stim_ch18_pulse_p2_stim18_pulse_num;
    reg          reg_stim_ch18_pulse_p2_stim18_pol;
    reg          reg_stim_ch18_pulse_p2_stim18_range;

    wire  [31:0] val_stim_ch19_p0;
    reg   [15:0] reg_stim_ch19_p0_stim19_interval;
    reg    [7:0] reg_stim_ch19_p0_stim19_ia_mux;
    reg    [7:0] reg_stim_ch19_p0_stim19_ic;

    wire  [31:0] val_stim_ch19_pulse_p1;
    reg   [13:0] reg_stim_ch19_pulse_p1_stim19_pulse_wc;
    reg   [13:0] reg_stim_ch19_pulse_p1_stim19_pulse_wa_mux;

    wire  [31:0] val_stim_ch19_pulse_p2;
    reg   [13:0] reg_stim_ch19_pulse_p2_stim19_pulse_gap;
    reg   [11:0] reg_stim_ch19_pulse_p2_stim19_pulse_num;
    reg          reg_stim_ch19_pulse_p2_stim19_pol;
    reg          reg_stim_ch19_pulse_p2_stim19_range;

    wire  [31:0] val_stim_ch20_p0;
    reg   [15:0] reg_stim_ch20_p0_stim20_interval;
    reg    [7:0] reg_stim_ch20_p0_stim20_ia_mux;
    reg    [7:0] reg_stim_ch20_p0_stim20_ic;

    wire  [31:0] val_stim_ch20_pulse_p1;
    reg   [13:0] reg_stim_ch20_pulse_p1_stim20_pulse_wc;
    reg   [13:0] reg_stim_ch20_pulse_p1_stim20_pulse_wa_mux;

    wire  [31:0] val_stim_ch20_pulse_p2;
    reg   [13:0] reg_stim_ch20_pulse_p2_stim20_pulse_gap;
    reg   [11:0] reg_stim_ch20_pulse_p2_stim20_pulse_num;
    reg          reg_stim_ch20_pulse_p2_stim20_pol;
    reg          reg_stim_ch20_pulse_p2_stim20_range;

    wire  [31:0] val_stim_ch21_p0;
    reg   [15:0] reg_stim_ch21_p0_stim21_interval;
    reg    [7:0] reg_stim_ch21_p0_stim21_ia_mux;
    reg    [7:0] reg_stim_ch21_p0_stim21_ic;

    wire  [31:0] val_stim_ch21_pulse_p1;
    reg   [13:0] reg_stim_ch21_pulse_p1_stim21_pulse_wc;
    reg   [13:0] reg_stim_ch21_pulse_p1_stim21_pulse_wa_mux;

    wire  [31:0] val_stim_ch21_pulse_p2;
    reg   [13:0] reg_stim_ch21_pulse_p2_stim21_pulse_gap;
    reg   [11:0] reg_stim_ch21_pulse_p2_stim21_pulse_num;
    reg          reg_stim_ch21_pulse_p2_stim21_pol;
    reg          reg_stim_ch21_pulse_p2_stim21_range;

    wire  [31:0] val_stim_ch22_p0;
    reg   [15:0] reg_stim_ch22_p0_stim22_interval;
    reg    [7:0] reg_stim_ch22_p0_stim22_ia_mux;
    reg    [7:0] reg_stim_ch22_p0_stim22_ic;

    wire  [31:0] val_stim_ch22_pulse_p1;
    reg   [13:0] reg_stim_ch22_pulse_p1_stim22_pulse_wc;
    reg   [13:0] reg_stim_ch22_pulse_p1_stim22_pulse_wa_mux;

    wire  [31:0] val_stim_ch22_pulse_p2;
    reg   [13:0] reg_stim_ch22_pulse_p2_stim22_pulse_gap;
    reg   [11:0] reg_stim_ch22_pulse_p2_stim22_pulse_num;
    reg          reg_stim_ch22_pulse_p2_stim22_pol;
    reg          reg_stim_ch22_pulse_p2_stim22_range;

    wire  [31:0] val_stim_ch23_p0;
    reg   [15:0] reg_stim_ch23_p0_stim23_interval;
    reg    [7:0] reg_stim_ch23_p0_stim23_ia_mux;
    reg    [7:0] reg_stim_ch23_p0_stim23_ic;

    wire  [31:0] val_stim_ch23_pulse_p1;
    reg   [13:0] reg_stim_ch23_pulse_p1_stim23_pulse_wc;
    reg   [13:0] reg_stim_ch23_pulse_p1_stim23_pulse_wa_mux;

    wire  [31:0] val_stim_ch23_pulse_p2;
    reg   [13:0] reg_stim_ch23_pulse_p2_stim23_pulse_gap;
    reg   [11:0] reg_stim_ch23_pulse_p2_stim23_pulse_num;
    reg          reg_stim_ch23_pulse_p2_stim23_pol;
    reg          reg_stim_ch23_pulse_p2_stim23_range;

    wire  [31:0] val_stim_ch24_p0;
    reg   [15:0] reg_stim_ch24_p0_stim24_interval;
    reg    [7:0] reg_stim_ch24_p0_stim24_ia_mux;
    reg    [7:0] reg_stim_ch24_p0_stim24_ic;

    wire  [31:0] val_stim_ch24_pulse_p1;
    reg   [13:0] reg_stim_ch24_pulse_p1_stim24_pulse_wc;
    reg   [13:0] reg_stim_ch24_pulse_p1_stim24_pulse_wa_mux;

    wire  [31:0] val_stim_ch24_pulse_p2;
    reg   [13:0] reg_stim_ch24_pulse_p2_stim24_pulse_gap;
    reg   [11:0] reg_stim_ch24_pulse_p2_stim24_pulse_num;
    reg          reg_stim_ch24_pulse_p2_stim24_pol;
    reg          reg_stim_ch24_pulse_p2_stim24_range;

    wire  [31:0] val_stim_ch25_p0;
    reg   [15:0] reg_stim_ch25_p0_stim25_interval;
    reg    [7:0] reg_stim_ch25_p0_stim25_ia_mux;
    reg    [7:0] reg_stim_ch25_p0_stim25_ic;

    wire  [31:0] val_stim_ch25_pulse_p1;
    reg   [13:0] reg_stim_ch25_pulse_p1_stim25_pulse_wc;
    reg   [13:0] reg_stim_ch25_pulse_p1_stim25_pulse_wa_mux;

    wire  [31:0] val_stim_ch25_pulse_p2;
    reg   [13:0] reg_stim_ch25_pulse_p2_stim25_pulse_gap;
    reg   [11:0] reg_stim_ch25_pulse_p2_stim25_pulse_num;
    reg          reg_stim_ch25_pulse_p2_stim25_pol;
    reg          reg_stim_ch25_pulse_p2_stim25_range;

    wire  [31:0] val_stim_ch26_p0;
    reg   [15:0] reg_stim_ch26_p0_stim26_interval;
    reg    [7:0] reg_stim_ch26_p0_stim26_ia_mux;
    reg    [7:0] reg_stim_ch26_p0_stim26_ic;

    wire  [31:0] val_stim_ch26_pulse_p1;
    reg   [13:0] reg_stim_ch26_pulse_p1_stim26_pulse_wc;
    reg   [13:0] reg_stim_ch26_pulse_p1_stim26_pulse_wa_mux;

    wire  [31:0] val_stim_ch26_pulse_p2;
    reg   [13:0] reg_stim_ch26_pulse_p2_stim26_pulse_gap;
    reg   [11:0] reg_stim_ch26_pulse_p2_stim26_pulse_num;
    reg          reg_stim_ch26_pulse_p2_stim26_pol;
    reg          reg_stim_ch26_pulse_p2_stim26_range;

    wire  [31:0] val_stim_ch27_p0;
    reg   [15:0] reg_stim_ch27_p0_stim27_interval;
    reg    [7:0] reg_stim_ch27_p0_stim27_ia_mux;
    reg    [7:0] reg_stim_ch27_p0_stim27_ic;

    wire  [31:0] val_stim_ch27_pulse_p1;
    reg   [13:0] reg_stim_ch27_pulse_p1_stim27_pulse_wc;
    reg   [13:0] reg_stim_ch27_pulse_p1_stim27_pulse_wa_mux;

    wire  [31:0] val_stim_ch27_pulse_p2;
    reg   [13:0] reg_stim_ch27_pulse_p2_stim27_pulse_gap;
    reg   [11:0] reg_stim_ch27_pulse_p2_stim27_pulse_num;
    reg          reg_stim_ch27_pulse_p2_stim27_pol;
    reg          reg_stim_ch27_pulse_p2_stim27_range;

    wire  [31:0] val_stim_ch28_p0;
    reg   [15:0] reg_stim_ch28_p0_stim28_interval;
    reg    [7:0] reg_stim_ch28_p0_stim28_ia_mux;
    reg    [7:0] reg_stim_ch28_p0_stim28_ic;

    wire  [31:0] val_stim_ch28_pulse_p1;
    reg   [13:0] reg_stim_ch28_pulse_p1_stim28_pulse_wc;
    reg   [13:0] reg_stim_ch28_pulse_p1_stim28_pulse_wa_mux;

    wire  [31:0] val_stim_ch28_pulse_p2;
    reg   [13:0] reg_stim_ch28_pulse_p2_stim28_pulse_gap;
    reg   [11:0] reg_stim_ch28_pulse_p2_stim28_pulse_num;
    reg          reg_stim_ch28_pulse_p2_stim28_pol;
    reg          reg_stim_ch28_pulse_p2_stim28_range;

    wire  [31:0] val_stim_ch29_p0;
    reg   [15:0] reg_stim_ch29_p0_stim29_interval;
    reg    [7:0] reg_stim_ch29_p0_stim29_ia_mux;
    reg    [7:0] reg_stim_ch29_p0_stim29_ic;

    wire  [31:0] val_stim_ch29_pulse_p1;
    reg   [13:0] reg_stim_ch29_pulse_p1_stim29_pulse_wc;
    reg   [13:0] reg_stim_ch29_pulse_p1_stim29_pulse_wa_mux;

    wire  [31:0] val_stim_ch29_pulse_p2;
    reg   [13:0] reg_stim_ch29_pulse_p2_stim29_pulse_gap;
    reg   [11:0] reg_stim_ch29_pulse_p2_stim29_pulse_num;
    reg          reg_stim_ch29_pulse_p2_stim29_pol;
    reg          reg_stim_ch29_pulse_p2_stim29_range;

    wire  [31:0] val_stim_ch30_p0;
    reg   [15:0] reg_stim_ch30_p0_stim30_interval;
    reg    [7:0] reg_stim_ch30_p0_stim30_ia_mux;
    reg    [7:0] reg_stim_ch30_p0_stim30_ic;

    wire  [31:0] val_stim_ch30_pulse_p1;
    reg   [13:0] reg_stim_ch30_pulse_p1_stim30_pulse_wc;
    reg   [13:0] reg_stim_ch30_pulse_p1_stim30_pulse_wa_mux;

    wire  [31:0] val_stim_ch30_pulse_p2;
    reg   [13:0] reg_stim_ch30_pulse_p2_stim30_pulse_gap;
    reg   [11:0] reg_stim_ch30_pulse_p2_stim30_pulse_num;
    reg          reg_stim_ch30_pulse_p2_stim30_pol;
    reg          reg_stim_ch30_pulse_p2_stim30_range;

    wire  [31:0] val_stim_ch31_p0;
    reg   [15:0] reg_stim_ch31_p0_stim31_interval;
    reg    [7:0] reg_stim_ch31_p0_stim31_ia_mux;
    reg    [7:0] reg_stim_ch31_p0_stim31_ic;

    wire  [31:0] val_stim_ch31_pulse_p1;
    reg   [13:0] reg_stim_ch31_pulse_p1_stim31_pulse_wc;
    reg   [13:0] reg_stim_ch31_pulse_p1_stim31_pulse_wa_mux;

    wire  [31:0] val_stim_ch31_pulse_p2;
    reg   [13:0] reg_stim_ch31_pulse_p2_stim31_pulse_gap;
    reg   [11:0] reg_stim_ch31_pulse_p2_stim31_pulse_num;
    reg          reg_stim_ch31_pulse_p2_stim31_pol;
    reg          reg_stim_ch31_pulse_p2_stim31_range;

    wire  [31:0] val_stim_ch32_p0;
    reg   [15:0] reg_stim_ch32_p0_stim32_interval;
    reg    [7:0] reg_stim_ch32_p0_stim32_ia_mux;
    reg    [7:0] reg_stim_ch32_p0_stim32_ic;

    wire  [31:0] val_stim_ch32_pulse_p1;
    reg   [13:0] reg_stim_ch32_pulse_p1_stim32_pulse_wc;
    reg   [13:0] reg_stim_ch32_pulse_p1_stim32_pulse_wa_mux;

    wire  [31:0] val_stim_ch32_pulse_p2;
    reg   [13:0] reg_stim_ch32_pulse_p2_stim32_pulse_gap;
    reg   [11:0] reg_stim_ch32_pulse_p2_stim32_pulse_num;
    reg          reg_stim_ch32_pulse_p2_stim32_pol;
    reg          reg_stim_ch32_pulse_p2_stim32_range;

    wire  [31:0] val_stim_ch33_p0;
    reg   [15:0] reg_stim_ch33_p0_stim33_interval;
    reg    [7:0] reg_stim_ch33_p0_stim33_ia_mux;
    reg    [7:0] reg_stim_ch33_p0_stim33_ic;

    wire  [31:0] val_stim_ch33_pulse_p1;
    reg   [13:0] reg_stim_ch33_pulse_p1_stim33_pulse_wc;
    reg   [13:0] reg_stim_ch33_pulse_p1_stim33_pulse_wa_mux;

    wire  [31:0] val_stim_ch33_pulse_p2;
    reg   [13:0] reg_stim_ch33_pulse_p2_stim33_pulse_gap;
    reg   [11:0] reg_stim_ch33_pulse_p2_stim33_pulse_num;
    reg          reg_stim_ch33_pulse_p2_stim33_pol;
    reg          reg_stim_ch33_pulse_p2_stim33_range;

    wire  [31:0] val_stim_ch34_p0;
    reg   [15:0] reg_stim_ch34_p0_stim34_interval;
    reg    [7:0] reg_stim_ch34_p0_stim34_ia_mux;
    reg    [7:0] reg_stim_ch34_p0_stim34_ic;

    wire  [31:0] val_stim_ch34_pulse_p1;
    reg   [13:0] reg_stim_ch34_pulse_p1_stim34_pulse_wc;
    reg   [13:0] reg_stim_ch34_pulse_p1_stim34_pulse_wa_mux;

    wire  [31:0] val_stim_ch34_pulse_p2;
    reg   [13:0] reg_stim_ch34_pulse_p2_stim34_pulse_gap;
    reg   [11:0] reg_stim_ch34_pulse_p2_stim34_pulse_num;
    reg          reg_stim_ch34_pulse_p2_stim34_pol;
    reg          reg_stim_ch34_pulse_p2_stim34_range;

    wire  [31:0] val_stim_ch35_p0;
    reg   [15:0] reg_stim_ch35_p0_stim35_interval;
    reg    [7:0] reg_stim_ch35_p0_stim35_ia_mux;
    reg    [7:0] reg_stim_ch35_p0_stim35_ic;

    wire  [31:0] val_stim_ch35_pulse_p1;
    reg   [13:0] reg_stim_ch35_pulse_p1_stim35_pulse_wc;
    reg   [13:0] reg_stim_ch35_pulse_p1_stim35_pulse_wa_mux;

    wire  [31:0] val_stim_ch35_pulse_p2;
    reg   [13:0] reg_stim_ch35_pulse_p2_stim35_pulse_gap;
    reg   [11:0] reg_stim_ch35_pulse_p2_stim35_pulse_num;
    reg          reg_stim_ch35_pulse_p2_stim35_pol;
    reg          reg_stim_ch35_pulse_p2_stim35_range;

    wire  [31:0] val_stim_ch36_p0;
    reg   [15:0] reg_stim_ch36_p0_stim36_interval;
    reg    [7:0] reg_stim_ch36_p0_stim36_ia_mux;
    reg    [7:0] reg_stim_ch36_p0_stim36_ic;

    wire  [31:0] val_stim_ch36_pulse_p1;
    reg   [13:0] reg_stim_ch36_pulse_p1_stim36_pulse_wc;
    reg   [13:0] reg_stim_ch36_pulse_p1_stim36_pulse_wa_mux;

    wire  [31:0] val_stim_ch36_pulse_p2;
    reg   [13:0] reg_stim_ch36_pulse_p2_stim36_pulse_gap;
    reg   [11:0] reg_stim_ch36_pulse_p2_stim36_pulse_num;
    reg          reg_stim_ch36_pulse_p2_stim36_pol;
    reg          reg_stim_ch36_pulse_p2_stim36_range;

    wire  [31:0] val_stim_ch37_p0;
    reg   [15:0] reg_stim_ch37_p0_stim37_interval;
    reg    [7:0] reg_stim_ch37_p0_stim37_ia_mux;
    reg    [7:0] reg_stim_ch37_p0_stim37_ic;

    wire  [31:0] val_stim_ch37_pulse_p1;
    reg   [13:0] reg_stim_ch37_pulse_p1_stim37_pulse_wc;
    reg   [13:0] reg_stim_ch37_pulse_p1_stim37_pulse_wa_mux;

    wire  [31:0] val_stim_ch37_pulse_p2;
    reg   [13:0] reg_stim_ch37_pulse_p2_stim37_pulse_gap;
    reg   [11:0] reg_stim_ch37_pulse_p2_stim37_pulse_num;
    reg          reg_stim_ch37_pulse_p2_stim37_pol;
    reg          reg_stim_ch37_pulse_p2_stim37_range;

    wire  [31:0] val_stim_ch38_p0;
    reg   [15:0] reg_stim_ch38_p0_stim38_interval;
    reg    [7:0] reg_stim_ch38_p0_stim38_ia_mux;
    reg    [7:0] reg_stim_ch38_p0_stim38_ic;

    wire  [31:0] val_stim_ch38_pulse_p1;
    reg   [13:0] reg_stim_ch38_pulse_p1_stim38_pulse_wc;
    reg   [13:0] reg_stim_ch38_pulse_p1_stim38_pulse_wa_mux;

    wire  [31:0] val_stim_ch38_pulse_p2;
    reg   [13:0] reg_stim_ch38_pulse_p2_stim38_pulse_gap;
    reg   [11:0] reg_stim_ch38_pulse_p2_stim38_pulse_num;
    reg          reg_stim_ch38_pulse_p2_stim38_pol;
    reg          reg_stim_ch38_pulse_p2_stim38_range;

    wire  [31:0] val_stim_ch39_p0;
    reg   [15:0] reg_stim_ch39_p0_stim39_interval;
    reg    [7:0] reg_stim_ch39_p0_stim39_ia_mux;
    reg    [7:0] reg_stim_ch39_p0_stim39_ic;

    wire  [31:0] val_stim_ch39_pulse_p1;
    reg   [13:0] reg_stim_ch39_pulse_p1_stim39_pulse_wc;
    reg   [13:0] reg_stim_ch39_pulse_p1_stim39_pulse_wa_mux;

    wire  [31:0] val_stim_ch39_pulse_p2;
    reg   [13:0] reg_stim_ch39_pulse_p2_stim39_pulse_gap;
    reg   [11:0] reg_stim_ch39_pulse_p2_stim39_pulse_num;
    reg          reg_stim_ch39_pulse_p2_stim39_pol;
    reg          reg_stim_ch39_pulse_p2_stim39_range;

    wire  [31:0] val_stim_ch40_p0;
    reg   [15:0] reg_stim_ch40_p0_stim40_interval;
    reg    [7:0] reg_stim_ch40_p0_stim40_ia_mux;
    reg    [7:0] reg_stim_ch40_p0_stim40_ic;

    wire  [31:0] val_stim_ch40_pulse_p1;
    reg   [13:0] reg_stim_ch40_pulse_p1_stim40_pulse_wc;
    reg   [13:0] reg_stim_ch40_pulse_p1_stim40_pulse_wa_mux;

    wire  [31:0] val_stim_ch40_pulse_p2;
    reg   [13:0] reg_stim_ch40_pulse_p2_stim40_pulse_gap;
    reg   [11:0] reg_stim_ch40_pulse_p2_stim40_pulse_num;
    reg          reg_stim_ch40_pulse_p2_stim40_pol;
    reg          reg_stim_ch40_pulse_p2_stim40_range;

    wire  [31:0] val_stim_ch41_p0;
    reg   [15:0] reg_stim_ch41_p0_stim41_interval;
    reg    [7:0] reg_stim_ch41_p0_stim41_ia_mux;
    reg    [7:0] reg_stim_ch41_p0_stim41_ic;

    wire  [31:0] val_stim_ch41_pulse_p1;
    reg   [13:0] reg_stim_ch41_pulse_p1_stim41_pulse_wc;
    reg   [13:0] reg_stim_ch41_pulse_p1_stim41_pulse_wa_mux;

    wire  [31:0] val_stim_ch41_pulse_p2;
    reg   [13:0] reg_stim_ch41_pulse_p2_stim41_pulse_gap;
    reg   [11:0] reg_stim_ch41_pulse_p2_stim41_pulse_num;
    reg          reg_stim_ch41_pulse_p2_stim41_pol;
    reg          reg_stim_ch41_pulse_p2_stim41_range;

    wire  [31:0] val_stim_ch42_p0;
    reg   [15:0] reg_stim_ch42_p0_stim42_interval;
    reg    [7:0] reg_stim_ch42_p0_stim42_ia_mux;
    reg    [7:0] reg_stim_ch42_p0_stim42_ic;

    wire  [31:0] val_stim_ch42_pulse_p1;
    reg   [13:0] reg_stim_ch42_pulse_p1_stim42_pulse_wc;
    reg   [13:0] reg_stim_ch42_pulse_p1_stim42_pulse_wa_mux;

    wire  [31:0] val_stim_ch42_pulse_p2;
    reg   [13:0] reg_stim_ch42_pulse_p2_stim42_pulse_gap;
    reg   [11:0] reg_stim_ch42_pulse_p2_stim42_pulse_num;
    reg          reg_stim_ch42_pulse_p2_stim42_pol;
    reg          reg_stim_ch42_pulse_p2_stim42_range;

    wire  [31:0] val_stim_ch43_p0;
    reg   [15:0] reg_stim_ch43_p0_stim43_interval;
    reg    [7:0] reg_stim_ch43_p0_stim43_ia_mux;
    reg    [7:0] reg_stim_ch43_p0_stim43_ic;

    wire  [31:0] val_stim_ch43_pulse_p1;
    reg   [13:0] reg_stim_ch43_pulse_p1_stim43_pulse_wc;
    reg   [13:0] reg_stim_ch43_pulse_p1_stim43_pulse_wa_mux;

    wire  [31:0] val_stim_ch43_pulse_p2;
    reg   [13:0] reg_stim_ch43_pulse_p2_stim43_pulse_gap;
    reg   [11:0] reg_stim_ch43_pulse_p2_stim43_pulse_num;
    reg          reg_stim_ch43_pulse_p2_stim43_pol;
    reg          reg_stim_ch43_pulse_p2_stim43_range;

    wire  [31:0] val_stim_ch44_p0;
    reg   [15:0] reg_stim_ch44_p0_stim44_interval;
    reg    [7:0] reg_stim_ch44_p0_stim44_ia_mux;
    reg    [7:0] reg_stim_ch44_p0_stim44_ic;

    wire  [31:0] val_stim_ch44_pulse_p1;
    reg   [13:0] reg_stim_ch44_pulse_p1_stim44_pulse_wc;
    reg   [13:0] reg_stim_ch44_pulse_p1_stim44_pulse_wa_mux;

    wire  [31:0] val_stim_ch44_pulse_p2;
    reg   [13:0] reg_stim_ch44_pulse_p2_stim44_pulse_gap;
    reg   [11:0] reg_stim_ch44_pulse_p2_stim44_pulse_num;
    reg          reg_stim_ch44_pulse_p2_stim44_pol;
    reg          reg_stim_ch44_pulse_p2_stim44_range;

    wire  [31:0] val_stim_ch45_p0;
    reg   [15:0] reg_stim_ch45_p0_stim45_interval;
    reg    [7:0] reg_stim_ch45_p0_stim45_ia_mux;
    reg    [7:0] reg_stim_ch45_p0_stim45_ic;

    wire  [31:0] val_stim_ch45_pulse_p1;
    reg   [13:0] reg_stim_ch45_pulse_p1_stim45_pulse_wc;
    reg   [13:0] reg_stim_ch45_pulse_p1_stim45_pulse_wa_mux;

    wire  [31:0] val_stim_ch45_pulse_p2;
    reg   [13:0] reg_stim_ch45_pulse_p2_stim45_pulse_gap;
    reg   [11:0] reg_stim_ch45_pulse_p2_stim45_pulse_num;
    reg          reg_stim_ch45_pulse_p2_stim45_pol;
    reg          reg_stim_ch45_pulse_p2_stim45_range;

    wire  [31:0] val_stim_ch46_p0;
    reg   [15:0] reg_stim_ch46_p0_stim46_interval;
    reg    [7:0] reg_stim_ch46_p0_stim46_ia_mux;
    reg    [7:0] reg_stim_ch46_p0_stim46_ic;

    wire  [31:0] val_stim_ch46_pulse_p1;
    reg   [13:0] reg_stim_ch46_pulse_p1_stim46_pulse_wc;
    reg   [13:0] reg_stim_ch46_pulse_p1_stim46_pulse_wa_mux;

    wire  [31:0] val_stim_ch46_pulse_p2;
    reg   [13:0] reg_stim_ch46_pulse_p2_stim46_pulse_gap;
    reg   [11:0] reg_stim_ch46_pulse_p2_stim46_pulse_num;
    reg          reg_stim_ch46_pulse_p2_stim46_pol;
    reg          reg_stim_ch46_pulse_p2_stim46_range;

    wire  [31:0] val_stim_ch47_p0;
    reg   [15:0] reg_stim_ch47_p0_stim47_interval;
    reg    [7:0] reg_stim_ch47_p0_stim47_ia_mux;
    reg    [7:0] reg_stim_ch47_p0_stim47_ic;

    wire  [31:0] val_stim_ch47_pulse_p1;
    reg   [13:0] reg_stim_ch47_pulse_p1_stim47_pulse_wc;
    reg   [13:0] reg_stim_ch47_pulse_p1_stim47_pulse_wa_mux;

    wire  [31:0] val_stim_ch47_pulse_p2;
    reg   [13:0] reg_stim_ch47_pulse_p2_stim47_pulse_gap;
    reg   [11:0] reg_stim_ch47_pulse_p2_stim47_pulse_num;
    reg          reg_stim_ch47_pulse_p2_stim47_pol;
    reg          reg_stim_ch47_pulse_p2_stim47_range;

    wire  [31:0] val_stim_ch48_p0;
    reg   [15:0] reg_stim_ch48_p0_stim48_interval;
    reg    [7:0] reg_stim_ch48_p0_stim48_ia_mux;
    reg    [7:0] reg_stim_ch48_p0_stim48_ic;

    wire  [31:0] val_stim_ch48_pulse_p1;
    reg   [13:0] reg_stim_ch48_pulse_p1_stim48_pulse_wc;
    reg   [13:0] reg_stim_ch48_pulse_p1_stim48_pulse_wa_mux;

    wire  [31:0] val_stim_ch48_pulse_p2;
    reg   [13:0] reg_stim_ch48_pulse_p2_stim48_pulse_gap;
    reg   [11:0] reg_stim_ch48_pulse_p2_stim48_pulse_num;
    reg          reg_stim_ch48_pulse_p2_stim48_pol;
    reg          reg_stim_ch48_pulse_p2_stim48_range;

    wire  [31:0] val_stim_ch49_p0;
    reg   [15:0] reg_stim_ch49_p0_stim49_interval;
    reg    [7:0] reg_stim_ch49_p0_stim49_ia_mux;
    reg    [7:0] reg_stim_ch49_p0_stim49_ic;

    wire  [31:0] val_stim_ch49_pulse_p1;
    reg   [13:0] reg_stim_ch49_pulse_p1_stim49_pulse_wc;
    reg   [13:0] reg_stim_ch49_pulse_p1_stim49_pulse_wa_mux;

    wire  [31:0] val_stim_ch49_pulse_p2;
    reg   [13:0] reg_stim_ch49_pulse_p2_stim49_pulse_gap;
    reg   [11:0] reg_stim_ch49_pulse_p2_stim49_pulse_num;
    reg          reg_stim_ch49_pulse_p2_stim49_pol;
    reg          reg_stim_ch49_pulse_p2_stim49_range;

    wire  [31:0] val_stim_ch50_p0;
    reg   [15:0] reg_stim_ch50_p0_stim50_interval;
    reg    [7:0] reg_stim_ch50_p0_stim50_ia_mux;
    reg    [7:0] reg_stim_ch50_p0_stim50_ic;

    wire  [31:0] val_stim_ch50_pulse_p1;
    reg   [13:0] reg_stim_ch50_pulse_p1_stim50_pulse_wc;
    reg   [13:0] reg_stim_ch50_pulse_p1_stim50_pulse_wa_mux;

    wire  [31:0] val_stim_ch50_pulse_p2;
    reg   [13:0] reg_stim_ch50_pulse_p2_stim50_pulse_gap;
    reg   [11:0] reg_stim_ch50_pulse_p2_stim50_pulse_num;
    reg          reg_stim_ch50_pulse_p2_stim50_pol;
    reg          reg_stim_ch50_pulse_p2_stim50_range;

    wire  [31:0] val_stim_ch51_p0;
    reg   [15:0] reg_stim_ch51_p0_stim51_interval;
    reg    [7:0] reg_stim_ch51_p0_stim51_ia_mux;
    reg    [7:0] reg_stim_ch51_p0_stim51_ic;

    wire  [31:0] val_stim_ch51_pulse_p1;
    reg   [13:0] reg_stim_ch51_pulse_p1_stim51_pulse_wc;
    reg   [13:0] reg_stim_ch51_pulse_p1_stim51_pulse_wa_mux;

    wire  [31:0] val_stim_ch51_pulse_p2;
    reg   [13:0] reg_stim_ch51_pulse_p2_stim51_pulse_gap;
    reg   [11:0] reg_stim_ch51_pulse_p2_stim51_pulse_num;
    reg          reg_stim_ch51_pulse_p2_stim51_pol;
    reg          reg_stim_ch51_pulse_p2_stim51_range;

    wire  [31:0] val_stim_ch52_p0;
    reg   [15:0] reg_stim_ch52_p0_stim52_interval;
    reg    [7:0] reg_stim_ch52_p0_stim52_ia_mux;
    reg    [7:0] reg_stim_ch52_p0_stim52_ic;

    wire  [31:0] val_stim_ch52_pulse_p1;
    reg   [13:0] reg_stim_ch52_pulse_p1_stim52_pulse_wc;
    reg   [13:0] reg_stim_ch52_pulse_p1_stim52_pulse_wa_mux;

    wire  [31:0] val_stim_ch52_pulse_p2;
    reg   [13:0] reg_stim_ch52_pulse_p2_stim52_pulse_gap;
    reg   [11:0] reg_stim_ch52_pulse_p2_stim52_pulse_num;
    reg          reg_stim_ch52_pulse_p2_stim52_pol;
    reg          reg_stim_ch52_pulse_p2_stim52_range;

    wire  [31:0] val_stim_ch53_p0;
    reg   [15:0] reg_stim_ch53_p0_stim53_interval;
    reg    [7:0] reg_stim_ch53_p0_stim53_ia_mux;
    reg    [7:0] reg_stim_ch53_p0_stim53_ic;

    wire  [31:0] val_stim_ch53_pulse_p1;
    reg   [13:0] reg_stim_ch53_pulse_p1_stim53_pulse_wc;
    reg   [13:0] reg_stim_ch53_pulse_p1_stim53_pulse_wa_mux;

    wire  [31:0] val_stim_ch53_pulse_p2;
    reg   [13:0] reg_stim_ch53_pulse_p2_stim53_pulse_gap;
    reg   [11:0] reg_stim_ch53_pulse_p2_stim53_pulse_num;
    reg          reg_stim_ch53_pulse_p2_stim53_pol;
    reg          reg_stim_ch53_pulse_p2_stim53_range;

    wire  [31:0] val_stim_ch54_p0;
    reg   [15:0] reg_stim_ch54_p0_stim54_interval;
    reg    [7:0] reg_stim_ch54_p0_stim54_ia_mux;
    reg    [7:0] reg_stim_ch54_p0_stim54_ic;

    wire  [31:0] val_stim_ch54_pulse_p1;
    reg   [13:0] reg_stim_ch54_pulse_p1_stim54_pulse_wc;
    reg   [13:0] reg_stim_ch54_pulse_p1_stim54_pulse_wa_mux;

    wire  [31:0] val_stim_ch54_pulse_p2;
    reg   [13:0] reg_stim_ch54_pulse_p2_stim54_pulse_gap;
    reg   [11:0] reg_stim_ch54_pulse_p2_stim54_pulse_num;
    reg          reg_stim_ch54_pulse_p2_stim54_pol;
    reg          reg_stim_ch54_pulse_p2_stim54_range;

    wire  [31:0] val_stim_ch55_p0;
    reg   [15:0] reg_stim_ch55_p0_stim55_interval;
    reg    [7:0] reg_stim_ch55_p0_stim55_ia_mux;
    reg    [7:0] reg_stim_ch55_p0_stim55_ic;

    wire  [31:0] val_stim_ch55_pulse_p1;
    reg   [13:0] reg_stim_ch55_pulse_p1_stim55_pulse_wc;
    reg   [13:0] reg_stim_ch55_pulse_p1_stim55_pulse_wa_mux;

    wire  [31:0] val_stim_ch55_pulse_p2;
    reg   [13:0] reg_stim_ch55_pulse_p2_stim55_pulse_gap;
    reg   [11:0] reg_stim_ch55_pulse_p2_stim55_pulse_num;
    reg          reg_stim_ch55_pulse_p2_stim55_pol;
    reg          reg_stim_ch55_pulse_p2_stim55_range;

    wire  [31:0] val_stim_ch56_p0;
    reg   [15:0] reg_stim_ch56_p0_stim56_interval;
    reg    [7:0] reg_stim_ch56_p0_stim56_ia_mux;
    reg    [7:0] reg_stim_ch56_p0_stim56_ic;

    wire  [31:0] val_stim_ch56_pulse_p1;
    reg   [13:0] reg_stim_ch56_pulse_p1_stim56_pulse_wc;
    reg   [13:0] reg_stim_ch56_pulse_p1_stim56_pulse_wa_mux;

    wire  [31:0] val_stim_ch56_pulse_p2;
    reg   [13:0] reg_stim_ch56_pulse_p2_stim56_pulse_gap;
    reg   [11:0] reg_stim_ch56_pulse_p2_stim56_pulse_num;
    reg          reg_stim_ch56_pulse_p2_stim56_pol;
    reg          reg_stim_ch56_pulse_p2_stim56_range;

    wire  [31:0] val_stim_ch57_p0;
    reg   [15:0] reg_stim_ch57_p0_stim57_interval;
    reg    [7:0] reg_stim_ch57_p0_stim57_ia_mux;
    reg    [7:0] reg_stim_ch57_p0_stim57_ic;

    wire  [31:0] val_stim_ch57_pulse_p1;
    reg   [13:0] reg_stim_ch57_pulse_p1_stim57_pulse_wc;
    reg   [13:0] reg_stim_ch57_pulse_p1_stim57_pulse_wa_mux;

    wire  [31:0] val_stim_ch57_pulse_p2;
    reg   [13:0] reg_stim_ch57_pulse_p2_stim57_pulse_gap;
    reg   [11:0] reg_stim_ch57_pulse_p2_stim57_pulse_num;
    reg          reg_stim_ch57_pulse_p2_stim57_pol;
    reg          reg_stim_ch57_pulse_p2_stim57_range;

    wire  [31:0] val_stim_ch58_p0;
    reg   [15:0] reg_stim_ch58_p0_stim58_interval;
    reg    [7:0] reg_stim_ch58_p0_stim58_ia_mux;
    reg    [7:0] reg_stim_ch58_p0_stim58_ic;

    wire  [31:0] val_stim_ch58_pulse_p1;
    reg   [13:0] reg_stim_ch58_pulse_p1_stim58_pulse_wc;
    reg   [13:0] reg_stim_ch58_pulse_p1_stim58_pulse_wa_mux;

    wire  [31:0] val_stim_ch58_pulse_p2;
    reg   [13:0] reg_stim_ch58_pulse_p2_stim58_pulse_gap;
    reg   [11:0] reg_stim_ch58_pulse_p2_stim58_pulse_num;
    reg          reg_stim_ch58_pulse_p2_stim58_pol;
    reg          reg_stim_ch58_pulse_p2_stim58_range;

    wire  [31:0] val_stim_ch59_p0;
    reg   [15:0] reg_stim_ch59_p0_stim59_interval;
    reg    [7:0] reg_stim_ch59_p0_stim59_ia_mux;
    reg    [7:0] reg_stim_ch59_p0_stim59_ic;

    wire  [31:0] val_stim_ch59_pulse_p1;
    reg   [13:0] reg_stim_ch59_pulse_p1_stim59_pulse_wc;
    reg   [13:0] reg_stim_ch59_pulse_p1_stim59_pulse_wa_mux;

    wire  [31:0] val_stim_ch59_pulse_p2;
    reg   [13:0] reg_stim_ch59_pulse_p2_stim59_pulse_gap;
    reg   [11:0] reg_stim_ch59_pulse_p2_stim59_pulse_num;
    reg          reg_stim_ch59_pulse_p2_stim59_pol;
    reg          reg_stim_ch59_pulse_p2_stim59_range;

    wire  [31:0] val_stim_ch60_p0;
    reg   [15:0] reg_stim_ch60_p0_stim60_interval;
    reg    [7:0] reg_stim_ch60_p0_stim60_ia_mux;
    reg    [7:0] reg_stim_ch60_p0_stim60_ic;

    wire  [31:0] val_stim_ch60_pulse_p1;
    reg   [13:0] reg_stim_ch60_pulse_p1_stim60_pulse_wc;
    reg   [13:0] reg_stim_ch60_pulse_p1_stim60_pulse_wa_mux;

    wire  [31:0] val_stim_ch60_pulse_p2;
    reg   [13:0] reg_stim_ch60_pulse_p2_stim60_pulse_gap;
    reg   [11:0] reg_stim_ch60_pulse_p2_stim60_pulse_num;
    reg          reg_stim_ch60_pulse_p2_stim60_pol;
    reg          reg_stim_ch60_pulse_p2_stim60_range;

    wire  [31:0] val_stim_ch61_p0;
    reg   [15:0] reg_stim_ch61_p0_stim61_interval;
    reg    [7:0] reg_stim_ch61_p0_stim61_ia_mux;
    reg    [7:0] reg_stim_ch61_p0_stim61_ic;

    wire  [31:0] val_stim_ch61_pulse_p1;
    reg   [13:0] reg_stim_ch61_pulse_p1_stim61_pulse_wc;
    reg   [13:0] reg_stim_ch61_pulse_p1_stim61_pulse_wa_mux;

    wire  [31:0] val_stim_ch61_pulse_p2;
    reg   [13:0] reg_stim_ch61_pulse_p2_stim61_pulse_gap;
    reg   [11:0] reg_stim_ch61_pulse_p2_stim61_pulse_num;
    reg          reg_stim_ch61_pulse_p2_stim61_pol;
    reg          reg_stim_ch61_pulse_p2_stim61_range;

    wire  [31:0] val_stim_ch62_p0;
    reg   [15:0] reg_stim_ch62_p0_stim62_interval;
    reg    [7:0] reg_stim_ch62_p0_stim62_ia_mux;
    reg    [7:0] reg_stim_ch62_p0_stim62_ic;

    wire  [31:0] val_stim_ch62_pulse_p1;
    reg   [13:0] reg_stim_ch62_pulse_p1_stim62_pulse_wc;
    reg   [13:0] reg_stim_ch62_pulse_p1_stim62_pulse_wa_mux;

    wire  [31:0] val_stim_ch62_pulse_p2;
    reg   [13:0] reg_stim_ch62_pulse_p2_stim62_pulse_gap;
    reg   [11:0] reg_stim_ch62_pulse_p2_stim62_pulse_num;
    reg          reg_stim_ch62_pulse_p2_stim62_pol;
    reg          reg_stim_ch62_pulse_p2_stim62_range;

    wire  [31:0] val_stim_ch63_p0;
    reg   [15:0] reg_stim_ch63_p0_stim63_interval;
    reg    [7:0] reg_stim_ch63_p0_stim63_ia_mux;
    reg    [7:0] reg_stim_ch63_p0_stim63_ic;

    wire  [31:0] val_stim_ch63_pulse_p1;
    reg   [13:0] reg_stim_ch63_pulse_p1_stim63_pulse_wc;
    reg   [13:0] reg_stim_ch63_pulse_p1_stim63_pulse_wa_mux;

    wire  [31:0] val_stim_ch63_pulse_p2;
    reg   [13:0] reg_stim_ch63_pulse_p2_stim63_pulse_gap;
    reg   [11:0] reg_stim_ch63_pulse_p2_stim63_pulse_num;
    reg          reg_stim_ch63_pulse_p2_stim63_pol;
    reg          reg_stim_ch63_pulse_p2_stim63_range;


    assign rf_apb_prot_ok = apb_prot_i[0] | ~apb_prot_en_i;




    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w0 (
        .I1  (stim0_pulse_wc_o),
        .I0  (stim0_pulse_wa_mux_s),
        .Z   (stim0_pulse_wa_o),
        .SEL (stim0_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w1 (
        .I1  (stim1_pulse_wc_o),
        .I0  (stim1_pulse_wa_mux_s),
        .Z   (stim1_pulse_wa_o),
        .SEL (stim1_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w2 (
        .I1  (stim2_pulse_wc_o),
        .I0  (stim2_pulse_wa_mux_s),
        .Z   (stim2_pulse_wa_o),
        .SEL (stim2_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w3 (
        .I1  (stim3_pulse_wc_o),
        .I0  (stim3_pulse_wa_mux_s),
        .Z   (stim3_pulse_wa_o),
        .SEL (stim3_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w4 (
        .I1  (stim4_pulse_wc_o),
        .I0  (stim4_pulse_wa_mux_s),
        .Z   (stim4_pulse_wa_o),
        .SEL (stim4_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w5 (
        .I1  (stim5_pulse_wc_o),
        .I0  (stim5_pulse_wa_mux_s),
        .Z   (stim5_pulse_wa_o),
        .SEL (stim5_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w6 (
        .I1  (stim6_pulse_wc_o),
        .I0  (stim6_pulse_wa_mux_s),
        .Z   (stim6_pulse_wa_o),
        .SEL (stim6_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w7 (
        .I1  (stim7_pulse_wc_o),
        .I0  (stim7_pulse_wa_mux_s),
        .Z   (stim7_pulse_wa_o),
        .SEL (stim7_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w8 (
        .I1  (stim8_pulse_wc_o),
        .I0  (stim8_pulse_wa_mux_s),
        .Z   (stim8_pulse_wa_o),
        .SEL (stim8_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w9 (
        .I1  (stim9_pulse_wc_o),
        .I0  (stim9_pulse_wa_mux_s),
        .Z   (stim9_pulse_wa_o),
        .SEL (stim9_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w10 (
        .I1  (stim10_pulse_wc_o),
        .I0  (stim10_pulse_wa_mux_s),
        .Z   (stim10_pulse_wa_o),
        .SEL (stim10_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w11 (
        .I1  (stim11_pulse_wc_o),
        .I0  (stim11_pulse_wa_mux_s),
        .Z   (stim11_pulse_wa_o),
        .SEL (stim11_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w12 (
        .I1  (stim12_pulse_wc_o),
        .I0  (stim12_pulse_wa_mux_s),
        .Z   (stim12_pulse_wa_o),
        .SEL (stim12_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w13 (
        .I1  (stim13_pulse_wc_o),
        .I0  (stim13_pulse_wa_mux_s),
        .Z   (stim13_pulse_wa_o),
        .SEL (stim13_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w14 (
        .I1  (stim14_pulse_wc_o),
        .I0  (stim14_pulse_wa_mux_s),
        .Z   (stim14_pulse_wa_o),
        .SEL (stim14_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w15 (
        .I1  (stim15_pulse_wc_o),
        .I0  (stim15_pulse_wa_mux_s),
        .Z   (stim15_pulse_wa_o),
        .SEL (stim15_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w16 (
        .I1  (stim16_pulse_wc_o),
        .I0  (stim16_pulse_wa_mux_s),
        .Z   (stim16_pulse_wa_o),
        .SEL (stim16_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w17 (
        .I1  (stim17_pulse_wc_o),
        .I0  (stim17_pulse_wa_mux_s),
        .Z   (stim17_pulse_wa_o),
        .SEL (stim17_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w18 (
        .I1  (stim18_pulse_wc_o),
        .I0  (stim18_pulse_wa_mux_s),
        .Z   (stim18_pulse_wa_o),
        .SEL (stim18_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w19 (
        .I1  (stim19_pulse_wc_o),
        .I0  (stim19_pulse_wa_mux_s),
        .Z   (stim19_pulse_wa_o),
        .SEL (stim19_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w20 (
        .I1  (stim20_pulse_wc_o),
        .I0  (stim20_pulse_wa_mux_s),
        .Z   (stim20_pulse_wa_o),
        .SEL (stim20_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w21 (
        .I1  (stim21_pulse_wc_o),
        .I0  (stim21_pulse_wa_mux_s),
        .Z   (stim21_pulse_wa_o),
        .SEL (stim21_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w22 (
        .I1  (stim22_pulse_wc_o),
        .I0  (stim22_pulse_wa_mux_s),
        .Z   (stim22_pulse_wa_o),
        .SEL (stim22_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w23 (
        .I1  (stim23_pulse_wc_o),
        .I0  (stim23_pulse_wa_mux_s),
        .Z   (stim23_pulse_wa_o),
        .SEL (stim23_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w24 (
        .I1  (stim24_pulse_wc_o),
        .I0  (stim24_pulse_wa_mux_s),
        .Z   (stim24_pulse_wa_o),
        .SEL (stim24_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w25 (
        .I1  (stim25_pulse_wc_o),
        .I0  (stim25_pulse_wa_mux_s),
        .Z   (stim25_pulse_wa_o),
        .SEL (stim25_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w26 (
        .I1  (stim26_pulse_wc_o),
        .I0  (stim26_pulse_wa_mux_s),
        .Z   (stim26_pulse_wa_o),
        .SEL (stim26_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w27 (
        .I1  (stim27_pulse_wc_o),
        .I0  (stim27_pulse_wa_mux_s),
        .Z   (stim27_pulse_wa_o),
        .SEL (stim27_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w28 (
        .I1  (stim28_pulse_wc_o),
        .I0  (stim28_pulse_wa_mux_s),
        .Z   (stim28_pulse_wa_o),
        .SEL (stim28_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w29 (
        .I1  (stim29_pulse_wc_o),
        .I0  (stim29_pulse_wa_mux_s),
        .Z   (stim29_pulse_wa_o),
        .SEL (stim29_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w30 (
        .I1  (stim30_pulse_wc_o),
        .I0  (stim30_pulse_wa_mux_s),
        .Z   (stim30_pulse_wa_o),
        .SEL (stim30_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w31 (
        .I1  (stim31_pulse_wc_o),
        .I0  (stim31_pulse_wa_mux_s),
        .Z   (stim31_pulse_wa_o),
        .SEL (stim31_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w32 (
        .I1  (stim32_pulse_wc_o),
        .I0  (stim32_pulse_wa_mux_s),
        .Z   (stim32_pulse_wa_o),
        .SEL (stim32_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w33 (
        .I1  (stim33_pulse_wc_o),
        .I0  (stim33_pulse_wa_mux_s),
        .Z   (stim33_pulse_wa_o),
        .SEL (stim33_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w34 (
        .I1  (stim34_pulse_wc_o),
        .I0  (stim34_pulse_wa_mux_s),
        .Z   (stim34_pulse_wa_o),
        .SEL (stim34_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w35 (
        .I1  (stim35_pulse_wc_o),
        .I0  (stim35_pulse_wa_mux_s),
        .Z   (stim35_pulse_wa_o),
        .SEL (stim35_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w36 (
        .I1  (stim36_pulse_wc_o),
        .I0  (stim36_pulse_wa_mux_s),
        .Z   (stim36_pulse_wa_o),
        .SEL (stim36_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w37 (
        .I1  (stim37_pulse_wc_o),
        .I0  (stim37_pulse_wa_mux_s),
        .Z   (stim37_pulse_wa_o),
        .SEL (stim37_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w38 (
        .I1  (stim38_pulse_wc_o),
        .I0  (stim38_pulse_wa_mux_s),
        .Z   (stim38_pulse_wa_o),
        .SEL (stim38_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w39 (
        .I1  (stim39_pulse_wc_o),
        .I0  (stim39_pulse_wa_mux_s),
        .Z   (stim39_pulse_wa_o),
        .SEL (stim39_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w40 (
        .I1  (stim40_pulse_wc_o),
        .I0  (stim40_pulse_wa_mux_s),
        .Z   (stim40_pulse_wa_o),
        .SEL (stim40_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w41 (
        .I1  (stim41_pulse_wc_o),
        .I0  (stim41_pulse_wa_mux_s),
        .Z   (stim41_pulse_wa_o),
        .SEL (stim41_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w42 (
        .I1  (stim42_pulse_wc_o),
        .I0  (stim42_pulse_wa_mux_s),
        .Z   (stim42_pulse_wa_o),
        .SEL (stim42_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w43 (
        .I1  (stim43_pulse_wc_o),
        .I0  (stim43_pulse_wa_mux_s),
        .Z   (stim43_pulse_wa_o),
        .SEL (stim43_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w44 (
        .I1  (stim44_pulse_wc_o),
        .I0  (stim44_pulse_wa_mux_s),
        .Z   (stim44_pulse_wa_o),
        .SEL (stim44_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w45 (
        .I1  (stim45_pulse_wc_o),
        .I0  (stim45_pulse_wa_mux_s),
        .Z   (stim45_pulse_wa_o),
        .SEL (stim45_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w46 (
        .I1  (stim46_pulse_wc_o),
        .I0  (stim46_pulse_wa_mux_s),
        .Z   (stim46_pulse_wa_o),
        .SEL (stim46_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w47 (
        .I1  (stim47_pulse_wc_o),
        .I0  (stim47_pulse_wa_mux_s),
        .Z   (stim47_pulse_wa_o),
        .SEL (stim47_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w48 (
        .I1  (stim48_pulse_wc_o),
        .I0  (stim48_pulse_wa_mux_s),
        .Z   (stim48_pulse_wa_o),
        .SEL (stim48_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w49 (
        .I1  (stim49_pulse_wc_o),
        .I0  (stim49_pulse_wa_mux_s),
        .Z   (stim49_pulse_wa_o),
        .SEL (stim49_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w50 (
        .I1  (stim50_pulse_wc_o),
        .I0  (stim50_pulse_wa_mux_s),
        .Z   (stim50_pulse_wa_o),
        .SEL (stim50_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w51 (
        .I1  (stim51_pulse_wc_o),
        .I0  (stim51_pulse_wa_mux_s),
        .Z   (stim51_pulse_wa_o),
        .SEL (stim51_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w52 (
        .I1  (stim52_pulse_wc_o),
        .I0  (stim52_pulse_wa_mux_s),
        .Z   (stim52_pulse_wa_o),
        .SEL (stim52_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w53 (
        .I1  (stim53_pulse_wc_o),
        .I0  (stim53_pulse_wa_mux_s),
        .Z   (stim53_pulse_wa_o),
        .SEL (stim53_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w54 (
        .I1  (stim54_pulse_wc_o),
        .I0  (stim54_pulse_wa_mux_s),
        .Z   (stim54_pulse_wa_o),
        .SEL (stim54_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w55 (
        .I1  (stim55_pulse_wc_o),
        .I0  (stim55_pulse_wa_mux_s),
        .Z   (stim55_pulse_wa_o),
        .SEL (stim55_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w56 (
        .I1  (stim56_pulse_wc_o),
        .I0  (stim56_pulse_wa_mux_s),
        .Z   (stim56_pulse_wa_o),
        .SEL (stim56_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w57 (
        .I1  (stim57_pulse_wc_o),
        .I0  (stim57_pulse_wa_mux_s),
        .Z   (stim57_pulse_wa_o),
        .SEL (stim57_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w58 (
        .I1  (stim58_pulse_wc_o),
        .I0  (stim58_pulse_wa_mux_s),
        .Z   (stim58_pulse_wa_o),
        .SEL (stim58_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w59 (
        .I1  (stim59_pulse_wc_o),
        .I0  (stim59_pulse_wa_mux_s),
        .Z   (stim59_pulse_wa_o),
        .SEL (stim59_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w60 (
        .I1  (stim60_pulse_wc_o),
        .I0  (stim60_pulse_wa_mux_s),
        .Z   (stim60_pulse_wa_o),
        .SEL (stim60_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w61 (
        .I1  (stim61_pulse_wc_o),
        .I0  (stim61_pulse_wa_mux_s),
        .Z   (stim61_pulse_wa_o),
        .SEL (stim61_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w62 (
        .I1  (stim62_pulse_wc_o),
        .I0  (stim62_pulse_wa_mux_s),
        .Z   (stim62_pulse_wa_o),
        .SEL (stim62_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w63 (
        .I1  (stim63_pulse_wc_o),
        .I0  (stim63_pulse_wa_mux_s),
        .Z   (stim63_pulse_wa_o),
        .SEL (stim63_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i0 (
        .I0  (stim0_ia_mux_s),
        .Z   (stim0_ia_o),
        .I1  (stim0_ic_o),
        .SEL (stim0_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i1 (
        .I0  (stim1_ia_mux_s),
        .Z   (stim1_ia_o),
        .I1  (stim1_ic_o),
        .SEL (stim1_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i2 (
        .I0  (stim2_ia_mux_s),
        .Z   (stim2_ia_o),
        .I1  (stim2_ic_o),
        .SEL (stim2_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i3 (
        .I0  (stim3_ia_mux_s),
        .Z   (stim3_ia_o),
        .I1  (stim3_ic_o),
        .SEL (stim3_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i4 (
        .I0  (stim4_ia_mux_s),
        .Z   (stim4_ia_o),
        .I1  (stim4_ic_o),
        .SEL (stim4_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i5 (
        .I0  (stim5_ia_mux_s),
        .Z   (stim5_ia_o),
        .I1  (stim5_ic_o),
        .SEL (stim5_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i6 (
        .I0  (stim6_ia_mux_s),
        .Z   (stim6_ia_o),
        .I1  (stim6_ic_o),
        .SEL (stim6_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i7 (
        .I0  (stim7_ia_mux_s),
        .Z   (stim7_ia_o),
        .I1  (stim7_ic_o),
        .SEL (stim7_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i8 (
        .I0  (stim8_ia_mux_s),
        .Z   (stim8_ia_o),
        .I1  (stim8_ic_o),
        .SEL (stim8_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i9 (
        .I0  (stim9_ia_mux_s),
        .Z   (stim9_ia_o),
        .I1  (stim9_ic_o),
        .SEL (stim9_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i10 (
        .I0  (stim10_ia_mux_s),
        .Z   (stim10_ia_o),
        .I1  (stim10_ic_o),
        .SEL (stim10_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i11 (
        .I0  (stim11_ia_mux_s),
        .Z   (stim11_ia_o),
        .I1  (stim11_ic_o),
        .SEL (stim11_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i12 (
        .I0  (stim12_ia_mux_s),
        .Z   (stim12_ia_o),
        .I1  (stim12_ic_o),
        .SEL (stim12_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i13 (
        .I0  (stim13_ia_mux_s),
        .Z   (stim13_ia_o),
        .I1  (stim13_ic_o),
        .SEL (stim13_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i14 (
        .I0  (stim14_ia_mux_s),
        .Z   (stim14_ia_o),
        .I1  (stim14_ic_o),
        .SEL (stim14_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i15 (
        .I0  (stim15_ia_mux_s),
        .Z   (stim15_ia_o),
        .I1  (stim15_ic_o),
        .SEL (stim15_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i16 (
        .I0  (stim16_ia_mux_s),
        .Z   (stim16_ia_o),
        .I1  (stim16_ic_o),
        .SEL (stim16_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i17 (
        .I0  (stim17_ia_mux_s),
        .Z   (stim17_ia_o),
        .I1  (stim17_ic_o),
        .SEL (stim17_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i18 (
        .I0  (stim18_ia_mux_s),
        .Z   (stim18_ia_o),
        .I1  (stim18_ic_o),
        .SEL (stim18_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i19 (
        .I0  (stim19_ia_mux_s),
        .Z   (stim19_ia_o),
        .I1  (stim19_ic_o),
        .SEL (stim19_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i20 (
        .I0  (stim20_ia_mux_s),
        .Z   (stim20_ia_o),
        .I1  (stim20_ic_o),
        .SEL (stim20_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i21 (
        .I0  (stim21_ia_mux_s),
        .Z   (stim21_ia_o),
        .I1  (stim21_ic_o),
        .SEL (stim21_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i22 (
        .I0  (stim22_ia_mux_s),
        .Z   (stim22_ia_o),
        .I1  (stim22_ic_o),
        .SEL (stim22_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i23 (
        .I0  (stim23_ia_mux_s),
        .Z   (stim23_ia_o),
        .I1  (stim23_ic_o),
        .SEL (stim23_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i24 (
        .I0  (stim24_ia_mux_s),
        .Z   (stim24_ia_o),
        .I1  (stim24_ic_o),
        .SEL (stim24_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i25 (
        .I0  (stim25_ia_mux_s),
        .Z   (stim25_ia_o),
        .I1  (stim25_ic_o),
        .SEL (stim25_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i26 (
        .I0  (stim26_ia_mux_s),
        .Z   (stim26_ia_o),
        .I1  (stim26_ic_o),
        .SEL (stim26_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i27 (
        .I0  (stim27_ia_mux_s),
        .Z   (stim27_ia_o),
        .I1  (stim27_ic_o),
        .SEL (stim27_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i28 (
        .I0  (stim28_ia_mux_s),
        .Z   (stim28_ia_o),
        .I1  (stim28_ic_o),
        .SEL (stim28_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i29 (
        .I0  (stim29_ia_mux_s),
        .Z   (stim29_ia_o),
        .I1  (stim29_ic_o),
        .SEL (stim29_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i30 (
        .I0  (stim30_ia_mux_s),
        .Z   (stim30_ia_o),
        .I1  (stim30_ic_o),
        .SEL (stim30_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i31 (
        .I0  (stim31_ia_mux_s),
        .Z   (stim31_ia_o),
        .I1  (stim31_ic_o),
        .SEL (stim31_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i32 (
        .I0  (stim32_ia_mux_s),
        .Z   (stim32_ia_o),
        .I1  (stim32_ic_o),
        .SEL (stim32_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i33 (
        .I0  (stim33_ia_mux_s),
        .Z   (stim33_ia_o),
        .I1  (stim33_ic_o),
        .SEL (stim33_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i34 (
        .I0  (stim34_ia_mux_s),
        .Z   (stim34_ia_o),
        .I1  (stim34_ic_o),
        .SEL (stim34_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i35 (
        .I0  (stim35_ia_mux_s),
        .Z   (stim35_ia_o),
        .I1  (stim35_ic_o),
        .SEL (stim35_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i36 (
        .I0  (stim36_ia_mux_s),
        .Z   (stim36_ia_o),
        .I1  (stim36_ic_o),
        .SEL (stim36_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i37 (
        .I0  (stim37_ia_mux_s),
        .Z   (stim37_ia_o),
        .I1  (stim37_ic_o),
        .SEL (stim37_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i38 (
        .I0  (stim38_ia_mux_s),
        .Z   (stim38_ia_o),
        .I1  (stim38_ic_o),
        .SEL (stim38_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i39 (
        .I0  (stim39_ia_mux_s),
        .Z   (stim39_ia_o),
        .I1  (stim39_ic_o),
        .SEL (stim39_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i40 (
        .I0  (stim40_ia_mux_s),
        .Z   (stim40_ia_o),
        .I1  (stim40_ic_o),
        .SEL (stim40_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i41 (
        .I0  (stim41_ia_mux_s),
        .Z   (stim41_ia_o),
        .I1  (stim41_ic_o),
        .SEL (stim41_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i42 (
        .I0  (stim42_ia_mux_s),
        .Z   (stim42_ia_o),
        .I1  (stim42_ic_o),
        .SEL (stim42_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i43 (
        .I0  (stim43_ia_mux_s),
        .Z   (stim43_ia_o),
        .I1  (stim43_ic_o),
        .SEL (stim43_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i44 (
        .I0  (stim44_ia_mux_s),
        .Z   (stim44_ia_o),
        .I1  (stim44_ic_o),
        .SEL (stim44_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i45 (
        .I0  (stim45_ia_mux_s),
        .Z   (stim45_ia_o),
        .I1  (stim45_ic_o),
        .SEL (stim45_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i46 (
        .I0  (stim46_ia_mux_s),
        .Z   (stim46_ia_o),
        .I1  (stim46_ic_o),
        .SEL (stim46_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i47 (
        .I0  (stim47_ia_mux_s),
        .Z   (stim47_ia_o),
        .I1  (stim47_ic_o),
        .SEL (stim47_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i48 (
        .I0  (stim48_ia_mux_s),
        .Z   (stim48_ia_o),
        .I1  (stim48_ic_o),
        .SEL (stim48_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i49 (
        .I0  (stim49_ia_mux_s),
        .Z   (stim49_ia_o),
        .I1  (stim49_ic_o),
        .SEL (stim49_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i50 (
        .I0  (stim50_ia_mux_s),
        .Z   (stim50_ia_o),
        .I1  (stim50_ic_o),
        .SEL (stim50_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i51 (
        .I0  (stim51_ia_mux_s),
        .Z   (stim51_ia_o),
        .I1  (stim51_ic_o),
        .SEL (stim51_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i52 (
        .I0  (stim52_ia_mux_s),
        .Z   (stim52_ia_o),
        .I1  (stim52_ic_o),
        .SEL (stim52_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i53 (
        .I0  (stim53_ia_mux_s),
        .Z   (stim53_ia_o),
        .I1  (stim53_ic_o),
        .SEL (stim53_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i54 (
        .I0  (stim54_ia_mux_s),
        .Z   (stim54_ia_o),
        .I1  (stim54_ic_o),
        .SEL (stim54_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i55 (
        .I0  (stim55_ia_mux_s),
        .Z   (stim55_ia_o),
        .I1  (stim55_ic_o),
        .SEL (stim55_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i56 (
        .I0  (stim56_ia_mux_s),
        .Z   (stim56_ia_o),
        .I1  (stim56_ic_o),
        .SEL (stim56_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i57 (
        .I0  (stim57_ia_mux_s),
        .Z   (stim57_ia_o),
        .I1  (stim57_ic_o),
        .SEL (stim57_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i58 (
        .I0  (stim58_ia_mux_s),
        .Z   (stim58_ia_o),
        .I1  (stim58_ic_o),
        .SEL (stim58_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i59 (
        .I0  (stim59_ia_mux_s),
        .Z   (stim59_ia_o),
        .I1  (stim59_ic_o),
        .SEL (stim59_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i60 (
        .I0  (stim60_ia_mux_s),
        .Z   (stim60_ia_o),
        .I1  (stim60_ic_o),
        .SEL (stim60_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i61 (
        .I0  (stim61_ia_mux_s),
        .Z   (stim61_ia_o),
        .I1  (stim61_ic_o),
        .SEL (stim61_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i62 (
        .I0  (stim62_ia_mux_s),
        .Z   (stim62_ia_o),
        .I1  (stim62_ic_o),
        .SEL (stim62_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i63 (
        .I0  (stim63_ia_mux_s),
        .Z   (stim63_ia_o),
        .I1  (stim63_ic_o),
        .SEL (stim63_mode_s)
    );


    assign stim_monophasic_o = 1'b0;
    assign stim0_mode_s = 1'b1;
    assign stim1_mode_s = 1'b1;
    assign stim2_mode_s = 1'b1;
    assign stim3_mode_s = 1'b1;
    assign stim4_mode_s = 1'b1;
    assign stim5_mode_s = 1'b1;
    assign stim6_mode_s = 1'b1;
    assign stim7_mode_s = 1'b1;
    assign stim8_mode_s = 1'b1;
    assign stim9_mode_s = 1'b1;
    assign stim10_mode_s = 1'b1;
    assign stim11_mode_s = 1'b1;
    assign stim12_mode_s = 1'b1;
    assign stim13_mode_s = 1'b1;
    assign stim14_mode_s = 1'b1;
    assign stim15_mode_s = 1'b1;
    assign stim16_mode_s = 1'b1;
    assign stim17_mode_s = 1'b1;
    assign stim18_mode_s = 1'b1;
    assign stim19_mode_s = 1'b1;
    assign stim20_mode_s = 1'b1;
    assign stim21_mode_s = 1'b1;
    assign stim22_mode_s = 1'b1;
    assign stim23_mode_s = 1'b1;
    assign stim24_mode_s = 1'b1;
    assign stim25_mode_s = 1'b1;
    assign stim26_mode_s = 1'b1;
    assign stim27_mode_s = 1'b1;
    assign stim28_mode_s = 1'b1;
    assign stim29_mode_s = 1'b1;
    assign stim30_mode_s = 1'b1;
    assign stim31_mode_s = 1'b1;
    assign stim32_mode_s = 1'b1;
    assign stim33_mode_s = 1'b1;
    assign stim34_mode_s = 1'b1;
    assign stim35_mode_s = 1'b1;
    assign stim36_mode_s = 1'b1;
    assign stim37_mode_s = 1'b1;
    assign stim38_mode_s = 1'b1;
    assign stim39_mode_s = 1'b1;
    assign stim40_mode_s = 1'b1;
    assign stim41_mode_s = 1'b1;
    assign stim42_mode_s = 1'b1;
    assign stim43_mode_s = 1'b1;
    assign stim44_mode_s = 1'b1;
    assign stim45_mode_s = 1'b1;
    assign stim46_mode_s = 1'b1;
    assign stim47_mode_s = 1'b1;
    assign stim48_mode_s = 1'b1;
    assign stim49_mode_s = 1'b1;
    assign stim50_mode_s = 1'b1;
    assign stim51_mode_s = 1'b1;
    assign stim52_mode_s = 1'b1;
    assign stim53_mode_s = 1'b1;
    assign stim54_mode_s = 1'b1;
    assign stim55_mode_s = 1'b1;
    assign stim56_mode_s = 1'b1;
    assign stim57_mode_s = 1'b1;
    assign stim58_mode_s = 1'b1;
    assign stim59_mode_s = 1'b1;
    assign stim60_mode_s = 1'b1;
    assign stim61_mode_s = 1'b1;
    assign stim62_mode_s = 1'b1;
    assign stim63_mode_s = 1'b1;
    assign  stim_range_unsync_o = {stim63_range_s, stim62_range_s, stim61_range_s, stim60_range_s, stim59_range_s, stim58_range_s, stim57_range_s, stim56_range_s, stim55_range_s, stim54_range_s, stim53_range_s, stim52_range_s, stim51_range_s, stim50_range_s, stim49_range_s, stim48_range_s, stim47_range_s, stim46_range_s, stim45_range_s, stim44_range_s, stim43_range_s, stim42_range_s, stim41_range_s, stim40_range_s, stim39_range_s, stim38_range_s, stim37_range_s, stim36_range_s, stim35_range_s, stim34_range_s, stim33_range_s, stim32_range_s, stim31_range_s, stim30_range_s, stim29_range_s, stim28_range_s, stim27_range_s, stim26_range_s, stim25_range_s, stim24_range_s, stim23_range_s, stim22_range_s, stim21_range_s, stim20_range_s, stim19_range_s, stim18_range_s, stim17_range_s, stim16_range_s, stim15_range_s, stim14_range_s, stim13_range_s, stim12_range_s, stim11_range_s, stim10_range_s, stim9_range_s, stim8_range_s, stim7_range_s, stim6_range_s, stim5_range_s, stim4_range_s, stim3_range_s, stim2_range_s, stim1_range_s, stim0_range_s};

    /*************************************************************************/
    /* Regfile - registers (write-logic & read value assignmment)            */
    /*************************************************************************/
    assign rf_r_sel = ~apb_write_i & apb_sel_i;
    assign rf_w_sel =  apb_write_i & apb_sel_i;
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            rf_write_permitted <= 1'b0;
            rf_read_permitted  <= 1'b0;
        end else begin
            if (rf_r_sel == 1'b1) begin
                rf_read_permitted  <= rf_next_read_permitted;
            end
            if (rf_w_sel == 1'b1) begin
                rf_write_permitted <= rf_next_write_permitted;
            end
        end
    end

    // chip_status_id @ 0x0

    assign val_chip_status_id[31: 0] = chip_id_i;

    // chip_error_status1 @ 0x4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_chip_error_status1_chip_error_load <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_CHIP_ERROR_STATUS1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_chip_error_status1_chip_error_load[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_chip_error_status1_chip_error_load[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_chip_error_status1_chip_error_load[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_chip_error_status1_chip_error_load[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign chip_error_load_o        = reg_chip_error_status1_chip_error_load;

    assign val_chip_error_status1[31: 0] = reg_chip_error_status1_chip_error_load;

    // chip_error_status2 @ 0x8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_chip_error_status2_chip_error_cmd  <= 4'h0;
            reg_chip_error_status2_chip_error_crc5 <= 5'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_CHIP_ERROR_STATUS2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_chip_error_status2_chip_error_cmd [ 3: 0] <= apb_wdata_i[ 3: 0];
                        reg_chip_error_status2_chip_error_crc5[ 3: 0] <= apb_wdata_i[ 7: 4];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_chip_error_status2_chip_error_crc5[    4] <= apb_wdata_i[    8];
                    end
                end
            end
        end
    end
    assign chip_error_cmd_o         = reg_chip_error_status2_chip_error_cmd;
    assign chip_error_crc5_o        = reg_chip_error_status2_chip_error_crc5;

    assign val_chip_error_status2[ 3: 0] = reg_chip_error_status2_chip_error_cmd;
    assign val_chip_error_status2[ 8: 4] = reg_chip_error_status2_chip_error_crc5;
    assign val_chip_error_status2[31: 9] = 23'b0;

    // adc_amp1 @ 0xc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_adc_amp1_amp_gain_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_ADC_AMP1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_adc_amp1_amp_gain_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_adc_amp1_amp_gain_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_adc_amp1_amp_gain_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_adc_amp1_amp_gain_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign amp_gain_g1_o        = reg_adc_amp1_amp_gain_g1;

    assign val_adc_amp1[31: 0] = reg_adc_amp1_amp_gain_g1;

    // adc_amp2 @ 0x10
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_adc_amp2_amp_gain_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_ADC_AMP2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_adc_amp2_amp_gain_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_adc_amp2_amp_gain_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_adc_amp2_amp_gain_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_adc_amp2_amp_gain_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign amp_gain_g2_o        = reg_adc_amp2_amp_gain_g2;

    assign val_adc_amp2[31: 0] = reg_adc_amp2_amp_gain_g2;

    // rec_stim_control @ 0x14
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_rec_stim_control_div_clk_stim <= 12'h21;
            reg_rec_stim_control_en_clk_stim  <= 1'b0;
            reg_rec_stim_control_stim_mask_en <= 8'h00;
            reg_rec_stim_control_rec_en       <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_REC_STIM_CONTROL) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_rec_stim_control_div_clk_stim[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_rec_stim_control_div_clk_stim[11: 8] <= apb_wdata_i[11: 8];
                        reg_rec_stim_control_en_clk_stim         <= apb_wdata_i[   12];
                        reg_rec_stim_control_stim_mask_en[ 2: 0] <= apb_wdata_i[15:13];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_rec_stim_control_stim_mask_en[ 7: 3] <= apb_wdata_i[20:16];
                        reg_rec_stim_control_rec_en              <= apb_wdata_i[   21];
                    end
                end
            end
        end
    end
    assign div_clk_stim_o        = reg_rec_stim_control_div_clk_stim;
    assign en_clk_stim_o         = reg_rec_stim_control_en_clk_stim;
    assign stim_mask_en_o        = reg_rec_stim_control_stim_mask_en;
    assign rec_en_o              = reg_rec_stim_control_rec_en;

    assign val_rec_stim_control[11: 0] = reg_rec_stim_control_div_clk_stim;
    assign val_rec_stim_control[   12] = reg_rec_stim_control_en_clk_stim;
    assign val_rec_stim_control[20:13] = reg_rec_stim_control_stim_mask_en;
    assign val_rec_stim_control[   21] = reg_rec_stim_control_rec_en;
    assign val_rec_stim_control[31:22] = 10'b0;

    // stim_mask0_p1 @ 0x18
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask0_p1_stim_mask0_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK0_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask0_p1_stim_mask0_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask0_p1_stim_mask0_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask0_p1_stim_mask0_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask0_p1_stim_mask0_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask0_g1_o        = reg_stim_mask0_p1_stim_mask0_g1;

    assign val_stim_mask0_p1[31: 0] = reg_stim_mask0_p1_stim_mask0_g1;

    // stim_mask0_p2 @ 0x1c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask0_p2_stim_mask0_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK0_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask0_p2_stim_mask0_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask0_p2_stim_mask0_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask0_p2_stim_mask0_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask0_p2_stim_mask0_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask0_g2_o        = reg_stim_mask0_p2_stim_mask0_g2;

    assign val_stim_mask0_p2[31: 0] = reg_stim_mask0_p2_stim_mask0_g2;

    // stim_mask1_p1 @ 0x20
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask1_p1_stim_mask1_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK1_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask1_p1_stim_mask1_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask1_p1_stim_mask1_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask1_p1_stim_mask1_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask1_p1_stim_mask1_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask1_g1_o        = reg_stim_mask1_p1_stim_mask1_g1;

    assign val_stim_mask1_p1[31: 0] = reg_stim_mask1_p1_stim_mask1_g1;

    // stim_mask1_p2 @ 0x24
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask1_p2_stim_mask1_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK1_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask1_p2_stim_mask1_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask1_p2_stim_mask1_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask1_p2_stim_mask1_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask1_p2_stim_mask1_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask1_g2_o        = reg_stim_mask1_p2_stim_mask1_g2;

    assign val_stim_mask1_p2[31: 0] = reg_stim_mask1_p2_stim_mask1_g2;

    // stim_mask2_p1 @ 0x28
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask2_p1_stim_mask2_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK2_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask2_p1_stim_mask2_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask2_p1_stim_mask2_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask2_p1_stim_mask2_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask2_p1_stim_mask2_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask2_g1_o        = reg_stim_mask2_p1_stim_mask2_g1;

    assign val_stim_mask2_p1[31: 0] = reg_stim_mask2_p1_stim_mask2_g1;

    // stim_mask2_p2 @ 0x2c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask2_p2_stim_mask2_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK2_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask2_p2_stim_mask2_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask2_p2_stim_mask2_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask2_p2_stim_mask2_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask2_p2_stim_mask2_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask2_g2_o        = reg_stim_mask2_p2_stim_mask2_g2;

    assign val_stim_mask2_p2[31: 0] = reg_stim_mask2_p2_stim_mask2_g2;

    // stim_mask3_p1 @ 0x30
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask3_p1_stim_mask3_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK3_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask3_p1_stim_mask3_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask3_p1_stim_mask3_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask3_p1_stim_mask3_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask3_p1_stim_mask3_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask3_g1_o        = reg_stim_mask3_p1_stim_mask3_g1;

    assign val_stim_mask3_p1[31: 0] = reg_stim_mask3_p1_stim_mask3_g1;

    // stim_mask3_p2 @ 0x34
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask3_p2_stim_mask3_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK3_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask3_p2_stim_mask3_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask3_p2_stim_mask3_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask3_p2_stim_mask3_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask3_p2_stim_mask3_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask3_g2_o        = reg_stim_mask3_p2_stim_mask3_g2;

    assign val_stim_mask3_p2[31: 0] = reg_stim_mask3_p2_stim_mask3_g2;

    // stim_mask4_p1 @ 0x38
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask4_p1_stim_mask4_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK4_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask4_p1_stim_mask4_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask4_p1_stim_mask4_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask4_p1_stim_mask4_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask4_p1_stim_mask4_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask4_g1_o        = reg_stim_mask4_p1_stim_mask4_g1;

    assign val_stim_mask4_p1[31: 0] = reg_stim_mask4_p1_stim_mask4_g1;

    // stim_mask4_p2 @ 0x3c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask4_p2_stim_mask4_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK4_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask4_p2_stim_mask4_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask4_p2_stim_mask4_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask4_p2_stim_mask4_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask4_p2_stim_mask4_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask4_g2_o        = reg_stim_mask4_p2_stim_mask4_g2;

    assign val_stim_mask4_p2[31: 0] = reg_stim_mask4_p2_stim_mask4_g2;

    // stim_mask5_p1 @ 0x40
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask5_p1_stim_mask5_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK5_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask5_p1_stim_mask5_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask5_p1_stim_mask5_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask5_p1_stim_mask5_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask5_p1_stim_mask5_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask5_g1_o        = reg_stim_mask5_p1_stim_mask5_g1;

    assign val_stim_mask5_p1[31: 0] = reg_stim_mask5_p1_stim_mask5_g1;

    // stim_mask5_p2 @ 0x44
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask5_p2_stim_mask5_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK5_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask5_p2_stim_mask5_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask5_p2_stim_mask5_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask5_p2_stim_mask5_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask5_p2_stim_mask5_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask5_g2_o        = reg_stim_mask5_p2_stim_mask5_g2;

    assign val_stim_mask5_p2[31: 0] = reg_stim_mask5_p2_stim_mask5_g2;

    // stim_mask6_p1 @ 0x48
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask6_p1_stim_mask6_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK6_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask6_p1_stim_mask6_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask6_p1_stim_mask6_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask6_p1_stim_mask6_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask6_p1_stim_mask6_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask6_g1_o        = reg_stim_mask6_p1_stim_mask6_g1;

    assign val_stim_mask6_p1[31: 0] = reg_stim_mask6_p1_stim_mask6_g1;

    // stim_mask6_p2 @ 0x4c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask6_p2_stim_mask6_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK6_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask6_p2_stim_mask6_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask6_p2_stim_mask6_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask6_p2_stim_mask6_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask6_p2_stim_mask6_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask6_g2_o        = reg_stim_mask6_p2_stim_mask6_g2;

    assign val_stim_mask6_p2[31: 0] = reg_stim_mask6_p2_stim_mask6_g2;

    // stim_mask7_p1 @ 0x50
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask7_p1_stim_mask7_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK7_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask7_p1_stim_mask7_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask7_p1_stim_mask7_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask7_p1_stim_mask7_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask7_p1_stim_mask7_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask7_g1_o        = reg_stim_mask7_p1_stim_mask7_g1;

    assign val_stim_mask7_p1[31: 0] = reg_stim_mask7_p1_stim_mask7_g1;

    // stim_mask7_p2 @ 0x54
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask7_p2_stim_mask7_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK7_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask7_p2_stim_mask7_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask7_p2_stim_mask7_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask7_p2_stim_mask7_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask7_p2_stim_mask7_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask7_g2_o        = reg_stim_mask7_p2_stim_mask7_g2;

    assign val_stim_mask7_p2[31: 0] = reg_stim_mask7_p2_stim_mask7_g2;

    // enabled_ch_rec_g1 @ 0x58
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_enabled_ch_rec_g1_en_rec_ch_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_ENABLED_CH_REC_G1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_enabled_ch_rec_g1_en_rec_ch_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_enabled_ch_rec_g1_en_rec_ch_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_enabled_ch_rec_g1_en_rec_ch_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_enabled_ch_rec_g1_en_rec_ch_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign en_rec_ch_g1_o        = reg_enabled_ch_rec_g1_en_rec_ch_g1;

    assign val_enabled_ch_rec_g1[31: 0] = reg_enabled_ch_rec_g1_en_rec_ch_g1;

    // enabled_ch_rec_g2 @ 0x5c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_enabled_ch_rec_g2_en_rec_ch_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_ENABLED_CH_REC_G2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_enabled_ch_rec_g2_en_rec_ch_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_enabled_ch_rec_g2_en_rec_ch_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_enabled_ch_rec_g2_en_rec_ch_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_enabled_ch_rec_g2_en_rec_ch_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign en_rec_ch_g2_o        = reg_enabled_ch_rec_g2_en_rec_ch_g2;

    assign val_enabled_ch_rec_g2[31: 0] = reg_enabled_ch_rec_g2_en_rec_ch_g2;

    // rec_discharge_control @ 0x60
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_rec_discharge_control_div_clk_discharge <= 8'h42;
            reg_rec_discharge_control_en_clk_discharge  <= 1'b0;
            reg_rec_discharge_control_pw_discharge      <= 20'h10;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_REC_DISCHARGE_CONTROL) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_rec_discharge_control_div_clk_discharge[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_rec_discharge_control_en_clk_discharge         <= apb_wdata_i[    8];
                        reg_rec_discharge_control_pw_discharge     [ 3: 0] <= apb_wdata_i[15:12];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_rec_discharge_control_pw_discharge     [11: 4] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_rec_discharge_control_pw_discharge     [19:12] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign div_clk_discharge_o        = reg_rec_discharge_control_div_clk_discharge;
    assign en_clk_discharge_o         = reg_rec_discharge_control_en_clk_discharge;
    assign pw_discharge_o             = reg_rec_discharge_control_pw_discharge;

    assign val_rec_discharge_control[ 7: 0] = reg_rec_discharge_control_div_clk_discharge;
    assign val_rec_discharge_control[    8] = reg_rec_discharge_control_en_clk_discharge;
    assign val_rec_discharge_control[11: 9] = 3'b0;
    assign val_rec_discharge_control[31:12] = reg_rec_discharge_control_pw_discharge;

    // stim_ch0_p0 @ 0x64
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch0_p0_stim0_interval <= 16'h0;
            reg_stim_ch0_p0_stim0_ia_mux   <= 8'h0;
            reg_stim_ch0_p0_stim0_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH0_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch0_p0_stim0_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch0_p0_stim0_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch0_p0_stim0_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch0_p0_stim0_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim0_interval_o        = reg_stim_ch0_p0_stim0_interval;
    assign stim0_ia_mux_s          = reg_stim_ch0_p0_stim0_ia_mux;
    assign stim0_ic_o              = reg_stim_ch0_p0_stim0_ic;

    assign val_stim_ch0_p0[15: 0] = reg_stim_ch0_p0_stim0_interval;
    assign val_stim_ch0_p0[23:16] = reg_stim_ch0_p0_stim0_ia_mux;
    assign val_stim_ch0_p0[31:24] = reg_stim_ch0_p0_stim0_ic;

    // stim_ch0_pulse_p1 @ 0x68
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch0_pulse_p1_stim0_pulse_wc     <= 14'h0;
            reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH0_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch0_pulse_p1_stim0_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch0_pulse_p1_stim0_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim0_pulse_wc_o            = reg_stim_ch0_pulse_p1_stim0_pulse_wc;
    assign stim0_pulse_wa_mux_s        = reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux;

    assign val_stim_ch0_pulse_p1[13: 0] = reg_stim_ch0_pulse_p1_stim0_pulse_wc;
    assign val_stim_ch0_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch0_pulse_p1[29:16] = reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux;
    assign val_stim_ch0_pulse_p1[31:30] = 2'b0;

    // stim_ch0_pulse_p2 @ 0x6c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch0_pulse_p2_stim0_pulse_gap <= 14'h0;
            reg_stim_ch0_pulse_p2_stim0_pulse_num <= 12'h0;
            reg_stim_ch0_pulse_p2_stim0_pol       <= 1'b0;
            reg_stim_ch0_pulse_p2_stim0_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH0_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch0_pulse_p2_stim0_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch0_pulse_p2_stim0_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch0_pulse_p2_stim0_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch0_pulse_p2_stim0_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch0_pulse_p2_stim0_pol              <= apb_wdata_i[   30];
                        reg_stim_ch0_pulse_p2_stim0_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim0_pulse_gap_o        = reg_stim_ch0_pulse_p2_stim0_pulse_gap;
    assign stim0_pulse_num_o        = reg_stim_ch0_pulse_p2_stim0_pulse_num;
    assign stim0_pol_o              = reg_stim_ch0_pulse_p2_stim0_pol;
    assign stim0_range_s            = reg_stim_ch0_pulse_p2_stim0_range;

    assign val_stim_ch0_pulse_p2[13: 0] = reg_stim_ch0_pulse_p2_stim0_pulse_gap;
    assign val_stim_ch0_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch0_pulse_p2[27:16] = reg_stim_ch0_pulse_p2_stim0_pulse_num;
    assign val_stim_ch0_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch0_pulse_p2[   30] = reg_stim_ch0_pulse_p2_stim0_pol;
    assign val_stim_ch0_pulse_p2[   31] = reg_stim_ch0_pulse_p2_stim0_range;

    // stim_ch1_p0 @ 0x70
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch1_p0_stim1_interval <= 16'h0;
            reg_stim_ch1_p0_stim1_ia_mux   <= 8'h0;
            reg_stim_ch1_p0_stim1_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH1_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch1_p0_stim1_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch1_p0_stim1_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch1_p0_stim1_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch1_p0_stim1_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim1_interval_o        = reg_stim_ch1_p0_stim1_interval;
    assign stim1_ia_mux_s          = reg_stim_ch1_p0_stim1_ia_mux;
    assign stim1_ic_o              = reg_stim_ch1_p0_stim1_ic;

    assign val_stim_ch1_p0[15: 0] = reg_stim_ch1_p0_stim1_interval;
    assign val_stim_ch1_p0[23:16] = reg_stim_ch1_p0_stim1_ia_mux;
    assign val_stim_ch1_p0[31:24] = reg_stim_ch1_p0_stim1_ic;

    // stim_ch1_pulse_p1 @ 0x74
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch1_pulse_p1_stim1_pulse_wc     <= 14'h0;
            reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH1_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch1_pulse_p1_stim1_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch1_pulse_p1_stim1_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim1_pulse_wc_o            = reg_stim_ch1_pulse_p1_stim1_pulse_wc;
    assign stim1_pulse_wa_mux_s        = reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux;

    assign val_stim_ch1_pulse_p1[13: 0] = reg_stim_ch1_pulse_p1_stim1_pulse_wc;
    assign val_stim_ch1_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch1_pulse_p1[29:16] = reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux;
    assign val_stim_ch1_pulse_p1[31:30] = 2'b0;

    // stim_ch1_pulse_p2 @ 0x78
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch1_pulse_p2_stim1_pulse_gap <= 14'h0;
            reg_stim_ch1_pulse_p2_stim1_pulse_num <= 12'h0;
            reg_stim_ch1_pulse_p2_stim1_pol       <= 1'b0;
            reg_stim_ch1_pulse_p2_stim1_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH1_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch1_pulse_p2_stim1_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch1_pulse_p2_stim1_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch1_pulse_p2_stim1_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch1_pulse_p2_stim1_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch1_pulse_p2_stim1_pol              <= apb_wdata_i[   30];
                        reg_stim_ch1_pulse_p2_stim1_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim1_pulse_gap_o        = reg_stim_ch1_pulse_p2_stim1_pulse_gap;
    assign stim1_pulse_num_o        = reg_stim_ch1_pulse_p2_stim1_pulse_num;
    assign stim1_pol_o              = reg_stim_ch1_pulse_p2_stim1_pol;
    assign stim1_range_s            = reg_stim_ch1_pulse_p2_stim1_range;

    assign val_stim_ch1_pulse_p2[13: 0] = reg_stim_ch1_pulse_p2_stim1_pulse_gap;
    assign val_stim_ch1_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch1_pulse_p2[27:16] = reg_stim_ch1_pulse_p2_stim1_pulse_num;
    assign val_stim_ch1_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch1_pulse_p2[   30] = reg_stim_ch1_pulse_p2_stim1_pol;
    assign val_stim_ch1_pulse_p2[   31] = reg_stim_ch1_pulse_p2_stim1_range;

    // stim_ch2_p0 @ 0x7c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch2_p0_stim2_interval <= 16'h0;
            reg_stim_ch2_p0_stim2_ia_mux   <= 8'h0;
            reg_stim_ch2_p0_stim2_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH2_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch2_p0_stim2_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch2_p0_stim2_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch2_p0_stim2_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch2_p0_stim2_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim2_interval_o        = reg_stim_ch2_p0_stim2_interval;
    assign stim2_ia_mux_s          = reg_stim_ch2_p0_stim2_ia_mux;
    assign stim2_ic_o              = reg_stim_ch2_p0_stim2_ic;

    assign val_stim_ch2_p0[15: 0] = reg_stim_ch2_p0_stim2_interval;
    assign val_stim_ch2_p0[23:16] = reg_stim_ch2_p0_stim2_ia_mux;
    assign val_stim_ch2_p0[31:24] = reg_stim_ch2_p0_stim2_ic;

    // stim_ch2_pulse_p1 @ 0x80
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch2_pulse_p1_stim2_pulse_wc     <= 14'h0;
            reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH2_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch2_pulse_p1_stim2_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch2_pulse_p1_stim2_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim2_pulse_wc_o            = reg_stim_ch2_pulse_p1_stim2_pulse_wc;
    assign stim2_pulse_wa_mux_s        = reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux;

    assign val_stim_ch2_pulse_p1[13: 0] = reg_stim_ch2_pulse_p1_stim2_pulse_wc;
    assign val_stim_ch2_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch2_pulse_p1[29:16] = reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux;
    assign val_stim_ch2_pulse_p1[31:30] = 2'b0;

    // stim_ch2_pulse_p2 @ 0x84
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch2_pulse_p2_stim2_pulse_gap <= 14'h0;
            reg_stim_ch2_pulse_p2_stim2_pulse_num <= 12'h0;
            reg_stim_ch2_pulse_p2_stim2_pol       <= 1'b0;
            reg_stim_ch2_pulse_p2_stim2_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH2_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch2_pulse_p2_stim2_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch2_pulse_p2_stim2_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch2_pulse_p2_stim2_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch2_pulse_p2_stim2_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch2_pulse_p2_stim2_pol              <= apb_wdata_i[   30];
                        reg_stim_ch2_pulse_p2_stim2_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim2_pulse_gap_o        = reg_stim_ch2_pulse_p2_stim2_pulse_gap;
    assign stim2_pulse_num_o        = reg_stim_ch2_pulse_p2_stim2_pulse_num;
    assign stim2_pol_o              = reg_stim_ch2_pulse_p2_stim2_pol;
    assign stim2_range_s            = reg_stim_ch2_pulse_p2_stim2_range;

    assign val_stim_ch2_pulse_p2[13: 0] = reg_stim_ch2_pulse_p2_stim2_pulse_gap;
    assign val_stim_ch2_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch2_pulse_p2[27:16] = reg_stim_ch2_pulse_p2_stim2_pulse_num;
    assign val_stim_ch2_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch2_pulse_p2[   30] = reg_stim_ch2_pulse_p2_stim2_pol;
    assign val_stim_ch2_pulse_p2[   31] = reg_stim_ch2_pulse_p2_stim2_range;

    // stim_ch3_p0 @ 0x88
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch3_p0_stim3_interval <= 16'h0;
            reg_stim_ch3_p0_stim3_ia_mux   <= 8'h0;
            reg_stim_ch3_p0_stim3_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH3_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch3_p0_stim3_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch3_p0_stim3_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch3_p0_stim3_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch3_p0_stim3_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim3_interval_o        = reg_stim_ch3_p0_stim3_interval;
    assign stim3_ia_mux_s          = reg_stim_ch3_p0_stim3_ia_mux;
    assign stim3_ic_o              = reg_stim_ch3_p0_stim3_ic;

    assign val_stim_ch3_p0[15: 0] = reg_stim_ch3_p0_stim3_interval;
    assign val_stim_ch3_p0[23:16] = reg_stim_ch3_p0_stim3_ia_mux;
    assign val_stim_ch3_p0[31:24] = reg_stim_ch3_p0_stim3_ic;

    // stim_ch3_pulse_p1 @ 0x8c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch3_pulse_p1_stim3_pulse_wc     <= 14'h0;
            reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH3_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch3_pulse_p1_stim3_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch3_pulse_p1_stim3_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim3_pulse_wc_o            = reg_stim_ch3_pulse_p1_stim3_pulse_wc;
    assign stim3_pulse_wa_mux_s        = reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux;

    assign val_stim_ch3_pulse_p1[13: 0] = reg_stim_ch3_pulse_p1_stim3_pulse_wc;
    assign val_stim_ch3_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch3_pulse_p1[29:16] = reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux;
    assign val_stim_ch3_pulse_p1[31:30] = 2'b0;

    // stim_ch3_pulse_p2 @ 0x90
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch3_pulse_p2_stim3_pulse_gap <= 14'h0;
            reg_stim_ch3_pulse_p2_stim3_pulse_num <= 12'h0;
            reg_stim_ch3_pulse_p2_stim3_pol       <= 1'b0;
            reg_stim_ch3_pulse_p2_stim3_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH3_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch3_pulse_p2_stim3_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch3_pulse_p2_stim3_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch3_pulse_p2_stim3_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch3_pulse_p2_stim3_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch3_pulse_p2_stim3_pol              <= apb_wdata_i[   30];
                        reg_stim_ch3_pulse_p2_stim3_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim3_pulse_gap_o        = reg_stim_ch3_pulse_p2_stim3_pulse_gap;
    assign stim3_pulse_num_o        = reg_stim_ch3_pulse_p2_stim3_pulse_num;
    assign stim3_pol_o              = reg_stim_ch3_pulse_p2_stim3_pol;
    assign stim3_range_s            = reg_stim_ch3_pulse_p2_stim3_range;

    assign val_stim_ch3_pulse_p2[13: 0] = reg_stim_ch3_pulse_p2_stim3_pulse_gap;
    assign val_stim_ch3_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch3_pulse_p2[27:16] = reg_stim_ch3_pulse_p2_stim3_pulse_num;
    assign val_stim_ch3_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch3_pulse_p2[   30] = reg_stim_ch3_pulse_p2_stim3_pol;
    assign val_stim_ch3_pulse_p2[   31] = reg_stim_ch3_pulse_p2_stim3_range;

    // stim_ch4_p0 @ 0x94
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch4_p0_stim4_interval <= 16'h0;
            reg_stim_ch4_p0_stim4_ia_mux   <= 8'h0;
            reg_stim_ch4_p0_stim4_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH4_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch4_p0_stim4_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch4_p0_stim4_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch4_p0_stim4_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch4_p0_stim4_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim4_interval_o        = reg_stim_ch4_p0_stim4_interval;
    assign stim4_ia_mux_s          = reg_stim_ch4_p0_stim4_ia_mux;
    assign stim4_ic_o              = reg_stim_ch4_p0_stim4_ic;

    assign val_stim_ch4_p0[15: 0] = reg_stim_ch4_p0_stim4_interval;
    assign val_stim_ch4_p0[23:16] = reg_stim_ch4_p0_stim4_ia_mux;
    assign val_stim_ch4_p0[31:24] = reg_stim_ch4_p0_stim4_ic;

    // stim_ch4_pulse_p1 @ 0x98
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch4_pulse_p1_stim4_pulse_wc     <= 14'h0;
            reg_stim_ch4_pulse_p1_stim4_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH4_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch4_pulse_p1_stim4_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch4_pulse_p1_stim4_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch4_pulse_p1_stim4_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch4_pulse_p1_stim4_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim4_pulse_wc_o            = reg_stim_ch4_pulse_p1_stim4_pulse_wc;
    assign stim4_pulse_wa_mux_s        = reg_stim_ch4_pulse_p1_stim4_pulse_wa_mux;

    assign val_stim_ch4_pulse_p1[13: 0] = reg_stim_ch4_pulse_p1_stim4_pulse_wc;
    assign val_stim_ch4_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch4_pulse_p1[29:16] = reg_stim_ch4_pulse_p1_stim4_pulse_wa_mux;
    assign val_stim_ch4_pulse_p1[31:30] = 2'b0;

    // stim_ch4_pulse_p2 @ 0x9c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch4_pulse_p2_stim4_pulse_gap <= 14'h0;
            reg_stim_ch4_pulse_p2_stim4_pulse_num <= 12'h0;
            reg_stim_ch4_pulse_p2_stim4_pol       <= 1'b0;
            reg_stim_ch4_pulse_p2_stim4_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH4_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch4_pulse_p2_stim4_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch4_pulse_p2_stim4_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch4_pulse_p2_stim4_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch4_pulse_p2_stim4_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch4_pulse_p2_stim4_pol              <= apb_wdata_i[   30];
                        reg_stim_ch4_pulse_p2_stim4_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim4_pulse_gap_o        = reg_stim_ch4_pulse_p2_stim4_pulse_gap;
    assign stim4_pulse_num_o        = reg_stim_ch4_pulse_p2_stim4_pulse_num;
    assign stim4_pol_o              = reg_stim_ch4_pulse_p2_stim4_pol;
    assign stim4_range_s            = reg_stim_ch4_pulse_p2_stim4_range;

    assign val_stim_ch4_pulse_p2[13: 0] = reg_stim_ch4_pulse_p2_stim4_pulse_gap;
    assign val_stim_ch4_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch4_pulse_p2[27:16] = reg_stim_ch4_pulse_p2_stim4_pulse_num;
    assign val_stim_ch4_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch4_pulse_p2[   30] = reg_stim_ch4_pulse_p2_stim4_pol;
    assign val_stim_ch4_pulse_p2[   31] = reg_stim_ch4_pulse_p2_stim4_range;

    // stim_ch5_p0 @ 0xa0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch5_p0_stim5_interval <= 16'h0;
            reg_stim_ch5_p0_stim5_ia_mux   <= 8'h0;
            reg_stim_ch5_p0_stim5_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH5_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch5_p0_stim5_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch5_p0_stim5_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch5_p0_stim5_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch5_p0_stim5_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim5_interval_o        = reg_stim_ch5_p0_stim5_interval;
    assign stim5_ia_mux_s          = reg_stim_ch5_p0_stim5_ia_mux;
    assign stim5_ic_o              = reg_stim_ch5_p0_stim5_ic;

    assign val_stim_ch5_p0[15: 0] = reg_stim_ch5_p0_stim5_interval;
    assign val_stim_ch5_p0[23:16] = reg_stim_ch5_p0_stim5_ia_mux;
    assign val_stim_ch5_p0[31:24] = reg_stim_ch5_p0_stim5_ic;

    // stim_ch5_pulse_p1 @ 0xa4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch5_pulse_p1_stim5_pulse_wc     <= 14'h0;
            reg_stim_ch5_pulse_p1_stim5_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH5_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch5_pulse_p1_stim5_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch5_pulse_p1_stim5_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch5_pulse_p1_stim5_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch5_pulse_p1_stim5_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim5_pulse_wc_o            = reg_stim_ch5_pulse_p1_stim5_pulse_wc;
    assign stim5_pulse_wa_mux_s        = reg_stim_ch5_pulse_p1_stim5_pulse_wa_mux;

    assign val_stim_ch5_pulse_p1[13: 0] = reg_stim_ch5_pulse_p1_stim5_pulse_wc;
    assign val_stim_ch5_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch5_pulse_p1[29:16] = reg_stim_ch5_pulse_p1_stim5_pulse_wa_mux;
    assign val_stim_ch5_pulse_p1[31:30] = 2'b0;

    // stim_ch5_pulse_p2 @ 0xa8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch5_pulse_p2_stim5_pulse_gap <= 14'h0;
            reg_stim_ch5_pulse_p2_stim5_pulse_num <= 12'h0;
            reg_stim_ch5_pulse_p2_stim5_pol       <= 1'b0;
            reg_stim_ch5_pulse_p2_stim5_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH5_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch5_pulse_p2_stim5_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch5_pulse_p2_stim5_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch5_pulse_p2_stim5_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch5_pulse_p2_stim5_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch5_pulse_p2_stim5_pol              <= apb_wdata_i[   30];
                        reg_stim_ch5_pulse_p2_stim5_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim5_pulse_gap_o        = reg_stim_ch5_pulse_p2_stim5_pulse_gap;
    assign stim5_pulse_num_o        = reg_stim_ch5_pulse_p2_stim5_pulse_num;
    assign stim5_pol_o              = reg_stim_ch5_pulse_p2_stim5_pol;
    assign stim5_range_s            = reg_stim_ch5_pulse_p2_stim5_range;

    assign val_stim_ch5_pulse_p2[13: 0] = reg_stim_ch5_pulse_p2_stim5_pulse_gap;
    assign val_stim_ch5_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch5_pulse_p2[27:16] = reg_stim_ch5_pulse_p2_stim5_pulse_num;
    assign val_stim_ch5_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch5_pulse_p2[   30] = reg_stim_ch5_pulse_p2_stim5_pol;
    assign val_stim_ch5_pulse_p2[   31] = reg_stim_ch5_pulse_p2_stim5_range;

    // stim_ch6_p0 @ 0xac
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch6_p0_stim6_interval <= 16'h0;
            reg_stim_ch6_p0_stim6_ia_mux   <= 8'h0;
            reg_stim_ch6_p0_stim6_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH6_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch6_p0_stim6_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch6_p0_stim6_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch6_p0_stim6_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch6_p0_stim6_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim6_interval_o        = reg_stim_ch6_p0_stim6_interval;
    assign stim6_ia_mux_s          = reg_stim_ch6_p0_stim6_ia_mux;
    assign stim6_ic_o              = reg_stim_ch6_p0_stim6_ic;

    assign val_stim_ch6_p0[15: 0] = reg_stim_ch6_p0_stim6_interval;
    assign val_stim_ch6_p0[23:16] = reg_stim_ch6_p0_stim6_ia_mux;
    assign val_stim_ch6_p0[31:24] = reg_stim_ch6_p0_stim6_ic;

    // stim_ch6_pulse_p1 @ 0xb0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch6_pulse_p1_stim6_pulse_wc     <= 14'h0;
            reg_stim_ch6_pulse_p1_stim6_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH6_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch6_pulse_p1_stim6_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch6_pulse_p1_stim6_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch6_pulse_p1_stim6_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch6_pulse_p1_stim6_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim6_pulse_wc_o            = reg_stim_ch6_pulse_p1_stim6_pulse_wc;
    assign stim6_pulse_wa_mux_s        = reg_stim_ch6_pulse_p1_stim6_pulse_wa_mux;

    assign val_stim_ch6_pulse_p1[13: 0] = reg_stim_ch6_pulse_p1_stim6_pulse_wc;
    assign val_stim_ch6_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch6_pulse_p1[29:16] = reg_stim_ch6_pulse_p1_stim6_pulse_wa_mux;
    assign val_stim_ch6_pulse_p1[31:30] = 2'b0;

    // stim_ch6_pulse_p2 @ 0xb4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch6_pulse_p2_stim6_pulse_gap <= 14'h0;
            reg_stim_ch6_pulse_p2_stim6_pulse_num <= 12'h0;
            reg_stim_ch6_pulse_p2_stim6_pol       <= 1'b0;
            reg_stim_ch6_pulse_p2_stim6_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH6_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch6_pulse_p2_stim6_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch6_pulse_p2_stim6_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch6_pulse_p2_stim6_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch6_pulse_p2_stim6_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch6_pulse_p2_stim6_pol              <= apb_wdata_i[   30];
                        reg_stim_ch6_pulse_p2_stim6_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim6_pulse_gap_o        = reg_stim_ch6_pulse_p2_stim6_pulse_gap;
    assign stim6_pulse_num_o        = reg_stim_ch6_pulse_p2_stim6_pulse_num;
    assign stim6_pol_o              = reg_stim_ch6_pulse_p2_stim6_pol;
    assign stim6_range_s            = reg_stim_ch6_pulse_p2_stim6_range;

    assign val_stim_ch6_pulse_p2[13: 0] = reg_stim_ch6_pulse_p2_stim6_pulse_gap;
    assign val_stim_ch6_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch6_pulse_p2[27:16] = reg_stim_ch6_pulse_p2_stim6_pulse_num;
    assign val_stim_ch6_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch6_pulse_p2[   30] = reg_stim_ch6_pulse_p2_stim6_pol;
    assign val_stim_ch6_pulse_p2[   31] = reg_stim_ch6_pulse_p2_stim6_range;

    // stim_ch7_p0 @ 0xb8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch7_p0_stim7_interval <= 16'h0;
            reg_stim_ch7_p0_stim7_ia_mux   <= 8'h0;
            reg_stim_ch7_p0_stim7_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH7_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch7_p0_stim7_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch7_p0_stim7_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch7_p0_stim7_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch7_p0_stim7_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim7_interval_o        = reg_stim_ch7_p0_stim7_interval;
    assign stim7_ia_mux_s          = reg_stim_ch7_p0_stim7_ia_mux;
    assign stim7_ic_o              = reg_stim_ch7_p0_stim7_ic;

    assign val_stim_ch7_p0[15: 0] = reg_stim_ch7_p0_stim7_interval;
    assign val_stim_ch7_p0[23:16] = reg_stim_ch7_p0_stim7_ia_mux;
    assign val_stim_ch7_p0[31:24] = reg_stim_ch7_p0_stim7_ic;

    // stim_ch7_pulse_p1 @ 0xbc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch7_pulse_p1_stim7_pulse_wc     <= 14'h0;
            reg_stim_ch7_pulse_p1_stim7_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH7_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch7_pulse_p1_stim7_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch7_pulse_p1_stim7_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch7_pulse_p1_stim7_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch7_pulse_p1_stim7_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim7_pulse_wc_o            = reg_stim_ch7_pulse_p1_stim7_pulse_wc;
    assign stim7_pulse_wa_mux_s        = reg_stim_ch7_pulse_p1_stim7_pulse_wa_mux;

    assign val_stim_ch7_pulse_p1[13: 0] = reg_stim_ch7_pulse_p1_stim7_pulse_wc;
    assign val_stim_ch7_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch7_pulse_p1[29:16] = reg_stim_ch7_pulse_p1_stim7_pulse_wa_mux;
    assign val_stim_ch7_pulse_p1[31:30] = 2'b0;

    // stim_ch7_pulse_p2 @ 0xc0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch7_pulse_p2_stim7_pulse_gap <= 14'h0;
            reg_stim_ch7_pulse_p2_stim7_pulse_num <= 12'h0;
            reg_stim_ch7_pulse_p2_stim7_pol       <= 1'b0;
            reg_stim_ch7_pulse_p2_stim7_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH7_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch7_pulse_p2_stim7_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch7_pulse_p2_stim7_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch7_pulse_p2_stim7_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch7_pulse_p2_stim7_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch7_pulse_p2_stim7_pol              <= apb_wdata_i[   30];
                        reg_stim_ch7_pulse_p2_stim7_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim7_pulse_gap_o        = reg_stim_ch7_pulse_p2_stim7_pulse_gap;
    assign stim7_pulse_num_o        = reg_stim_ch7_pulse_p2_stim7_pulse_num;
    assign stim7_pol_o              = reg_stim_ch7_pulse_p2_stim7_pol;
    assign stim7_range_s            = reg_stim_ch7_pulse_p2_stim7_range;

    assign val_stim_ch7_pulse_p2[13: 0] = reg_stim_ch7_pulse_p2_stim7_pulse_gap;
    assign val_stim_ch7_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch7_pulse_p2[27:16] = reg_stim_ch7_pulse_p2_stim7_pulse_num;
    assign val_stim_ch7_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch7_pulse_p2[   30] = reg_stim_ch7_pulse_p2_stim7_pol;
    assign val_stim_ch7_pulse_p2[   31] = reg_stim_ch7_pulse_p2_stim7_range;

    // stim_ch8_p0 @ 0xc4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch8_p0_stim8_interval <= 16'h0;
            reg_stim_ch8_p0_stim8_ia_mux   <= 8'h0;
            reg_stim_ch8_p0_stim8_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH8_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch8_p0_stim8_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch8_p0_stim8_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch8_p0_stim8_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch8_p0_stim8_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim8_interval_o        = reg_stim_ch8_p0_stim8_interval;
    assign stim8_ia_mux_s          = reg_stim_ch8_p0_stim8_ia_mux;
    assign stim8_ic_o              = reg_stim_ch8_p0_stim8_ic;

    assign val_stim_ch8_p0[15: 0] = reg_stim_ch8_p0_stim8_interval;
    assign val_stim_ch8_p0[23:16] = reg_stim_ch8_p0_stim8_ia_mux;
    assign val_stim_ch8_p0[31:24] = reg_stim_ch8_p0_stim8_ic;

    // stim_ch8_pulse_p1 @ 0xc8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch8_pulse_p1_stim8_pulse_wc     <= 14'h0;
            reg_stim_ch8_pulse_p1_stim8_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH8_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch8_pulse_p1_stim8_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch8_pulse_p1_stim8_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch8_pulse_p1_stim8_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch8_pulse_p1_stim8_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim8_pulse_wc_o            = reg_stim_ch8_pulse_p1_stim8_pulse_wc;
    assign stim8_pulse_wa_mux_s        = reg_stim_ch8_pulse_p1_stim8_pulse_wa_mux;

    assign val_stim_ch8_pulse_p1[13: 0] = reg_stim_ch8_pulse_p1_stim8_pulse_wc;
    assign val_stim_ch8_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch8_pulse_p1[29:16] = reg_stim_ch8_pulse_p1_stim8_pulse_wa_mux;
    assign val_stim_ch8_pulse_p1[31:30] = 2'b0;

    // stim_ch8_pulse_p2 @ 0xcc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch8_pulse_p2_stim8_pulse_gap <= 14'h0;
            reg_stim_ch8_pulse_p2_stim8_pulse_num <= 12'h0;
            reg_stim_ch8_pulse_p2_stim8_pol       <= 1'b0;
            reg_stim_ch8_pulse_p2_stim8_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH8_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch8_pulse_p2_stim8_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch8_pulse_p2_stim8_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch8_pulse_p2_stim8_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch8_pulse_p2_stim8_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch8_pulse_p2_stim8_pol              <= apb_wdata_i[   30];
                        reg_stim_ch8_pulse_p2_stim8_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim8_pulse_gap_o        = reg_stim_ch8_pulse_p2_stim8_pulse_gap;
    assign stim8_pulse_num_o        = reg_stim_ch8_pulse_p2_stim8_pulse_num;
    assign stim8_pol_o              = reg_stim_ch8_pulse_p2_stim8_pol;
    assign stim8_range_s            = reg_stim_ch8_pulse_p2_stim8_range;

    assign val_stim_ch8_pulse_p2[13: 0] = reg_stim_ch8_pulse_p2_stim8_pulse_gap;
    assign val_stim_ch8_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch8_pulse_p2[27:16] = reg_stim_ch8_pulse_p2_stim8_pulse_num;
    assign val_stim_ch8_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch8_pulse_p2[   30] = reg_stim_ch8_pulse_p2_stim8_pol;
    assign val_stim_ch8_pulse_p2[   31] = reg_stim_ch8_pulse_p2_stim8_range;

    // stim_ch9_p0 @ 0xd0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch9_p0_stim9_interval <= 16'h0;
            reg_stim_ch9_p0_stim9_ia_mux   <= 8'h0;
            reg_stim_ch9_p0_stim9_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH9_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch9_p0_stim9_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch9_p0_stim9_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch9_p0_stim9_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch9_p0_stim9_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim9_interval_o        = reg_stim_ch9_p0_stim9_interval;
    assign stim9_ia_mux_s          = reg_stim_ch9_p0_stim9_ia_mux;
    assign stim9_ic_o              = reg_stim_ch9_p0_stim9_ic;

    assign val_stim_ch9_p0[15: 0] = reg_stim_ch9_p0_stim9_interval;
    assign val_stim_ch9_p0[23:16] = reg_stim_ch9_p0_stim9_ia_mux;
    assign val_stim_ch9_p0[31:24] = reg_stim_ch9_p0_stim9_ic;

    // stim_ch9_pulse_p1 @ 0xd4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch9_pulse_p1_stim9_pulse_wc     <= 14'h0;
            reg_stim_ch9_pulse_p1_stim9_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH9_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch9_pulse_p1_stim9_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch9_pulse_p1_stim9_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch9_pulse_p1_stim9_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch9_pulse_p1_stim9_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim9_pulse_wc_o            = reg_stim_ch9_pulse_p1_stim9_pulse_wc;
    assign stim9_pulse_wa_mux_s        = reg_stim_ch9_pulse_p1_stim9_pulse_wa_mux;

    assign val_stim_ch9_pulse_p1[13: 0] = reg_stim_ch9_pulse_p1_stim9_pulse_wc;
    assign val_stim_ch9_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch9_pulse_p1[29:16] = reg_stim_ch9_pulse_p1_stim9_pulse_wa_mux;
    assign val_stim_ch9_pulse_p1[31:30] = 2'b0;

    // stim_ch9_pulse_p2 @ 0xd8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch9_pulse_p2_stim9_pulse_gap <= 14'h0;
            reg_stim_ch9_pulse_p2_stim9_pulse_num <= 12'h0;
            reg_stim_ch9_pulse_p2_stim9_pol       <= 1'b0;
            reg_stim_ch9_pulse_p2_stim9_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH9_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch9_pulse_p2_stim9_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch9_pulse_p2_stim9_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch9_pulse_p2_stim9_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch9_pulse_p2_stim9_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch9_pulse_p2_stim9_pol              <= apb_wdata_i[   30];
                        reg_stim_ch9_pulse_p2_stim9_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim9_pulse_gap_o        = reg_stim_ch9_pulse_p2_stim9_pulse_gap;
    assign stim9_pulse_num_o        = reg_stim_ch9_pulse_p2_stim9_pulse_num;
    assign stim9_pol_o              = reg_stim_ch9_pulse_p2_stim9_pol;
    assign stim9_range_s            = reg_stim_ch9_pulse_p2_stim9_range;

    assign val_stim_ch9_pulse_p2[13: 0] = reg_stim_ch9_pulse_p2_stim9_pulse_gap;
    assign val_stim_ch9_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch9_pulse_p2[27:16] = reg_stim_ch9_pulse_p2_stim9_pulse_num;
    assign val_stim_ch9_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch9_pulse_p2[   30] = reg_stim_ch9_pulse_p2_stim9_pol;
    assign val_stim_ch9_pulse_p2[   31] = reg_stim_ch9_pulse_p2_stim9_range;

    // stim_ch10_p0 @ 0xdc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch10_p0_stim10_interval <= 16'h0;
            reg_stim_ch10_p0_stim10_ia_mux   <= 8'h0;
            reg_stim_ch10_p0_stim10_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH10_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch10_p0_stim10_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch10_p0_stim10_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch10_p0_stim10_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch10_p0_stim10_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim10_interval_o        = reg_stim_ch10_p0_stim10_interval;
    assign stim10_ia_mux_s          = reg_stim_ch10_p0_stim10_ia_mux;
    assign stim10_ic_o              = reg_stim_ch10_p0_stim10_ic;

    assign val_stim_ch10_p0[15: 0] = reg_stim_ch10_p0_stim10_interval;
    assign val_stim_ch10_p0[23:16] = reg_stim_ch10_p0_stim10_ia_mux;
    assign val_stim_ch10_p0[31:24] = reg_stim_ch10_p0_stim10_ic;

    // stim_ch10_pulse_p1 @ 0xe0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch10_pulse_p1_stim10_pulse_wc     <= 14'h0;
            reg_stim_ch10_pulse_p1_stim10_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH10_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch10_pulse_p1_stim10_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch10_pulse_p1_stim10_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch10_pulse_p1_stim10_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch10_pulse_p1_stim10_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim10_pulse_wc_o            = reg_stim_ch10_pulse_p1_stim10_pulse_wc;
    assign stim10_pulse_wa_mux_s        = reg_stim_ch10_pulse_p1_stim10_pulse_wa_mux;

    assign val_stim_ch10_pulse_p1[13: 0] = reg_stim_ch10_pulse_p1_stim10_pulse_wc;
    assign val_stim_ch10_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch10_pulse_p1[29:16] = reg_stim_ch10_pulse_p1_stim10_pulse_wa_mux;
    assign val_stim_ch10_pulse_p1[31:30] = 2'b0;

    // stim_ch10_pulse_p2 @ 0xe4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch10_pulse_p2_stim10_pulse_gap <= 14'h0;
            reg_stim_ch10_pulse_p2_stim10_pulse_num <= 12'h0;
            reg_stim_ch10_pulse_p2_stim10_pol       <= 1'b0;
            reg_stim_ch10_pulse_p2_stim10_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH10_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch10_pulse_p2_stim10_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch10_pulse_p2_stim10_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch10_pulse_p2_stim10_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch10_pulse_p2_stim10_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch10_pulse_p2_stim10_pol              <= apb_wdata_i[   30];
                        reg_stim_ch10_pulse_p2_stim10_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim10_pulse_gap_o        = reg_stim_ch10_pulse_p2_stim10_pulse_gap;
    assign stim10_pulse_num_o        = reg_stim_ch10_pulse_p2_stim10_pulse_num;
    assign stim10_pol_o              = reg_stim_ch10_pulse_p2_stim10_pol;
    assign stim10_range_s            = reg_stim_ch10_pulse_p2_stim10_range;

    assign val_stim_ch10_pulse_p2[13: 0] = reg_stim_ch10_pulse_p2_stim10_pulse_gap;
    assign val_stim_ch10_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch10_pulse_p2[27:16] = reg_stim_ch10_pulse_p2_stim10_pulse_num;
    assign val_stim_ch10_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch10_pulse_p2[   30] = reg_stim_ch10_pulse_p2_stim10_pol;
    assign val_stim_ch10_pulse_p2[   31] = reg_stim_ch10_pulse_p2_stim10_range;

    // stim_ch11_p0 @ 0xe8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch11_p0_stim11_interval <= 16'h0;
            reg_stim_ch11_p0_stim11_ia_mux   <= 8'h0;
            reg_stim_ch11_p0_stim11_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH11_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch11_p0_stim11_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch11_p0_stim11_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch11_p0_stim11_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch11_p0_stim11_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim11_interval_o        = reg_stim_ch11_p0_stim11_interval;
    assign stim11_ia_mux_s          = reg_stim_ch11_p0_stim11_ia_mux;
    assign stim11_ic_o              = reg_stim_ch11_p0_stim11_ic;

    assign val_stim_ch11_p0[15: 0] = reg_stim_ch11_p0_stim11_interval;
    assign val_stim_ch11_p0[23:16] = reg_stim_ch11_p0_stim11_ia_mux;
    assign val_stim_ch11_p0[31:24] = reg_stim_ch11_p0_stim11_ic;

    // stim_ch11_pulse_p1 @ 0xec
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch11_pulse_p1_stim11_pulse_wc     <= 14'h0;
            reg_stim_ch11_pulse_p1_stim11_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH11_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch11_pulse_p1_stim11_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch11_pulse_p1_stim11_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch11_pulse_p1_stim11_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch11_pulse_p1_stim11_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim11_pulse_wc_o            = reg_stim_ch11_pulse_p1_stim11_pulse_wc;
    assign stim11_pulse_wa_mux_s        = reg_stim_ch11_pulse_p1_stim11_pulse_wa_mux;

    assign val_stim_ch11_pulse_p1[13: 0] = reg_stim_ch11_pulse_p1_stim11_pulse_wc;
    assign val_stim_ch11_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch11_pulse_p1[29:16] = reg_stim_ch11_pulse_p1_stim11_pulse_wa_mux;
    assign val_stim_ch11_pulse_p1[31:30] = 2'b0;

    // stim_ch11_pulse_p2 @ 0xf0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch11_pulse_p2_stim11_pulse_gap <= 14'h0;
            reg_stim_ch11_pulse_p2_stim11_pulse_num <= 12'h0;
            reg_stim_ch11_pulse_p2_stim11_pol       <= 1'b0;
            reg_stim_ch11_pulse_p2_stim11_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH11_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch11_pulse_p2_stim11_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch11_pulse_p2_stim11_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch11_pulse_p2_stim11_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch11_pulse_p2_stim11_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch11_pulse_p2_stim11_pol              <= apb_wdata_i[   30];
                        reg_stim_ch11_pulse_p2_stim11_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim11_pulse_gap_o        = reg_stim_ch11_pulse_p2_stim11_pulse_gap;
    assign stim11_pulse_num_o        = reg_stim_ch11_pulse_p2_stim11_pulse_num;
    assign stim11_pol_o              = reg_stim_ch11_pulse_p2_stim11_pol;
    assign stim11_range_s            = reg_stim_ch11_pulse_p2_stim11_range;

    assign val_stim_ch11_pulse_p2[13: 0] = reg_stim_ch11_pulse_p2_stim11_pulse_gap;
    assign val_stim_ch11_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch11_pulse_p2[27:16] = reg_stim_ch11_pulse_p2_stim11_pulse_num;
    assign val_stim_ch11_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch11_pulse_p2[   30] = reg_stim_ch11_pulse_p2_stim11_pol;
    assign val_stim_ch11_pulse_p2[   31] = reg_stim_ch11_pulse_p2_stim11_range;

    // stim_ch12_p0 @ 0xf4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch12_p0_stim12_interval <= 16'h0;
            reg_stim_ch12_p0_stim12_ia_mux   <= 8'h0;
            reg_stim_ch12_p0_stim12_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH12_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch12_p0_stim12_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch12_p0_stim12_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch12_p0_stim12_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch12_p0_stim12_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim12_interval_o        = reg_stim_ch12_p0_stim12_interval;
    assign stim12_ia_mux_s          = reg_stim_ch12_p0_stim12_ia_mux;
    assign stim12_ic_o              = reg_stim_ch12_p0_stim12_ic;

    assign val_stim_ch12_p0[15: 0] = reg_stim_ch12_p0_stim12_interval;
    assign val_stim_ch12_p0[23:16] = reg_stim_ch12_p0_stim12_ia_mux;
    assign val_stim_ch12_p0[31:24] = reg_stim_ch12_p0_stim12_ic;

    // stim_ch12_pulse_p1 @ 0xf8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch12_pulse_p1_stim12_pulse_wc     <= 14'h0;
            reg_stim_ch12_pulse_p1_stim12_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH12_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch12_pulse_p1_stim12_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch12_pulse_p1_stim12_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch12_pulse_p1_stim12_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch12_pulse_p1_stim12_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim12_pulse_wc_o            = reg_stim_ch12_pulse_p1_stim12_pulse_wc;
    assign stim12_pulse_wa_mux_s        = reg_stim_ch12_pulse_p1_stim12_pulse_wa_mux;

    assign val_stim_ch12_pulse_p1[13: 0] = reg_stim_ch12_pulse_p1_stim12_pulse_wc;
    assign val_stim_ch12_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch12_pulse_p1[29:16] = reg_stim_ch12_pulse_p1_stim12_pulse_wa_mux;
    assign val_stim_ch12_pulse_p1[31:30] = 2'b0;

    // stim_ch12_pulse_p2 @ 0xfc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch12_pulse_p2_stim12_pulse_gap <= 14'h0;
            reg_stim_ch12_pulse_p2_stim12_pulse_num <= 12'h0;
            reg_stim_ch12_pulse_p2_stim12_pol       <= 1'b0;
            reg_stim_ch12_pulse_p2_stim12_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH12_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch12_pulse_p2_stim12_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch12_pulse_p2_stim12_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch12_pulse_p2_stim12_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch12_pulse_p2_stim12_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch12_pulse_p2_stim12_pol              <= apb_wdata_i[   30];
                        reg_stim_ch12_pulse_p2_stim12_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim12_pulse_gap_o        = reg_stim_ch12_pulse_p2_stim12_pulse_gap;
    assign stim12_pulse_num_o        = reg_stim_ch12_pulse_p2_stim12_pulse_num;
    assign stim12_pol_o              = reg_stim_ch12_pulse_p2_stim12_pol;
    assign stim12_range_s            = reg_stim_ch12_pulse_p2_stim12_range;

    assign val_stim_ch12_pulse_p2[13: 0] = reg_stim_ch12_pulse_p2_stim12_pulse_gap;
    assign val_stim_ch12_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch12_pulse_p2[27:16] = reg_stim_ch12_pulse_p2_stim12_pulse_num;
    assign val_stim_ch12_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch12_pulse_p2[   30] = reg_stim_ch12_pulse_p2_stim12_pol;
    assign val_stim_ch12_pulse_p2[   31] = reg_stim_ch12_pulse_p2_stim12_range;

    // stim_ch13_p0 @ 0x100
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch13_p0_stim13_interval <= 16'h0;
            reg_stim_ch13_p0_stim13_ia_mux   <= 8'h0;
            reg_stim_ch13_p0_stim13_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH13_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch13_p0_stim13_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch13_p0_stim13_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch13_p0_stim13_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch13_p0_stim13_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim13_interval_o        = reg_stim_ch13_p0_stim13_interval;
    assign stim13_ia_mux_s          = reg_stim_ch13_p0_stim13_ia_mux;
    assign stim13_ic_o              = reg_stim_ch13_p0_stim13_ic;

    assign val_stim_ch13_p0[15: 0] = reg_stim_ch13_p0_stim13_interval;
    assign val_stim_ch13_p0[23:16] = reg_stim_ch13_p0_stim13_ia_mux;
    assign val_stim_ch13_p0[31:24] = reg_stim_ch13_p0_stim13_ic;

    // stim_ch13_pulse_p1 @ 0x104
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch13_pulse_p1_stim13_pulse_wc     <= 14'h0;
            reg_stim_ch13_pulse_p1_stim13_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH13_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch13_pulse_p1_stim13_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch13_pulse_p1_stim13_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch13_pulse_p1_stim13_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch13_pulse_p1_stim13_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim13_pulse_wc_o            = reg_stim_ch13_pulse_p1_stim13_pulse_wc;
    assign stim13_pulse_wa_mux_s        = reg_stim_ch13_pulse_p1_stim13_pulse_wa_mux;

    assign val_stim_ch13_pulse_p1[13: 0] = reg_stim_ch13_pulse_p1_stim13_pulse_wc;
    assign val_stim_ch13_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch13_pulse_p1[29:16] = reg_stim_ch13_pulse_p1_stim13_pulse_wa_mux;
    assign val_stim_ch13_pulse_p1[31:30] = 2'b0;

    // stim_ch13_pulse_p2 @ 0x108
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch13_pulse_p2_stim13_pulse_gap <= 14'h0;
            reg_stim_ch13_pulse_p2_stim13_pulse_num <= 12'h0;
            reg_stim_ch13_pulse_p2_stim13_pol       <= 1'b0;
            reg_stim_ch13_pulse_p2_stim13_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH13_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch13_pulse_p2_stim13_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch13_pulse_p2_stim13_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch13_pulse_p2_stim13_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch13_pulse_p2_stim13_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch13_pulse_p2_stim13_pol              <= apb_wdata_i[   30];
                        reg_stim_ch13_pulse_p2_stim13_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim13_pulse_gap_o        = reg_stim_ch13_pulse_p2_stim13_pulse_gap;
    assign stim13_pulse_num_o        = reg_stim_ch13_pulse_p2_stim13_pulse_num;
    assign stim13_pol_o              = reg_stim_ch13_pulse_p2_stim13_pol;
    assign stim13_range_s            = reg_stim_ch13_pulse_p2_stim13_range;

    assign val_stim_ch13_pulse_p2[13: 0] = reg_stim_ch13_pulse_p2_stim13_pulse_gap;
    assign val_stim_ch13_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch13_pulse_p2[27:16] = reg_stim_ch13_pulse_p2_stim13_pulse_num;
    assign val_stim_ch13_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch13_pulse_p2[   30] = reg_stim_ch13_pulse_p2_stim13_pol;
    assign val_stim_ch13_pulse_p2[   31] = reg_stim_ch13_pulse_p2_stim13_range;

    // stim_ch14_p0 @ 0x10c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch14_p0_stim14_interval <= 16'h0;
            reg_stim_ch14_p0_stim14_ia_mux   <= 8'h0;
            reg_stim_ch14_p0_stim14_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH14_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch14_p0_stim14_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch14_p0_stim14_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch14_p0_stim14_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch14_p0_stim14_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim14_interval_o        = reg_stim_ch14_p0_stim14_interval;
    assign stim14_ia_mux_s          = reg_stim_ch14_p0_stim14_ia_mux;
    assign stim14_ic_o              = reg_stim_ch14_p0_stim14_ic;

    assign val_stim_ch14_p0[15: 0] = reg_stim_ch14_p0_stim14_interval;
    assign val_stim_ch14_p0[23:16] = reg_stim_ch14_p0_stim14_ia_mux;
    assign val_stim_ch14_p0[31:24] = reg_stim_ch14_p0_stim14_ic;

    // stim_ch14_pulse_p1 @ 0x110
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch14_pulse_p1_stim14_pulse_wc     <= 14'h0;
            reg_stim_ch14_pulse_p1_stim14_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH14_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch14_pulse_p1_stim14_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch14_pulse_p1_stim14_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch14_pulse_p1_stim14_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch14_pulse_p1_stim14_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim14_pulse_wc_o            = reg_stim_ch14_pulse_p1_stim14_pulse_wc;
    assign stim14_pulse_wa_mux_s        = reg_stim_ch14_pulse_p1_stim14_pulse_wa_mux;

    assign val_stim_ch14_pulse_p1[13: 0] = reg_stim_ch14_pulse_p1_stim14_pulse_wc;
    assign val_stim_ch14_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch14_pulse_p1[29:16] = reg_stim_ch14_pulse_p1_stim14_pulse_wa_mux;
    assign val_stim_ch14_pulse_p1[31:30] = 2'b0;

    // stim_ch14_pulse_p2 @ 0x114
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch14_pulse_p2_stim14_pulse_gap <= 14'h0;
            reg_stim_ch14_pulse_p2_stim14_pulse_num <= 12'h0;
            reg_stim_ch14_pulse_p2_stim14_pol       <= 1'b0;
            reg_stim_ch14_pulse_p2_stim14_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH14_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch14_pulse_p2_stim14_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch14_pulse_p2_stim14_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch14_pulse_p2_stim14_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch14_pulse_p2_stim14_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch14_pulse_p2_stim14_pol              <= apb_wdata_i[   30];
                        reg_stim_ch14_pulse_p2_stim14_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim14_pulse_gap_o        = reg_stim_ch14_pulse_p2_stim14_pulse_gap;
    assign stim14_pulse_num_o        = reg_stim_ch14_pulse_p2_stim14_pulse_num;
    assign stim14_pol_o              = reg_stim_ch14_pulse_p2_stim14_pol;
    assign stim14_range_s            = reg_stim_ch14_pulse_p2_stim14_range;

    assign val_stim_ch14_pulse_p2[13: 0] = reg_stim_ch14_pulse_p2_stim14_pulse_gap;
    assign val_stim_ch14_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch14_pulse_p2[27:16] = reg_stim_ch14_pulse_p2_stim14_pulse_num;
    assign val_stim_ch14_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch14_pulse_p2[   30] = reg_stim_ch14_pulse_p2_stim14_pol;
    assign val_stim_ch14_pulse_p2[   31] = reg_stim_ch14_pulse_p2_stim14_range;

    // stim_ch15_p0 @ 0x118
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch15_p0_stim15_interval <= 16'h0;
            reg_stim_ch15_p0_stim15_ia_mux   <= 8'h0;
            reg_stim_ch15_p0_stim15_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH15_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch15_p0_stim15_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch15_p0_stim15_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch15_p0_stim15_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch15_p0_stim15_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim15_interval_o        = reg_stim_ch15_p0_stim15_interval;
    assign stim15_ia_mux_s          = reg_stim_ch15_p0_stim15_ia_mux;
    assign stim15_ic_o              = reg_stim_ch15_p0_stim15_ic;

    assign val_stim_ch15_p0[15: 0] = reg_stim_ch15_p0_stim15_interval;
    assign val_stim_ch15_p0[23:16] = reg_stim_ch15_p0_stim15_ia_mux;
    assign val_stim_ch15_p0[31:24] = reg_stim_ch15_p0_stim15_ic;

    // stim_ch15_pulse_p1 @ 0x11c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch15_pulse_p1_stim15_pulse_wc     <= 14'h0;
            reg_stim_ch15_pulse_p1_stim15_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH15_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch15_pulse_p1_stim15_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch15_pulse_p1_stim15_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch15_pulse_p1_stim15_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch15_pulse_p1_stim15_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim15_pulse_wc_o            = reg_stim_ch15_pulse_p1_stim15_pulse_wc;
    assign stim15_pulse_wa_mux_s        = reg_stim_ch15_pulse_p1_stim15_pulse_wa_mux;

    assign val_stim_ch15_pulse_p1[13: 0] = reg_stim_ch15_pulse_p1_stim15_pulse_wc;
    assign val_stim_ch15_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch15_pulse_p1[29:16] = reg_stim_ch15_pulse_p1_stim15_pulse_wa_mux;
    assign val_stim_ch15_pulse_p1[31:30] = 2'b0;

    // stim_ch15_pulse_p2 @ 0x120
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch15_pulse_p2_stim15_pulse_gap <= 14'h0;
            reg_stim_ch15_pulse_p2_stim15_pulse_num <= 12'h0;
            reg_stim_ch15_pulse_p2_stim15_pol       <= 1'b0;
            reg_stim_ch15_pulse_p2_stim15_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH15_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch15_pulse_p2_stim15_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch15_pulse_p2_stim15_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch15_pulse_p2_stim15_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch15_pulse_p2_stim15_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch15_pulse_p2_stim15_pol              <= apb_wdata_i[   30];
                        reg_stim_ch15_pulse_p2_stim15_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim15_pulse_gap_o        = reg_stim_ch15_pulse_p2_stim15_pulse_gap;
    assign stim15_pulse_num_o        = reg_stim_ch15_pulse_p2_stim15_pulse_num;
    assign stim15_pol_o              = reg_stim_ch15_pulse_p2_stim15_pol;
    assign stim15_range_s            = reg_stim_ch15_pulse_p2_stim15_range;

    assign val_stim_ch15_pulse_p2[13: 0] = reg_stim_ch15_pulse_p2_stim15_pulse_gap;
    assign val_stim_ch15_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch15_pulse_p2[27:16] = reg_stim_ch15_pulse_p2_stim15_pulse_num;
    assign val_stim_ch15_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch15_pulse_p2[   30] = reg_stim_ch15_pulse_p2_stim15_pol;
    assign val_stim_ch15_pulse_p2[   31] = reg_stim_ch15_pulse_p2_stim15_range;

    // stim_ch16_p0 @ 0x124
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch16_p0_stim16_interval <= 16'h0;
            reg_stim_ch16_p0_stim16_ia_mux   <= 8'h0;
            reg_stim_ch16_p0_stim16_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH16_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch16_p0_stim16_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch16_p0_stim16_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch16_p0_stim16_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch16_p0_stim16_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim16_interval_o        = reg_stim_ch16_p0_stim16_interval;
    assign stim16_ia_mux_s          = reg_stim_ch16_p0_stim16_ia_mux;
    assign stim16_ic_o              = reg_stim_ch16_p0_stim16_ic;

    assign val_stim_ch16_p0[15: 0] = reg_stim_ch16_p0_stim16_interval;
    assign val_stim_ch16_p0[23:16] = reg_stim_ch16_p0_stim16_ia_mux;
    assign val_stim_ch16_p0[31:24] = reg_stim_ch16_p0_stim16_ic;

    // stim_ch16_pulse_p1 @ 0x128
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch16_pulse_p1_stim16_pulse_wc     <= 14'h0;
            reg_stim_ch16_pulse_p1_stim16_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH16_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch16_pulse_p1_stim16_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch16_pulse_p1_stim16_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch16_pulse_p1_stim16_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch16_pulse_p1_stim16_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim16_pulse_wc_o            = reg_stim_ch16_pulse_p1_stim16_pulse_wc;
    assign stim16_pulse_wa_mux_s        = reg_stim_ch16_pulse_p1_stim16_pulse_wa_mux;

    assign val_stim_ch16_pulse_p1[13: 0] = reg_stim_ch16_pulse_p1_stim16_pulse_wc;
    assign val_stim_ch16_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch16_pulse_p1[29:16] = reg_stim_ch16_pulse_p1_stim16_pulse_wa_mux;
    assign val_stim_ch16_pulse_p1[31:30] = 2'b0;

    // stim_ch16_pulse_p2 @ 0x12c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch16_pulse_p2_stim16_pulse_gap <= 14'h0;
            reg_stim_ch16_pulse_p2_stim16_pulse_num <= 12'h0;
            reg_stim_ch16_pulse_p2_stim16_pol       <= 1'b0;
            reg_stim_ch16_pulse_p2_stim16_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH16_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch16_pulse_p2_stim16_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch16_pulse_p2_stim16_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch16_pulse_p2_stim16_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch16_pulse_p2_stim16_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch16_pulse_p2_stim16_pol              <= apb_wdata_i[   30];
                        reg_stim_ch16_pulse_p2_stim16_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim16_pulse_gap_o        = reg_stim_ch16_pulse_p2_stim16_pulse_gap;
    assign stim16_pulse_num_o        = reg_stim_ch16_pulse_p2_stim16_pulse_num;
    assign stim16_pol_o              = reg_stim_ch16_pulse_p2_stim16_pol;
    assign stim16_range_s            = reg_stim_ch16_pulse_p2_stim16_range;

    assign val_stim_ch16_pulse_p2[13: 0] = reg_stim_ch16_pulse_p2_stim16_pulse_gap;
    assign val_stim_ch16_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch16_pulse_p2[27:16] = reg_stim_ch16_pulse_p2_stim16_pulse_num;
    assign val_stim_ch16_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch16_pulse_p2[   30] = reg_stim_ch16_pulse_p2_stim16_pol;
    assign val_stim_ch16_pulse_p2[   31] = reg_stim_ch16_pulse_p2_stim16_range;

    // stim_ch17_p0 @ 0x130
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch17_p0_stim17_interval <= 16'h0;
            reg_stim_ch17_p0_stim17_ia_mux   <= 8'h0;
            reg_stim_ch17_p0_stim17_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH17_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch17_p0_stim17_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch17_p0_stim17_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch17_p0_stim17_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch17_p0_stim17_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim17_interval_o        = reg_stim_ch17_p0_stim17_interval;
    assign stim17_ia_mux_s          = reg_stim_ch17_p0_stim17_ia_mux;
    assign stim17_ic_o              = reg_stim_ch17_p0_stim17_ic;

    assign val_stim_ch17_p0[15: 0] = reg_stim_ch17_p0_stim17_interval;
    assign val_stim_ch17_p0[23:16] = reg_stim_ch17_p0_stim17_ia_mux;
    assign val_stim_ch17_p0[31:24] = reg_stim_ch17_p0_stim17_ic;

    // stim_ch17_pulse_p1 @ 0x134
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch17_pulse_p1_stim17_pulse_wc     <= 14'h0;
            reg_stim_ch17_pulse_p1_stim17_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH17_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch17_pulse_p1_stim17_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch17_pulse_p1_stim17_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch17_pulse_p1_stim17_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch17_pulse_p1_stim17_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim17_pulse_wc_o            = reg_stim_ch17_pulse_p1_stim17_pulse_wc;
    assign stim17_pulse_wa_mux_s        = reg_stim_ch17_pulse_p1_stim17_pulse_wa_mux;

    assign val_stim_ch17_pulse_p1[13: 0] = reg_stim_ch17_pulse_p1_stim17_pulse_wc;
    assign val_stim_ch17_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch17_pulse_p1[29:16] = reg_stim_ch17_pulse_p1_stim17_pulse_wa_mux;
    assign val_stim_ch17_pulse_p1[31:30] = 2'b0;

    // stim_ch17_pulse_p2 @ 0x138
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch17_pulse_p2_stim17_pulse_gap <= 14'h0;
            reg_stim_ch17_pulse_p2_stim17_pulse_num <= 12'h0;
            reg_stim_ch17_pulse_p2_stim17_pol       <= 1'b0;
            reg_stim_ch17_pulse_p2_stim17_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH17_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch17_pulse_p2_stim17_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch17_pulse_p2_stim17_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch17_pulse_p2_stim17_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch17_pulse_p2_stim17_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch17_pulse_p2_stim17_pol              <= apb_wdata_i[   30];
                        reg_stim_ch17_pulse_p2_stim17_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim17_pulse_gap_o        = reg_stim_ch17_pulse_p2_stim17_pulse_gap;
    assign stim17_pulse_num_o        = reg_stim_ch17_pulse_p2_stim17_pulse_num;
    assign stim17_pol_o              = reg_stim_ch17_pulse_p2_stim17_pol;
    assign stim17_range_s            = reg_stim_ch17_pulse_p2_stim17_range;

    assign val_stim_ch17_pulse_p2[13: 0] = reg_stim_ch17_pulse_p2_stim17_pulse_gap;
    assign val_stim_ch17_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch17_pulse_p2[27:16] = reg_stim_ch17_pulse_p2_stim17_pulse_num;
    assign val_stim_ch17_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch17_pulse_p2[   30] = reg_stim_ch17_pulse_p2_stim17_pol;
    assign val_stim_ch17_pulse_p2[   31] = reg_stim_ch17_pulse_p2_stim17_range;

    // stim_ch18_p0 @ 0x13c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch18_p0_stim18_interval <= 16'h0;
            reg_stim_ch18_p0_stim18_ia_mux   <= 8'h0;
            reg_stim_ch18_p0_stim18_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH18_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch18_p0_stim18_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch18_p0_stim18_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch18_p0_stim18_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch18_p0_stim18_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim18_interval_o        = reg_stim_ch18_p0_stim18_interval;
    assign stim18_ia_mux_s          = reg_stim_ch18_p0_stim18_ia_mux;
    assign stim18_ic_o              = reg_stim_ch18_p0_stim18_ic;

    assign val_stim_ch18_p0[15: 0] = reg_stim_ch18_p0_stim18_interval;
    assign val_stim_ch18_p0[23:16] = reg_stim_ch18_p0_stim18_ia_mux;
    assign val_stim_ch18_p0[31:24] = reg_stim_ch18_p0_stim18_ic;

    // stim_ch18_pulse_p1 @ 0x140
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch18_pulse_p1_stim18_pulse_wc     <= 14'h0;
            reg_stim_ch18_pulse_p1_stim18_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH18_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch18_pulse_p1_stim18_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch18_pulse_p1_stim18_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch18_pulse_p1_stim18_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch18_pulse_p1_stim18_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim18_pulse_wc_o            = reg_stim_ch18_pulse_p1_stim18_pulse_wc;
    assign stim18_pulse_wa_mux_s        = reg_stim_ch18_pulse_p1_stim18_pulse_wa_mux;

    assign val_stim_ch18_pulse_p1[13: 0] = reg_stim_ch18_pulse_p1_stim18_pulse_wc;
    assign val_stim_ch18_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch18_pulse_p1[29:16] = reg_stim_ch18_pulse_p1_stim18_pulse_wa_mux;
    assign val_stim_ch18_pulse_p1[31:30] = 2'b0;

    // stim_ch18_pulse_p2 @ 0x144
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch18_pulse_p2_stim18_pulse_gap <= 14'h0;
            reg_stim_ch18_pulse_p2_stim18_pulse_num <= 12'h0;
            reg_stim_ch18_pulse_p2_stim18_pol       <= 1'b0;
            reg_stim_ch18_pulse_p2_stim18_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH18_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch18_pulse_p2_stim18_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch18_pulse_p2_stim18_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch18_pulse_p2_stim18_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch18_pulse_p2_stim18_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch18_pulse_p2_stim18_pol              <= apb_wdata_i[   30];
                        reg_stim_ch18_pulse_p2_stim18_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim18_pulse_gap_o        = reg_stim_ch18_pulse_p2_stim18_pulse_gap;
    assign stim18_pulse_num_o        = reg_stim_ch18_pulse_p2_stim18_pulse_num;
    assign stim18_pol_o              = reg_stim_ch18_pulse_p2_stim18_pol;
    assign stim18_range_s            = reg_stim_ch18_pulse_p2_stim18_range;

    assign val_stim_ch18_pulse_p2[13: 0] = reg_stim_ch18_pulse_p2_stim18_pulse_gap;
    assign val_stim_ch18_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch18_pulse_p2[27:16] = reg_stim_ch18_pulse_p2_stim18_pulse_num;
    assign val_stim_ch18_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch18_pulse_p2[   30] = reg_stim_ch18_pulse_p2_stim18_pol;
    assign val_stim_ch18_pulse_p2[   31] = reg_stim_ch18_pulse_p2_stim18_range;

    // stim_ch19_p0 @ 0x148
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch19_p0_stim19_interval <= 16'h0;
            reg_stim_ch19_p0_stim19_ia_mux   <= 8'h0;
            reg_stim_ch19_p0_stim19_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH19_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch19_p0_stim19_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch19_p0_stim19_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch19_p0_stim19_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch19_p0_stim19_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim19_interval_o        = reg_stim_ch19_p0_stim19_interval;
    assign stim19_ia_mux_s          = reg_stim_ch19_p0_stim19_ia_mux;
    assign stim19_ic_o              = reg_stim_ch19_p0_stim19_ic;

    assign val_stim_ch19_p0[15: 0] = reg_stim_ch19_p0_stim19_interval;
    assign val_stim_ch19_p0[23:16] = reg_stim_ch19_p0_stim19_ia_mux;
    assign val_stim_ch19_p0[31:24] = reg_stim_ch19_p0_stim19_ic;

    // stim_ch19_pulse_p1 @ 0x14c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch19_pulse_p1_stim19_pulse_wc     <= 14'h0;
            reg_stim_ch19_pulse_p1_stim19_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH19_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch19_pulse_p1_stim19_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch19_pulse_p1_stim19_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch19_pulse_p1_stim19_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch19_pulse_p1_stim19_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim19_pulse_wc_o            = reg_stim_ch19_pulse_p1_stim19_pulse_wc;
    assign stim19_pulse_wa_mux_s        = reg_stim_ch19_pulse_p1_stim19_pulse_wa_mux;

    assign val_stim_ch19_pulse_p1[13: 0] = reg_stim_ch19_pulse_p1_stim19_pulse_wc;
    assign val_stim_ch19_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch19_pulse_p1[29:16] = reg_stim_ch19_pulse_p1_stim19_pulse_wa_mux;
    assign val_stim_ch19_pulse_p1[31:30] = 2'b0;

    // stim_ch19_pulse_p2 @ 0x150
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch19_pulse_p2_stim19_pulse_gap <= 14'h0;
            reg_stim_ch19_pulse_p2_stim19_pulse_num <= 12'h0;
            reg_stim_ch19_pulse_p2_stim19_pol       <= 1'b0;
            reg_stim_ch19_pulse_p2_stim19_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH19_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch19_pulse_p2_stim19_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch19_pulse_p2_stim19_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch19_pulse_p2_stim19_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch19_pulse_p2_stim19_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch19_pulse_p2_stim19_pol              <= apb_wdata_i[   30];
                        reg_stim_ch19_pulse_p2_stim19_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim19_pulse_gap_o        = reg_stim_ch19_pulse_p2_stim19_pulse_gap;
    assign stim19_pulse_num_o        = reg_stim_ch19_pulse_p2_stim19_pulse_num;
    assign stim19_pol_o              = reg_stim_ch19_pulse_p2_stim19_pol;
    assign stim19_range_s            = reg_stim_ch19_pulse_p2_stim19_range;

    assign val_stim_ch19_pulse_p2[13: 0] = reg_stim_ch19_pulse_p2_stim19_pulse_gap;
    assign val_stim_ch19_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch19_pulse_p2[27:16] = reg_stim_ch19_pulse_p2_stim19_pulse_num;
    assign val_stim_ch19_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch19_pulse_p2[   30] = reg_stim_ch19_pulse_p2_stim19_pol;
    assign val_stim_ch19_pulse_p2[   31] = reg_stim_ch19_pulse_p2_stim19_range;

    // stim_ch20_p0 @ 0x154
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch20_p0_stim20_interval <= 16'h0;
            reg_stim_ch20_p0_stim20_ia_mux   <= 8'h0;
            reg_stim_ch20_p0_stim20_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH20_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch20_p0_stim20_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch20_p0_stim20_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch20_p0_stim20_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch20_p0_stim20_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim20_interval_o        = reg_stim_ch20_p0_stim20_interval;
    assign stim20_ia_mux_s          = reg_stim_ch20_p0_stim20_ia_mux;
    assign stim20_ic_o              = reg_stim_ch20_p0_stim20_ic;

    assign val_stim_ch20_p0[15: 0] = reg_stim_ch20_p0_stim20_interval;
    assign val_stim_ch20_p0[23:16] = reg_stim_ch20_p0_stim20_ia_mux;
    assign val_stim_ch20_p0[31:24] = reg_stim_ch20_p0_stim20_ic;

    // stim_ch20_pulse_p1 @ 0x158
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch20_pulse_p1_stim20_pulse_wc     <= 14'h0;
            reg_stim_ch20_pulse_p1_stim20_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH20_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch20_pulse_p1_stim20_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch20_pulse_p1_stim20_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch20_pulse_p1_stim20_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch20_pulse_p1_stim20_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim20_pulse_wc_o            = reg_stim_ch20_pulse_p1_stim20_pulse_wc;
    assign stim20_pulse_wa_mux_s        = reg_stim_ch20_pulse_p1_stim20_pulse_wa_mux;

    assign val_stim_ch20_pulse_p1[13: 0] = reg_stim_ch20_pulse_p1_stim20_pulse_wc;
    assign val_stim_ch20_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch20_pulse_p1[29:16] = reg_stim_ch20_pulse_p1_stim20_pulse_wa_mux;
    assign val_stim_ch20_pulse_p1[31:30] = 2'b0;

    // stim_ch20_pulse_p2 @ 0x15c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch20_pulse_p2_stim20_pulse_gap <= 14'h0;
            reg_stim_ch20_pulse_p2_stim20_pulse_num <= 12'h0;
            reg_stim_ch20_pulse_p2_stim20_pol       <= 1'b0;
            reg_stim_ch20_pulse_p2_stim20_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH20_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch20_pulse_p2_stim20_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch20_pulse_p2_stim20_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch20_pulse_p2_stim20_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch20_pulse_p2_stim20_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch20_pulse_p2_stim20_pol              <= apb_wdata_i[   30];
                        reg_stim_ch20_pulse_p2_stim20_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim20_pulse_gap_o        = reg_stim_ch20_pulse_p2_stim20_pulse_gap;
    assign stim20_pulse_num_o        = reg_stim_ch20_pulse_p2_stim20_pulse_num;
    assign stim20_pol_o              = reg_stim_ch20_pulse_p2_stim20_pol;
    assign stim20_range_s            = reg_stim_ch20_pulse_p2_stim20_range;

    assign val_stim_ch20_pulse_p2[13: 0] = reg_stim_ch20_pulse_p2_stim20_pulse_gap;
    assign val_stim_ch20_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch20_pulse_p2[27:16] = reg_stim_ch20_pulse_p2_stim20_pulse_num;
    assign val_stim_ch20_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch20_pulse_p2[   30] = reg_stim_ch20_pulse_p2_stim20_pol;
    assign val_stim_ch20_pulse_p2[   31] = reg_stim_ch20_pulse_p2_stim20_range;

    // stim_ch21_p0 @ 0x160
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch21_p0_stim21_interval <= 16'h0;
            reg_stim_ch21_p0_stim21_ia_mux   <= 8'h0;
            reg_stim_ch21_p0_stim21_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH21_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch21_p0_stim21_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch21_p0_stim21_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch21_p0_stim21_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch21_p0_stim21_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim21_interval_o        = reg_stim_ch21_p0_stim21_interval;
    assign stim21_ia_mux_s          = reg_stim_ch21_p0_stim21_ia_mux;
    assign stim21_ic_o              = reg_stim_ch21_p0_stim21_ic;

    assign val_stim_ch21_p0[15: 0] = reg_stim_ch21_p0_stim21_interval;
    assign val_stim_ch21_p0[23:16] = reg_stim_ch21_p0_stim21_ia_mux;
    assign val_stim_ch21_p0[31:24] = reg_stim_ch21_p0_stim21_ic;

    // stim_ch21_pulse_p1 @ 0x164
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch21_pulse_p1_stim21_pulse_wc     <= 14'h0;
            reg_stim_ch21_pulse_p1_stim21_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH21_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch21_pulse_p1_stim21_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch21_pulse_p1_stim21_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch21_pulse_p1_stim21_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch21_pulse_p1_stim21_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim21_pulse_wc_o            = reg_stim_ch21_pulse_p1_stim21_pulse_wc;
    assign stim21_pulse_wa_mux_s        = reg_stim_ch21_pulse_p1_stim21_pulse_wa_mux;

    assign val_stim_ch21_pulse_p1[13: 0] = reg_stim_ch21_pulse_p1_stim21_pulse_wc;
    assign val_stim_ch21_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch21_pulse_p1[29:16] = reg_stim_ch21_pulse_p1_stim21_pulse_wa_mux;
    assign val_stim_ch21_pulse_p1[31:30] = 2'b0;

    // stim_ch21_pulse_p2 @ 0x168
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch21_pulse_p2_stim21_pulse_gap <= 14'h0;
            reg_stim_ch21_pulse_p2_stim21_pulse_num <= 12'h0;
            reg_stim_ch21_pulse_p2_stim21_pol       <= 1'b0;
            reg_stim_ch21_pulse_p2_stim21_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH21_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch21_pulse_p2_stim21_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch21_pulse_p2_stim21_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch21_pulse_p2_stim21_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch21_pulse_p2_stim21_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch21_pulse_p2_stim21_pol              <= apb_wdata_i[   30];
                        reg_stim_ch21_pulse_p2_stim21_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim21_pulse_gap_o        = reg_stim_ch21_pulse_p2_stim21_pulse_gap;
    assign stim21_pulse_num_o        = reg_stim_ch21_pulse_p2_stim21_pulse_num;
    assign stim21_pol_o              = reg_stim_ch21_pulse_p2_stim21_pol;
    assign stim21_range_s            = reg_stim_ch21_pulse_p2_stim21_range;

    assign val_stim_ch21_pulse_p2[13: 0] = reg_stim_ch21_pulse_p2_stim21_pulse_gap;
    assign val_stim_ch21_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch21_pulse_p2[27:16] = reg_stim_ch21_pulse_p2_stim21_pulse_num;
    assign val_stim_ch21_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch21_pulse_p2[   30] = reg_stim_ch21_pulse_p2_stim21_pol;
    assign val_stim_ch21_pulse_p2[   31] = reg_stim_ch21_pulse_p2_stim21_range;

    // stim_ch22_p0 @ 0x16c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch22_p0_stim22_interval <= 16'h0;
            reg_stim_ch22_p0_stim22_ia_mux   <= 8'h0;
            reg_stim_ch22_p0_stim22_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH22_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch22_p0_stim22_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch22_p0_stim22_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch22_p0_stim22_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch22_p0_stim22_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim22_interval_o        = reg_stim_ch22_p0_stim22_interval;
    assign stim22_ia_mux_s          = reg_stim_ch22_p0_stim22_ia_mux;
    assign stim22_ic_o              = reg_stim_ch22_p0_stim22_ic;

    assign val_stim_ch22_p0[15: 0] = reg_stim_ch22_p0_stim22_interval;
    assign val_stim_ch22_p0[23:16] = reg_stim_ch22_p0_stim22_ia_mux;
    assign val_stim_ch22_p0[31:24] = reg_stim_ch22_p0_stim22_ic;

    // stim_ch22_pulse_p1 @ 0x170
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch22_pulse_p1_stim22_pulse_wc     <= 14'h0;
            reg_stim_ch22_pulse_p1_stim22_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH22_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch22_pulse_p1_stim22_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch22_pulse_p1_stim22_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch22_pulse_p1_stim22_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch22_pulse_p1_stim22_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim22_pulse_wc_o            = reg_stim_ch22_pulse_p1_stim22_pulse_wc;
    assign stim22_pulse_wa_mux_s        = reg_stim_ch22_pulse_p1_stim22_pulse_wa_mux;

    assign val_stim_ch22_pulse_p1[13: 0] = reg_stim_ch22_pulse_p1_stim22_pulse_wc;
    assign val_stim_ch22_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch22_pulse_p1[29:16] = reg_stim_ch22_pulse_p1_stim22_pulse_wa_mux;
    assign val_stim_ch22_pulse_p1[31:30] = 2'b0;

    // stim_ch22_pulse_p2 @ 0x174
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch22_pulse_p2_stim22_pulse_gap <= 14'h0;
            reg_stim_ch22_pulse_p2_stim22_pulse_num <= 12'h0;
            reg_stim_ch22_pulse_p2_stim22_pol       <= 1'b0;
            reg_stim_ch22_pulse_p2_stim22_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH22_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch22_pulse_p2_stim22_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch22_pulse_p2_stim22_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch22_pulse_p2_stim22_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch22_pulse_p2_stim22_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch22_pulse_p2_stim22_pol              <= apb_wdata_i[   30];
                        reg_stim_ch22_pulse_p2_stim22_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim22_pulse_gap_o        = reg_stim_ch22_pulse_p2_stim22_pulse_gap;
    assign stim22_pulse_num_o        = reg_stim_ch22_pulse_p2_stim22_pulse_num;
    assign stim22_pol_o              = reg_stim_ch22_pulse_p2_stim22_pol;
    assign stim22_range_s            = reg_stim_ch22_pulse_p2_stim22_range;

    assign val_stim_ch22_pulse_p2[13: 0] = reg_stim_ch22_pulse_p2_stim22_pulse_gap;
    assign val_stim_ch22_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch22_pulse_p2[27:16] = reg_stim_ch22_pulse_p2_stim22_pulse_num;
    assign val_stim_ch22_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch22_pulse_p2[   30] = reg_stim_ch22_pulse_p2_stim22_pol;
    assign val_stim_ch22_pulse_p2[   31] = reg_stim_ch22_pulse_p2_stim22_range;

    // stim_ch23_p0 @ 0x178
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch23_p0_stim23_interval <= 16'h0;
            reg_stim_ch23_p0_stim23_ia_mux   <= 8'h0;
            reg_stim_ch23_p0_stim23_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH23_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch23_p0_stim23_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch23_p0_stim23_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch23_p0_stim23_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch23_p0_stim23_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim23_interval_o        = reg_stim_ch23_p0_stim23_interval;
    assign stim23_ia_mux_s          = reg_stim_ch23_p0_stim23_ia_mux;
    assign stim23_ic_o              = reg_stim_ch23_p0_stim23_ic;

    assign val_stim_ch23_p0[15: 0] = reg_stim_ch23_p0_stim23_interval;
    assign val_stim_ch23_p0[23:16] = reg_stim_ch23_p0_stim23_ia_mux;
    assign val_stim_ch23_p0[31:24] = reg_stim_ch23_p0_stim23_ic;

    // stim_ch23_pulse_p1 @ 0x17c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch23_pulse_p1_stim23_pulse_wc     <= 14'h0;
            reg_stim_ch23_pulse_p1_stim23_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH23_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch23_pulse_p1_stim23_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch23_pulse_p1_stim23_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch23_pulse_p1_stim23_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch23_pulse_p1_stim23_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim23_pulse_wc_o            = reg_stim_ch23_pulse_p1_stim23_pulse_wc;
    assign stim23_pulse_wa_mux_s        = reg_stim_ch23_pulse_p1_stim23_pulse_wa_mux;

    assign val_stim_ch23_pulse_p1[13: 0] = reg_stim_ch23_pulse_p1_stim23_pulse_wc;
    assign val_stim_ch23_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch23_pulse_p1[29:16] = reg_stim_ch23_pulse_p1_stim23_pulse_wa_mux;
    assign val_stim_ch23_pulse_p1[31:30] = 2'b0;

    // stim_ch23_pulse_p2 @ 0x180
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch23_pulse_p2_stim23_pulse_gap <= 14'h0;
            reg_stim_ch23_pulse_p2_stim23_pulse_num <= 12'h0;
            reg_stim_ch23_pulse_p2_stim23_pol       <= 1'b0;
            reg_stim_ch23_pulse_p2_stim23_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH23_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch23_pulse_p2_stim23_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch23_pulse_p2_stim23_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch23_pulse_p2_stim23_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch23_pulse_p2_stim23_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch23_pulse_p2_stim23_pol              <= apb_wdata_i[   30];
                        reg_stim_ch23_pulse_p2_stim23_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim23_pulse_gap_o        = reg_stim_ch23_pulse_p2_stim23_pulse_gap;
    assign stim23_pulse_num_o        = reg_stim_ch23_pulse_p2_stim23_pulse_num;
    assign stim23_pol_o              = reg_stim_ch23_pulse_p2_stim23_pol;
    assign stim23_range_s            = reg_stim_ch23_pulse_p2_stim23_range;

    assign val_stim_ch23_pulse_p2[13: 0] = reg_stim_ch23_pulse_p2_stim23_pulse_gap;
    assign val_stim_ch23_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch23_pulse_p2[27:16] = reg_stim_ch23_pulse_p2_stim23_pulse_num;
    assign val_stim_ch23_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch23_pulse_p2[   30] = reg_stim_ch23_pulse_p2_stim23_pol;
    assign val_stim_ch23_pulse_p2[   31] = reg_stim_ch23_pulse_p2_stim23_range;

    // stim_ch24_p0 @ 0x184
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch24_p0_stim24_interval <= 16'h0;
            reg_stim_ch24_p0_stim24_ia_mux   <= 8'h0;
            reg_stim_ch24_p0_stim24_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH24_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch24_p0_stim24_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch24_p0_stim24_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch24_p0_stim24_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch24_p0_stim24_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim24_interval_o        = reg_stim_ch24_p0_stim24_interval;
    assign stim24_ia_mux_s          = reg_stim_ch24_p0_stim24_ia_mux;
    assign stim24_ic_o              = reg_stim_ch24_p0_stim24_ic;

    assign val_stim_ch24_p0[15: 0] = reg_stim_ch24_p0_stim24_interval;
    assign val_stim_ch24_p0[23:16] = reg_stim_ch24_p0_stim24_ia_mux;
    assign val_stim_ch24_p0[31:24] = reg_stim_ch24_p0_stim24_ic;

    // stim_ch24_pulse_p1 @ 0x188
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch24_pulse_p1_stim24_pulse_wc     <= 14'h0;
            reg_stim_ch24_pulse_p1_stim24_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH24_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch24_pulse_p1_stim24_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch24_pulse_p1_stim24_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch24_pulse_p1_stim24_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch24_pulse_p1_stim24_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim24_pulse_wc_o            = reg_stim_ch24_pulse_p1_stim24_pulse_wc;
    assign stim24_pulse_wa_mux_s        = reg_stim_ch24_pulse_p1_stim24_pulse_wa_mux;

    assign val_stim_ch24_pulse_p1[13: 0] = reg_stim_ch24_pulse_p1_stim24_pulse_wc;
    assign val_stim_ch24_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch24_pulse_p1[29:16] = reg_stim_ch24_pulse_p1_stim24_pulse_wa_mux;
    assign val_stim_ch24_pulse_p1[31:30] = 2'b0;

    // stim_ch24_pulse_p2 @ 0x18c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch24_pulse_p2_stim24_pulse_gap <= 14'h0;
            reg_stim_ch24_pulse_p2_stim24_pulse_num <= 12'h0;
            reg_stim_ch24_pulse_p2_stim24_pol       <= 1'b0;
            reg_stim_ch24_pulse_p2_stim24_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH24_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch24_pulse_p2_stim24_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch24_pulse_p2_stim24_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch24_pulse_p2_stim24_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch24_pulse_p2_stim24_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch24_pulse_p2_stim24_pol              <= apb_wdata_i[   30];
                        reg_stim_ch24_pulse_p2_stim24_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim24_pulse_gap_o        = reg_stim_ch24_pulse_p2_stim24_pulse_gap;
    assign stim24_pulse_num_o        = reg_stim_ch24_pulse_p2_stim24_pulse_num;
    assign stim24_pol_o              = reg_stim_ch24_pulse_p2_stim24_pol;
    assign stim24_range_s            = reg_stim_ch24_pulse_p2_stim24_range;

    assign val_stim_ch24_pulse_p2[13: 0] = reg_stim_ch24_pulse_p2_stim24_pulse_gap;
    assign val_stim_ch24_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch24_pulse_p2[27:16] = reg_stim_ch24_pulse_p2_stim24_pulse_num;
    assign val_stim_ch24_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch24_pulse_p2[   30] = reg_stim_ch24_pulse_p2_stim24_pol;
    assign val_stim_ch24_pulse_p2[   31] = reg_stim_ch24_pulse_p2_stim24_range;

    // stim_ch25_p0 @ 0x190
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch25_p0_stim25_interval <= 16'h0;
            reg_stim_ch25_p0_stim25_ia_mux   <= 8'h0;
            reg_stim_ch25_p0_stim25_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH25_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch25_p0_stim25_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch25_p0_stim25_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch25_p0_stim25_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch25_p0_stim25_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim25_interval_o        = reg_stim_ch25_p0_stim25_interval;
    assign stim25_ia_mux_s          = reg_stim_ch25_p0_stim25_ia_mux;
    assign stim25_ic_o              = reg_stim_ch25_p0_stim25_ic;

    assign val_stim_ch25_p0[15: 0] = reg_stim_ch25_p0_stim25_interval;
    assign val_stim_ch25_p0[23:16] = reg_stim_ch25_p0_stim25_ia_mux;
    assign val_stim_ch25_p0[31:24] = reg_stim_ch25_p0_stim25_ic;

    // stim_ch25_pulse_p1 @ 0x194
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch25_pulse_p1_stim25_pulse_wc     <= 14'h0;
            reg_stim_ch25_pulse_p1_stim25_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH25_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch25_pulse_p1_stim25_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch25_pulse_p1_stim25_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch25_pulse_p1_stim25_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch25_pulse_p1_stim25_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim25_pulse_wc_o            = reg_stim_ch25_pulse_p1_stim25_pulse_wc;
    assign stim25_pulse_wa_mux_s        = reg_stim_ch25_pulse_p1_stim25_pulse_wa_mux;

    assign val_stim_ch25_pulse_p1[13: 0] = reg_stim_ch25_pulse_p1_stim25_pulse_wc;
    assign val_stim_ch25_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch25_pulse_p1[29:16] = reg_stim_ch25_pulse_p1_stim25_pulse_wa_mux;
    assign val_stim_ch25_pulse_p1[31:30] = 2'b0;

    // stim_ch25_pulse_p2 @ 0x198
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch25_pulse_p2_stim25_pulse_gap <= 14'h0;
            reg_stim_ch25_pulse_p2_stim25_pulse_num <= 12'h0;
            reg_stim_ch25_pulse_p2_stim25_pol       <= 1'b0;
            reg_stim_ch25_pulse_p2_stim25_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH25_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch25_pulse_p2_stim25_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch25_pulse_p2_stim25_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch25_pulse_p2_stim25_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch25_pulse_p2_stim25_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch25_pulse_p2_stim25_pol              <= apb_wdata_i[   30];
                        reg_stim_ch25_pulse_p2_stim25_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim25_pulse_gap_o        = reg_stim_ch25_pulse_p2_stim25_pulse_gap;
    assign stim25_pulse_num_o        = reg_stim_ch25_pulse_p2_stim25_pulse_num;
    assign stim25_pol_o              = reg_stim_ch25_pulse_p2_stim25_pol;
    assign stim25_range_s            = reg_stim_ch25_pulse_p2_stim25_range;

    assign val_stim_ch25_pulse_p2[13: 0] = reg_stim_ch25_pulse_p2_stim25_pulse_gap;
    assign val_stim_ch25_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch25_pulse_p2[27:16] = reg_stim_ch25_pulse_p2_stim25_pulse_num;
    assign val_stim_ch25_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch25_pulse_p2[   30] = reg_stim_ch25_pulse_p2_stim25_pol;
    assign val_stim_ch25_pulse_p2[   31] = reg_stim_ch25_pulse_p2_stim25_range;

    // stim_ch26_p0 @ 0x19c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch26_p0_stim26_interval <= 16'h0;
            reg_stim_ch26_p0_stim26_ia_mux   <= 8'h0;
            reg_stim_ch26_p0_stim26_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH26_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch26_p0_stim26_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch26_p0_stim26_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch26_p0_stim26_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch26_p0_stim26_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim26_interval_o        = reg_stim_ch26_p0_stim26_interval;
    assign stim26_ia_mux_s          = reg_stim_ch26_p0_stim26_ia_mux;
    assign stim26_ic_o              = reg_stim_ch26_p0_stim26_ic;

    assign val_stim_ch26_p0[15: 0] = reg_stim_ch26_p0_stim26_interval;
    assign val_stim_ch26_p0[23:16] = reg_stim_ch26_p0_stim26_ia_mux;
    assign val_stim_ch26_p0[31:24] = reg_stim_ch26_p0_stim26_ic;

    // stim_ch26_pulse_p1 @ 0x1a0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch26_pulse_p1_stim26_pulse_wc     <= 14'h0;
            reg_stim_ch26_pulse_p1_stim26_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH26_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch26_pulse_p1_stim26_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch26_pulse_p1_stim26_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch26_pulse_p1_stim26_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch26_pulse_p1_stim26_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim26_pulse_wc_o            = reg_stim_ch26_pulse_p1_stim26_pulse_wc;
    assign stim26_pulse_wa_mux_s        = reg_stim_ch26_pulse_p1_stim26_pulse_wa_mux;

    assign val_stim_ch26_pulse_p1[13: 0] = reg_stim_ch26_pulse_p1_stim26_pulse_wc;
    assign val_stim_ch26_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch26_pulse_p1[29:16] = reg_stim_ch26_pulse_p1_stim26_pulse_wa_mux;
    assign val_stim_ch26_pulse_p1[31:30] = 2'b0;

    // stim_ch26_pulse_p2 @ 0x1a4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch26_pulse_p2_stim26_pulse_gap <= 14'h0;
            reg_stim_ch26_pulse_p2_stim26_pulse_num <= 12'h0;
            reg_stim_ch26_pulse_p2_stim26_pol       <= 1'b0;
            reg_stim_ch26_pulse_p2_stim26_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH26_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch26_pulse_p2_stim26_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch26_pulse_p2_stim26_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch26_pulse_p2_stim26_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch26_pulse_p2_stim26_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch26_pulse_p2_stim26_pol              <= apb_wdata_i[   30];
                        reg_stim_ch26_pulse_p2_stim26_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim26_pulse_gap_o        = reg_stim_ch26_pulse_p2_stim26_pulse_gap;
    assign stim26_pulse_num_o        = reg_stim_ch26_pulse_p2_stim26_pulse_num;
    assign stim26_pol_o              = reg_stim_ch26_pulse_p2_stim26_pol;
    assign stim26_range_s            = reg_stim_ch26_pulse_p2_stim26_range;

    assign val_stim_ch26_pulse_p2[13: 0] = reg_stim_ch26_pulse_p2_stim26_pulse_gap;
    assign val_stim_ch26_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch26_pulse_p2[27:16] = reg_stim_ch26_pulse_p2_stim26_pulse_num;
    assign val_stim_ch26_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch26_pulse_p2[   30] = reg_stim_ch26_pulse_p2_stim26_pol;
    assign val_stim_ch26_pulse_p2[   31] = reg_stim_ch26_pulse_p2_stim26_range;

    // stim_ch27_p0 @ 0x1a8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch27_p0_stim27_interval <= 16'h0;
            reg_stim_ch27_p0_stim27_ia_mux   <= 8'h0;
            reg_stim_ch27_p0_stim27_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH27_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch27_p0_stim27_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch27_p0_stim27_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch27_p0_stim27_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch27_p0_stim27_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim27_interval_o        = reg_stim_ch27_p0_stim27_interval;
    assign stim27_ia_mux_s          = reg_stim_ch27_p0_stim27_ia_mux;
    assign stim27_ic_o              = reg_stim_ch27_p0_stim27_ic;

    assign val_stim_ch27_p0[15: 0] = reg_stim_ch27_p0_stim27_interval;
    assign val_stim_ch27_p0[23:16] = reg_stim_ch27_p0_stim27_ia_mux;
    assign val_stim_ch27_p0[31:24] = reg_stim_ch27_p0_stim27_ic;

    // stim_ch27_pulse_p1 @ 0x1ac
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch27_pulse_p1_stim27_pulse_wc     <= 14'h0;
            reg_stim_ch27_pulse_p1_stim27_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH27_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch27_pulse_p1_stim27_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch27_pulse_p1_stim27_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch27_pulse_p1_stim27_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch27_pulse_p1_stim27_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim27_pulse_wc_o            = reg_stim_ch27_pulse_p1_stim27_pulse_wc;
    assign stim27_pulse_wa_mux_s        = reg_stim_ch27_pulse_p1_stim27_pulse_wa_mux;

    assign val_stim_ch27_pulse_p1[13: 0] = reg_stim_ch27_pulse_p1_stim27_pulse_wc;
    assign val_stim_ch27_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch27_pulse_p1[29:16] = reg_stim_ch27_pulse_p1_stim27_pulse_wa_mux;
    assign val_stim_ch27_pulse_p1[31:30] = 2'b0;

    // stim_ch27_pulse_p2 @ 0x1b0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch27_pulse_p2_stim27_pulse_gap <= 14'h0;
            reg_stim_ch27_pulse_p2_stim27_pulse_num <= 12'h0;
            reg_stim_ch27_pulse_p2_stim27_pol       <= 1'b0;
            reg_stim_ch27_pulse_p2_stim27_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH27_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch27_pulse_p2_stim27_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch27_pulse_p2_stim27_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch27_pulse_p2_stim27_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch27_pulse_p2_stim27_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch27_pulse_p2_stim27_pol              <= apb_wdata_i[   30];
                        reg_stim_ch27_pulse_p2_stim27_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim27_pulse_gap_o        = reg_stim_ch27_pulse_p2_stim27_pulse_gap;
    assign stim27_pulse_num_o        = reg_stim_ch27_pulse_p2_stim27_pulse_num;
    assign stim27_pol_o              = reg_stim_ch27_pulse_p2_stim27_pol;
    assign stim27_range_s            = reg_stim_ch27_pulse_p2_stim27_range;

    assign val_stim_ch27_pulse_p2[13: 0] = reg_stim_ch27_pulse_p2_stim27_pulse_gap;
    assign val_stim_ch27_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch27_pulse_p2[27:16] = reg_stim_ch27_pulse_p2_stim27_pulse_num;
    assign val_stim_ch27_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch27_pulse_p2[   30] = reg_stim_ch27_pulse_p2_stim27_pol;
    assign val_stim_ch27_pulse_p2[   31] = reg_stim_ch27_pulse_p2_stim27_range;

    // stim_ch28_p0 @ 0x1b4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch28_p0_stim28_interval <= 16'h0;
            reg_stim_ch28_p0_stim28_ia_mux   <= 8'h0;
            reg_stim_ch28_p0_stim28_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH28_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch28_p0_stim28_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch28_p0_stim28_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch28_p0_stim28_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch28_p0_stim28_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim28_interval_o        = reg_stim_ch28_p0_stim28_interval;
    assign stim28_ia_mux_s          = reg_stim_ch28_p0_stim28_ia_mux;
    assign stim28_ic_o              = reg_stim_ch28_p0_stim28_ic;

    assign val_stim_ch28_p0[15: 0] = reg_stim_ch28_p0_stim28_interval;
    assign val_stim_ch28_p0[23:16] = reg_stim_ch28_p0_stim28_ia_mux;
    assign val_stim_ch28_p0[31:24] = reg_stim_ch28_p0_stim28_ic;

    // stim_ch28_pulse_p1 @ 0x1b8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch28_pulse_p1_stim28_pulse_wc     <= 14'h0;
            reg_stim_ch28_pulse_p1_stim28_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH28_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch28_pulse_p1_stim28_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch28_pulse_p1_stim28_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch28_pulse_p1_stim28_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch28_pulse_p1_stim28_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim28_pulse_wc_o            = reg_stim_ch28_pulse_p1_stim28_pulse_wc;
    assign stim28_pulse_wa_mux_s        = reg_stim_ch28_pulse_p1_stim28_pulse_wa_mux;

    assign val_stim_ch28_pulse_p1[13: 0] = reg_stim_ch28_pulse_p1_stim28_pulse_wc;
    assign val_stim_ch28_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch28_pulse_p1[29:16] = reg_stim_ch28_pulse_p1_stim28_pulse_wa_mux;
    assign val_stim_ch28_pulse_p1[31:30] = 2'b0;

    // stim_ch28_pulse_p2 @ 0x1bc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch28_pulse_p2_stim28_pulse_gap <= 14'h0;
            reg_stim_ch28_pulse_p2_stim28_pulse_num <= 12'h0;
            reg_stim_ch28_pulse_p2_stim28_pol       <= 1'b0;
            reg_stim_ch28_pulse_p2_stim28_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH28_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch28_pulse_p2_stim28_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch28_pulse_p2_stim28_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch28_pulse_p2_stim28_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch28_pulse_p2_stim28_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch28_pulse_p2_stim28_pol              <= apb_wdata_i[   30];
                        reg_stim_ch28_pulse_p2_stim28_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim28_pulse_gap_o        = reg_stim_ch28_pulse_p2_stim28_pulse_gap;
    assign stim28_pulse_num_o        = reg_stim_ch28_pulse_p2_stim28_pulse_num;
    assign stim28_pol_o              = reg_stim_ch28_pulse_p2_stim28_pol;
    assign stim28_range_s            = reg_stim_ch28_pulse_p2_stim28_range;

    assign val_stim_ch28_pulse_p2[13: 0] = reg_stim_ch28_pulse_p2_stim28_pulse_gap;
    assign val_stim_ch28_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch28_pulse_p2[27:16] = reg_stim_ch28_pulse_p2_stim28_pulse_num;
    assign val_stim_ch28_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch28_pulse_p2[   30] = reg_stim_ch28_pulse_p2_stim28_pol;
    assign val_stim_ch28_pulse_p2[   31] = reg_stim_ch28_pulse_p2_stim28_range;

    // stim_ch29_p0 @ 0x1c0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch29_p0_stim29_interval <= 16'h0;
            reg_stim_ch29_p0_stim29_ia_mux   <= 8'h0;
            reg_stim_ch29_p0_stim29_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH29_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch29_p0_stim29_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch29_p0_stim29_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch29_p0_stim29_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch29_p0_stim29_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim29_interval_o        = reg_stim_ch29_p0_stim29_interval;
    assign stim29_ia_mux_s          = reg_stim_ch29_p0_stim29_ia_mux;
    assign stim29_ic_o              = reg_stim_ch29_p0_stim29_ic;

    assign val_stim_ch29_p0[15: 0] = reg_stim_ch29_p0_stim29_interval;
    assign val_stim_ch29_p0[23:16] = reg_stim_ch29_p0_stim29_ia_mux;
    assign val_stim_ch29_p0[31:24] = reg_stim_ch29_p0_stim29_ic;

    // stim_ch29_pulse_p1 @ 0x1c4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch29_pulse_p1_stim29_pulse_wc     <= 14'h0;
            reg_stim_ch29_pulse_p1_stim29_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH29_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch29_pulse_p1_stim29_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch29_pulse_p1_stim29_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch29_pulse_p1_stim29_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch29_pulse_p1_stim29_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim29_pulse_wc_o            = reg_stim_ch29_pulse_p1_stim29_pulse_wc;
    assign stim29_pulse_wa_mux_s        = reg_stim_ch29_pulse_p1_stim29_pulse_wa_mux;

    assign val_stim_ch29_pulse_p1[13: 0] = reg_stim_ch29_pulse_p1_stim29_pulse_wc;
    assign val_stim_ch29_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch29_pulse_p1[29:16] = reg_stim_ch29_pulse_p1_stim29_pulse_wa_mux;
    assign val_stim_ch29_pulse_p1[31:30] = 2'b0;

    // stim_ch29_pulse_p2 @ 0x1c8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch29_pulse_p2_stim29_pulse_gap <= 14'h0;
            reg_stim_ch29_pulse_p2_stim29_pulse_num <= 12'h0;
            reg_stim_ch29_pulse_p2_stim29_pol       <= 1'b0;
            reg_stim_ch29_pulse_p2_stim29_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH29_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch29_pulse_p2_stim29_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch29_pulse_p2_stim29_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch29_pulse_p2_stim29_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch29_pulse_p2_stim29_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch29_pulse_p2_stim29_pol              <= apb_wdata_i[   30];
                        reg_stim_ch29_pulse_p2_stim29_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim29_pulse_gap_o        = reg_stim_ch29_pulse_p2_stim29_pulse_gap;
    assign stim29_pulse_num_o        = reg_stim_ch29_pulse_p2_stim29_pulse_num;
    assign stim29_pol_o              = reg_stim_ch29_pulse_p2_stim29_pol;
    assign stim29_range_s            = reg_stim_ch29_pulse_p2_stim29_range;

    assign val_stim_ch29_pulse_p2[13: 0] = reg_stim_ch29_pulse_p2_stim29_pulse_gap;
    assign val_stim_ch29_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch29_pulse_p2[27:16] = reg_stim_ch29_pulse_p2_stim29_pulse_num;
    assign val_stim_ch29_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch29_pulse_p2[   30] = reg_stim_ch29_pulse_p2_stim29_pol;
    assign val_stim_ch29_pulse_p2[   31] = reg_stim_ch29_pulse_p2_stim29_range;

    // stim_ch30_p0 @ 0x1cc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch30_p0_stim30_interval <= 16'h0;
            reg_stim_ch30_p0_stim30_ia_mux   <= 8'h0;
            reg_stim_ch30_p0_stim30_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH30_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch30_p0_stim30_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch30_p0_stim30_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch30_p0_stim30_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch30_p0_stim30_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim30_interval_o        = reg_stim_ch30_p0_stim30_interval;
    assign stim30_ia_mux_s          = reg_stim_ch30_p0_stim30_ia_mux;
    assign stim30_ic_o              = reg_stim_ch30_p0_stim30_ic;

    assign val_stim_ch30_p0[15: 0] = reg_stim_ch30_p0_stim30_interval;
    assign val_stim_ch30_p0[23:16] = reg_stim_ch30_p0_stim30_ia_mux;
    assign val_stim_ch30_p0[31:24] = reg_stim_ch30_p0_stim30_ic;

    // stim_ch30_pulse_p1 @ 0x1d0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch30_pulse_p1_stim30_pulse_wc     <= 14'h0;
            reg_stim_ch30_pulse_p1_stim30_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH30_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch30_pulse_p1_stim30_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch30_pulse_p1_stim30_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch30_pulse_p1_stim30_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch30_pulse_p1_stim30_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim30_pulse_wc_o            = reg_stim_ch30_pulse_p1_stim30_pulse_wc;
    assign stim30_pulse_wa_mux_s        = reg_stim_ch30_pulse_p1_stim30_pulse_wa_mux;

    assign val_stim_ch30_pulse_p1[13: 0] = reg_stim_ch30_pulse_p1_stim30_pulse_wc;
    assign val_stim_ch30_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch30_pulse_p1[29:16] = reg_stim_ch30_pulse_p1_stim30_pulse_wa_mux;
    assign val_stim_ch30_pulse_p1[31:30] = 2'b0;

    // stim_ch30_pulse_p2 @ 0x1d4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch30_pulse_p2_stim30_pulse_gap <= 14'h0;
            reg_stim_ch30_pulse_p2_stim30_pulse_num <= 12'h0;
            reg_stim_ch30_pulse_p2_stim30_pol       <= 1'b0;
            reg_stim_ch30_pulse_p2_stim30_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH30_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch30_pulse_p2_stim30_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch30_pulse_p2_stim30_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch30_pulse_p2_stim30_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch30_pulse_p2_stim30_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch30_pulse_p2_stim30_pol              <= apb_wdata_i[   30];
                        reg_stim_ch30_pulse_p2_stim30_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim30_pulse_gap_o        = reg_stim_ch30_pulse_p2_stim30_pulse_gap;
    assign stim30_pulse_num_o        = reg_stim_ch30_pulse_p2_stim30_pulse_num;
    assign stim30_pol_o              = reg_stim_ch30_pulse_p2_stim30_pol;
    assign stim30_range_s            = reg_stim_ch30_pulse_p2_stim30_range;

    assign val_stim_ch30_pulse_p2[13: 0] = reg_stim_ch30_pulse_p2_stim30_pulse_gap;
    assign val_stim_ch30_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch30_pulse_p2[27:16] = reg_stim_ch30_pulse_p2_stim30_pulse_num;
    assign val_stim_ch30_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch30_pulse_p2[   30] = reg_stim_ch30_pulse_p2_stim30_pol;
    assign val_stim_ch30_pulse_p2[   31] = reg_stim_ch30_pulse_p2_stim30_range;

    // stim_ch31_p0 @ 0x1d8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch31_p0_stim31_interval <= 16'h0;
            reg_stim_ch31_p0_stim31_ia_mux   <= 8'h0;
            reg_stim_ch31_p0_stim31_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH31_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch31_p0_stim31_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch31_p0_stim31_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch31_p0_stim31_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch31_p0_stim31_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim31_interval_o        = reg_stim_ch31_p0_stim31_interval;
    assign stim31_ia_mux_s          = reg_stim_ch31_p0_stim31_ia_mux;
    assign stim31_ic_o              = reg_stim_ch31_p0_stim31_ic;

    assign val_stim_ch31_p0[15: 0] = reg_stim_ch31_p0_stim31_interval;
    assign val_stim_ch31_p0[23:16] = reg_stim_ch31_p0_stim31_ia_mux;
    assign val_stim_ch31_p0[31:24] = reg_stim_ch31_p0_stim31_ic;

    // stim_ch31_pulse_p1 @ 0x1dc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch31_pulse_p1_stim31_pulse_wc     <= 14'h0;
            reg_stim_ch31_pulse_p1_stim31_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH31_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch31_pulse_p1_stim31_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch31_pulse_p1_stim31_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch31_pulse_p1_stim31_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch31_pulse_p1_stim31_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim31_pulse_wc_o            = reg_stim_ch31_pulse_p1_stim31_pulse_wc;
    assign stim31_pulse_wa_mux_s        = reg_stim_ch31_pulse_p1_stim31_pulse_wa_mux;

    assign val_stim_ch31_pulse_p1[13: 0] = reg_stim_ch31_pulse_p1_stim31_pulse_wc;
    assign val_stim_ch31_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch31_pulse_p1[29:16] = reg_stim_ch31_pulse_p1_stim31_pulse_wa_mux;
    assign val_stim_ch31_pulse_p1[31:30] = 2'b0;

    // stim_ch31_pulse_p2 @ 0x1e0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch31_pulse_p2_stim31_pulse_gap <= 14'h0;
            reg_stim_ch31_pulse_p2_stim31_pulse_num <= 12'h0;
            reg_stim_ch31_pulse_p2_stim31_pol       <= 1'b0;
            reg_stim_ch31_pulse_p2_stim31_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH31_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch31_pulse_p2_stim31_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch31_pulse_p2_stim31_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch31_pulse_p2_stim31_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch31_pulse_p2_stim31_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch31_pulse_p2_stim31_pol              <= apb_wdata_i[   30];
                        reg_stim_ch31_pulse_p2_stim31_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim31_pulse_gap_o        = reg_stim_ch31_pulse_p2_stim31_pulse_gap;
    assign stim31_pulse_num_o        = reg_stim_ch31_pulse_p2_stim31_pulse_num;
    assign stim31_pol_o              = reg_stim_ch31_pulse_p2_stim31_pol;
    assign stim31_range_s            = reg_stim_ch31_pulse_p2_stim31_range;

    assign val_stim_ch31_pulse_p2[13: 0] = reg_stim_ch31_pulse_p2_stim31_pulse_gap;
    assign val_stim_ch31_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch31_pulse_p2[27:16] = reg_stim_ch31_pulse_p2_stim31_pulse_num;
    assign val_stim_ch31_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch31_pulse_p2[   30] = reg_stim_ch31_pulse_p2_stim31_pol;
    assign val_stim_ch31_pulse_p2[   31] = reg_stim_ch31_pulse_p2_stim31_range;

    // stim_ch32_p0 @ 0x1e4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch32_p0_stim32_interval <= 16'h0;
            reg_stim_ch32_p0_stim32_ia_mux   <= 8'h0;
            reg_stim_ch32_p0_stim32_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH32_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch32_p0_stim32_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch32_p0_stim32_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch32_p0_stim32_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch32_p0_stim32_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim32_interval_o        = reg_stim_ch32_p0_stim32_interval;
    assign stim32_ia_mux_s          = reg_stim_ch32_p0_stim32_ia_mux;
    assign stim32_ic_o              = reg_stim_ch32_p0_stim32_ic;

    assign val_stim_ch32_p0[15: 0] = reg_stim_ch32_p0_stim32_interval;
    assign val_stim_ch32_p0[23:16] = reg_stim_ch32_p0_stim32_ia_mux;
    assign val_stim_ch32_p0[31:24] = reg_stim_ch32_p0_stim32_ic;

    // stim_ch32_pulse_p1 @ 0x1e8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch32_pulse_p1_stim32_pulse_wc     <= 14'h0;
            reg_stim_ch32_pulse_p1_stim32_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH32_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch32_pulse_p1_stim32_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch32_pulse_p1_stim32_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch32_pulse_p1_stim32_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch32_pulse_p1_stim32_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim32_pulse_wc_o            = reg_stim_ch32_pulse_p1_stim32_pulse_wc;
    assign stim32_pulse_wa_mux_s        = reg_stim_ch32_pulse_p1_stim32_pulse_wa_mux;

    assign val_stim_ch32_pulse_p1[13: 0] = reg_stim_ch32_pulse_p1_stim32_pulse_wc;
    assign val_stim_ch32_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch32_pulse_p1[29:16] = reg_stim_ch32_pulse_p1_stim32_pulse_wa_mux;
    assign val_stim_ch32_pulse_p1[31:30] = 2'b0;

    // stim_ch32_pulse_p2 @ 0x1ec
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch32_pulse_p2_stim32_pulse_gap <= 14'h0;
            reg_stim_ch32_pulse_p2_stim32_pulse_num <= 12'h0;
            reg_stim_ch32_pulse_p2_stim32_pol       <= 1'b0;
            reg_stim_ch32_pulse_p2_stim32_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH32_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch32_pulse_p2_stim32_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch32_pulse_p2_stim32_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch32_pulse_p2_stim32_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch32_pulse_p2_stim32_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch32_pulse_p2_stim32_pol              <= apb_wdata_i[   30];
                        reg_stim_ch32_pulse_p2_stim32_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim32_pulse_gap_o        = reg_stim_ch32_pulse_p2_stim32_pulse_gap;
    assign stim32_pulse_num_o        = reg_stim_ch32_pulse_p2_stim32_pulse_num;
    assign stim32_pol_o              = reg_stim_ch32_pulse_p2_stim32_pol;
    assign stim32_range_s            = reg_stim_ch32_pulse_p2_stim32_range;

    assign val_stim_ch32_pulse_p2[13: 0] = reg_stim_ch32_pulse_p2_stim32_pulse_gap;
    assign val_stim_ch32_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch32_pulse_p2[27:16] = reg_stim_ch32_pulse_p2_stim32_pulse_num;
    assign val_stim_ch32_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch32_pulse_p2[   30] = reg_stim_ch32_pulse_p2_stim32_pol;
    assign val_stim_ch32_pulse_p2[   31] = reg_stim_ch32_pulse_p2_stim32_range;

    // stim_ch33_p0 @ 0x1f0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch33_p0_stim33_interval <= 16'h0;
            reg_stim_ch33_p0_stim33_ia_mux   <= 8'h0;
            reg_stim_ch33_p0_stim33_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH33_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch33_p0_stim33_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch33_p0_stim33_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch33_p0_stim33_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch33_p0_stim33_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim33_interval_o        = reg_stim_ch33_p0_stim33_interval;
    assign stim33_ia_mux_s          = reg_stim_ch33_p0_stim33_ia_mux;
    assign stim33_ic_o              = reg_stim_ch33_p0_stim33_ic;

    assign val_stim_ch33_p0[15: 0] = reg_stim_ch33_p0_stim33_interval;
    assign val_stim_ch33_p0[23:16] = reg_stim_ch33_p0_stim33_ia_mux;
    assign val_stim_ch33_p0[31:24] = reg_stim_ch33_p0_stim33_ic;

    // stim_ch33_pulse_p1 @ 0x1f4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch33_pulse_p1_stim33_pulse_wc     <= 14'h0;
            reg_stim_ch33_pulse_p1_stim33_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH33_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch33_pulse_p1_stim33_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch33_pulse_p1_stim33_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch33_pulse_p1_stim33_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch33_pulse_p1_stim33_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim33_pulse_wc_o            = reg_stim_ch33_pulse_p1_stim33_pulse_wc;
    assign stim33_pulse_wa_mux_s        = reg_stim_ch33_pulse_p1_stim33_pulse_wa_mux;

    assign val_stim_ch33_pulse_p1[13: 0] = reg_stim_ch33_pulse_p1_stim33_pulse_wc;
    assign val_stim_ch33_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch33_pulse_p1[29:16] = reg_stim_ch33_pulse_p1_stim33_pulse_wa_mux;
    assign val_stim_ch33_pulse_p1[31:30] = 2'b0;

    // stim_ch33_pulse_p2 @ 0x1f8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch33_pulse_p2_stim33_pulse_gap <= 14'h0;
            reg_stim_ch33_pulse_p2_stim33_pulse_num <= 12'h0;
            reg_stim_ch33_pulse_p2_stim33_pol       <= 1'b0;
            reg_stim_ch33_pulse_p2_stim33_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH33_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch33_pulse_p2_stim33_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch33_pulse_p2_stim33_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch33_pulse_p2_stim33_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch33_pulse_p2_stim33_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch33_pulse_p2_stim33_pol              <= apb_wdata_i[   30];
                        reg_stim_ch33_pulse_p2_stim33_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim33_pulse_gap_o        = reg_stim_ch33_pulse_p2_stim33_pulse_gap;
    assign stim33_pulse_num_o        = reg_stim_ch33_pulse_p2_stim33_pulse_num;
    assign stim33_pol_o              = reg_stim_ch33_pulse_p2_stim33_pol;
    assign stim33_range_s            = reg_stim_ch33_pulse_p2_stim33_range;

    assign val_stim_ch33_pulse_p2[13: 0] = reg_stim_ch33_pulse_p2_stim33_pulse_gap;
    assign val_stim_ch33_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch33_pulse_p2[27:16] = reg_stim_ch33_pulse_p2_stim33_pulse_num;
    assign val_stim_ch33_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch33_pulse_p2[   30] = reg_stim_ch33_pulse_p2_stim33_pol;
    assign val_stim_ch33_pulse_p2[   31] = reg_stim_ch33_pulse_p2_stim33_range;

    // stim_ch34_p0 @ 0x1fc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch34_p0_stim34_interval <= 16'h0;
            reg_stim_ch34_p0_stim34_ia_mux   <= 8'h0;
            reg_stim_ch34_p0_stim34_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH34_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch34_p0_stim34_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch34_p0_stim34_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch34_p0_stim34_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch34_p0_stim34_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim34_interval_o        = reg_stim_ch34_p0_stim34_interval;
    assign stim34_ia_mux_s          = reg_stim_ch34_p0_stim34_ia_mux;
    assign stim34_ic_o              = reg_stim_ch34_p0_stim34_ic;

    assign val_stim_ch34_p0[15: 0] = reg_stim_ch34_p0_stim34_interval;
    assign val_stim_ch34_p0[23:16] = reg_stim_ch34_p0_stim34_ia_mux;
    assign val_stim_ch34_p0[31:24] = reg_stim_ch34_p0_stim34_ic;

    // stim_ch34_pulse_p1 @ 0x200
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch34_pulse_p1_stim34_pulse_wc     <= 14'h0;
            reg_stim_ch34_pulse_p1_stim34_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH34_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch34_pulse_p1_stim34_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch34_pulse_p1_stim34_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch34_pulse_p1_stim34_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch34_pulse_p1_stim34_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim34_pulse_wc_o            = reg_stim_ch34_pulse_p1_stim34_pulse_wc;
    assign stim34_pulse_wa_mux_s        = reg_stim_ch34_pulse_p1_stim34_pulse_wa_mux;

    assign val_stim_ch34_pulse_p1[13: 0] = reg_stim_ch34_pulse_p1_stim34_pulse_wc;
    assign val_stim_ch34_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch34_pulse_p1[29:16] = reg_stim_ch34_pulse_p1_stim34_pulse_wa_mux;
    assign val_stim_ch34_pulse_p1[31:30] = 2'b0;

    // stim_ch34_pulse_p2 @ 0x204
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch34_pulse_p2_stim34_pulse_gap <= 14'h0;
            reg_stim_ch34_pulse_p2_stim34_pulse_num <= 12'h0;
            reg_stim_ch34_pulse_p2_stim34_pol       <= 1'b0;
            reg_stim_ch34_pulse_p2_stim34_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH34_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch34_pulse_p2_stim34_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch34_pulse_p2_stim34_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch34_pulse_p2_stim34_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch34_pulse_p2_stim34_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch34_pulse_p2_stim34_pol              <= apb_wdata_i[   30];
                        reg_stim_ch34_pulse_p2_stim34_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim34_pulse_gap_o        = reg_stim_ch34_pulse_p2_stim34_pulse_gap;
    assign stim34_pulse_num_o        = reg_stim_ch34_pulse_p2_stim34_pulse_num;
    assign stim34_pol_o              = reg_stim_ch34_pulse_p2_stim34_pol;
    assign stim34_range_s            = reg_stim_ch34_pulse_p2_stim34_range;

    assign val_stim_ch34_pulse_p2[13: 0] = reg_stim_ch34_pulse_p2_stim34_pulse_gap;
    assign val_stim_ch34_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch34_pulse_p2[27:16] = reg_stim_ch34_pulse_p2_stim34_pulse_num;
    assign val_stim_ch34_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch34_pulse_p2[   30] = reg_stim_ch34_pulse_p2_stim34_pol;
    assign val_stim_ch34_pulse_p2[   31] = reg_stim_ch34_pulse_p2_stim34_range;

    // stim_ch35_p0 @ 0x208
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch35_p0_stim35_interval <= 16'h0;
            reg_stim_ch35_p0_stim35_ia_mux   <= 8'h0;
            reg_stim_ch35_p0_stim35_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH35_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch35_p0_stim35_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch35_p0_stim35_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch35_p0_stim35_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch35_p0_stim35_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim35_interval_o        = reg_stim_ch35_p0_stim35_interval;
    assign stim35_ia_mux_s          = reg_stim_ch35_p0_stim35_ia_mux;
    assign stim35_ic_o              = reg_stim_ch35_p0_stim35_ic;

    assign val_stim_ch35_p0[15: 0] = reg_stim_ch35_p0_stim35_interval;
    assign val_stim_ch35_p0[23:16] = reg_stim_ch35_p0_stim35_ia_mux;
    assign val_stim_ch35_p0[31:24] = reg_stim_ch35_p0_stim35_ic;

    // stim_ch35_pulse_p1 @ 0x20c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch35_pulse_p1_stim35_pulse_wc     <= 14'h0;
            reg_stim_ch35_pulse_p1_stim35_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH35_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch35_pulse_p1_stim35_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch35_pulse_p1_stim35_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch35_pulse_p1_stim35_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch35_pulse_p1_stim35_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim35_pulse_wc_o            = reg_stim_ch35_pulse_p1_stim35_pulse_wc;
    assign stim35_pulse_wa_mux_s        = reg_stim_ch35_pulse_p1_stim35_pulse_wa_mux;

    assign val_stim_ch35_pulse_p1[13: 0] = reg_stim_ch35_pulse_p1_stim35_pulse_wc;
    assign val_stim_ch35_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch35_pulse_p1[29:16] = reg_stim_ch35_pulse_p1_stim35_pulse_wa_mux;
    assign val_stim_ch35_pulse_p1[31:30] = 2'b0;

    // stim_ch35_pulse_p2 @ 0x210
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch35_pulse_p2_stim35_pulse_gap <= 14'h0;
            reg_stim_ch35_pulse_p2_stim35_pulse_num <= 12'h0;
            reg_stim_ch35_pulse_p2_stim35_pol       <= 1'b0;
            reg_stim_ch35_pulse_p2_stim35_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH35_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch35_pulse_p2_stim35_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch35_pulse_p2_stim35_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch35_pulse_p2_stim35_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch35_pulse_p2_stim35_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch35_pulse_p2_stim35_pol              <= apb_wdata_i[   30];
                        reg_stim_ch35_pulse_p2_stim35_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim35_pulse_gap_o        = reg_stim_ch35_pulse_p2_stim35_pulse_gap;
    assign stim35_pulse_num_o        = reg_stim_ch35_pulse_p2_stim35_pulse_num;
    assign stim35_pol_o              = reg_stim_ch35_pulse_p2_stim35_pol;
    assign stim35_range_s            = reg_stim_ch35_pulse_p2_stim35_range;

    assign val_stim_ch35_pulse_p2[13: 0] = reg_stim_ch35_pulse_p2_stim35_pulse_gap;
    assign val_stim_ch35_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch35_pulse_p2[27:16] = reg_stim_ch35_pulse_p2_stim35_pulse_num;
    assign val_stim_ch35_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch35_pulse_p2[   30] = reg_stim_ch35_pulse_p2_stim35_pol;
    assign val_stim_ch35_pulse_p2[   31] = reg_stim_ch35_pulse_p2_stim35_range;

    // stim_ch36_p0 @ 0x214
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch36_p0_stim36_interval <= 16'h0;
            reg_stim_ch36_p0_stim36_ia_mux   <= 8'h0;
            reg_stim_ch36_p0_stim36_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH36_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch36_p0_stim36_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch36_p0_stim36_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch36_p0_stim36_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch36_p0_stim36_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim36_interval_o        = reg_stim_ch36_p0_stim36_interval;
    assign stim36_ia_mux_s          = reg_stim_ch36_p0_stim36_ia_mux;
    assign stim36_ic_o              = reg_stim_ch36_p0_stim36_ic;

    assign val_stim_ch36_p0[15: 0] = reg_stim_ch36_p0_stim36_interval;
    assign val_stim_ch36_p0[23:16] = reg_stim_ch36_p0_stim36_ia_mux;
    assign val_stim_ch36_p0[31:24] = reg_stim_ch36_p0_stim36_ic;

    // stim_ch36_pulse_p1 @ 0x218
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch36_pulse_p1_stim36_pulse_wc     <= 14'h0;
            reg_stim_ch36_pulse_p1_stim36_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH36_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch36_pulse_p1_stim36_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch36_pulse_p1_stim36_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch36_pulse_p1_stim36_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch36_pulse_p1_stim36_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim36_pulse_wc_o            = reg_stim_ch36_pulse_p1_stim36_pulse_wc;
    assign stim36_pulse_wa_mux_s        = reg_stim_ch36_pulse_p1_stim36_pulse_wa_mux;

    assign val_stim_ch36_pulse_p1[13: 0] = reg_stim_ch36_pulse_p1_stim36_pulse_wc;
    assign val_stim_ch36_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch36_pulse_p1[29:16] = reg_stim_ch36_pulse_p1_stim36_pulse_wa_mux;
    assign val_stim_ch36_pulse_p1[31:30] = 2'b0;

    // stim_ch36_pulse_p2 @ 0x21c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch36_pulse_p2_stim36_pulse_gap <= 14'h0;
            reg_stim_ch36_pulse_p2_stim36_pulse_num <= 12'h0;
            reg_stim_ch36_pulse_p2_stim36_pol       <= 1'b0;
            reg_stim_ch36_pulse_p2_stim36_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH36_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch36_pulse_p2_stim36_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch36_pulse_p2_stim36_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch36_pulse_p2_stim36_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch36_pulse_p2_stim36_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch36_pulse_p2_stim36_pol              <= apb_wdata_i[   30];
                        reg_stim_ch36_pulse_p2_stim36_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim36_pulse_gap_o        = reg_stim_ch36_pulse_p2_stim36_pulse_gap;
    assign stim36_pulse_num_o        = reg_stim_ch36_pulse_p2_stim36_pulse_num;
    assign stim36_pol_o              = reg_stim_ch36_pulse_p2_stim36_pol;
    assign stim36_range_s            = reg_stim_ch36_pulse_p2_stim36_range;

    assign val_stim_ch36_pulse_p2[13: 0] = reg_stim_ch36_pulse_p2_stim36_pulse_gap;
    assign val_stim_ch36_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch36_pulse_p2[27:16] = reg_stim_ch36_pulse_p2_stim36_pulse_num;
    assign val_stim_ch36_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch36_pulse_p2[   30] = reg_stim_ch36_pulse_p2_stim36_pol;
    assign val_stim_ch36_pulse_p2[   31] = reg_stim_ch36_pulse_p2_stim36_range;

    // stim_ch37_p0 @ 0x220
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch37_p0_stim37_interval <= 16'h0;
            reg_stim_ch37_p0_stim37_ia_mux   <= 8'h0;
            reg_stim_ch37_p0_stim37_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH37_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch37_p0_stim37_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch37_p0_stim37_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch37_p0_stim37_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch37_p0_stim37_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim37_interval_o        = reg_stim_ch37_p0_stim37_interval;
    assign stim37_ia_mux_s          = reg_stim_ch37_p0_stim37_ia_mux;
    assign stim37_ic_o              = reg_stim_ch37_p0_stim37_ic;

    assign val_stim_ch37_p0[15: 0] = reg_stim_ch37_p0_stim37_interval;
    assign val_stim_ch37_p0[23:16] = reg_stim_ch37_p0_stim37_ia_mux;
    assign val_stim_ch37_p0[31:24] = reg_stim_ch37_p0_stim37_ic;

    // stim_ch37_pulse_p1 @ 0x224
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch37_pulse_p1_stim37_pulse_wc     <= 14'h0;
            reg_stim_ch37_pulse_p1_stim37_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH37_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch37_pulse_p1_stim37_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch37_pulse_p1_stim37_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch37_pulse_p1_stim37_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch37_pulse_p1_stim37_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim37_pulse_wc_o            = reg_stim_ch37_pulse_p1_stim37_pulse_wc;
    assign stim37_pulse_wa_mux_s        = reg_stim_ch37_pulse_p1_stim37_pulse_wa_mux;

    assign val_stim_ch37_pulse_p1[13: 0] = reg_stim_ch37_pulse_p1_stim37_pulse_wc;
    assign val_stim_ch37_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch37_pulse_p1[29:16] = reg_stim_ch37_pulse_p1_stim37_pulse_wa_mux;
    assign val_stim_ch37_pulse_p1[31:30] = 2'b0;

    // stim_ch37_pulse_p2 @ 0x228
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch37_pulse_p2_stim37_pulse_gap <= 14'h0;
            reg_stim_ch37_pulse_p2_stim37_pulse_num <= 12'h0;
            reg_stim_ch37_pulse_p2_stim37_pol       <= 1'b0;
            reg_stim_ch37_pulse_p2_stim37_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH37_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch37_pulse_p2_stim37_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch37_pulse_p2_stim37_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch37_pulse_p2_stim37_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch37_pulse_p2_stim37_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch37_pulse_p2_stim37_pol              <= apb_wdata_i[   30];
                        reg_stim_ch37_pulse_p2_stim37_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim37_pulse_gap_o        = reg_stim_ch37_pulse_p2_stim37_pulse_gap;
    assign stim37_pulse_num_o        = reg_stim_ch37_pulse_p2_stim37_pulse_num;
    assign stim37_pol_o              = reg_stim_ch37_pulse_p2_stim37_pol;
    assign stim37_range_s            = reg_stim_ch37_pulse_p2_stim37_range;

    assign val_stim_ch37_pulse_p2[13: 0] = reg_stim_ch37_pulse_p2_stim37_pulse_gap;
    assign val_stim_ch37_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch37_pulse_p2[27:16] = reg_stim_ch37_pulse_p2_stim37_pulse_num;
    assign val_stim_ch37_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch37_pulse_p2[   30] = reg_stim_ch37_pulse_p2_stim37_pol;
    assign val_stim_ch37_pulse_p2[   31] = reg_stim_ch37_pulse_p2_stim37_range;

    // stim_ch38_p0 @ 0x22c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch38_p0_stim38_interval <= 16'h0;
            reg_stim_ch38_p0_stim38_ia_mux   <= 8'h0;
            reg_stim_ch38_p0_stim38_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH38_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch38_p0_stim38_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch38_p0_stim38_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch38_p0_stim38_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch38_p0_stim38_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim38_interval_o        = reg_stim_ch38_p0_stim38_interval;
    assign stim38_ia_mux_s          = reg_stim_ch38_p0_stim38_ia_mux;
    assign stim38_ic_o              = reg_stim_ch38_p0_stim38_ic;

    assign val_stim_ch38_p0[15: 0] = reg_stim_ch38_p0_stim38_interval;
    assign val_stim_ch38_p0[23:16] = reg_stim_ch38_p0_stim38_ia_mux;
    assign val_stim_ch38_p0[31:24] = reg_stim_ch38_p0_stim38_ic;

    // stim_ch38_pulse_p1 @ 0x230
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch38_pulse_p1_stim38_pulse_wc     <= 14'h0;
            reg_stim_ch38_pulse_p1_stim38_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH38_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch38_pulse_p1_stim38_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch38_pulse_p1_stim38_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch38_pulse_p1_stim38_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch38_pulse_p1_stim38_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim38_pulse_wc_o            = reg_stim_ch38_pulse_p1_stim38_pulse_wc;
    assign stim38_pulse_wa_mux_s        = reg_stim_ch38_pulse_p1_stim38_pulse_wa_mux;

    assign val_stim_ch38_pulse_p1[13: 0] = reg_stim_ch38_pulse_p1_stim38_pulse_wc;
    assign val_stim_ch38_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch38_pulse_p1[29:16] = reg_stim_ch38_pulse_p1_stim38_pulse_wa_mux;
    assign val_stim_ch38_pulse_p1[31:30] = 2'b0;

    // stim_ch38_pulse_p2 @ 0x234
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch38_pulse_p2_stim38_pulse_gap <= 14'h0;
            reg_stim_ch38_pulse_p2_stim38_pulse_num <= 12'h0;
            reg_stim_ch38_pulse_p2_stim38_pol       <= 1'b0;
            reg_stim_ch38_pulse_p2_stim38_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH38_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch38_pulse_p2_stim38_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch38_pulse_p2_stim38_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch38_pulse_p2_stim38_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch38_pulse_p2_stim38_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch38_pulse_p2_stim38_pol              <= apb_wdata_i[   30];
                        reg_stim_ch38_pulse_p2_stim38_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim38_pulse_gap_o        = reg_stim_ch38_pulse_p2_stim38_pulse_gap;
    assign stim38_pulse_num_o        = reg_stim_ch38_pulse_p2_stim38_pulse_num;
    assign stim38_pol_o              = reg_stim_ch38_pulse_p2_stim38_pol;
    assign stim38_range_s            = reg_stim_ch38_pulse_p2_stim38_range;

    assign val_stim_ch38_pulse_p2[13: 0] = reg_stim_ch38_pulse_p2_stim38_pulse_gap;
    assign val_stim_ch38_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch38_pulse_p2[27:16] = reg_stim_ch38_pulse_p2_stim38_pulse_num;
    assign val_stim_ch38_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch38_pulse_p2[   30] = reg_stim_ch38_pulse_p2_stim38_pol;
    assign val_stim_ch38_pulse_p2[   31] = reg_stim_ch38_pulse_p2_stim38_range;

    // stim_ch39_p0 @ 0x238
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch39_p0_stim39_interval <= 16'h0;
            reg_stim_ch39_p0_stim39_ia_mux   <= 8'h0;
            reg_stim_ch39_p0_stim39_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH39_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch39_p0_stim39_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch39_p0_stim39_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch39_p0_stim39_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch39_p0_stim39_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim39_interval_o        = reg_stim_ch39_p0_stim39_interval;
    assign stim39_ia_mux_s          = reg_stim_ch39_p0_stim39_ia_mux;
    assign stim39_ic_o              = reg_stim_ch39_p0_stim39_ic;

    assign val_stim_ch39_p0[15: 0] = reg_stim_ch39_p0_stim39_interval;
    assign val_stim_ch39_p0[23:16] = reg_stim_ch39_p0_stim39_ia_mux;
    assign val_stim_ch39_p0[31:24] = reg_stim_ch39_p0_stim39_ic;

    // stim_ch39_pulse_p1 @ 0x23c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch39_pulse_p1_stim39_pulse_wc     <= 14'h0;
            reg_stim_ch39_pulse_p1_stim39_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH39_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch39_pulse_p1_stim39_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch39_pulse_p1_stim39_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch39_pulse_p1_stim39_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch39_pulse_p1_stim39_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim39_pulse_wc_o            = reg_stim_ch39_pulse_p1_stim39_pulse_wc;
    assign stim39_pulse_wa_mux_s        = reg_stim_ch39_pulse_p1_stim39_pulse_wa_mux;

    assign val_stim_ch39_pulse_p1[13: 0] = reg_stim_ch39_pulse_p1_stim39_pulse_wc;
    assign val_stim_ch39_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch39_pulse_p1[29:16] = reg_stim_ch39_pulse_p1_stim39_pulse_wa_mux;
    assign val_stim_ch39_pulse_p1[31:30] = 2'b0;

    // stim_ch39_pulse_p2 @ 0x240
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch39_pulse_p2_stim39_pulse_gap <= 14'h0;
            reg_stim_ch39_pulse_p2_stim39_pulse_num <= 12'h0;
            reg_stim_ch39_pulse_p2_stim39_pol       <= 1'b0;
            reg_stim_ch39_pulse_p2_stim39_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH39_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch39_pulse_p2_stim39_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch39_pulse_p2_stim39_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch39_pulse_p2_stim39_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch39_pulse_p2_stim39_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch39_pulse_p2_stim39_pol              <= apb_wdata_i[   30];
                        reg_stim_ch39_pulse_p2_stim39_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim39_pulse_gap_o        = reg_stim_ch39_pulse_p2_stim39_pulse_gap;
    assign stim39_pulse_num_o        = reg_stim_ch39_pulse_p2_stim39_pulse_num;
    assign stim39_pol_o              = reg_stim_ch39_pulse_p2_stim39_pol;
    assign stim39_range_s            = reg_stim_ch39_pulse_p2_stim39_range;

    assign val_stim_ch39_pulse_p2[13: 0] = reg_stim_ch39_pulse_p2_stim39_pulse_gap;
    assign val_stim_ch39_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch39_pulse_p2[27:16] = reg_stim_ch39_pulse_p2_stim39_pulse_num;
    assign val_stim_ch39_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch39_pulse_p2[   30] = reg_stim_ch39_pulse_p2_stim39_pol;
    assign val_stim_ch39_pulse_p2[   31] = reg_stim_ch39_pulse_p2_stim39_range;

    // stim_ch40_p0 @ 0x244
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch40_p0_stim40_interval <= 16'h0;
            reg_stim_ch40_p0_stim40_ia_mux   <= 8'h0;
            reg_stim_ch40_p0_stim40_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH40_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch40_p0_stim40_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch40_p0_stim40_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch40_p0_stim40_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch40_p0_stim40_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim40_interval_o        = reg_stim_ch40_p0_stim40_interval;
    assign stim40_ia_mux_s          = reg_stim_ch40_p0_stim40_ia_mux;
    assign stim40_ic_o              = reg_stim_ch40_p0_stim40_ic;

    assign val_stim_ch40_p0[15: 0] = reg_stim_ch40_p0_stim40_interval;
    assign val_stim_ch40_p0[23:16] = reg_stim_ch40_p0_stim40_ia_mux;
    assign val_stim_ch40_p0[31:24] = reg_stim_ch40_p0_stim40_ic;

    // stim_ch40_pulse_p1 @ 0x248
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch40_pulse_p1_stim40_pulse_wc     <= 14'h0;
            reg_stim_ch40_pulse_p1_stim40_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH40_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch40_pulse_p1_stim40_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch40_pulse_p1_stim40_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch40_pulse_p1_stim40_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch40_pulse_p1_stim40_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim40_pulse_wc_o            = reg_stim_ch40_pulse_p1_stim40_pulse_wc;
    assign stim40_pulse_wa_mux_s        = reg_stim_ch40_pulse_p1_stim40_pulse_wa_mux;

    assign val_stim_ch40_pulse_p1[13: 0] = reg_stim_ch40_pulse_p1_stim40_pulse_wc;
    assign val_stim_ch40_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch40_pulse_p1[29:16] = reg_stim_ch40_pulse_p1_stim40_pulse_wa_mux;
    assign val_stim_ch40_pulse_p1[31:30] = 2'b0;

    // stim_ch40_pulse_p2 @ 0x24c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch40_pulse_p2_stim40_pulse_gap <= 14'h0;
            reg_stim_ch40_pulse_p2_stim40_pulse_num <= 12'h0;
            reg_stim_ch40_pulse_p2_stim40_pol       <= 1'b0;
            reg_stim_ch40_pulse_p2_stim40_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH40_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch40_pulse_p2_stim40_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch40_pulse_p2_stim40_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch40_pulse_p2_stim40_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch40_pulse_p2_stim40_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch40_pulse_p2_stim40_pol              <= apb_wdata_i[   30];
                        reg_stim_ch40_pulse_p2_stim40_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim40_pulse_gap_o        = reg_stim_ch40_pulse_p2_stim40_pulse_gap;
    assign stim40_pulse_num_o        = reg_stim_ch40_pulse_p2_stim40_pulse_num;
    assign stim40_pol_o              = reg_stim_ch40_pulse_p2_stim40_pol;
    assign stim40_range_s            = reg_stim_ch40_pulse_p2_stim40_range;

    assign val_stim_ch40_pulse_p2[13: 0] = reg_stim_ch40_pulse_p2_stim40_pulse_gap;
    assign val_stim_ch40_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch40_pulse_p2[27:16] = reg_stim_ch40_pulse_p2_stim40_pulse_num;
    assign val_stim_ch40_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch40_pulse_p2[   30] = reg_stim_ch40_pulse_p2_stim40_pol;
    assign val_stim_ch40_pulse_p2[   31] = reg_stim_ch40_pulse_p2_stim40_range;

    // stim_ch41_p0 @ 0x250
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch41_p0_stim41_interval <= 16'h0;
            reg_stim_ch41_p0_stim41_ia_mux   <= 8'h0;
            reg_stim_ch41_p0_stim41_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH41_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch41_p0_stim41_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch41_p0_stim41_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch41_p0_stim41_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch41_p0_stim41_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim41_interval_o        = reg_stim_ch41_p0_stim41_interval;
    assign stim41_ia_mux_s          = reg_stim_ch41_p0_stim41_ia_mux;
    assign stim41_ic_o              = reg_stim_ch41_p0_stim41_ic;

    assign val_stim_ch41_p0[15: 0] = reg_stim_ch41_p0_stim41_interval;
    assign val_stim_ch41_p0[23:16] = reg_stim_ch41_p0_stim41_ia_mux;
    assign val_stim_ch41_p0[31:24] = reg_stim_ch41_p0_stim41_ic;

    // stim_ch41_pulse_p1 @ 0x254
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch41_pulse_p1_stim41_pulse_wc     <= 14'h0;
            reg_stim_ch41_pulse_p1_stim41_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH41_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch41_pulse_p1_stim41_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch41_pulse_p1_stim41_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch41_pulse_p1_stim41_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch41_pulse_p1_stim41_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim41_pulse_wc_o            = reg_stim_ch41_pulse_p1_stim41_pulse_wc;
    assign stim41_pulse_wa_mux_s        = reg_stim_ch41_pulse_p1_stim41_pulse_wa_mux;

    assign val_stim_ch41_pulse_p1[13: 0] = reg_stim_ch41_pulse_p1_stim41_pulse_wc;
    assign val_stim_ch41_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch41_pulse_p1[29:16] = reg_stim_ch41_pulse_p1_stim41_pulse_wa_mux;
    assign val_stim_ch41_pulse_p1[31:30] = 2'b0;

    // stim_ch41_pulse_p2 @ 0x258
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch41_pulse_p2_stim41_pulse_gap <= 14'h0;
            reg_stim_ch41_pulse_p2_stim41_pulse_num <= 12'h0;
            reg_stim_ch41_pulse_p2_stim41_pol       <= 1'b0;
            reg_stim_ch41_pulse_p2_stim41_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH41_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch41_pulse_p2_stim41_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch41_pulse_p2_stim41_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch41_pulse_p2_stim41_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch41_pulse_p2_stim41_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch41_pulse_p2_stim41_pol              <= apb_wdata_i[   30];
                        reg_stim_ch41_pulse_p2_stim41_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim41_pulse_gap_o        = reg_stim_ch41_pulse_p2_stim41_pulse_gap;
    assign stim41_pulse_num_o        = reg_stim_ch41_pulse_p2_stim41_pulse_num;
    assign stim41_pol_o              = reg_stim_ch41_pulse_p2_stim41_pol;
    assign stim41_range_s            = reg_stim_ch41_pulse_p2_stim41_range;

    assign val_stim_ch41_pulse_p2[13: 0] = reg_stim_ch41_pulse_p2_stim41_pulse_gap;
    assign val_stim_ch41_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch41_pulse_p2[27:16] = reg_stim_ch41_pulse_p2_stim41_pulse_num;
    assign val_stim_ch41_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch41_pulse_p2[   30] = reg_stim_ch41_pulse_p2_stim41_pol;
    assign val_stim_ch41_pulse_p2[   31] = reg_stim_ch41_pulse_p2_stim41_range;

    // stim_ch42_p0 @ 0x25c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch42_p0_stim42_interval <= 16'h0;
            reg_stim_ch42_p0_stim42_ia_mux   <= 8'h0;
            reg_stim_ch42_p0_stim42_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH42_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch42_p0_stim42_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch42_p0_stim42_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch42_p0_stim42_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch42_p0_stim42_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim42_interval_o        = reg_stim_ch42_p0_stim42_interval;
    assign stim42_ia_mux_s          = reg_stim_ch42_p0_stim42_ia_mux;
    assign stim42_ic_o              = reg_stim_ch42_p0_stim42_ic;

    assign val_stim_ch42_p0[15: 0] = reg_stim_ch42_p0_stim42_interval;
    assign val_stim_ch42_p0[23:16] = reg_stim_ch42_p0_stim42_ia_mux;
    assign val_stim_ch42_p0[31:24] = reg_stim_ch42_p0_stim42_ic;

    // stim_ch42_pulse_p1 @ 0x260
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch42_pulse_p1_stim42_pulse_wc     <= 14'h0;
            reg_stim_ch42_pulse_p1_stim42_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH42_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch42_pulse_p1_stim42_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch42_pulse_p1_stim42_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch42_pulse_p1_stim42_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch42_pulse_p1_stim42_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim42_pulse_wc_o            = reg_stim_ch42_pulse_p1_stim42_pulse_wc;
    assign stim42_pulse_wa_mux_s        = reg_stim_ch42_pulse_p1_stim42_pulse_wa_mux;

    assign val_stim_ch42_pulse_p1[13: 0] = reg_stim_ch42_pulse_p1_stim42_pulse_wc;
    assign val_stim_ch42_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch42_pulse_p1[29:16] = reg_stim_ch42_pulse_p1_stim42_pulse_wa_mux;
    assign val_stim_ch42_pulse_p1[31:30] = 2'b0;

    // stim_ch42_pulse_p2 @ 0x264
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch42_pulse_p2_stim42_pulse_gap <= 14'h0;
            reg_stim_ch42_pulse_p2_stim42_pulse_num <= 12'h0;
            reg_stim_ch42_pulse_p2_stim42_pol       <= 1'b0;
            reg_stim_ch42_pulse_p2_stim42_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH42_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch42_pulse_p2_stim42_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch42_pulse_p2_stim42_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch42_pulse_p2_stim42_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch42_pulse_p2_stim42_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch42_pulse_p2_stim42_pol              <= apb_wdata_i[   30];
                        reg_stim_ch42_pulse_p2_stim42_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim42_pulse_gap_o        = reg_stim_ch42_pulse_p2_stim42_pulse_gap;
    assign stim42_pulse_num_o        = reg_stim_ch42_pulse_p2_stim42_pulse_num;
    assign stim42_pol_o              = reg_stim_ch42_pulse_p2_stim42_pol;
    assign stim42_range_s            = reg_stim_ch42_pulse_p2_stim42_range;

    assign val_stim_ch42_pulse_p2[13: 0] = reg_stim_ch42_pulse_p2_stim42_pulse_gap;
    assign val_stim_ch42_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch42_pulse_p2[27:16] = reg_stim_ch42_pulse_p2_stim42_pulse_num;
    assign val_stim_ch42_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch42_pulse_p2[   30] = reg_stim_ch42_pulse_p2_stim42_pol;
    assign val_stim_ch42_pulse_p2[   31] = reg_stim_ch42_pulse_p2_stim42_range;

    // stim_ch43_p0 @ 0x268
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch43_p0_stim43_interval <= 16'h0;
            reg_stim_ch43_p0_stim43_ia_mux   <= 8'h0;
            reg_stim_ch43_p0_stim43_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH43_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch43_p0_stim43_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch43_p0_stim43_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch43_p0_stim43_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch43_p0_stim43_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim43_interval_o        = reg_stim_ch43_p0_stim43_interval;
    assign stim43_ia_mux_s          = reg_stim_ch43_p0_stim43_ia_mux;
    assign stim43_ic_o              = reg_stim_ch43_p0_stim43_ic;

    assign val_stim_ch43_p0[15: 0] = reg_stim_ch43_p0_stim43_interval;
    assign val_stim_ch43_p0[23:16] = reg_stim_ch43_p0_stim43_ia_mux;
    assign val_stim_ch43_p0[31:24] = reg_stim_ch43_p0_stim43_ic;

    // stim_ch43_pulse_p1 @ 0x26c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch43_pulse_p1_stim43_pulse_wc     <= 14'h0;
            reg_stim_ch43_pulse_p1_stim43_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH43_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch43_pulse_p1_stim43_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch43_pulse_p1_stim43_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch43_pulse_p1_stim43_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch43_pulse_p1_stim43_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim43_pulse_wc_o            = reg_stim_ch43_pulse_p1_stim43_pulse_wc;
    assign stim43_pulse_wa_mux_s        = reg_stim_ch43_pulse_p1_stim43_pulse_wa_mux;

    assign val_stim_ch43_pulse_p1[13: 0] = reg_stim_ch43_pulse_p1_stim43_pulse_wc;
    assign val_stim_ch43_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch43_pulse_p1[29:16] = reg_stim_ch43_pulse_p1_stim43_pulse_wa_mux;
    assign val_stim_ch43_pulse_p1[31:30] = 2'b0;

    // stim_ch43_pulse_p2 @ 0x270
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch43_pulse_p2_stim43_pulse_gap <= 14'h0;
            reg_stim_ch43_pulse_p2_stim43_pulse_num <= 12'h0;
            reg_stim_ch43_pulse_p2_stim43_pol       <= 1'b0;
            reg_stim_ch43_pulse_p2_stim43_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH43_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch43_pulse_p2_stim43_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch43_pulse_p2_stim43_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch43_pulse_p2_stim43_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch43_pulse_p2_stim43_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch43_pulse_p2_stim43_pol              <= apb_wdata_i[   30];
                        reg_stim_ch43_pulse_p2_stim43_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim43_pulse_gap_o        = reg_stim_ch43_pulse_p2_stim43_pulse_gap;
    assign stim43_pulse_num_o        = reg_stim_ch43_pulse_p2_stim43_pulse_num;
    assign stim43_pol_o              = reg_stim_ch43_pulse_p2_stim43_pol;
    assign stim43_range_s            = reg_stim_ch43_pulse_p2_stim43_range;

    assign val_stim_ch43_pulse_p2[13: 0] = reg_stim_ch43_pulse_p2_stim43_pulse_gap;
    assign val_stim_ch43_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch43_pulse_p2[27:16] = reg_stim_ch43_pulse_p2_stim43_pulse_num;
    assign val_stim_ch43_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch43_pulse_p2[   30] = reg_stim_ch43_pulse_p2_stim43_pol;
    assign val_stim_ch43_pulse_p2[   31] = reg_stim_ch43_pulse_p2_stim43_range;

    // stim_ch44_p0 @ 0x274
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch44_p0_stim44_interval <= 16'h0;
            reg_stim_ch44_p0_stim44_ia_mux   <= 8'h0;
            reg_stim_ch44_p0_stim44_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH44_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch44_p0_stim44_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch44_p0_stim44_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch44_p0_stim44_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch44_p0_stim44_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim44_interval_o        = reg_stim_ch44_p0_stim44_interval;
    assign stim44_ia_mux_s          = reg_stim_ch44_p0_stim44_ia_mux;
    assign stim44_ic_o              = reg_stim_ch44_p0_stim44_ic;

    assign val_stim_ch44_p0[15: 0] = reg_stim_ch44_p0_stim44_interval;
    assign val_stim_ch44_p0[23:16] = reg_stim_ch44_p0_stim44_ia_mux;
    assign val_stim_ch44_p0[31:24] = reg_stim_ch44_p0_stim44_ic;

    // stim_ch44_pulse_p1 @ 0x278
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch44_pulse_p1_stim44_pulse_wc     <= 14'h0;
            reg_stim_ch44_pulse_p1_stim44_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH44_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch44_pulse_p1_stim44_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch44_pulse_p1_stim44_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch44_pulse_p1_stim44_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch44_pulse_p1_stim44_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim44_pulse_wc_o            = reg_stim_ch44_pulse_p1_stim44_pulse_wc;
    assign stim44_pulse_wa_mux_s        = reg_stim_ch44_pulse_p1_stim44_pulse_wa_mux;

    assign val_stim_ch44_pulse_p1[13: 0] = reg_stim_ch44_pulse_p1_stim44_pulse_wc;
    assign val_stim_ch44_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch44_pulse_p1[29:16] = reg_stim_ch44_pulse_p1_stim44_pulse_wa_mux;
    assign val_stim_ch44_pulse_p1[31:30] = 2'b0;

    // stim_ch44_pulse_p2 @ 0x27c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch44_pulse_p2_stim44_pulse_gap <= 14'h0;
            reg_stim_ch44_pulse_p2_stim44_pulse_num <= 12'h0;
            reg_stim_ch44_pulse_p2_stim44_pol       <= 1'b0;
            reg_stim_ch44_pulse_p2_stim44_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH44_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch44_pulse_p2_stim44_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch44_pulse_p2_stim44_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch44_pulse_p2_stim44_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch44_pulse_p2_stim44_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch44_pulse_p2_stim44_pol              <= apb_wdata_i[   30];
                        reg_stim_ch44_pulse_p2_stim44_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim44_pulse_gap_o        = reg_stim_ch44_pulse_p2_stim44_pulse_gap;
    assign stim44_pulse_num_o        = reg_stim_ch44_pulse_p2_stim44_pulse_num;
    assign stim44_pol_o              = reg_stim_ch44_pulse_p2_stim44_pol;
    assign stim44_range_s            = reg_stim_ch44_pulse_p2_stim44_range;

    assign val_stim_ch44_pulse_p2[13: 0] = reg_stim_ch44_pulse_p2_stim44_pulse_gap;
    assign val_stim_ch44_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch44_pulse_p2[27:16] = reg_stim_ch44_pulse_p2_stim44_pulse_num;
    assign val_stim_ch44_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch44_pulse_p2[   30] = reg_stim_ch44_pulse_p2_stim44_pol;
    assign val_stim_ch44_pulse_p2[   31] = reg_stim_ch44_pulse_p2_stim44_range;

    // stim_ch45_p0 @ 0x280
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch45_p0_stim45_interval <= 16'h0;
            reg_stim_ch45_p0_stim45_ia_mux   <= 8'h0;
            reg_stim_ch45_p0_stim45_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH45_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch45_p0_stim45_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch45_p0_stim45_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch45_p0_stim45_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch45_p0_stim45_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim45_interval_o        = reg_stim_ch45_p0_stim45_interval;
    assign stim45_ia_mux_s          = reg_stim_ch45_p0_stim45_ia_mux;
    assign stim45_ic_o              = reg_stim_ch45_p0_stim45_ic;

    assign val_stim_ch45_p0[15: 0] = reg_stim_ch45_p0_stim45_interval;
    assign val_stim_ch45_p0[23:16] = reg_stim_ch45_p0_stim45_ia_mux;
    assign val_stim_ch45_p0[31:24] = reg_stim_ch45_p0_stim45_ic;

    // stim_ch45_pulse_p1 @ 0x284
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch45_pulse_p1_stim45_pulse_wc     <= 14'h0;
            reg_stim_ch45_pulse_p1_stim45_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH45_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch45_pulse_p1_stim45_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch45_pulse_p1_stim45_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch45_pulse_p1_stim45_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch45_pulse_p1_stim45_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim45_pulse_wc_o            = reg_stim_ch45_pulse_p1_stim45_pulse_wc;
    assign stim45_pulse_wa_mux_s        = reg_stim_ch45_pulse_p1_stim45_pulse_wa_mux;

    assign val_stim_ch45_pulse_p1[13: 0] = reg_stim_ch45_pulse_p1_stim45_pulse_wc;
    assign val_stim_ch45_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch45_pulse_p1[29:16] = reg_stim_ch45_pulse_p1_stim45_pulse_wa_mux;
    assign val_stim_ch45_pulse_p1[31:30] = 2'b0;

    // stim_ch45_pulse_p2 @ 0x288
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch45_pulse_p2_stim45_pulse_gap <= 14'h0;
            reg_stim_ch45_pulse_p2_stim45_pulse_num <= 12'h0;
            reg_stim_ch45_pulse_p2_stim45_pol       <= 1'b0;
            reg_stim_ch45_pulse_p2_stim45_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH45_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch45_pulse_p2_stim45_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch45_pulse_p2_stim45_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch45_pulse_p2_stim45_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch45_pulse_p2_stim45_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch45_pulse_p2_stim45_pol              <= apb_wdata_i[   30];
                        reg_stim_ch45_pulse_p2_stim45_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim45_pulse_gap_o        = reg_stim_ch45_pulse_p2_stim45_pulse_gap;
    assign stim45_pulse_num_o        = reg_stim_ch45_pulse_p2_stim45_pulse_num;
    assign stim45_pol_o              = reg_stim_ch45_pulse_p2_stim45_pol;
    assign stim45_range_s            = reg_stim_ch45_pulse_p2_stim45_range;

    assign val_stim_ch45_pulse_p2[13: 0] = reg_stim_ch45_pulse_p2_stim45_pulse_gap;
    assign val_stim_ch45_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch45_pulse_p2[27:16] = reg_stim_ch45_pulse_p2_stim45_pulse_num;
    assign val_stim_ch45_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch45_pulse_p2[   30] = reg_stim_ch45_pulse_p2_stim45_pol;
    assign val_stim_ch45_pulse_p2[   31] = reg_stim_ch45_pulse_p2_stim45_range;

    // stim_ch46_p0 @ 0x28c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch46_p0_stim46_interval <= 16'h0;
            reg_stim_ch46_p0_stim46_ia_mux   <= 8'h0;
            reg_stim_ch46_p0_stim46_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH46_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch46_p0_stim46_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch46_p0_stim46_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch46_p0_stim46_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch46_p0_stim46_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim46_interval_o        = reg_stim_ch46_p0_stim46_interval;
    assign stim46_ia_mux_s          = reg_stim_ch46_p0_stim46_ia_mux;
    assign stim46_ic_o              = reg_stim_ch46_p0_stim46_ic;

    assign val_stim_ch46_p0[15: 0] = reg_stim_ch46_p0_stim46_interval;
    assign val_stim_ch46_p0[23:16] = reg_stim_ch46_p0_stim46_ia_mux;
    assign val_stim_ch46_p0[31:24] = reg_stim_ch46_p0_stim46_ic;

    // stim_ch46_pulse_p1 @ 0x290
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch46_pulse_p1_stim46_pulse_wc     <= 14'h0;
            reg_stim_ch46_pulse_p1_stim46_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH46_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch46_pulse_p1_stim46_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch46_pulse_p1_stim46_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch46_pulse_p1_stim46_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch46_pulse_p1_stim46_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim46_pulse_wc_o            = reg_stim_ch46_pulse_p1_stim46_pulse_wc;
    assign stim46_pulse_wa_mux_s        = reg_stim_ch46_pulse_p1_stim46_pulse_wa_mux;

    assign val_stim_ch46_pulse_p1[13: 0] = reg_stim_ch46_pulse_p1_stim46_pulse_wc;
    assign val_stim_ch46_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch46_pulse_p1[29:16] = reg_stim_ch46_pulse_p1_stim46_pulse_wa_mux;
    assign val_stim_ch46_pulse_p1[31:30] = 2'b0;

    // stim_ch46_pulse_p2 @ 0x294
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch46_pulse_p2_stim46_pulse_gap <= 14'h0;
            reg_stim_ch46_pulse_p2_stim46_pulse_num <= 12'h0;
            reg_stim_ch46_pulse_p2_stim46_pol       <= 1'b0;
            reg_stim_ch46_pulse_p2_stim46_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH46_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch46_pulse_p2_stim46_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch46_pulse_p2_stim46_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch46_pulse_p2_stim46_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch46_pulse_p2_stim46_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch46_pulse_p2_stim46_pol              <= apb_wdata_i[   30];
                        reg_stim_ch46_pulse_p2_stim46_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim46_pulse_gap_o        = reg_stim_ch46_pulse_p2_stim46_pulse_gap;
    assign stim46_pulse_num_o        = reg_stim_ch46_pulse_p2_stim46_pulse_num;
    assign stim46_pol_o              = reg_stim_ch46_pulse_p2_stim46_pol;
    assign stim46_range_s            = reg_stim_ch46_pulse_p2_stim46_range;

    assign val_stim_ch46_pulse_p2[13: 0] = reg_stim_ch46_pulse_p2_stim46_pulse_gap;
    assign val_stim_ch46_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch46_pulse_p2[27:16] = reg_stim_ch46_pulse_p2_stim46_pulse_num;
    assign val_stim_ch46_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch46_pulse_p2[   30] = reg_stim_ch46_pulse_p2_stim46_pol;
    assign val_stim_ch46_pulse_p2[   31] = reg_stim_ch46_pulse_p2_stim46_range;

    // stim_ch47_p0 @ 0x298
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch47_p0_stim47_interval <= 16'h0;
            reg_stim_ch47_p0_stim47_ia_mux   <= 8'h0;
            reg_stim_ch47_p0_stim47_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH47_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch47_p0_stim47_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch47_p0_stim47_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch47_p0_stim47_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch47_p0_stim47_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim47_interval_o        = reg_stim_ch47_p0_stim47_interval;
    assign stim47_ia_mux_s          = reg_stim_ch47_p0_stim47_ia_mux;
    assign stim47_ic_o              = reg_stim_ch47_p0_stim47_ic;

    assign val_stim_ch47_p0[15: 0] = reg_stim_ch47_p0_stim47_interval;
    assign val_stim_ch47_p0[23:16] = reg_stim_ch47_p0_stim47_ia_mux;
    assign val_stim_ch47_p0[31:24] = reg_stim_ch47_p0_stim47_ic;

    // stim_ch47_pulse_p1 @ 0x29c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch47_pulse_p1_stim47_pulse_wc     <= 14'h0;
            reg_stim_ch47_pulse_p1_stim47_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH47_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch47_pulse_p1_stim47_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch47_pulse_p1_stim47_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch47_pulse_p1_stim47_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch47_pulse_p1_stim47_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim47_pulse_wc_o            = reg_stim_ch47_pulse_p1_stim47_pulse_wc;
    assign stim47_pulse_wa_mux_s        = reg_stim_ch47_pulse_p1_stim47_pulse_wa_mux;

    assign val_stim_ch47_pulse_p1[13: 0] = reg_stim_ch47_pulse_p1_stim47_pulse_wc;
    assign val_stim_ch47_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch47_pulse_p1[29:16] = reg_stim_ch47_pulse_p1_stim47_pulse_wa_mux;
    assign val_stim_ch47_pulse_p1[31:30] = 2'b0;

    // stim_ch47_pulse_p2 @ 0x2a0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch47_pulse_p2_stim47_pulse_gap <= 14'h0;
            reg_stim_ch47_pulse_p2_stim47_pulse_num <= 12'h0;
            reg_stim_ch47_pulse_p2_stim47_pol       <= 1'b0;
            reg_stim_ch47_pulse_p2_stim47_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH47_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch47_pulse_p2_stim47_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch47_pulse_p2_stim47_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch47_pulse_p2_stim47_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch47_pulse_p2_stim47_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch47_pulse_p2_stim47_pol              <= apb_wdata_i[   30];
                        reg_stim_ch47_pulse_p2_stim47_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim47_pulse_gap_o        = reg_stim_ch47_pulse_p2_stim47_pulse_gap;
    assign stim47_pulse_num_o        = reg_stim_ch47_pulse_p2_stim47_pulse_num;
    assign stim47_pol_o              = reg_stim_ch47_pulse_p2_stim47_pol;
    assign stim47_range_s            = reg_stim_ch47_pulse_p2_stim47_range;

    assign val_stim_ch47_pulse_p2[13: 0] = reg_stim_ch47_pulse_p2_stim47_pulse_gap;
    assign val_stim_ch47_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch47_pulse_p2[27:16] = reg_stim_ch47_pulse_p2_stim47_pulse_num;
    assign val_stim_ch47_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch47_pulse_p2[   30] = reg_stim_ch47_pulse_p2_stim47_pol;
    assign val_stim_ch47_pulse_p2[   31] = reg_stim_ch47_pulse_p2_stim47_range;

    // stim_ch48_p0 @ 0x2a4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch48_p0_stim48_interval <= 16'h0;
            reg_stim_ch48_p0_stim48_ia_mux   <= 8'h0;
            reg_stim_ch48_p0_stim48_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH48_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch48_p0_stim48_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch48_p0_stim48_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch48_p0_stim48_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch48_p0_stim48_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim48_interval_o        = reg_stim_ch48_p0_stim48_interval;
    assign stim48_ia_mux_s          = reg_stim_ch48_p0_stim48_ia_mux;
    assign stim48_ic_o              = reg_stim_ch48_p0_stim48_ic;

    assign val_stim_ch48_p0[15: 0] = reg_stim_ch48_p0_stim48_interval;
    assign val_stim_ch48_p0[23:16] = reg_stim_ch48_p0_stim48_ia_mux;
    assign val_stim_ch48_p0[31:24] = reg_stim_ch48_p0_stim48_ic;

    // stim_ch48_pulse_p1 @ 0x2a8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch48_pulse_p1_stim48_pulse_wc     <= 14'h0;
            reg_stim_ch48_pulse_p1_stim48_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH48_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch48_pulse_p1_stim48_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch48_pulse_p1_stim48_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch48_pulse_p1_stim48_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch48_pulse_p1_stim48_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim48_pulse_wc_o            = reg_stim_ch48_pulse_p1_stim48_pulse_wc;
    assign stim48_pulse_wa_mux_s        = reg_stim_ch48_pulse_p1_stim48_pulse_wa_mux;

    assign val_stim_ch48_pulse_p1[13: 0] = reg_stim_ch48_pulse_p1_stim48_pulse_wc;
    assign val_stim_ch48_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch48_pulse_p1[29:16] = reg_stim_ch48_pulse_p1_stim48_pulse_wa_mux;
    assign val_stim_ch48_pulse_p1[31:30] = 2'b0;

    // stim_ch48_pulse_p2 @ 0x2ac
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch48_pulse_p2_stim48_pulse_gap <= 14'h0;
            reg_stim_ch48_pulse_p2_stim48_pulse_num <= 12'h0;
            reg_stim_ch48_pulse_p2_stim48_pol       <= 1'b0;
            reg_stim_ch48_pulse_p2_stim48_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH48_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch48_pulse_p2_stim48_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch48_pulse_p2_stim48_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch48_pulse_p2_stim48_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch48_pulse_p2_stim48_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch48_pulse_p2_stim48_pol              <= apb_wdata_i[   30];
                        reg_stim_ch48_pulse_p2_stim48_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim48_pulse_gap_o        = reg_stim_ch48_pulse_p2_stim48_pulse_gap;
    assign stim48_pulse_num_o        = reg_stim_ch48_pulse_p2_stim48_pulse_num;
    assign stim48_pol_o              = reg_stim_ch48_pulse_p2_stim48_pol;
    assign stim48_range_s            = reg_stim_ch48_pulse_p2_stim48_range;

    assign val_stim_ch48_pulse_p2[13: 0] = reg_stim_ch48_pulse_p2_stim48_pulse_gap;
    assign val_stim_ch48_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch48_pulse_p2[27:16] = reg_stim_ch48_pulse_p2_stim48_pulse_num;
    assign val_stim_ch48_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch48_pulse_p2[   30] = reg_stim_ch48_pulse_p2_stim48_pol;
    assign val_stim_ch48_pulse_p2[   31] = reg_stim_ch48_pulse_p2_stim48_range;

    // stim_ch49_p0 @ 0x2b0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch49_p0_stim49_interval <= 16'h0;
            reg_stim_ch49_p0_stim49_ia_mux   <= 8'h0;
            reg_stim_ch49_p0_stim49_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH49_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch49_p0_stim49_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch49_p0_stim49_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch49_p0_stim49_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch49_p0_stim49_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim49_interval_o        = reg_stim_ch49_p0_stim49_interval;
    assign stim49_ia_mux_s          = reg_stim_ch49_p0_stim49_ia_mux;
    assign stim49_ic_o              = reg_stim_ch49_p0_stim49_ic;

    assign val_stim_ch49_p0[15: 0] = reg_stim_ch49_p0_stim49_interval;
    assign val_stim_ch49_p0[23:16] = reg_stim_ch49_p0_stim49_ia_mux;
    assign val_stim_ch49_p0[31:24] = reg_stim_ch49_p0_stim49_ic;

    // stim_ch49_pulse_p1 @ 0x2b4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch49_pulse_p1_stim49_pulse_wc     <= 14'h0;
            reg_stim_ch49_pulse_p1_stim49_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH49_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch49_pulse_p1_stim49_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch49_pulse_p1_stim49_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch49_pulse_p1_stim49_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch49_pulse_p1_stim49_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim49_pulse_wc_o            = reg_stim_ch49_pulse_p1_stim49_pulse_wc;
    assign stim49_pulse_wa_mux_s        = reg_stim_ch49_pulse_p1_stim49_pulse_wa_mux;

    assign val_stim_ch49_pulse_p1[13: 0] = reg_stim_ch49_pulse_p1_stim49_pulse_wc;
    assign val_stim_ch49_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch49_pulse_p1[29:16] = reg_stim_ch49_pulse_p1_stim49_pulse_wa_mux;
    assign val_stim_ch49_pulse_p1[31:30] = 2'b0;

    // stim_ch49_pulse_p2 @ 0x2b8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch49_pulse_p2_stim49_pulse_gap <= 14'h0;
            reg_stim_ch49_pulse_p2_stim49_pulse_num <= 12'h0;
            reg_stim_ch49_pulse_p2_stim49_pol       <= 1'b0;
            reg_stim_ch49_pulse_p2_stim49_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH49_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch49_pulse_p2_stim49_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch49_pulse_p2_stim49_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch49_pulse_p2_stim49_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch49_pulse_p2_stim49_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch49_pulse_p2_stim49_pol              <= apb_wdata_i[   30];
                        reg_stim_ch49_pulse_p2_stim49_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim49_pulse_gap_o        = reg_stim_ch49_pulse_p2_stim49_pulse_gap;
    assign stim49_pulse_num_o        = reg_stim_ch49_pulse_p2_stim49_pulse_num;
    assign stim49_pol_o              = reg_stim_ch49_pulse_p2_stim49_pol;
    assign stim49_range_s            = reg_stim_ch49_pulse_p2_stim49_range;

    assign val_stim_ch49_pulse_p2[13: 0] = reg_stim_ch49_pulse_p2_stim49_pulse_gap;
    assign val_stim_ch49_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch49_pulse_p2[27:16] = reg_stim_ch49_pulse_p2_stim49_pulse_num;
    assign val_stim_ch49_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch49_pulse_p2[   30] = reg_stim_ch49_pulse_p2_stim49_pol;
    assign val_stim_ch49_pulse_p2[   31] = reg_stim_ch49_pulse_p2_stim49_range;

    // stim_ch50_p0 @ 0x2bc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch50_p0_stim50_interval <= 16'h0;
            reg_stim_ch50_p0_stim50_ia_mux   <= 8'h0;
            reg_stim_ch50_p0_stim50_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH50_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch50_p0_stim50_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch50_p0_stim50_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch50_p0_stim50_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch50_p0_stim50_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim50_interval_o        = reg_stim_ch50_p0_stim50_interval;
    assign stim50_ia_mux_s          = reg_stim_ch50_p0_stim50_ia_mux;
    assign stim50_ic_o              = reg_stim_ch50_p0_stim50_ic;

    assign val_stim_ch50_p0[15: 0] = reg_stim_ch50_p0_stim50_interval;
    assign val_stim_ch50_p0[23:16] = reg_stim_ch50_p0_stim50_ia_mux;
    assign val_stim_ch50_p0[31:24] = reg_stim_ch50_p0_stim50_ic;

    // stim_ch50_pulse_p1 @ 0x2c0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch50_pulse_p1_stim50_pulse_wc     <= 14'h0;
            reg_stim_ch50_pulse_p1_stim50_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH50_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch50_pulse_p1_stim50_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch50_pulse_p1_stim50_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch50_pulse_p1_stim50_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch50_pulse_p1_stim50_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim50_pulse_wc_o            = reg_stim_ch50_pulse_p1_stim50_pulse_wc;
    assign stim50_pulse_wa_mux_s        = reg_stim_ch50_pulse_p1_stim50_pulse_wa_mux;

    assign val_stim_ch50_pulse_p1[13: 0] = reg_stim_ch50_pulse_p1_stim50_pulse_wc;
    assign val_stim_ch50_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch50_pulse_p1[29:16] = reg_stim_ch50_pulse_p1_stim50_pulse_wa_mux;
    assign val_stim_ch50_pulse_p1[31:30] = 2'b0;

    // stim_ch50_pulse_p2 @ 0x2c4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch50_pulse_p2_stim50_pulse_gap <= 14'h0;
            reg_stim_ch50_pulse_p2_stim50_pulse_num <= 12'h0;
            reg_stim_ch50_pulse_p2_stim50_pol       <= 1'b0;
            reg_stim_ch50_pulse_p2_stim50_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH50_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch50_pulse_p2_stim50_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch50_pulse_p2_stim50_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch50_pulse_p2_stim50_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch50_pulse_p2_stim50_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch50_pulse_p2_stim50_pol              <= apb_wdata_i[   30];
                        reg_stim_ch50_pulse_p2_stim50_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim50_pulse_gap_o        = reg_stim_ch50_pulse_p2_stim50_pulse_gap;
    assign stim50_pulse_num_o        = reg_stim_ch50_pulse_p2_stim50_pulse_num;
    assign stim50_pol_o              = reg_stim_ch50_pulse_p2_stim50_pol;
    assign stim50_range_s            = reg_stim_ch50_pulse_p2_stim50_range;

    assign val_stim_ch50_pulse_p2[13: 0] = reg_stim_ch50_pulse_p2_stim50_pulse_gap;
    assign val_stim_ch50_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch50_pulse_p2[27:16] = reg_stim_ch50_pulse_p2_stim50_pulse_num;
    assign val_stim_ch50_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch50_pulse_p2[   30] = reg_stim_ch50_pulse_p2_stim50_pol;
    assign val_stim_ch50_pulse_p2[   31] = reg_stim_ch50_pulse_p2_stim50_range;

    // stim_ch51_p0 @ 0x2c8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch51_p0_stim51_interval <= 16'h0;
            reg_stim_ch51_p0_stim51_ia_mux   <= 8'h0;
            reg_stim_ch51_p0_stim51_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH51_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch51_p0_stim51_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch51_p0_stim51_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch51_p0_stim51_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch51_p0_stim51_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim51_interval_o        = reg_stim_ch51_p0_stim51_interval;
    assign stim51_ia_mux_s          = reg_stim_ch51_p0_stim51_ia_mux;
    assign stim51_ic_o              = reg_stim_ch51_p0_stim51_ic;

    assign val_stim_ch51_p0[15: 0] = reg_stim_ch51_p0_stim51_interval;
    assign val_stim_ch51_p0[23:16] = reg_stim_ch51_p0_stim51_ia_mux;
    assign val_stim_ch51_p0[31:24] = reg_stim_ch51_p0_stim51_ic;

    // stim_ch51_pulse_p1 @ 0x2cc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch51_pulse_p1_stim51_pulse_wc     <= 14'h0;
            reg_stim_ch51_pulse_p1_stim51_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH51_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch51_pulse_p1_stim51_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch51_pulse_p1_stim51_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch51_pulse_p1_stim51_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch51_pulse_p1_stim51_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim51_pulse_wc_o            = reg_stim_ch51_pulse_p1_stim51_pulse_wc;
    assign stim51_pulse_wa_mux_s        = reg_stim_ch51_pulse_p1_stim51_pulse_wa_mux;

    assign val_stim_ch51_pulse_p1[13: 0] = reg_stim_ch51_pulse_p1_stim51_pulse_wc;
    assign val_stim_ch51_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch51_pulse_p1[29:16] = reg_stim_ch51_pulse_p1_stim51_pulse_wa_mux;
    assign val_stim_ch51_pulse_p1[31:30] = 2'b0;

    // stim_ch51_pulse_p2 @ 0x2d0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch51_pulse_p2_stim51_pulse_gap <= 14'h0;
            reg_stim_ch51_pulse_p2_stim51_pulse_num <= 12'h0;
            reg_stim_ch51_pulse_p2_stim51_pol       <= 1'b0;
            reg_stim_ch51_pulse_p2_stim51_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH51_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch51_pulse_p2_stim51_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch51_pulse_p2_stim51_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch51_pulse_p2_stim51_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch51_pulse_p2_stim51_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch51_pulse_p2_stim51_pol              <= apb_wdata_i[   30];
                        reg_stim_ch51_pulse_p2_stim51_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim51_pulse_gap_o        = reg_stim_ch51_pulse_p2_stim51_pulse_gap;
    assign stim51_pulse_num_o        = reg_stim_ch51_pulse_p2_stim51_pulse_num;
    assign stim51_pol_o              = reg_stim_ch51_pulse_p2_stim51_pol;
    assign stim51_range_s            = reg_stim_ch51_pulse_p2_stim51_range;

    assign val_stim_ch51_pulse_p2[13: 0] = reg_stim_ch51_pulse_p2_stim51_pulse_gap;
    assign val_stim_ch51_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch51_pulse_p2[27:16] = reg_stim_ch51_pulse_p2_stim51_pulse_num;
    assign val_stim_ch51_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch51_pulse_p2[   30] = reg_stim_ch51_pulse_p2_stim51_pol;
    assign val_stim_ch51_pulse_p2[   31] = reg_stim_ch51_pulse_p2_stim51_range;

    // stim_ch52_p0 @ 0x2d4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch52_p0_stim52_interval <= 16'h0;
            reg_stim_ch52_p0_stim52_ia_mux   <= 8'h0;
            reg_stim_ch52_p0_stim52_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH52_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch52_p0_stim52_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch52_p0_stim52_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch52_p0_stim52_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch52_p0_stim52_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim52_interval_o        = reg_stim_ch52_p0_stim52_interval;
    assign stim52_ia_mux_s          = reg_stim_ch52_p0_stim52_ia_mux;
    assign stim52_ic_o              = reg_stim_ch52_p0_stim52_ic;

    assign val_stim_ch52_p0[15: 0] = reg_stim_ch52_p0_stim52_interval;
    assign val_stim_ch52_p0[23:16] = reg_stim_ch52_p0_stim52_ia_mux;
    assign val_stim_ch52_p0[31:24] = reg_stim_ch52_p0_stim52_ic;

    // stim_ch52_pulse_p1 @ 0x2d8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch52_pulse_p1_stim52_pulse_wc     <= 14'h0;
            reg_stim_ch52_pulse_p1_stim52_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH52_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch52_pulse_p1_stim52_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch52_pulse_p1_stim52_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch52_pulse_p1_stim52_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch52_pulse_p1_stim52_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim52_pulse_wc_o            = reg_stim_ch52_pulse_p1_stim52_pulse_wc;
    assign stim52_pulse_wa_mux_s        = reg_stim_ch52_pulse_p1_stim52_pulse_wa_mux;

    assign val_stim_ch52_pulse_p1[13: 0] = reg_stim_ch52_pulse_p1_stim52_pulse_wc;
    assign val_stim_ch52_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch52_pulse_p1[29:16] = reg_stim_ch52_pulse_p1_stim52_pulse_wa_mux;
    assign val_stim_ch52_pulse_p1[31:30] = 2'b0;

    // stim_ch52_pulse_p2 @ 0x2dc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch52_pulse_p2_stim52_pulse_gap <= 14'h0;
            reg_stim_ch52_pulse_p2_stim52_pulse_num <= 12'h0;
            reg_stim_ch52_pulse_p2_stim52_pol       <= 1'b0;
            reg_stim_ch52_pulse_p2_stim52_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH52_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch52_pulse_p2_stim52_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch52_pulse_p2_stim52_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch52_pulse_p2_stim52_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch52_pulse_p2_stim52_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch52_pulse_p2_stim52_pol              <= apb_wdata_i[   30];
                        reg_stim_ch52_pulse_p2_stim52_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim52_pulse_gap_o        = reg_stim_ch52_pulse_p2_stim52_pulse_gap;
    assign stim52_pulse_num_o        = reg_stim_ch52_pulse_p2_stim52_pulse_num;
    assign stim52_pol_o              = reg_stim_ch52_pulse_p2_stim52_pol;
    assign stim52_range_s            = reg_stim_ch52_pulse_p2_stim52_range;

    assign val_stim_ch52_pulse_p2[13: 0] = reg_stim_ch52_pulse_p2_stim52_pulse_gap;
    assign val_stim_ch52_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch52_pulse_p2[27:16] = reg_stim_ch52_pulse_p2_stim52_pulse_num;
    assign val_stim_ch52_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch52_pulse_p2[   30] = reg_stim_ch52_pulse_p2_stim52_pol;
    assign val_stim_ch52_pulse_p2[   31] = reg_stim_ch52_pulse_p2_stim52_range;

    // stim_ch53_p0 @ 0x2e0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch53_p0_stim53_interval <= 16'h0;
            reg_stim_ch53_p0_stim53_ia_mux   <= 8'h0;
            reg_stim_ch53_p0_stim53_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH53_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch53_p0_stim53_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch53_p0_stim53_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch53_p0_stim53_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch53_p0_stim53_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim53_interval_o        = reg_stim_ch53_p0_stim53_interval;
    assign stim53_ia_mux_s          = reg_stim_ch53_p0_stim53_ia_mux;
    assign stim53_ic_o              = reg_stim_ch53_p0_stim53_ic;

    assign val_stim_ch53_p0[15: 0] = reg_stim_ch53_p0_stim53_interval;
    assign val_stim_ch53_p0[23:16] = reg_stim_ch53_p0_stim53_ia_mux;
    assign val_stim_ch53_p0[31:24] = reg_stim_ch53_p0_stim53_ic;

    // stim_ch53_pulse_p1 @ 0x2e4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch53_pulse_p1_stim53_pulse_wc     <= 14'h0;
            reg_stim_ch53_pulse_p1_stim53_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH53_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch53_pulse_p1_stim53_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch53_pulse_p1_stim53_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch53_pulse_p1_stim53_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch53_pulse_p1_stim53_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim53_pulse_wc_o            = reg_stim_ch53_pulse_p1_stim53_pulse_wc;
    assign stim53_pulse_wa_mux_s        = reg_stim_ch53_pulse_p1_stim53_pulse_wa_mux;

    assign val_stim_ch53_pulse_p1[13: 0] = reg_stim_ch53_pulse_p1_stim53_pulse_wc;
    assign val_stim_ch53_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch53_pulse_p1[29:16] = reg_stim_ch53_pulse_p1_stim53_pulse_wa_mux;
    assign val_stim_ch53_pulse_p1[31:30] = 2'b0;

    // stim_ch53_pulse_p2 @ 0x2e8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch53_pulse_p2_stim53_pulse_gap <= 14'h0;
            reg_stim_ch53_pulse_p2_stim53_pulse_num <= 12'h0;
            reg_stim_ch53_pulse_p2_stim53_pol       <= 1'b0;
            reg_stim_ch53_pulse_p2_stim53_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH53_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch53_pulse_p2_stim53_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch53_pulse_p2_stim53_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch53_pulse_p2_stim53_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch53_pulse_p2_stim53_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch53_pulse_p2_stim53_pol              <= apb_wdata_i[   30];
                        reg_stim_ch53_pulse_p2_stim53_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim53_pulse_gap_o        = reg_stim_ch53_pulse_p2_stim53_pulse_gap;
    assign stim53_pulse_num_o        = reg_stim_ch53_pulse_p2_stim53_pulse_num;
    assign stim53_pol_o              = reg_stim_ch53_pulse_p2_stim53_pol;
    assign stim53_range_s            = reg_stim_ch53_pulse_p2_stim53_range;

    assign val_stim_ch53_pulse_p2[13: 0] = reg_stim_ch53_pulse_p2_stim53_pulse_gap;
    assign val_stim_ch53_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch53_pulse_p2[27:16] = reg_stim_ch53_pulse_p2_stim53_pulse_num;
    assign val_stim_ch53_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch53_pulse_p2[   30] = reg_stim_ch53_pulse_p2_stim53_pol;
    assign val_stim_ch53_pulse_p2[   31] = reg_stim_ch53_pulse_p2_stim53_range;

    // stim_ch54_p0 @ 0x2ec
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch54_p0_stim54_interval <= 16'h0;
            reg_stim_ch54_p0_stim54_ia_mux   <= 8'h0;
            reg_stim_ch54_p0_stim54_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH54_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch54_p0_stim54_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch54_p0_stim54_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch54_p0_stim54_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch54_p0_stim54_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim54_interval_o        = reg_stim_ch54_p0_stim54_interval;
    assign stim54_ia_mux_s          = reg_stim_ch54_p0_stim54_ia_mux;
    assign stim54_ic_o              = reg_stim_ch54_p0_stim54_ic;

    assign val_stim_ch54_p0[15: 0] = reg_stim_ch54_p0_stim54_interval;
    assign val_stim_ch54_p0[23:16] = reg_stim_ch54_p0_stim54_ia_mux;
    assign val_stim_ch54_p0[31:24] = reg_stim_ch54_p0_stim54_ic;

    // stim_ch54_pulse_p1 @ 0x2f0
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch54_pulse_p1_stim54_pulse_wc     <= 14'h0;
            reg_stim_ch54_pulse_p1_stim54_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH54_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch54_pulse_p1_stim54_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch54_pulse_p1_stim54_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch54_pulse_p1_stim54_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch54_pulse_p1_stim54_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim54_pulse_wc_o            = reg_stim_ch54_pulse_p1_stim54_pulse_wc;
    assign stim54_pulse_wa_mux_s        = reg_stim_ch54_pulse_p1_stim54_pulse_wa_mux;

    assign val_stim_ch54_pulse_p1[13: 0] = reg_stim_ch54_pulse_p1_stim54_pulse_wc;
    assign val_stim_ch54_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch54_pulse_p1[29:16] = reg_stim_ch54_pulse_p1_stim54_pulse_wa_mux;
    assign val_stim_ch54_pulse_p1[31:30] = 2'b0;

    // stim_ch54_pulse_p2 @ 0x2f4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch54_pulse_p2_stim54_pulse_gap <= 14'h0;
            reg_stim_ch54_pulse_p2_stim54_pulse_num <= 12'h0;
            reg_stim_ch54_pulse_p2_stim54_pol       <= 1'b0;
            reg_stim_ch54_pulse_p2_stim54_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH54_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch54_pulse_p2_stim54_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch54_pulse_p2_stim54_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch54_pulse_p2_stim54_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch54_pulse_p2_stim54_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch54_pulse_p2_stim54_pol              <= apb_wdata_i[   30];
                        reg_stim_ch54_pulse_p2_stim54_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim54_pulse_gap_o        = reg_stim_ch54_pulse_p2_stim54_pulse_gap;
    assign stim54_pulse_num_o        = reg_stim_ch54_pulse_p2_stim54_pulse_num;
    assign stim54_pol_o              = reg_stim_ch54_pulse_p2_stim54_pol;
    assign stim54_range_s            = reg_stim_ch54_pulse_p2_stim54_range;

    assign val_stim_ch54_pulse_p2[13: 0] = reg_stim_ch54_pulse_p2_stim54_pulse_gap;
    assign val_stim_ch54_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch54_pulse_p2[27:16] = reg_stim_ch54_pulse_p2_stim54_pulse_num;
    assign val_stim_ch54_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch54_pulse_p2[   30] = reg_stim_ch54_pulse_p2_stim54_pol;
    assign val_stim_ch54_pulse_p2[   31] = reg_stim_ch54_pulse_p2_stim54_range;

    // stim_ch55_p0 @ 0x2f8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch55_p0_stim55_interval <= 16'h0;
            reg_stim_ch55_p0_stim55_ia_mux   <= 8'h0;
            reg_stim_ch55_p0_stim55_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH55_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch55_p0_stim55_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch55_p0_stim55_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch55_p0_stim55_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch55_p0_stim55_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim55_interval_o        = reg_stim_ch55_p0_stim55_interval;
    assign stim55_ia_mux_s          = reg_stim_ch55_p0_stim55_ia_mux;
    assign stim55_ic_o              = reg_stim_ch55_p0_stim55_ic;

    assign val_stim_ch55_p0[15: 0] = reg_stim_ch55_p0_stim55_interval;
    assign val_stim_ch55_p0[23:16] = reg_stim_ch55_p0_stim55_ia_mux;
    assign val_stim_ch55_p0[31:24] = reg_stim_ch55_p0_stim55_ic;

    // stim_ch55_pulse_p1 @ 0x2fc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch55_pulse_p1_stim55_pulse_wc     <= 14'h0;
            reg_stim_ch55_pulse_p1_stim55_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH55_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch55_pulse_p1_stim55_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch55_pulse_p1_stim55_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch55_pulse_p1_stim55_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch55_pulse_p1_stim55_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim55_pulse_wc_o            = reg_stim_ch55_pulse_p1_stim55_pulse_wc;
    assign stim55_pulse_wa_mux_s        = reg_stim_ch55_pulse_p1_stim55_pulse_wa_mux;

    assign val_stim_ch55_pulse_p1[13: 0] = reg_stim_ch55_pulse_p1_stim55_pulse_wc;
    assign val_stim_ch55_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch55_pulse_p1[29:16] = reg_stim_ch55_pulse_p1_stim55_pulse_wa_mux;
    assign val_stim_ch55_pulse_p1[31:30] = 2'b0;

    // stim_ch55_pulse_p2 @ 0x300
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch55_pulse_p2_stim55_pulse_gap <= 14'h0;
            reg_stim_ch55_pulse_p2_stim55_pulse_num <= 12'h0;
            reg_stim_ch55_pulse_p2_stim55_pol       <= 1'b0;
            reg_stim_ch55_pulse_p2_stim55_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH55_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch55_pulse_p2_stim55_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch55_pulse_p2_stim55_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch55_pulse_p2_stim55_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch55_pulse_p2_stim55_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch55_pulse_p2_stim55_pol              <= apb_wdata_i[   30];
                        reg_stim_ch55_pulse_p2_stim55_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim55_pulse_gap_o        = reg_stim_ch55_pulse_p2_stim55_pulse_gap;
    assign stim55_pulse_num_o        = reg_stim_ch55_pulse_p2_stim55_pulse_num;
    assign stim55_pol_o              = reg_stim_ch55_pulse_p2_stim55_pol;
    assign stim55_range_s            = reg_stim_ch55_pulse_p2_stim55_range;

    assign val_stim_ch55_pulse_p2[13: 0] = reg_stim_ch55_pulse_p2_stim55_pulse_gap;
    assign val_stim_ch55_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch55_pulse_p2[27:16] = reg_stim_ch55_pulse_p2_stim55_pulse_num;
    assign val_stim_ch55_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch55_pulse_p2[   30] = reg_stim_ch55_pulse_p2_stim55_pol;
    assign val_stim_ch55_pulse_p2[   31] = reg_stim_ch55_pulse_p2_stim55_range;

    // stim_ch56_p0 @ 0x304
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch56_p0_stim56_interval <= 16'h0;
            reg_stim_ch56_p0_stim56_ia_mux   <= 8'h0;
            reg_stim_ch56_p0_stim56_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH56_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch56_p0_stim56_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch56_p0_stim56_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch56_p0_stim56_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch56_p0_stim56_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim56_interval_o        = reg_stim_ch56_p0_stim56_interval;
    assign stim56_ia_mux_s          = reg_stim_ch56_p0_stim56_ia_mux;
    assign stim56_ic_o              = reg_stim_ch56_p0_stim56_ic;

    assign val_stim_ch56_p0[15: 0] = reg_stim_ch56_p0_stim56_interval;
    assign val_stim_ch56_p0[23:16] = reg_stim_ch56_p0_stim56_ia_mux;
    assign val_stim_ch56_p0[31:24] = reg_stim_ch56_p0_stim56_ic;

    // stim_ch56_pulse_p1 @ 0x308
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch56_pulse_p1_stim56_pulse_wc     <= 14'h0;
            reg_stim_ch56_pulse_p1_stim56_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH56_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch56_pulse_p1_stim56_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch56_pulse_p1_stim56_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch56_pulse_p1_stim56_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch56_pulse_p1_stim56_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim56_pulse_wc_o            = reg_stim_ch56_pulse_p1_stim56_pulse_wc;
    assign stim56_pulse_wa_mux_s        = reg_stim_ch56_pulse_p1_stim56_pulse_wa_mux;

    assign val_stim_ch56_pulse_p1[13: 0] = reg_stim_ch56_pulse_p1_stim56_pulse_wc;
    assign val_stim_ch56_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch56_pulse_p1[29:16] = reg_stim_ch56_pulse_p1_stim56_pulse_wa_mux;
    assign val_stim_ch56_pulse_p1[31:30] = 2'b0;

    // stim_ch56_pulse_p2 @ 0x30c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch56_pulse_p2_stim56_pulse_gap <= 14'h0;
            reg_stim_ch56_pulse_p2_stim56_pulse_num <= 12'h0;
            reg_stim_ch56_pulse_p2_stim56_pol       <= 1'b0;
            reg_stim_ch56_pulse_p2_stim56_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH56_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch56_pulse_p2_stim56_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch56_pulse_p2_stim56_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch56_pulse_p2_stim56_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch56_pulse_p2_stim56_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch56_pulse_p2_stim56_pol              <= apb_wdata_i[   30];
                        reg_stim_ch56_pulse_p2_stim56_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim56_pulse_gap_o        = reg_stim_ch56_pulse_p2_stim56_pulse_gap;
    assign stim56_pulse_num_o        = reg_stim_ch56_pulse_p2_stim56_pulse_num;
    assign stim56_pol_o              = reg_stim_ch56_pulse_p2_stim56_pol;
    assign stim56_range_s            = reg_stim_ch56_pulse_p2_stim56_range;

    assign val_stim_ch56_pulse_p2[13: 0] = reg_stim_ch56_pulse_p2_stim56_pulse_gap;
    assign val_stim_ch56_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch56_pulse_p2[27:16] = reg_stim_ch56_pulse_p2_stim56_pulse_num;
    assign val_stim_ch56_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch56_pulse_p2[   30] = reg_stim_ch56_pulse_p2_stim56_pol;
    assign val_stim_ch56_pulse_p2[   31] = reg_stim_ch56_pulse_p2_stim56_range;

    // stim_ch57_p0 @ 0x310
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch57_p0_stim57_interval <= 16'h0;
            reg_stim_ch57_p0_stim57_ia_mux   <= 8'h0;
            reg_stim_ch57_p0_stim57_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH57_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch57_p0_stim57_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch57_p0_stim57_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch57_p0_stim57_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch57_p0_stim57_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim57_interval_o        = reg_stim_ch57_p0_stim57_interval;
    assign stim57_ia_mux_s          = reg_stim_ch57_p0_stim57_ia_mux;
    assign stim57_ic_o              = reg_stim_ch57_p0_stim57_ic;

    assign val_stim_ch57_p0[15: 0] = reg_stim_ch57_p0_stim57_interval;
    assign val_stim_ch57_p0[23:16] = reg_stim_ch57_p0_stim57_ia_mux;
    assign val_stim_ch57_p0[31:24] = reg_stim_ch57_p0_stim57_ic;

    // stim_ch57_pulse_p1 @ 0x314
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch57_pulse_p1_stim57_pulse_wc     <= 14'h0;
            reg_stim_ch57_pulse_p1_stim57_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH57_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch57_pulse_p1_stim57_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch57_pulse_p1_stim57_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch57_pulse_p1_stim57_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch57_pulse_p1_stim57_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim57_pulse_wc_o            = reg_stim_ch57_pulse_p1_stim57_pulse_wc;
    assign stim57_pulse_wa_mux_s        = reg_stim_ch57_pulse_p1_stim57_pulse_wa_mux;

    assign val_stim_ch57_pulse_p1[13: 0] = reg_stim_ch57_pulse_p1_stim57_pulse_wc;
    assign val_stim_ch57_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch57_pulse_p1[29:16] = reg_stim_ch57_pulse_p1_stim57_pulse_wa_mux;
    assign val_stim_ch57_pulse_p1[31:30] = 2'b0;

    // stim_ch57_pulse_p2 @ 0x318
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch57_pulse_p2_stim57_pulse_gap <= 14'h0;
            reg_stim_ch57_pulse_p2_stim57_pulse_num <= 12'h0;
            reg_stim_ch57_pulse_p2_stim57_pol       <= 1'b0;
            reg_stim_ch57_pulse_p2_stim57_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH57_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch57_pulse_p2_stim57_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch57_pulse_p2_stim57_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch57_pulse_p2_stim57_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch57_pulse_p2_stim57_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch57_pulse_p2_stim57_pol              <= apb_wdata_i[   30];
                        reg_stim_ch57_pulse_p2_stim57_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim57_pulse_gap_o        = reg_stim_ch57_pulse_p2_stim57_pulse_gap;
    assign stim57_pulse_num_o        = reg_stim_ch57_pulse_p2_stim57_pulse_num;
    assign stim57_pol_o              = reg_stim_ch57_pulse_p2_stim57_pol;
    assign stim57_range_s            = reg_stim_ch57_pulse_p2_stim57_range;

    assign val_stim_ch57_pulse_p2[13: 0] = reg_stim_ch57_pulse_p2_stim57_pulse_gap;
    assign val_stim_ch57_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch57_pulse_p2[27:16] = reg_stim_ch57_pulse_p2_stim57_pulse_num;
    assign val_stim_ch57_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch57_pulse_p2[   30] = reg_stim_ch57_pulse_p2_stim57_pol;
    assign val_stim_ch57_pulse_p2[   31] = reg_stim_ch57_pulse_p2_stim57_range;

    // stim_ch58_p0 @ 0x31c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch58_p0_stim58_interval <= 16'h0;
            reg_stim_ch58_p0_stim58_ia_mux   <= 8'h0;
            reg_stim_ch58_p0_stim58_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH58_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch58_p0_stim58_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch58_p0_stim58_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch58_p0_stim58_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch58_p0_stim58_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim58_interval_o        = reg_stim_ch58_p0_stim58_interval;
    assign stim58_ia_mux_s          = reg_stim_ch58_p0_stim58_ia_mux;
    assign stim58_ic_o              = reg_stim_ch58_p0_stim58_ic;

    assign val_stim_ch58_p0[15: 0] = reg_stim_ch58_p0_stim58_interval;
    assign val_stim_ch58_p0[23:16] = reg_stim_ch58_p0_stim58_ia_mux;
    assign val_stim_ch58_p0[31:24] = reg_stim_ch58_p0_stim58_ic;

    // stim_ch58_pulse_p1 @ 0x320
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch58_pulse_p1_stim58_pulse_wc     <= 14'h0;
            reg_stim_ch58_pulse_p1_stim58_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH58_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch58_pulse_p1_stim58_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch58_pulse_p1_stim58_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch58_pulse_p1_stim58_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch58_pulse_p1_stim58_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim58_pulse_wc_o            = reg_stim_ch58_pulse_p1_stim58_pulse_wc;
    assign stim58_pulse_wa_mux_s        = reg_stim_ch58_pulse_p1_stim58_pulse_wa_mux;

    assign val_stim_ch58_pulse_p1[13: 0] = reg_stim_ch58_pulse_p1_stim58_pulse_wc;
    assign val_stim_ch58_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch58_pulse_p1[29:16] = reg_stim_ch58_pulse_p1_stim58_pulse_wa_mux;
    assign val_stim_ch58_pulse_p1[31:30] = 2'b0;

    // stim_ch58_pulse_p2 @ 0x324
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch58_pulse_p2_stim58_pulse_gap <= 14'h0;
            reg_stim_ch58_pulse_p2_stim58_pulse_num <= 12'h0;
            reg_stim_ch58_pulse_p2_stim58_pol       <= 1'b0;
            reg_stim_ch58_pulse_p2_stim58_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH58_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch58_pulse_p2_stim58_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch58_pulse_p2_stim58_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch58_pulse_p2_stim58_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch58_pulse_p2_stim58_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch58_pulse_p2_stim58_pol              <= apb_wdata_i[   30];
                        reg_stim_ch58_pulse_p2_stim58_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim58_pulse_gap_o        = reg_stim_ch58_pulse_p2_stim58_pulse_gap;
    assign stim58_pulse_num_o        = reg_stim_ch58_pulse_p2_stim58_pulse_num;
    assign stim58_pol_o              = reg_stim_ch58_pulse_p2_stim58_pol;
    assign stim58_range_s            = reg_stim_ch58_pulse_p2_stim58_range;

    assign val_stim_ch58_pulse_p2[13: 0] = reg_stim_ch58_pulse_p2_stim58_pulse_gap;
    assign val_stim_ch58_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch58_pulse_p2[27:16] = reg_stim_ch58_pulse_p2_stim58_pulse_num;
    assign val_stim_ch58_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch58_pulse_p2[   30] = reg_stim_ch58_pulse_p2_stim58_pol;
    assign val_stim_ch58_pulse_p2[   31] = reg_stim_ch58_pulse_p2_stim58_range;

    // stim_ch59_p0 @ 0x328
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch59_p0_stim59_interval <= 16'h0;
            reg_stim_ch59_p0_stim59_ia_mux   <= 8'h0;
            reg_stim_ch59_p0_stim59_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH59_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch59_p0_stim59_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch59_p0_stim59_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch59_p0_stim59_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch59_p0_stim59_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim59_interval_o        = reg_stim_ch59_p0_stim59_interval;
    assign stim59_ia_mux_s          = reg_stim_ch59_p0_stim59_ia_mux;
    assign stim59_ic_o              = reg_stim_ch59_p0_stim59_ic;

    assign val_stim_ch59_p0[15: 0] = reg_stim_ch59_p0_stim59_interval;
    assign val_stim_ch59_p0[23:16] = reg_stim_ch59_p0_stim59_ia_mux;
    assign val_stim_ch59_p0[31:24] = reg_stim_ch59_p0_stim59_ic;

    // stim_ch59_pulse_p1 @ 0x32c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch59_pulse_p1_stim59_pulse_wc     <= 14'h0;
            reg_stim_ch59_pulse_p1_stim59_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH59_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch59_pulse_p1_stim59_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch59_pulse_p1_stim59_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch59_pulse_p1_stim59_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch59_pulse_p1_stim59_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim59_pulse_wc_o            = reg_stim_ch59_pulse_p1_stim59_pulse_wc;
    assign stim59_pulse_wa_mux_s        = reg_stim_ch59_pulse_p1_stim59_pulse_wa_mux;

    assign val_stim_ch59_pulse_p1[13: 0] = reg_stim_ch59_pulse_p1_stim59_pulse_wc;
    assign val_stim_ch59_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch59_pulse_p1[29:16] = reg_stim_ch59_pulse_p1_stim59_pulse_wa_mux;
    assign val_stim_ch59_pulse_p1[31:30] = 2'b0;

    // stim_ch59_pulse_p2 @ 0x330
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch59_pulse_p2_stim59_pulse_gap <= 14'h0;
            reg_stim_ch59_pulse_p2_stim59_pulse_num <= 12'h0;
            reg_stim_ch59_pulse_p2_stim59_pol       <= 1'b0;
            reg_stim_ch59_pulse_p2_stim59_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH59_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch59_pulse_p2_stim59_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch59_pulse_p2_stim59_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch59_pulse_p2_stim59_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch59_pulse_p2_stim59_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch59_pulse_p2_stim59_pol              <= apb_wdata_i[   30];
                        reg_stim_ch59_pulse_p2_stim59_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim59_pulse_gap_o        = reg_stim_ch59_pulse_p2_stim59_pulse_gap;
    assign stim59_pulse_num_o        = reg_stim_ch59_pulse_p2_stim59_pulse_num;
    assign stim59_pol_o              = reg_stim_ch59_pulse_p2_stim59_pol;
    assign stim59_range_s            = reg_stim_ch59_pulse_p2_stim59_range;

    assign val_stim_ch59_pulse_p2[13: 0] = reg_stim_ch59_pulse_p2_stim59_pulse_gap;
    assign val_stim_ch59_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch59_pulse_p2[27:16] = reg_stim_ch59_pulse_p2_stim59_pulse_num;
    assign val_stim_ch59_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch59_pulse_p2[   30] = reg_stim_ch59_pulse_p2_stim59_pol;
    assign val_stim_ch59_pulse_p2[   31] = reg_stim_ch59_pulse_p2_stim59_range;

    // stim_ch60_p0 @ 0x334
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch60_p0_stim60_interval <= 16'h0;
            reg_stim_ch60_p0_stim60_ia_mux   <= 8'h0;
            reg_stim_ch60_p0_stim60_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH60_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch60_p0_stim60_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch60_p0_stim60_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch60_p0_stim60_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch60_p0_stim60_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim60_interval_o        = reg_stim_ch60_p0_stim60_interval;
    assign stim60_ia_mux_s          = reg_stim_ch60_p0_stim60_ia_mux;
    assign stim60_ic_o              = reg_stim_ch60_p0_stim60_ic;

    assign val_stim_ch60_p0[15: 0] = reg_stim_ch60_p0_stim60_interval;
    assign val_stim_ch60_p0[23:16] = reg_stim_ch60_p0_stim60_ia_mux;
    assign val_stim_ch60_p0[31:24] = reg_stim_ch60_p0_stim60_ic;

    // stim_ch60_pulse_p1 @ 0x338
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch60_pulse_p1_stim60_pulse_wc     <= 14'h0;
            reg_stim_ch60_pulse_p1_stim60_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH60_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch60_pulse_p1_stim60_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch60_pulse_p1_stim60_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch60_pulse_p1_stim60_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch60_pulse_p1_stim60_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim60_pulse_wc_o            = reg_stim_ch60_pulse_p1_stim60_pulse_wc;
    assign stim60_pulse_wa_mux_s        = reg_stim_ch60_pulse_p1_stim60_pulse_wa_mux;

    assign val_stim_ch60_pulse_p1[13: 0] = reg_stim_ch60_pulse_p1_stim60_pulse_wc;
    assign val_stim_ch60_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch60_pulse_p1[29:16] = reg_stim_ch60_pulse_p1_stim60_pulse_wa_mux;
    assign val_stim_ch60_pulse_p1[31:30] = 2'b0;

    // stim_ch60_pulse_p2 @ 0x33c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch60_pulse_p2_stim60_pulse_gap <= 14'h0;
            reg_stim_ch60_pulse_p2_stim60_pulse_num <= 12'h0;
            reg_stim_ch60_pulse_p2_stim60_pol       <= 1'b0;
            reg_stim_ch60_pulse_p2_stim60_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH60_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch60_pulse_p2_stim60_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch60_pulse_p2_stim60_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch60_pulse_p2_stim60_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch60_pulse_p2_stim60_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch60_pulse_p2_stim60_pol              <= apb_wdata_i[   30];
                        reg_stim_ch60_pulse_p2_stim60_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim60_pulse_gap_o        = reg_stim_ch60_pulse_p2_stim60_pulse_gap;
    assign stim60_pulse_num_o        = reg_stim_ch60_pulse_p2_stim60_pulse_num;
    assign stim60_pol_o              = reg_stim_ch60_pulse_p2_stim60_pol;
    assign stim60_range_s            = reg_stim_ch60_pulse_p2_stim60_range;

    assign val_stim_ch60_pulse_p2[13: 0] = reg_stim_ch60_pulse_p2_stim60_pulse_gap;
    assign val_stim_ch60_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch60_pulse_p2[27:16] = reg_stim_ch60_pulse_p2_stim60_pulse_num;
    assign val_stim_ch60_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch60_pulse_p2[   30] = reg_stim_ch60_pulse_p2_stim60_pol;
    assign val_stim_ch60_pulse_p2[   31] = reg_stim_ch60_pulse_p2_stim60_range;

    // stim_ch61_p0 @ 0x340
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch61_p0_stim61_interval <= 16'h0;
            reg_stim_ch61_p0_stim61_ia_mux   <= 8'h0;
            reg_stim_ch61_p0_stim61_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH61_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch61_p0_stim61_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch61_p0_stim61_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch61_p0_stim61_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch61_p0_stim61_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim61_interval_o        = reg_stim_ch61_p0_stim61_interval;
    assign stim61_ia_mux_s          = reg_stim_ch61_p0_stim61_ia_mux;
    assign stim61_ic_o              = reg_stim_ch61_p0_stim61_ic;

    assign val_stim_ch61_p0[15: 0] = reg_stim_ch61_p0_stim61_interval;
    assign val_stim_ch61_p0[23:16] = reg_stim_ch61_p0_stim61_ia_mux;
    assign val_stim_ch61_p0[31:24] = reg_stim_ch61_p0_stim61_ic;

    // stim_ch61_pulse_p1 @ 0x344
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch61_pulse_p1_stim61_pulse_wc     <= 14'h0;
            reg_stim_ch61_pulse_p1_stim61_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH61_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch61_pulse_p1_stim61_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch61_pulse_p1_stim61_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch61_pulse_p1_stim61_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch61_pulse_p1_stim61_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim61_pulse_wc_o            = reg_stim_ch61_pulse_p1_stim61_pulse_wc;
    assign stim61_pulse_wa_mux_s        = reg_stim_ch61_pulse_p1_stim61_pulse_wa_mux;

    assign val_stim_ch61_pulse_p1[13: 0] = reg_stim_ch61_pulse_p1_stim61_pulse_wc;
    assign val_stim_ch61_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch61_pulse_p1[29:16] = reg_stim_ch61_pulse_p1_stim61_pulse_wa_mux;
    assign val_stim_ch61_pulse_p1[31:30] = 2'b0;

    // stim_ch61_pulse_p2 @ 0x348
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch61_pulse_p2_stim61_pulse_gap <= 14'h0;
            reg_stim_ch61_pulse_p2_stim61_pulse_num <= 12'h0;
            reg_stim_ch61_pulse_p2_stim61_pol       <= 1'b0;
            reg_stim_ch61_pulse_p2_stim61_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH61_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch61_pulse_p2_stim61_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch61_pulse_p2_stim61_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch61_pulse_p2_stim61_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch61_pulse_p2_stim61_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch61_pulse_p2_stim61_pol              <= apb_wdata_i[   30];
                        reg_stim_ch61_pulse_p2_stim61_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim61_pulse_gap_o        = reg_stim_ch61_pulse_p2_stim61_pulse_gap;
    assign stim61_pulse_num_o        = reg_stim_ch61_pulse_p2_stim61_pulse_num;
    assign stim61_pol_o              = reg_stim_ch61_pulse_p2_stim61_pol;
    assign stim61_range_s            = reg_stim_ch61_pulse_p2_stim61_range;

    assign val_stim_ch61_pulse_p2[13: 0] = reg_stim_ch61_pulse_p2_stim61_pulse_gap;
    assign val_stim_ch61_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch61_pulse_p2[27:16] = reg_stim_ch61_pulse_p2_stim61_pulse_num;
    assign val_stim_ch61_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch61_pulse_p2[   30] = reg_stim_ch61_pulse_p2_stim61_pol;
    assign val_stim_ch61_pulse_p2[   31] = reg_stim_ch61_pulse_p2_stim61_range;

    // stim_ch62_p0 @ 0x34c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch62_p0_stim62_interval <= 16'h0;
            reg_stim_ch62_p0_stim62_ia_mux   <= 8'h0;
            reg_stim_ch62_p0_stim62_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH62_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch62_p0_stim62_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch62_p0_stim62_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch62_p0_stim62_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch62_p0_stim62_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim62_interval_o        = reg_stim_ch62_p0_stim62_interval;
    assign stim62_ia_mux_s          = reg_stim_ch62_p0_stim62_ia_mux;
    assign stim62_ic_o              = reg_stim_ch62_p0_stim62_ic;

    assign val_stim_ch62_p0[15: 0] = reg_stim_ch62_p0_stim62_interval;
    assign val_stim_ch62_p0[23:16] = reg_stim_ch62_p0_stim62_ia_mux;
    assign val_stim_ch62_p0[31:24] = reg_stim_ch62_p0_stim62_ic;

    // stim_ch62_pulse_p1 @ 0x350
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch62_pulse_p1_stim62_pulse_wc     <= 14'h0;
            reg_stim_ch62_pulse_p1_stim62_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH62_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch62_pulse_p1_stim62_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch62_pulse_p1_stim62_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch62_pulse_p1_stim62_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch62_pulse_p1_stim62_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim62_pulse_wc_o            = reg_stim_ch62_pulse_p1_stim62_pulse_wc;
    assign stim62_pulse_wa_mux_s        = reg_stim_ch62_pulse_p1_stim62_pulse_wa_mux;

    assign val_stim_ch62_pulse_p1[13: 0] = reg_stim_ch62_pulse_p1_stim62_pulse_wc;
    assign val_stim_ch62_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch62_pulse_p1[29:16] = reg_stim_ch62_pulse_p1_stim62_pulse_wa_mux;
    assign val_stim_ch62_pulse_p1[31:30] = 2'b0;

    // stim_ch62_pulse_p2 @ 0x354
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch62_pulse_p2_stim62_pulse_gap <= 14'h0;
            reg_stim_ch62_pulse_p2_stim62_pulse_num <= 12'h0;
            reg_stim_ch62_pulse_p2_stim62_pol       <= 1'b0;
            reg_stim_ch62_pulse_p2_stim62_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH62_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch62_pulse_p2_stim62_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch62_pulse_p2_stim62_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch62_pulse_p2_stim62_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch62_pulse_p2_stim62_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch62_pulse_p2_stim62_pol              <= apb_wdata_i[   30];
                        reg_stim_ch62_pulse_p2_stim62_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim62_pulse_gap_o        = reg_stim_ch62_pulse_p2_stim62_pulse_gap;
    assign stim62_pulse_num_o        = reg_stim_ch62_pulse_p2_stim62_pulse_num;
    assign stim62_pol_o              = reg_stim_ch62_pulse_p2_stim62_pol;
    assign stim62_range_s            = reg_stim_ch62_pulse_p2_stim62_range;

    assign val_stim_ch62_pulse_p2[13: 0] = reg_stim_ch62_pulse_p2_stim62_pulse_gap;
    assign val_stim_ch62_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch62_pulse_p2[27:16] = reg_stim_ch62_pulse_p2_stim62_pulse_num;
    assign val_stim_ch62_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch62_pulse_p2[   30] = reg_stim_ch62_pulse_p2_stim62_pol;
    assign val_stim_ch62_pulse_p2[   31] = reg_stim_ch62_pulse_p2_stim62_range;

    // stim_ch63_p0 @ 0x358
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch63_p0_stim63_interval <= 16'h0;
            reg_stim_ch63_p0_stim63_ia_mux   <= 8'h0;
            reg_stim_ch63_p0_stim63_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH63_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch63_p0_stim63_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch63_p0_stim63_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch63_p0_stim63_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch63_p0_stim63_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim63_interval_o        = reg_stim_ch63_p0_stim63_interval;
    assign stim63_ia_mux_s          = reg_stim_ch63_p0_stim63_ia_mux;
    assign stim63_ic_o              = reg_stim_ch63_p0_stim63_ic;

    assign val_stim_ch63_p0[15: 0] = reg_stim_ch63_p0_stim63_interval;
    assign val_stim_ch63_p0[23:16] = reg_stim_ch63_p0_stim63_ia_mux;
    assign val_stim_ch63_p0[31:24] = reg_stim_ch63_p0_stim63_ic;

    // stim_ch63_pulse_p1 @ 0x35c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch63_pulse_p1_stim63_pulse_wc     <= 14'h0;
            reg_stim_ch63_pulse_p1_stim63_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH63_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch63_pulse_p1_stim63_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch63_pulse_p1_stim63_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch63_pulse_p1_stim63_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch63_pulse_p1_stim63_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim63_pulse_wc_o            = reg_stim_ch63_pulse_p1_stim63_pulse_wc;
    assign stim63_pulse_wa_mux_s        = reg_stim_ch63_pulse_p1_stim63_pulse_wa_mux;

    assign val_stim_ch63_pulse_p1[13: 0] = reg_stim_ch63_pulse_p1_stim63_pulse_wc;
    assign val_stim_ch63_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch63_pulse_p1[29:16] = reg_stim_ch63_pulse_p1_stim63_pulse_wa_mux;
    assign val_stim_ch63_pulse_p1[31:30] = 2'b0;

    // stim_ch63_pulse_p2 @ 0x360
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch63_pulse_p2_stim63_pulse_gap <= 14'h0;
            reg_stim_ch63_pulse_p2_stim63_pulse_num <= 12'h0;
            reg_stim_ch63_pulse_p2_stim63_pol       <= 1'b0;
            reg_stim_ch63_pulse_p2_stim63_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH63_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch63_pulse_p2_stim63_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch63_pulse_p2_stim63_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch63_pulse_p2_stim63_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch63_pulse_p2_stim63_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch63_pulse_p2_stim63_pol              <= apb_wdata_i[   30];
                        reg_stim_ch63_pulse_p2_stim63_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim63_pulse_gap_o        = reg_stim_ch63_pulse_p2_stim63_pulse_gap;
    assign stim63_pulse_num_o        = reg_stim_ch63_pulse_p2_stim63_pulse_num;
    assign stim63_pol_o              = reg_stim_ch63_pulse_p2_stim63_pol;
    assign stim63_range_s            = reg_stim_ch63_pulse_p2_stim63_range;

    assign val_stim_ch63_pulse_p2[13: 0] = reg_stim_ch63_pulse_p2_stim63_pulse_gap;
    assign val_stim_ch63_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch63_pulse_p2[27:16] = reg_stim_ch63_pulse_p2_stim63_pulse_num;
    assign val_stim_ch63_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch63_pulse_p2[   30] = reg_stim_ch63_pulse_p2_stim63_pol;
    assign val_stim_ch63_pulse_p2[   31] = reg_stim_ch63_pulse_p2_stim63_range;


    /*************************************************************************/
    /* apb ready/error generate                                              */
    /*************************************************************************/
    always @(*) begin
        apb_ready = 1'b1;
        apb_slverr = 1'b0;
        if (rf_w_sel && apb_enable_i) begin
            apb_slverr = ~rf_write_permitted;
        end
        if (rf_r_sel && apb_enable_i) begin
            apb_slverr = ~rf_read_permitted;
        end
    end
    assign apb_ready_o = apb_ready;
    assign apb_slverr_o = apb_slverr;


    /*************************************************************************/
    /* Regfile registers (read-logic)                                        */
    /*************************************************************************/
    always @(*) begin
        rf_next_write_permitted = 1'b0;
        rf_next_read_permitted = 1'b1;
        case (apb_addr_i)
            RA_CHIP_STATUS_ID: begin
                apb_rf_r_data = val_chip_status_id;
            end
            RA_CHIP_ERROR_STATUS1: begin
                apb_rf_r_data = val_chip_error_status1;
                rf_next_write_permitted = 1'b1;
            end
            RA_CHIP_ERROR_STATUS2: begin
                apb_rf_r_data = val_chip_error_status2;
                rf_next_write_permitted = 1'b1;
            end
            RA_ADC_AMP1: begin
                apb_rf_r_data = val_adc_amp1;
                rf_next_write_permitted = 1'b1;
            end
            RA_ADC_AMP2: begin
                apb_rf_r_data = val_adc_amp2;
                rf_next_write_permitted = 1'b1;
            end
            RA_REC_STIM_CONTROL: begin
                apb_rf_r_data = val_rec_stim_control;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK0_P1: begin
                apb_rf_r_data = val_stim_mask0_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK0_P2: begin
                apb_rf_r_data = val_stim_mask0_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK1_P1: begin
                apb_rf_r_data = val_stim_mask1_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK1_P2: begin
                apb_rf_r_data = val_stim_mask1_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK2_P1: begin
                apb_rf_r_data = val_stim_mask2_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK2_P2: begin
                apb_rf_r_data = val_stim_mask2_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK3_P1: begin
                apb_rf_r_data = val_stim_mask3_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK3_P2: begin
                apb_rf_r_data = val_stim_mask3_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK4_P1: begin
                apb_rf_r_data = val_stim_mask4_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK4_P2: begin
                apb_rf_r_data = val_stim_mask4_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK5_P1: begin
                apb_rf_r_data = val_stim_mask5_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK5_P2: begin
                apb_rf_r_data = val_stim_mask5_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK6_P1: begin
                apb_rf_r_data = val_stim_mask6_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK6_P2: begin
                apb_rf_r_data = val_stim_mask6_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK7_P1: begin
                apb_rf_r_data = val_stim_mask7_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK7_P2: begin
                apb_rf_r_data = val_stim_mask7_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_ENABLED_CH_REC_G1: begin
                apb_rf_r_data = val_enabled_ch_rec_g1;
                rf_next_write_permitted = 1'b1;
            end
            RA_ENABLED_CH_REC_G2: begin
                apb_rf_r_data = val_enabled_ch_rec_g2;
                rf_next_write_permitted = 1'b1;
            end
            RA_REC_DISCHARGE_CONTROL: begin
                apb_rf_r_data = val_rec_discharge_control;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH0_P0: begin
                apb_rf_r_data = val_stim_ch0_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH0_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch0_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH0_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch0_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH1_P0: begin
                apb_rf_r_data = val_stim_ch1_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH1_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch1_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH1_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch1_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH2_P0: begin
                apb_rf_r_data = val_stim_ch2_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH2_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch2_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH2_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch2_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH3_P0: begin
                apb_rf_r_data = val_stim_ch3_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH3_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch3_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH3_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch3_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH4_P0: begin
                apb_rf_r_data = val_stim_ch4_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH4_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch4_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH4_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch4_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH5_P0: begin
                apb_rf_r_data = val_stim_ch5_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH5_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch5_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH5_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch5_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH6_P0: begin
                apb_rf_r_data = val_stim_ch6_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH6_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch6_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH6_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch6_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH7_P0: begin
                apb_rf_r_data = val_stim_ch7_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH7_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch7_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH7_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch7_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH8_P0: begin
                apb_rf_r_data = val_stim_ch8_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH8_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch8_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH8_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch8_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH9_P0: begin
                apb_rf_r_data = val_stim_ch9_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH9_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch9_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH9_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch9_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH10_P0: begin
                apb_rf_r_data = val_stim_ch10_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH10_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch10_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH10_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch10_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH11_P0: begin
                apb_rf_r_data = val_stim_ch11_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH11_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch11_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH11_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch11_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH12_P0: begin
                apb_rf_r_data = val_stim_ch12_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH12_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch12_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH12_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch12_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH13_P0: begin
                apb_rf_r_data = val_stim_ch13_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH13_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch13_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH13_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch13_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH14_P0: begin
                apb_rf_r_data = val_stim_ch14_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH14_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch14_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH14_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch14_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH15_P0: begin
                apb_rf_r_data = val_stim_ch15_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH15_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch15_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH15_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch15_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH16_P0: begin
                apb_rf_r_data = val_stim_ch16_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH16_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch16_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH16_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch16_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH17_P0: begin
                apb_rf_r_data = val_stim_ch17_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH17_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch17_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH17_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch17_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH18_P0: begin
                apb_rf_r_data = val_stim_ch18_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH18_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch18_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH18_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch18_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH19_P0: begin
                apb_rf_r_data = val_stim_ch19_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH19_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch19_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH19_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch19_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH20_P0: begin
                apb_rf_r_data = val_stim_ch20_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH20_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch20_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH20_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch20_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH21_P0: begin
                apb_rf_r_data = val_stim_ch21_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH21_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch21_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH21_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch21_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH22_P0: begin
                apb_rf_r_data = val_stim_ch22_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH22_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch22_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH22_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch22_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH23_P0: begin
                apb_rf_r_data = val_stim_ch23_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH23_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch23_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH23_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch23_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH24_P0: begin
                apb_rf_r_data = val_stim_ch24_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH24_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch24_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH24_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch24_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH25_P0: begin
                apb_rf_r_data = val_stim_ch25_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH25_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch25_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH25_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch25_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH26_P0: begin
                apb_rf_r_data = val_stim_ch26_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH26_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch26_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH26_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch26_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH27_P0: begin
                apb_rf_r_data = val_stim_ch27_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH27_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch27_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH27_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch27_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH28_P0: begin
                apb_rf_r_data = val_stim_ch28_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH28_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch28_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH28_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch28_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH29_P0: begin
                apb_rf_r_data = val_stim_ch29_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH29_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch29_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH29_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch29_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH30_P0: begin
                apb_rf_r_data = val_stim_ch30_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH30_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch30_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH30_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch30_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH31_P0: begin
                apb_rf_r_data = val_stim_ch31_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH31_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch31_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH31_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch31_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH32_P0: begin
                apb_rf_r_data = val_stim_ch32_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH32_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch32_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH32_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch32_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH33_P0: begin
                apb_rf_r_data = val_stim_ch33_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH33_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch33_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH33_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch33_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH34_P0: begin
                apb_rf_r_data = val_stim_ch34_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH34_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch34_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH34_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch34_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH35_P0: begin
                apb_rf_r_data = val_stim_ch35_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH35_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch35_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH35_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch35_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH36_P0: begin
                apb_rf_r_data = val_stim_ch36_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH36_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch36_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH36_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch36_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH37_P0: begin
                apb_rf_r_data = val_stim_ch37_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH37_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch37_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH37_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch37_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH38_P0: begin
                apb_rf_r_data = val_stim_ch38_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH38_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch38_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH38_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch38_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH39_P0: begin
                apb_rf_r_data = val_stim_ch39_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH39_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch39_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH39_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch39_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH40_P0: begin
                apb_rf_r_data = val_stim_ch40_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH40_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch40_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH40_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch40_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH41_P0: begin
                apb_rf_r_data = val_stim_ch41_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH41_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch41_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH41_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch41_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH42_P0: begin
                apb_rf_r_data = val_stim_ch42_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH42_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch42_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH42_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch42_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH43_P0: begin
                apb_rf_r_data = val_stim_ch43_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH43_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch43_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH43_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch43_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH44_P0: begin
                apb_rf_r_data = val_stim_ch44_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH44_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch44_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH44_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch44_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH45_P0: begin
                apb_rf_r_data = val_stim_ch45_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH45_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch45_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH45_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch45_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH46_P0: begin
                apb_rf_r_data = val_stim_ch46_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH46_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch46_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH46_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch46_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH47_P0: begin
                apb_rf_r_data = val_stim_ch47_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH47_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch47_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH47_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch47_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH48_P0: begin
                apb_rf_r_data = val_stim_ch48_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH48_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch48_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH48_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch48_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH49_P0: begin
                apb_rf_r_data = val_stim_ch49_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH49_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch49_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH49_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch49_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH50_P0: begin
                apb_rf_r_data = val_stim_ch50_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH50_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch50_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH50_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch50_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH51_P0: begin
                apb_rf_r_data = val_stim_ch51_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH51_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch51_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH51_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch51_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH52_P0: begin
                apb_rf_r_data = val_stim_ch52_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH52_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch52_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH52_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch52_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH53_P0: begin
                apb_rf_r_data = val_stim_ch53_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH53_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch53_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH53_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch53_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH54_P0: begin
                apb_rf_r_data = val_stim_ch54_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH54_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch54_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH54_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch54_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH55_P0: begin
                apb_rf_r_data = val_stim_ch55_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH55_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch55_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH55_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch55_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH56_P0: begin
                apb_rf_r_data = val_stim_ch56_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH56_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch56_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH56_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch56_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH57_P0: begin
                apb_rf_r_data = val_stim_ch57_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH57_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch57_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH57_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch57_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH58_P0: begin
                apb_rf_r_data = val_stim_ch58_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH58_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch58_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH58_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch58_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH59_P0: begin
                apb_rf_r_data = val_stim_ch59_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH59_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch59_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH59_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch59_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH60_P0: begin
                apb_rf_r_data = val_stim_ch60_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH60_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch60_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH60_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch60_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH61_P0: begin
                apb_rf_r_data = val_stim_ch61_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH61_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch61_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH61_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch61_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH62_P0: begin
                apb_rf_r_data = val_stim_ch62_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH62_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch62_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH62_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch62_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH63_P0: begin
                apb_rf_r_data = val_stim_ch63_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH63_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch63_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH63_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch63_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            default: begin
                apb_rf_r_data = 32'h00000000;
                rf_next_read_permitted = 1'b0;
            end
        endcase
    end
    assign apb_rdata_o = apb_rf_r_data;
endmodule
