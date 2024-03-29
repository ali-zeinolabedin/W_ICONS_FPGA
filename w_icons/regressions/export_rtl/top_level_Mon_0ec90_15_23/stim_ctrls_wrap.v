/*
 * Module: stim_ctrls_wrap
 * Author: Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
`timescale 1ns/1ps

module stim_ctrls_wrap (
    reset_n_i,
    stim_xen_sync_i,
    stim_monophasic_i,
    stim_mask0_g1_i,
    stim_mask0_g2_i,
    stim_mask1_g1_i,
    stim_mask1_g2_i,
    stim_mask2_g1_i,
    stim_mask2_g2_i,
    stim_mask3_g1_i,
    stim_mask3_g2_i,
    stim_mask4_g1_i,
    stim_mask4_g2_i,
    stim_mask5_g1_i,
    stim_mask5_g2_i,
    stim_mask6_g1_i,
    stim_mask6_g2_i,
    stim_mask7_g1_i,
    stim_mask7_g2_i,
    stim0_interval_i,
    stim0_pulse_wc_i,
    stim0_pulse_gap_i,
    stim0_pulse_wa_i,
    stim0_pulse_num_i,
    stim0_pol_i,
    stim1_interval_i,
    stim1_pulse_wc_i,
    stim1_pulse_gap_i,
    stim1_pulse_wa_i,
    stim1_pulse_num_i,
    stim1_pol_i,
    stim2_interval_i,
    stim2_pulse_wc_i,
    stim2_pulse_gap_i,
    stim2_pulse_wa_i,
    stim2_pulse_num_i,
    stim2_pol_i,
    stim3_interval_i,
    stim3_pulse_wc_i,
    stim3_pulse_gap_i,
    stim3_pulse_wa_i,
    stim3_pulse_num_i,
    stim3_pol_i,
    stim4_interval_i,
    stim4_pulse_wc_i,
    stim4_pulse_gap_i,
    stim4_pulse_wa_i,
    stim4_pulse_num_i,
    stim4_pol_i,
    stim5_interval_i,
    stim5_pulse_wc_i,
    stim5_pulse_gap_i,
    stim5_pulse_wa_i,
    stim5_pulse_num_i,
    stim5_pol_i,
    stim6_interval_i,
    stim6_pulse_wc_i,
    stim6_pulse_gap_i,
    stim6_pulse_wa_i,
    stim6_pulse_num_i,
    stim6_pol_i,
    stim7_interval_i,
    stim7_pulse_wc_i,
    stim7_pulse_gap_i,
    stim7_pulse_wa_i,
    stim7_pulse_num_i,
    stim7_pol_i,
    stim8_interval_i,
    stim8_pulse_wc_i,
    stim8_pulse_gap_i,
    stim8_pulse_wa_i,
    stim8_pulse_num_i,
    stim8_pol_i,
    stim9_interval_i,
    stim9_pulse_wc_i,
    stim9_pulse_gap_i,
    stim9_pulse_wa_i,
    stim9_pulse_num_i,
    stim9_pol_i,
    stim10_interval_i,
    stim10_pulse_wc_i,
    stim10_pulse_gap_i,
    stim10_pulse_wa_i,
    stim10_pulse_num_i,
    stim10_pol_i,
    stim11_interval_i,
    stim11_pulse_wc_i,
    stim11_pulse_gap_i,
    stim11_pulse_wa_i,
    stim11_pulse_num_i,
    stim11_pol_i,
    stim12_interval_i,
    stim12_pulse_wc_i,
    stim12_pulse_gap_i,
    stim12_pulse_wa_i,
    stim12_pulse_num_i,
    stim12_pol_i,
    stim13_interval_i,
    stim13_pulse_wc_i,
    stim13_pulse_gap_i,
    stim13_pulse_wa_i,
    stim13_pulse_num_i,
    stim13_pol_i,
    stim14_interval_i,
    stim14_pulse_wc_i,
    stim14_pulse_gap_i,
    stim14_pulse_wa_i,
    stim14_pulse_num_i,
    stim14_pol_i,
    stim15_interval_i,
    stim15_pulse_wc_i,
    stim15_pulse_gap_i,
    stim15_pulse_wa_i,
    stim15_pulse_num_i,
    stim15_pol_i,
    stim16_interval_i,
    stim16_pulse_wc_i,
    stim16_pulse_gap_i,
    stim16_pulse_wa_i,
    stim16_pulse_num_i,
    stim16_pol_i,
    stim17_interval_i,
    stim17_pulse_wc_i,
    stim17_pulse_gap_i,
    stim17_pulse_wa_i,
    stim17_pulse_num_i,
    stim17_pol_i,
    stim18_interval_i,
    stim18_pulse_wc_i,
    stim18_pulse_gap_i,
    stim18_pulse_wa_i,
    stim18_pulse_num_i,
    stim18_pol_i,
    stim19_interval_i,
    stim19_pulse_wc_i,
    stim19_pulse_gap_i,
    stim19_pulse_wa_i,
    stim19_pulse_num_i,
    stim19_pol_i,
    stim20_interval_i,
    stim20_pulse_wc_i,
    stim20_pulse_gap_i,
    stim20_pulse_wa_i,
    stim20_pulse_num_i,
    stim20_pol_i,
    stim21_interval_i,
    stim21_pulse_wc_i,
    stim21_pulse_gap_i,
    stim21_pulse_wa_i,
    stim21_pulse_num_i,
    stim21_pol_i,
    stim22_interval_i,
    stim22_pulse_wc_i,
    stim22_pulse_gap_i,
    stim22_pulse_wa_i,
    stim22_pulse_num_i,
    stim22_pol_i,
    stim23_interval_i,
    stim23_pulse_wc_i,
    stim23_pulse_gap_i,
    stim23_pulse_wa_i,
    stim23_pulse_num_i,
    stim23_pol_i,
    stim24_interval_i,
    stim24_pulse_wc_i,
    stim24_pulse_gap_i,
    stim24_pulse_wa_i,
    stim24_pulse_num_i,
    stim24_pol_i,
    stim25_interval_i,
    stim25_pulse_wc_i,
    stim25_pulse_gap_i,
    stim25_pulse_wa_i,
    stim25_pulse_num_i,
    stim25_pol_i,
    stim26_interval_i,
    stim26_pulse_wc_i,
    stim26_pulse_gap_i,
    stim26_pulse_wa_i,
    stim26_pulse_num_i,
    stim26_pol_i,
    stim27_interval_i,
    stim27_pulse_wc_i,
    stim27_pulse_gap_i,
    stim27_pulse_wa_i,
    stim27_pulse_num_i,
    stim27_pol_i,
    stim28_interval_i,
    stim28_pulse_wc_i,
    stim28_pulse_gap_i,
    stim28_pulse_wa_i,
    stim28_pulse_num_i,
    stim28_pol_i,
    stim29_interval_i,
    stim29_pulse_wc_i,
    stim29_pulse_gap_i,
    stim29_pulse_wa_i,
    stim29_pulse_num_i,
    stim29_pol_i,
    stim30_interval_i,
    stim30_pulse_wc_i,
    stim30_pulse_gap_i,
    stim30_pulse_wa_i,
    stim30_pulse_num_i,
    stim30_pol_i,
    stim31_interval_i,
    stim31_pulse_wc_i,
    stim31_pulse_gap_i,
    stim31_pulse_wa_i,
    stim31_pulse_num_i,
    stim31_pol_i,
    stim32_interval_i,
    stim32_pulse_wc_i,
    stim32_pulse_gap_i,
    stim32_pulse_wa_i,
    stim32_pulse_num_i,
    stim32_pol_i,
    stim33_interval_i,
    stim33_pulse_wc_i,
    stim33_pulse_gap_i,
    stim33_pulse_wa_i,
    stim33_pulse_num_i,
    stim33_pol_i,
    stim34_interval_i,
    stim34_pulse_wc_i,
    stim34_pulse_gap_i,
    stim34_pulse_wa_i,
    stim34_pulse_num_i,
    stim34_pol_i,
    stim35_interval_i,
    stim35_pulse_wc_i,
    stim35_pulse_gap_i,
    stim35_pulse_wa_i,
    stim35_pulse_num_i,
    stim35_pol_i,
    stim36_interval_i,
    stim36_pulse_wc_i,
    stim36_pulse_gap_i,
    stim36_pulse_wa_i,
    stim36_pulse_num_i,
    stim36_pol_i,
    stim37_interval_i,
    stim37_pulse_wc_i,
    stim37_pulse_gap_i,
    stim37_pulse_wa_i,
    stim37_pulse_num_i,
    stim37_pol_i,
    stim38_interval_i,
    stim38_pulse_wc_i,
    stim38_pulse_gap_i,
    stim38_pulse_wa_i,
    stim38_pulse_num_i,
    stim38_pol_i,
    stim39_interval_i,
    stim39_pulse_wc_i,
    stim39_pulse_gap_i,
    stim39_pulse_wa_i,
    stim39_pulse_num_i,
    stim39_pol_i,
    stim40_interval_i,
    stim40_pulse_wc_i,
    stim40_pulse_gap_i,
    stim40_pulse_wa_i,
    stim40_pulse_num_i,
    stim40_pol_i,
    stim41_interval_i,
    stim41_pulse_wc_i,
    stim41_pulse_gap_i,
    stim41_pulse_wa_i,
    stim41_pulse_num_i,
    stim41_pol_i,
    stim42_interval_i,
    stim42_pulse_wc_i,
    stim42_pulse_gap_i,
    stim42_pulse_wa_i,
    stim42_pulse_num_i,
    stim42_pol_i,
    stim43_interval_i,
    stim43_pulse_wc_i,
    stim43_pulse_gap_i,
    stim43_pulse_wa_i,
    stim43_pulse_num_i,
    stim43_pol_i,
    stim44_interval_i,
    stim44_pulse_wc_i,
    stim44_pulse_gap_i,
    stim44_pulse_wa_i,
    stim44_pulse_num_i,
    stim44_pol_i,
    stim45_interval_i,
    stim45_pulse_wc_i,
    stim45_pulse_gap_i,
    stim45_pulse_wa_i,
    stim45_pulse_num_i,
    stim45_pol_i,
    stim46_interval_i,
    stim46_pulse_wc_i,
    stim46_pulse_gap_i,
    stim46_pulse_wa_i,
    stim46_pulse_num_i,
    stim46_pol_i,
    stim47_interval_i,
    stim47_pulse_wc_i,
    stim47_pulse_gap_i,
    stim47_pulse_wa_i,
    stim47_pulse_num_i,
    stim47_pol_i,
    stim48_interval_i,
    stim48_pulse_wc_i,
    stim48_pulse_gap_i,
    stim48_pulse_wa_i,
    stim48_pulse_num_i,
    stim48_pol_i,
    stim49_interval_i,
    stim49_pulse_wc_i,
    stim49_pulse_gap_i,
    stim49_pulse_wa_i,
    stim49_pulse_num_i,
    stim49_pol_i,
    stim50_interval_i,
    stim50_pulse_wc_i,
    stim50_pulse_gap_i,
    stim50_pulse_wa_i,
    stim50_pulse_num_i,
    stim50_pol_i,
    stim51_interval_i,
    stim51_pulse_wc_i,
    stim51_pulse_gap_i,
    stim51_pulse_wa_i,
    stim51_pulse_num_i,
    stim51_pol_i,
    stim52_interval_i,
    stim52_pulse_wc_i,
    stim52_pulse_gap_i,
    stim52_pulse_wa_i,
    stim52_pulse_num_i,
    stim52_pol_i,
    stim53_interval_i,
    stim53_pulse_wc_i,
    stim53_pulse_gap_i,
    stim53_pulse_wa_i,
    stim53_pulse_num_i,
    stim53_pol_i,
    stim54_interval_i,
    stim54_pulse_wc_i,
    stim54_pulse_gap_i,
    stim54_pulse_wa_i,
    stim54_pulse_num_i,
    stim54_pol_i,
    stim55_interval_i,
    stim55_pulse_wc_i,
    stim55_pulse_gap_i,
    stim55_pulse_wa_i,
    stim55_pulse_num_i,
    stim55_pol_i,
    stim56_interval_i,
    stim56_pulse_wc_i,
    stim56_pulse_gap_i,
    stim56_pulse_wa_i,
    stim56_pulse_num_i,
    stim56_pol_i,
    stim57_interval_i,
    stim57_pulse_wc_i,
    stim57_pulse_gap_i,
    stim57_pulse_wa_i,
    stim57_pulse_num_i,
    stim57_pol_i,
    stim58_interval_i,
    stim58_pulse_wc_i,
    stim58_pulse_gap_i,
    stim58_pulse_wa_i,
    stim58_pulse_num_i,
    stim58_pol_i,
    stim59_interval_i,
    stim59_pulse_wc_i,
    stim59_pulse_gap_i,
    stim59_pulse_wa_i,
    stim59_pulse_num_i,
    stim59_pol_i,
    stim60_interval_i,
    stim60_pulse_wc_i,
    stim60_pulse_gap_i,
    stim60_pulse_wa_i,
    stim60_pulse_num_i,
    stim60_pol_i,
    stim61_interval_i,
    stim61_pulse_wc_i,
    stim61_pulse_gap_i,
    stim61_pulse_wa_i,
    stim61_pulse_num_i,
    stim61_pol_i,
    stim62_interval_i,
    stim62_pulse_wc_i,
    stim62_pulse_gap_i,
    stim62_pulse_wa_i,
    stim62_pulse_num_i,
    stim62_pol_i,
    stim63_interval_i,
    stim63_pulse_wc_i,
    stim63_pulse_gap_i,
    stim63_pulse_wa_i,
    stim63_pulse_num_i,
    stim63_pol_i,
    err_stim_o,
    stim_mask_en0_g_i,
    stim_mask_en1_g_i,
    stim_mask_en2_g_i,
    stim_mask_en3_g_i,
    stim_mask_en4_g_i,
    stim_mask_en5_g_i,
    stim_mask_en6_g_i,
    stim_mask_en7_g_i,
    clk_stim_i,
    stim_en_vec_o,
    EnN_vec_o,
    EnP_vec_o,
    imp_en_g1_sync_o,
    imp_en_g2_sync_o,
    limiting_current_o
);

    input         reset_n_i;
    input         stim_xen_sync_i;
    input         stim_monophasic_i;
    input  [31:0] stim_mask0_g1_i;
    input  [31:0] stim_mask0_g2_i;
    input  [31:0] stim_mask1_g1_i;
    input  [31:0] stim_mask1_g2_i;
    input  [31:0] stim_mask2_g1_i;
    input  [31:0] stim_mask2_g2_i;
    input  [31:0] stim_mask3_g1_i;
    input  [31:0] stim_mask3_g2_i;
    input  [31:0] stim_mask4_g1_i;
    input  [31:0] stim_mask4_g2_i;
    input  [31:0] stim_mask5_g1_i;
    input  [31:0] stim_mask5_g2_i;
    input  [31:0] stim_mask6_g1_i;
    input  [31:0] stim_mask6_g2_i;
    input  [31:0] stim_mask7_g1_i;
    input  [31:0] stim_mask7_g2_i;
    input  [15:0] stim0_interval_i;
    input  [13:0] stim0_pulse_wc_i;
    input  [13:0] stim0_pulse_gap_i;
    input  [13:0] stim0_pulse_wa_i;
    input  [11:0] stim0_pulse_num_i;
    input         stim0_pol_i;
    input  [15:0] stim1_interval_i;
    input  [13:0] stim1_pulse_wc_i;
    input  [13:0] stim1_pulse_gap_i;
    input  [13:0] stim1_pulse_wa_i;
    input  [11:0] stim1_pulse_num_i;
    input         stim1_pol_i;
    input  [15:0] stim2_interval_i;
    input  [13:0] stim2_pulse_wc_i;
    input  [13:0] stim2_pulse_gap_i;
    input  [13:0] stim2_pulse_wa_i;
    input  [11:0] stim2_pulse_num_i;
    input         stim2_pol_i;
    input  [15:0] stim3_interval_i;
    input  [13:0] stim3_pulse_wc_i;
    input  [13:0] stim3_pulse_gap_i;
    input  [13:0] stim3_pulse_wa_i;
    input  [11:0] stim3_pulse_num_i;
    input         stim3_pol_i;
    input  [15:0] stim4_interval_i;
    input  [13:0] stim4_pulse_wc_i;
    input  [13:0] stim4_pulse_gap_i;
    input  [13:0] stim4_pulse_wa_i;
    input  [11:0] stim4_pulse_num_i;
    input         stim4_pol_i;
    input  [15:0] stim5_interval_i;
    input  [13:0] stim5_pulse_wc_i;
    input  [13:0] stim5_pulse_gap_i;
    input  [13:0] stim5_pulse_wa_i;
    input  [11:0] stim5_pulse_num_i;
    input         stim5_pol_i;
    input  [15:0] stim6_interval_i;
    input  [13:0] stim6_pulse_wc_i;
    input  [13:0] stim6_pulse_gap_i;
    input  [13:0] stim6_pulse_wa_i;
    input  [11:0] stim6_pulse_num_i;
    input         stim6_pol_i;
    input  [15:0] stim7_interval_i;
    input  [13:0] stim7_pulse_wc_i;
    input  [13:0] stim7_pulse_gap_i;
    input  [13:0] stim7_pulse_wa_i;
    input  [11:0] stim7_pulse_num_i;
    input         stim7_pol_i;
    input  [15:0] stim8_interval_i;
    input  [13:0] stim8_pulse_wc_i;
    input  [13:0] stim8_pulse_gap_i;
    input  [13:0] stim8_pulse_wa_i;
    input  [11:0] stim8_pulse_num_i;
    input         stim8_pol_i;
    input  [15:0] stim9_interval_i;
    input  [13:0] stim9_pulse_wc_i;
    input  [13:0] stim9_pulse_gap_i;
    input  [13:0] stim9_pulse_wa_i;
    input  [11:0] stim9_pulse_num_i;
    input         stim9_pol_i;
    input  [15:0] stim10_interval_i;
    input  [13:0] stim10_pulse_wc_i;
    input  [13:0] stim10_pulse_gap_i;
    input  [13:0] stim10_pulse_wa_i;
    input  [11:0] stim10_pulse_num_i;
    input         stim10_pol_i;
    input  [15:0] stim11_interval_i;
    input  [13:0] stim11_pulse_wc_i;
    input  [13:0] stim11_pulse_gap_i;
    input  [13:0] stim11_pulse_wa_i;
    input  [11:0] stim11_pulse_num_i;
    input         stim11_pol_i;
    input  [15:0] stim12_interval_i;
    input  [13:0] stim12_pulse_wc_i;
    input  [13:0] stim12_pulse_gap_i;
    input  [13:0] stim12_pulse_wa_i;
    input  [11:0] stim12_pulse_num_i;
    input         stim12_pol_i;
    input  [15:0] stim13_interval_i;
    input  [13:0] stim13_pulse_wc_i;
    input  [13:0] stim13_pulse_gap_i;
    input  [13:0] stim13_pulse_wa_i;
    input  [11:0] stim13_pulse_num_i;
    input         stim13_pol_i;
    input  [15:0] stim14_interval_i;
    input  [13:0] stim14_pulse_wc_i;
    input  [13:0] stim14_pulse_gap_i;
    input  [13:0] stim14_pulse_wa_i;
    input  [11:0] stim14_pulse_num_i;
    input         stim14_pol_i;
    input  [15:0] stim15_interval_i;
    input  [13:0] stim15_pulse_wc_i;
    input  [13:0] stim15_pulse_gap_i;
    input  [13:0] stim15_pulse_wa_i;
    input  [11:0] stim15_pulse_num_i;
    input         stim15_pol_i;
    input  [15:0] stim16_interval_i;
    input  [13:0] stim16_pulse_wc_i;
    input  [13:0] stim16_pulse_gap_i;
    input  [13:0] stim16_pulse_wa_i;
    input  [11:0] stim16_pulse_num_i;
    input         stim16_pol_i;
    input  [15:0] stim17_interval_i;
    input  [13:0] stim17_pulse_wc_i;
    input  [13:0] stim17_pulse_gap_i;
    input  [13:0] stim17_pulse_wa_i;
    input  [11:0] stim17_pulse_num_i;
    input         stim17_pol_i;
    input  [15:0] stim18_interval_i;
    input  [13:0] stim18_pulse_wc_i;
    input  [13:0] stim18_pulse_gap_i;
    input  [13:0] stim18_pulse_wa_i;
    input  [11:0] stim18_pulse_num_i;
    input         stim18_pol_i;
    input  [15:0] stim19_interval_i;
    input  [13:0] stim19_pulse_wc_i;
    input  [13:0] stim19_pulse_gap_i;
    input  [13:0] stim19_pulse_wa_i;
    input  [11:0] stim19_pulse_num_i;
    input         stim19_pol_i;
    input  [15:0] stim20_interval_i;
    input  [13:0] stim20_pulse_wc_i;
    input  [13:0] stim20_pulse_gap_i;
    input  [13:0] stim20_pulse_wa_i;
    input  [11:0] stim20_pulse_num_i;
    input         stim20_pol_i;
    input  [15:0] stim21_interval_i;
    input  [13:0] stim21_pulse_wc_i;
    input  [13:0] stim21_pulse_gap_i;
    input  [13:0] stim21_pulse_wa_i;
    input  [11:0] stim21_pulse_num_i;
    input         stim21_pol_i;
    input  [15:0] stim22_interval_i;
    input  [13:0] stim22_pulse_wc_i;
    input  [13:0] stim22_pulse_gap_i;
    input  [13:0] stim22_pulse_wa_i;
    input  [11:0] stim22_pulse_num_i;
    input         stim22_pol_i;
    input  [15:0] stim23_interval_i;
    input  [13:0] stim23_pulse_wc_i;
    input  [13:0] stim23_pulse_gap_i;
    input  [13:0] stim23_pulse_wa_i;
    input  [11:0] stim23_pulse_num_i;
    input         stim23_pol_i;
    input  [15:0] stim24_interval_i;
    input  [13:0] stim24_pulse_wc_i;
    input  [13:0] stim24_pulse_gap_i;
    input  [13:0] stim24_pulse_wa_i;
    input  [11:0] stim24_pulse_num_i;
    input         stim24_pol_i;
    input  [15:0] stim25_interval_i;
    input  [13:0] stim25_pulse_wc_i;
    input  [13:0] stim25_pulse_gap_i;
    input  [13:0] stim25_pulse_wa_i;
    input  [11:0] stim25_pulse_num_i;
    input         stim25_pol_i;
    input  [15:0] stim26_interval_i;
    input  [13:0] stim26_pulse_wc_i;
    input  [13:0] stim26_pulse_gap_i;
    input  [13:0] stim26_pulse_wa_i;
    input  [11:0] stim26_pulse_num_i;
    input         stim26_pol_i;
    input  [15:0] stim27_interval_i;
    input  [13:0] stim27_pulse_wc_i;
    input  [13:0] stim27_pulse_gap_i;
    input  [13:0] stim27_pulse_wa_i;
    input  [11:0] stim27_pulse_num_i;
    input         stim27_pol_i;
    input  [15:0] stim28_interval_i;
    input  [13:0] stim28_pulse_wc_i;
    input  [13:0] stim28_pulse_gap_i;
    input  [13:0] stim28_pulse_wa_i;
    input  [11:0] stim28_pulse_num_i;
    input         stim28_pol_i;
    input  [15:0] stim29_interval_i;
    input  [13:0] stim29_pulse_wc_i;
    input  [13:0] stim29_pulse_gap_i;
    input  [13:0] stim29_pulse_wa_i;
    input  [11:0] stim29_pulse_num_i;
    input         stim29_pol_i;
    input  [15:0] stim30_interval_i;
    input  [13:0] stim30_pulse_wc_i;
    input  [13:0] stim30_pulse_gap_i;
    input  [13:0] stim30_pulse_wa_i;
    input  [11:0] stim30_pulse_num_i;
    input         stim30_pol_i;
    input  [15:0] stim31_interval_i;
    input  [13:0] stim31_pulse_wc_i;
    input  [13:0] stim31_pulse_gap_i;
    input  [13:0] stim31_pulse_wa_i;
    input  [11:0] stim31_pulse_num_i;
    input         stim31_pol_i;
    input  [15:0] stim32_interval_i;
    input  [13:0] stim32_pulse_wc_i;
    input  [13:0] stim32_pulse_gap_i;
    input  [13:0] stim32_pulse_wa_i;
    input  [11:0] stim32_pulse_num_i;
    input         stim32_pol_i;
    input  [15:0] stim33_interval_i;
    input  [13:0] stim33_pulse_wc_i;
    input  [13:0] stim33_pulse_gap_i;
    input  [13:0] stim33_pulse_wa_i;
    input  [11:0] stim33_pulse_num_i;
    input         stim33_pol_i;
    input  [15:0] stim34_interval_i;
    input  [13:0] stim34_pulse_wc_i;
    input  [13:0] stim34_pulse_gap_i;
    input  [13:0] stim34_pulse_wa_i;
    input  [11:0] stim34_pulse_num_i;
    input         stim34_pol_i;
    input  [15:0] stim35_interval_i;
    input  [13:0] stim35_pulse_wc_i;
    input  [13:0] stim35_pulse_gap_i;
    input  [13:0] stim35_pulse_wa_i;
    input  [11:0] stim35_pulse_num_i;
    input         stim35_pol_i;
    input  [15:0] stim36_interval_i;
    input  [13:0] stim36_pulse_wc_i;
    input  [13:0] stim36_pulse_gap_i;
    input  [13:0] stim36_pulse_wa_i;
    input  [11:0] stim36_pulse_num_i;
    input         stim36_pol_i;
    input  [15:0] stim37_interval_i;
    input  [13:0] stim37_pulse_wc_i;
    input  [13:0] stim37_pulse_gap_i;
    input  [13:0] stim37_pulse_wa_i;
    input  [11:0] stim37_pulse_num_i;
    input         stim37_pol_i;
    input  [15:0] stim38_interval_i;
    input  [13:0] stim38_pulse_wc_i;
    input  [13:0] stim38_pulse_gap_i;
    input  [13:0] stim38_pulse_wa_i;
    input  [11:0] stim38_pulse_num_i;
    input         stim38_pol_i;
    input  [15:0] stim39_interval_i;
    input  [13:0] stim39_pulse_wc_i;
    input  [13:0] stim39_pulse_gap_i;
    input  [13:0] stim39_pulse_wa_i;
    input  [11:0] stim39_pulse_num_i;
    input         stim39_pol_i;
    input  [15:0] stim40_interval_i;
    input  [13:0] stim40_pulse_wc_i;
    input  [13:0] stim40_pulse_gap_i;
    input  [13:0] stim40_pulse_wa_i;
    input  [11:0] stim40_pulse_num_i;
    input         stim40_pol_i;
    input  [15:0] stim41_interval_i;
    input  [13:0] stim41_pulse_wc_i;
    input  [13:0] stim41_pulse_gap_i;
    input  [13:0] stim41_pulse_wa_i;
    input  [11:0] stim41_pulse_num_i;
    input         stim41_pol_i;
    input  [15:0] stim42_interval_i;
    input  [13:0] stim42_pulse_wc_i;
    input  [13:0] stim42_pulse_gap_i;
    input  [13:0] stim42_pulse_wa_i;
    input  [11:0] stim42_pulse_num_i;
    input         stim42_pol_i;
    input  [15:0] stim43_interval_i;
    input  [13:0] stim43_pulse_wc_i;
    input  [13:0] stim43_pulse_gap_i;
    input  [13:0] stim43_pulse_wa_i;
    input  [11:0] stim43_pulse_num_i;
    input         stim43_pol_i;
    input  [15:0] stim44_interval_i;
    input  [13:0] stim44_pulse_wc_i;
    input  [13:0] stim44_pulse_gap_i;
    input  [13:0] stim44_pulse_wa_i;
    input  [11:0] stim44_pulse_num_i;
    input         stim44_pol_i;
    input  [15:0] stim45_interval_i;
    input  [13:0] stim45_pulse_wc_i;
    input  [13:0] stim45_pulse_gap_i;
    input  [13:0] stim45_pulse_wa_i;
    input  [11:0] stim45_pulse_num_i;
    input         stim45_pol_i;
    input  [15:0] stim46_interval_i;
    input  [13:0] stim46_pulse_wc_i;
    input  [13:0] stim46_pulse_gap_i;
    input  [13:0] stim46_pulse_wa_i;
    input  [11:0] stim46_pulse_num_i;
    input         stim46_pol_i;
    input  [15:0] stim47_interval_i;
    input  [13:0] stim47_pulse_wc_i;
    input  [13:0] stim47_pulse_gap_i;
    input  [13:0] stim47_pulse_wa_i;
    input  [11:0] stim47_pulse_num_i;
    input         stim47_pol_i;
    input  [15:0] stim48_interval_i;
    input  [13:0] stim48_pulse_wc_i;
    input  [13:0] stim48_pulse_gap_i;
    input  [13:0] stim48_pulse_wa_i;
    input  [11:0] stim48_pulse_num_i;
    input         stim48_pol_i;
    input  [15:0] stim49_interval_i;
    input  [13:0] stim49_pulse_wc_i;
    input  [13:0] stim49_pulse_gap_i;
    input  [13:0] stim49_pulse_wa_i;
    input  [11:0] stim49_pulse_num_i;
    input         stim49_pol_i;
    input  [15:0] stim50_interval_i;
    input  [13:0] stim50_pulse_wc_i;
    input  [13:0] stim50_pulse_gap_i;
    input  [13:0] stim50_pulse_wa_i;
    input  [11:0] stim50_pulse_num_i;
    input         stim50_pol_i;
    input  [15:0] stim51_interval_i;
    input  [13:0] stim51_pulse_wc_i;
    input  [13:0] stim51_pulse_gap_i;
    input  [13:0] stim51_pulse_wa_i;
    input  [11:0] stim51_pulse_num_i;
    input         stim51_pol_i;
    input  [15:0] stim52_interval_i;
    input  [13:0] stim52_pulse_wc_i;
    input  [13:0] stim52_pulse_gap_i;
    input  [13:0] stim52_pulse_wa_i;
    input  [11:0] stim52_pulse_num_i;
    input         stim52_pol_i;
    input  [15:0] stim53_interval_i;
    input  [13:0] stim53_pulse_wc_i;
    input  [13:0] stim53_pulse_gap_i;
    input  [13:0] stim53_pulse_wa_i;
    input  [11:0] stim53_pulse_num_i;
    input         stim53_pol_i;
    input  [15:0] stim54_interval_i;
    input  [13:0] stim54_pulse_wc_i;
    input  [13:0] stim54_pulse_gap_i;
    input  [13:0] stim54_pulse_wa_i;
    input  [11:0] stim54_pulse_num_i;
    input         stim54_pol_i;
    input  [15:0] stim55_interval_i;
    input  [13:0] stim55_pulse_wc_i;
    input  [13:0] stim55_pulse_gap_i;
    input  [13:0] stim55_pulse_wa_i;
    input  [11:0] stim55_pulse_num_i;
    input         stim55_pol_i;
    input  [15:0] stim56_interval_i;
    input  [13:0] stim56_pulse_wc_i;
    input  [13:0] stim56_pulse_gap_i;
    input  [13:0] stim56_pulse_wa_i;
    input  [11:0] stim56_pulse_num_i;
    input         stim56_pol_i;
    input  [15:0] stim57_interval_i;
    input  [13:0] stim57_pulse_wc_i;
    input  [13:0] stim57_pulse_gap_i;
    input  [13:0] stim57_pulse_wa_i;
    input  [11:0] stim57_pulse_num_i;
    input         stim57_pol_i;
    input  [15:0] stim58_interval_i;
    input  [13:0] stim58_pulse_wc_i;
    input  [13:0] stim58_pulse_gap_i;
    input  [13:0] stim58_pulse_wa_i;
    input  [11:0] stim58_pulse_num_i;
    input         stim58_pol_i;
    input  [15:0] stim59_interval_i;
    input  [13:0] stim59_pulse_wc_i;
    input  [13:0] stim59_pulse_gap_i;
    input  [13:0] stim59_pulse_wa_i;
    input  [11:0] stim59_pulse_num_i;
    input         stim59_pol_i;
    input  [15:0] stim60_interval_i;
    input  [13:0] stim60_pulse_wc_i;
    input  [13:0] stim60_pulse_gap_i;
    input  [13:0] stim60_pulse_wa_i;
    input  [11:0] stim60_pulse_num_i;
    input         stim60_pol_i;
    input  [15:0] stim61_interval_i;
    input  [13:0] stim61_pulse_wc_i;
    input  [13:0] stim61_pulse_gap_i;
    input  [13:0] stim61_pulse_wa_i;
    input  [11:0] stim61_pulse_num_i;
    input         stim61_pol_i;
    input  [15:0] stim62_interval_i;
    input  [13:0] stim62_pulse_wc_i;
    input  [13:0] stim62_pulse_gap_i;
    input  [13:0] stim62_pulse_wa_i;
    input  [11:0] stim62_pulse_num_i;
    input         stim62_pol_i;
    input  [15:0] stim63_interval_i;
    input  [13:0] stim63_pulse_wc_i;
    input  [13:0] stim63_pulse_gap_i;
    input  [13:0] stim63_pulse_wa_i;
    input  [11:0] stim63_pulse_num_i;
    input         stim63_pol_i;
    output        err_stim_o;
    input         stim_mask_en0_g_i;
    input         stim_mask_en1_g_i;
    input         stim_mask_en2_g_i;
    input         stim_mask_en3_g_i;
    input         stim_mask_en4_g_i;
    input         stim_mask_en5_g_i;
    input         stim_mask_en6_g_i;
    input         stim_mask_en7_g_i;
    input         clk_stim_i;
    output [63:0] stim_en_vec_o;
    output [63:0] EnN_vec_o;
    output [63:0] EnP_vec_o;
    output [31:0] imp_en_g1_sync_o;
    output [31:0] imp_en_g2_sync_o;
    output        limiting_current_o;

    wire [7:0] mask_en_8bit_s;
    wire       mask_en_status0_s;
    wire       mask_en_status1_s;
    wire       mask_en_status2_s;
    wire       mask_en_status3_s;
    wire       mask_en_status4_s;
    wire       mask_en_status5_s;
    wire       mask_en_status6_s;
    wire       mask_en_status7_s;
    wire       anode_en0_s;
    wire       cathode_en0_s;
    wire       stim_cntrl_en0_s;
    wire       anode_en1_s;
    wire       cathode_en1_s;
    wire       stim_cntrl_en1_s;
    wire       anode_en2_s;
    wire       cathode_en2_s;
    wire       stim_cntrl_en2_s;
    wire       anode_en3_s;
    wire       cathode_en3_s;
    wire       stim_cntrl_en3_s;
    wire       anode_en4_s;
    wire       cathode_en4_s;
    wire       stim_cntrl_en4_s;
    wire       anode_en5_s;
    wire       cathode_en5_s;
    wire       stim_cntrl_en5_s;
    wire       anode_en6_s;
    wire       cathode_en6_s;
    wire       stim_cntrl_en6_s;
    wire       anode_en7_s;
    wire       cathode_en7_s;
    wire       stim_cntrl_en7_s;
    wire       anode_en8_s;
    wire       cathode_en8_s;
    wire       stim_cntrl_en8_s;
    wire       anode_en9_s;
    wire       cathode_en9_s;
    wire       stim_cntrl_en9_s;
    wire       anode_en10_s;
    wire       cathode_en10_s;
    wire       stim_cntrl_en10_s;
    wire       anode_en11_s;
    wire       cathode_en11_s;
    wire       stim_cntrl_en11_s;
    wire       anode_en12_s;
    wire       cathode_en12_s;
    wire       stim_cntrl_en12_s;
    wire       anode_en13_s;
    wire       cathode_en13_s;
    wire       stim_cntrl_en13_s;
    wire       anode_en14_s;
    wire       cathode_en14_s;
    wire       stim_cntrl_en14_s;
    wire       anode_en15_s;
    wire       cathode_en15_s;
    wire       stim_cntrl_en15_s;
    wire       anode_en16_s;
    wire       cathode_en16_s;
    wire       stim_cntrl_en16_s;
    wire       anode_en17_s;
    wire       cathode_en17_s;
    wire       stim_cntrl_en17_s;
    wire       anode_en18_s;
    wire       cathode_en18_s;
    wire       stim_cntrl_en18_s;
    wire       anode_en19_s;
    wire       cathode_en19_s;
    wire       stim_cntrl_en19_s;
    wire       anode_en20_s;
    wire       cathode_en20_s;
    wire       stim_cntrl_en20_s;
    wire       anode_en21_s;
    wire       cathode_en21_s;
    wire       stim_cntrl_en21_s;
    wire       anode_en22_s;
    wire       cathode_en22_s;
    wire       stim_cntrl_en22_s;
    wire       anode_en23_s;
    wire       cathode_en23_s;
    wire       stim_cntrl_en23_s;
    wire       anode_en24_s;
    wire       cathode_en24_s;
    wire       stim_cntrl_en24_s;
    wire       anode_en25_s;
    wire       cathode_en25_s;
    wire       stim_cntrl_en25_s;
    wire       anode_en26_s;
    wire       cathode_en26_s;
    wire       stim_cntrl_en26_s;
    wire       anode_en27_s;
    wire       cathode_en27_s;
    wire       stim_cntrl_en27_s;
    wire       anode_en28_s;
    wire       cathode_en28_s;
    wire       stim_cntrl_en28_s;
    wire       anode_en29_s;
    wire       cathode_en29_s;
    wire       stim_cntrl_en29_s;
    wire       anode_en30_s;
    wire       cathode_en30_s;
    wire       stim_cntrl_en30_s;
    wire       anode_en31_s;
    wire       cathode_en31_s;
    wire       stim_cntrl_en31_s;
    wire       anode_en32_s;
    wire       cathode_en32_s;
    wire       stim_cntrl_en32_s;
    wire       anode_en33_s;
    wire       cathode_en33_s;
    wire       stim_cntrl_en33_s;
    wire       anode_en34_s;
    wire       cathode_en34_s;
    wire       stim_cntrl_en34_s;
    wire       anode_en35_s;
    wire       cathode_en35_s;
    wire       stim_cntrl_en35_s;
    wire       anode_en36_s;
    wire       cathode_en36_s;
    wire       stim_cntrl_en36_s;
    wire       anode_en37_s;
    wire       cathode_en37_s;
    wire       stim_cntrl_en37_s;
    wire       anode_en38_s;
    wire       cathode_en38_s;
    wire       stim_cntrl_en38_s;
    wire       anode_en39_s;
    wire       cathode_en39_s;
    wire       stim_cntrl_en39_s;
    wire       anode_en40_s;
    wire       cathode_en40_s;
    wire       stim_cntrl_en40_s;
    wire       anode_en41_s;
    wire       cathode_en41_s;
    wire       stim_cntrl_en41_s;
    wire       anode_en42_s;
    wire       cathode_en42_s;
    wire       stim_cntrl_en42_s;
    wire       anode_en43_s;
    wire       cathode_en43_s;
    wire       stim_cntrl_en43_s;
    wire       anode_en44_s;
    wire       cathode_en44_s;
    wire       stim_cntrl_en44_s;
    wire       anode_en45_s;
    wire       cathode_en45_s;
    wire       stim_cntrl_en45_s;
    wire       anode_en46_s;
    wire       cathode_en46_s;
    wire       stim_cntrl_en46_s;
    wire       anode_en47_s;
    wire       cathode_en47_s;
    wire       stim_cntrl_en47_s;
    wire       anode_en48_s;
    wire       cathode_en48_s;
    wire       stim_cntrl_en48_s;
    wire       anode_en49_s;
    wire       cathode_en49_s;
    wire       stim_cntrl_en49_s;
    wire       anode_en50_s;
    wire       cathode_en50_s;
    wire       stim_cntrl_en50_s;
    wire       anode_en51_s;
    wire       cathode_en51_s;
    wire       stim_cntrl_en51_s;
    wire       anode_en52_s;
    wire       cathode_en52_s;
    wire       stim_cntrl_en52_s;
    wire       anode_en53_s;
    wire       cathode_en53_s;
    wire       stim_cntrl_en53_s;
    wire       anode_en54_s;
    wire       cathode_en54_s;
    wire       stim_cntrl_en54_s;
    wire       anode_en55_s;
    wire       cathode_en55_s;
    wire       stim_cntrl_en55_s;
    wire       anode_en56_s;
    wire       cathode_en56_s;
    wire       stim_cntrl_en56_s;
    wire       anode_en57_s;
    wire       cathode_en57_s;
    wire       stim_cntrl_en57_s;
    wire       anode_en58_s;
    wire       cathode_en58_s;
    wire       stim_cntrl_en58_s;
    wire       anode_en59_s;
    wire       cathode_en59_s;
    wire       stim_cntrl_en59_s;
    wire       anode_en60_s;
    wire       cathode_en60_s;
    wire       stim_cntrl_en60_s;
    wire       anode_en61_s;
    wire       cathode_en61_s;
    wire       stim_cntrl_en61_s;
    wire       anode_en62_s;
    wire       cathode_en62_s;
    wire       stim_cntrl_en62_s;
    wire       anode_en63_s;
    wire       cathode_en63_s;
    wire       stim_cntrl_en63_s;
    
    wire [63:0] mask0_cat,mask1_cat,mask2_cat,mask3_cat,mask4_cat,mask5_cat,mask6_cat,mask7_cat;
    reg  [6:0]  mask0_ones,mask1_ones,mask2_ones,mask3_ones,mask4_ones,mask5_ones,mask6_ones,mask7_ones;
    integer  i0,i1,i2,i3,i4,i5,i6,i7;
    reg         mask0_cmp,mask1_cmp,mask2_cmp,mask3_cmp,mask4_cmp,mask5_cmp,mask6_cmp,mask7_cmp;
    reg         mask0_err,mask1_err,mask2_err,mask3_err,mask4_err,mask5_err,mask6_err,mask7_err;
    wire [7:0]  mask_saftey;
    wire        limiting_current_o; 
    reg         err_stim_o;
    reg  [63:0] stim_width_chk;
    
    assign      mask_saftey        = {mask7_err,mask6_err,mask5_err,mask4_err,mask3_err,mask2_err,mask1_err,mask0_err};
    assign      limiting_current_o = mask0_cmp | mask1_cmp | mask2_cmp | mask3_cmp | mask4_cmp | mask5_cmp | mask6_cmp | mask7_cmp ;


    always @(posedge clk_stim_i or negedge reset_n_i) begin
        if (reset_n_i == 1'b0) begin
            err_stim_o <= 1'b0;

        end else begin
            if ((|mask_saftey == 1'b1) || (|stim_width_chk == 1'b1)) begin
                //raise an error on GPIO
                err_stim_o <= 1'b1;
            end else begin
                //it is clear when new clean parameters are set
                err_stim_o <= 1'b0;
            end
        end
    end



    stim_ctrl i_stim_ctrl_ch0 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim0_interval_i),
        .pulse_wc_i      (stim0_pulse_wc_i),
        .pulse_gap_i     (stim0_pulse_gap_i),
        .pulse_wa_i      (stim0_pulse_wa_i),
        .pulse_num_i     (stim0_pulse_num_i),
        .pol_i           (stim0_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en0_s),
        .cathode_en_o    (cathode_en0_s),
        .stim_en_i       (stim_cntrl_en0_s)
    );

    stim_ctrl i_stim_ctrl_ch1 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim1_interval_i),
        .pulse_wc_i      (stim1_pulse_wc_i),
        .pulse_gap_i     (stim1_pulse_gap_i),
        .pulse_wa_i      (stim1_pulse_wa_i),
        .pulse_num_i     (stim1_pulse_num_i),
        .pol_i           (stim1_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en1_s),
        .cathode_en_o    (cathode_en1_s),
        .stim_en_i       (stim_cntrl_en1_s)
    );

    stim_ctrl i_stim_ctrl_ch2 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim2_interval_i),
        .pulse_wc_i      (stim2_pulse_wc_i),
        .pulse_gap_i     (stim2_pulse_gap_i),
        .pulse_wa_i      (stim2_pulse_wa_i),
        .pulse_num_i     (stim2_pulse_num_i),
        .pol_i           (stim2_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en2_s),
        .cathode_en_o    (cathode_en2_s),
        .stim_en_i       (stim_cntrl_en2_s)
    );

    stim_ctrl i_stim_ctrl_ch3 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim3_interval_i),
        .pulse_wc_i      (stim3_pulse_wc_i),
        .pulse_gap_i     (stim3_pulse_gap_i),
        .pulse_wa_i      (stim3_pulse_wa_i),
        .pulse_num_i     (stim3_pulse_num_i),
        .pol_i           (stim3_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en3_s),
        .cathode_en_o    (cathode_en3_s),
        .stim_en_i       (stim_cntrl_en3_s)
    );

    stim_ctrl i_stim_ctrl_ch4 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim4_interval_i),
        .pulse_wc_i      (stim4_pulse_wc_i),
        .pulse_gap_i     (stim4_pulse_gap_i),
        .pulse_wa_i      (stim4_pulse_wa_i),
        .pulse_num_i     (stim4_pulse_num_i),
        .pol_i           (stim4_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en4_s),
        .cathode_en_o    (cathode_en4_s),
        .stim_en_i       (stim_cntrl_en4_s)
    );

    stim_ctrl i_stim_ctrl_ch5 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim5_interval_i),
        .pulse_wc_i      (stim5_pulse_wc_i),
        .pulse_gap_i     (stim5_pulse_gap_i),
        .pulse_wa_i      (stim5_pulse_wa_i),
        .pulse_num_i     (stim5_pulse_num_i),
        .pol_i           (stim5_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en5_s),
        .cathode_en_o    (cathode_en5_s),
        .stim_en_i       (stim_cntrl_en5_s)
    );

    stim_ctrl i_stim_ctrl_ch6 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim6_interval_i),
        .pulse_wc_i      (stim6_pulse_wc_i),
        .pulse_gap_i     (stim6_pulse_gap_i),
        .pulse_wa_i      (stim6_pulse_wa_i),
        .pulse_num_i     (stim6_pulse_num_i),
        .pol_i           (stim6_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en6_s),
        .cathode_en_o    (cathode_en6_s),
        .stim_en_i       (stim_cntrl_en6_s)
    );

    stim_ctrl i_stim_ctrl_ch7 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim7_interval_i),
        .pulse_wc_i      (stim7_pulse_wc_i),
        .pulse_gap_i     (stim7_pulse_gap_i),
        .pulse_wa_i      (stim7_pulse_wa_i),
        .pulse_num_i     (stim7_pulse_num_i),
        .pol_i           (stim7_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en7_s),
        .cathode_en_o    (cathode_en7_s),
        .stim_en_i       (stim_cntrl_en7_s)
    );

    stim_ctrl i_stim_ctrl_ch8 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim8_interval_i),
        .pulse_wc_i      (stim8_pulse_wc_i),
        .pulse_gap_i     (stim8_pulse_gap_i),
        .pulse_wa_i      (stim8_pulse_wa_i),
        .pulse_num_i     (stim8_pulse_num_i),
        .pol_i           (stim8_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en8_s),
        .cathode_en_o    (cathode_en8_s),
        .stim_en_i       (stim_cntrl_en8_s)
    );

    stim_ctrl i_stim_ctrl_ch9 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim9_interval_i),
        .pulse_wc_i      (stim9_pulse_wc_i),
        .pulse_gap_i     (stim9_pulse_gap_i),
        .pulse_wa_i      (stim9_pulse_wa_i),
        .pulse_num_i     (stim9_pulse_num_i),
        .pol_i           (stim9_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en9_s),
        .cathode_en_o    (cathode_en9_s),
        .stim_en_i       (stim_cntrl_en9_s)
    );

    stim_ctrl i_stim_ctrl_ch10 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim10_interval_i),
        .pulse_wc_i      (stim10_pulse_wc_i),
        .pulse_gap_i     (stim10_pulse_gap_i),
        .pulse_wa_i      (stim10_pulse_wa_i),
        .pulse_num_i     (stim10_pulse_num_i),
        .pol_i           (stim10_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en10_s),
        .cathode_en_o    (cathode_en10_s),
        .stim_en_i       (stim_cntrl_en10_s)
    );

    stim_ctrl i_stim_ctrl_ch11 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim11_interval_i),
        .pulse_wc_i      (stim11_pulse_wc_i),
        .pulse_gap_i     (stim11_pulse_gap_i),
        .pulse_wa_i      (stim11_pulse_wa_i),
        .pulse_num_i     (stim11_pulse_num_i),
        .pol_i           (stim11_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en11_s),
        .cathode_en_o    (cathode_en11_s),
        .stim_en_i       (stim_cntrl_en11_s)
    );

    stim_ctrl i_stim_ctrl_ch12 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim12_interval_i),
        .pulse_wc_i      (stim12_pulse_wc_i),
        .pulse_gap_i     (stim12_pulse_gap_i),
        .pulse_wa_i      (stim12_pulse_wa_i),
        .pulse_num_i     (stim12_pulse_num_i),
        .pol_i           (stim12_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en12_s),
        .cathode_en_o    (cathode_en12_s),
        .stim_en_i       (stim_cntrl_en12_s)
    );

    stim_ctrl i_stim_ctrl_ch13 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim13_interval_i),
        .pulse_wc_i      (stim13_pulse_wc_i),
        .pulse_gap_i     (stim13_pulse_gap_i),
        .pulse_wa_i      (stim13_pulse_wa_i),
        .pulse_num_i     (stim13_pulse_num_i),
        .pol_i           (stim13_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en13_s),
        .cathode_en_o    (cathode_en13_s),
        .stim_en_i       (stim_cntrl_en13_s)
    );

    stim_ctrl i_stim_ctrl_ch14 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim14_interval_i),
        .pulse_wc_i      (stim14_pulse_wc_i),
        .pulse_gap_i     (stim14_pulse_gap_i),
        .pulse_wa_i      (stim14_pulse_wa_i),
        .pulse_num_i     (stim14_pulse_num_i),
        .pol_i           (stim14_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en14_s),
        .cathode_en_o    (cathode_en14_s),
        .stim_en_i       (stim_cntrl_en14_s)
    );

    stim_ctrl i_stim_ctrl_ch15 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim15_interval_i),
        .pulse_wc_i      (stim15_pulse_wc_i),
        .pulse_gap_i     (stim15_pulse_gap_i),
        .pulse_wa_i      (stim15_pulse_wa_i),
        .pulse_num_i     (stim15_pulse_num_i),
        .pol_i           (stim15_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en15_s),
        .cathode_en_o    (cathode_en15_s),
        .stim_en_i       (stim_cntrl_en15_s)
    );

    stim_ctrl i_stim_ctrl_ch16 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim16_interval_i),
        .pulse_wc_i      (stim16_pulse_wc_i),
        .pulse_gap_i     (stim16_pulse_gap_i),
        .pulse_wa_i      (stim16_pulse_wa_i),
        .pulse_num_i     (stim16_pulse_num_i),
        .pol_i           (stim16_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en16_s),
        .cathode_en_o    (cathode_en16_s),
        .stim_en_i       (stim_cntrl_en16_s)
    );

    stim_ctrl i_stim_ctrl_ch17 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim17_interval_i),
        .pulse_wc_i      (stim17_pulse_wc_i),
        .pulse_gap_i     (stim17_pulse_gap_i),
        .pulse_wa_i      (stim17_pulse_wa_i),
        .pulse_num_i     (stim17_pulse_num_i),
        .pol_i           (stim17_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en17_s),
        .cathode_en_o    (cathode_en17_s),
        .stim_en_i       (stim_cntrl_en17_s)
    );

    stim_ctrl i_stim_ctrl_ch18 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim18_interval_i),
        .pulse_wc_i      (stim18_pulse_wc_i),
        .pulse_gap_i     (stim18_pulse_gap_i),
        .pulse_wa_i      (stim18_pulse_wa_i),
        .pulse_num_i     (stim18_pulse_num_i),
        .pol_i           (stim18_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en18_s),
        .cathode_en_o    (cathode_en18_s),
        .stim_en_i       (stim_cntrl_en18_s)
    );

    stim_ctrl i_stim_ctrl_ch19 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim19_interval_i),
        .pulse_wc_i      (stim19_pulse_wc_i),
        .pulse_gap_i     (stim19_pulse_gap_i),
        .pulse_wa_i      (stim19_pulse_wa_i),
        .pulse_num_i     (stim19_pulse_num_i),
        .pol_i           (stim19_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en19_s),
        .cathode_en_o    (cathode_en19_s),
        .stim_en_i       (stim_cntrl_en19_s)
    );

    stim_ctrl i_stim_ctrl_ch20 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim20_interval_i),
        .pulse_wc_i      (stim20_pulse_wc_i),
        .pulse_gap_i     (stim20_pulse_gap_i),
        .pulse_wa_i      (stim20_pulse_wa_i),
        .pulse_num_i     (stim20_pulse_num_i),
        .pol_i           (stim20_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en20_s),
        .cathode_en_o    (cathode_en20_s),
        .stim_en_i       (stim_cntrl_en20_s)
    );

    stim_ctrl i_stim_ctrl_ch21 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim21_interval_i),
        .pulse_wc_i      (stim21_pulse_wc_i),
        .pulse_gap_i     (stim21_pulse_gap_i),
        .pulse_wa_i      (stim21_pulse_wa_i),
        .pulse_num_i     (stim21_pulse_num_i),
        .pol_i           (stim21_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en21_s),
        .cathode_en_o    (cathode_en21_s),
        .stim_en_i       (stim_cntrl_en21_s)
    );

    stim_ctrl i_stim_ctrl_ch22 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim22_interval_i),
        .pulse_wc_i      (stim22_pulse_wc_i),
        .pulse_gap_i     (stim22_pulse_gap_i),
        .pulse_wa_i      (stim22_pulse_wa_i),
        .pulse_num_i     (stim22_pulse_num_i),
        .pol_i           (stim22_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en22_s),
        .cathode_en_o    (cathode_en22_s),
        .stim_en_i       (stim_cntrl_en22_s)
    );

    stim_ctrl i_stim_ctrl_ch23 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim23_interval_i),
        .pulse_wc_i      (stim23_pulse_wc_i),
        .pulse_gap_i     (stim23_pulse_gap_i),
        .pulse_wa_i      (stim23_pulse_wa_i),
        .pulse_num_i     (stim23_pulse_num_i),
        .pol_i           (stim23_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en23_s),
        .cathode_en_o    (cathode_en23_s),
        .stim_en_i       (stim_cntrl_en23_s)
    );

    stim_ctrl i_stim_ctrl_ch24 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim24_interval_i),
        .pulse_wc_i      (stim24_pulse_wc_i),
        .pulse_gap_i     (stim24_pulse_gap_i),
        .pulse_wa_i      (stim24_pulse_wa_i),
        .pulse_num_i     (stim24_pulse_num_i),
        .pol_i           (stim24_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en24_s),
        .cathode_en_o    (cathode_en24_s),
        .stim_en_i       (stim_cntrl_en24_s)
    );

    stim_ctrl i_stim_ctrl_ch25 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim25_interval_i),
        .pulse_wc_i      (stim25_pulse_wc_i),
        .pulse_gap_i     (stim25_pulse_gap_i),
        .pulse_wa_i      (stim25_pulse_wa_i),
        .pulse_num_i     (stim25_pulse_num_i),
        .pol_i           (stim25_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en25_s),
        .cathode_en_o    (cathode_en25_s),
        .stim_en_i       (stim_cntrl_en25_s)
    );

    stim_ctrl i_stim_ctrl_ch26 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim26_interval_i),
        .pulse_wc_i      (stim26_pulse_wc_i),
        .pulse_gap_i     (stim26_pulse_gap_i),
        .pulse_wa_i      (stim26_pulse_wa_i),
        .pulse_num_i     (stim26_pulse_num_i),
        .pol_i           (stim26_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en26_s),
        .cathode_en_o    (cathode_en26_s),
        .stim_en_i       (stim_cntrl_en26_s)
    );

    stim_ctrl i_stim_ctrl_ch27 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim27_interval_i),
        .pulse_wc_i      (stim27_pulse_wc_i),
        .pulse_gap_i     (stim27_pulse_gap_i),
        .pulse_wa_i      (stim27_pulse_wa_i),
        .pulse_num_i     (stim27_pulse_num_i),
        .pol_i           (stim27_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en27_s),
        .cathode_en_o    (cathode_en27_s),
        .stim_en_i       (stim_cntrl_en27_s)
    );

    stim_ctrl i_stim_ctrl_ch28 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim28_interval_i),
        .pulse_wc_i      (stim28_pulse_wc_i),
        .pulse_gap_i     (stim28_pulse_gap_i),
        .pulse_wa_i      (stim28_pulse_wa_i),
        .pulse_num_i     (stim28_pulse_num_i),
        .pol_i           (stim28_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en28_s),
        .cathode_en_o    (cathode_en28_s),
        .stim_en_i       (stim_cntrl_en28_s)
    );

    stim_ctrl i_stim_ctrl_ch29 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim29_interval_i),
        .pulse_wc_i      (stim29_pulse_wc_i),
        .pulse_gap_i     (stim29_pulse_gap_i),
        .pulse_wa_i      (stim29_pulse_wa_i),
        .pulse_num_i     (stim29_pulse_num_i),
        .pol_i           (stim29_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en29_s),
        .cathode_en_o    (cathode_en29_s),
        .stim_en_i       (stim_cntrl_en29_s)
    );

    stim_ctrl i_stim_ctrl_ch30 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim30_interval_i),
        .pulse_wc_i      (stim30_pulse_wc_i),
        .pulse_gap_i     (stim30_pulse_gap_i),
        .pulse_wa_i      (stim30_pulse_wa_i),
        .pulse_num_i     (stim30_pulse_num_i),
        .pol_i           (stim30_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en30_s),
        .cathode_en_o    (cathode_en30_s),
        .stim_en_i       (stim_cntrl_en30_s)
    );

    stim_ctrl i_stim_ctrl_ch31 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim31_interval_i),
        .pulse_wc_i      (stim31_pulse_wc_i),
        .pulse_gap_i     (stim31_pulse_gap_i),
        .pulse_wa_i      (stim31_pulse_wa_i),
        .pulse_num_i     (stim31_pulse_num_i),
        .pol_i           (stim31_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en31_s),
        .cathode_en_o    (cathode_en31_s),
        .stim_en_i       (stim_cntrl_en31_s)
    );

    stim_ctrl i_stim_ctrl_ch32 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim32_interval_i),
        .pulse_wc_i      (stim32_pulse_wc_i),
        .pulse_gap_i     (stim32_pulse_gap_i),
        .pulse_wa_i      (stim32_pulse_wa_i),
        .pulse_num_i     (stim32_pulse_num_i),
        .pol_i           (stim32_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en32_s),
        .cathode_en_o    (cathode_en32_s),
        .stim_en_i       (stim_cntrl_en32_s)
    );

    stim_ctrl i_stim_ctrl_ch33 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim33_interval_i),
        .pulse_wc_i      (stim33_pulse_wc_i),
        .pulse_gap_i     (stim33_pulse_gap_i),
        .pulse_wa_i      (stim33_pulse_wa_i),
        .pulse_num_i     (stim33_pulse_num_i),
        .pol_i           (stim33_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en33_s),
        .cathode_en_o    (cathode_en33_s),
        .stim_en_i       (stim_cntrl_en33_s)
    );

    stim_ctrl i_stim_ctrl_ch34 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim34_interval_i),
        .pulse_wc_i      (stim34_pulse_wc_i),
        .pulse_gap_i     (stim34_pulse_gap_i),
        .pulse_wa_i      (stim34_pulse_wa_i),
        .pulse_num_i     (stim34_pulse_num_i),
        .pol_i           (stim34_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en34_s),
        .cathode_en_o    (cathode_en34_s),
        .stim_en_i       (stim_cntrl_en34_s)
    );

    stim_ctrl i_stim_ctrl_ch35 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim35_interval_i),
        .pulse_wc_i      (stim35_pulse_wc_i),
        .pulse_gap_i     (stim35_pulse_gap_i),
        .pulse_wa_i      (stim35_pulse_wa_i),
        .pulse_num_i     (stim35_pulse_num_i),
        .pol_i           (stim35_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en35_s),
        .cathode_en_o    (cathode_en35_s),
        .stim_en_i       (stim_cntrl_en35_s)
    );

    stim_ctrl i_stim_ctrl_ch36 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim36_interval_i),
        .pulse_wc_i      (stim36_pulse_wc_i),
        .pulse_gap_i     (stim36_pulse_gap_i),
        .pulse_wa_i      (stim36_pulse_wa_i),
        .pulse_num_i     (stim36_pulse_num_i),
        .pol_i           (stim36_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en36_s),
        .cathode_en_o    (cathode_en36_s),
        .stim_en_i       (stim_cntrl_en36_s)
    );

    stim_ctrl i_stim_ctrl_ch37 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim37_interval_i),
        .pulse_wc_i      (stim37_pulse_wc_i),
        .pulse_gap_i     (stim37_pulse_gap_i),
        .pulse_wa_i      (stim37_pulse_wa_i),
        .pulse_num_i     (stim37_pulse_num_i),
        .pol_i           (stim37_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en37_s),
        .cathode_en_o    (cathode_en37_s),
        .stim_en_i       (stim_cntrl_en37_s)
    );

    stim_ctrl i_stim_ctrl_ch38 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim38_interval_i),
        .pulse_wc_i      (stim38_pulse_wc_i),
        .pulse_gap_i     (stim38_pulse_gap_i),
        .pulse_wa_i      (stim38_pulse_wa_i),
        .pulse_num_i     (stim38_pulse_num_i),
        .pol_i           (stim38_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en38_s),
        .cathode_en_o    (cathode_en38_s),
        .stim_en_i       (stim_cntrl_en38_s)
    );

    stim_ctrl i_stim_ctrl_ch39 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim39_interval_i),
        .pulse_wc_i      (stim39_pulse_wc_i),
        .pulse_gap_i     (stim39_pulse_gap_i),
        .pulse_wa_i      (stim39_pulse_wa_i),
        .pulse_num_i     (stim39_pulse_num_i),
        .pol_i           (stim39_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en39_s),
        .cathode_en_o    (cathode_en39_s),
        .stim_en_i       (stim_cntrl_en39_s)
    );

    stim_ctrl i_stim_ctrl_ch40 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim40_interval_i),
        .pulse_wc_i      (stim40_pulse_wc_i),
        .pulse_gap_i     (stim40_pulse_gap_i),
        .pulse_wa_i      (stim40_pulse_wa_i),
        .pulse_num_i     (stim40_pulse_num_i),
        .pol_i           (stim40_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en40_s),
        .cathode_en_o    (cathode_en40_s),
        .stim_en_i       (stim_cntrl_en40_s)
    );

    stim_ctrl i_stim_ctrl_ch41 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim41_interval_i),
        .pulse_wc_i      (stim41_pulse_wc_i),
        .pulse_gap_i     (stim41_pulse_gap_i),
        .pulse_wa_i      (stim41_pulse_wa_i),
        .pulse_num_i     (stim41_pulse_num_i),
        .pol_i           (stim41_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en41_s),
        .cathode_en_o    (cathode_en41_s),
        .stim_en_i       (stim_cntrl_en41_s)
    );

    stim_ctrl i_stim_ctrl_ch42 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim42_interval_i),
        .pulse_wc_i      (stim42_pulse_wc_i),
        .pulse_gap_i     (stim42_pulse_gap_i),
        .pulse_wa_i      (stim42_pulse_wa_i),
        .pulse_num_i     (stim42_pulse_num_i),
        .pol_i           (stim42_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en42_s),
        .cathode_en_o    (cathode_en42_s),
        .stim_en_i       (stim_cntrl_en42_s)
    );

    stim_ctrl i_stim_ctrl_ch43 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim43_interval_i),
        .pulse_wc_i      (stim43_pulse_wc_i),
        .pulse_gap_i     (stim43_pulse_gap_i),
        .pulse_wa_i      (stim43_pulse_wa_i),
        .pulse_num_i     (stim43_pulse_num_i),
        .pol_i           (stim43_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en43_s),
        .cathode_en_o    (cathode_en43_s),
        .stim_en_i       (stim_cntrl_en43_s)
    );

    stim_ctrl i_stim_ctrl_ch44 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim44_interval_i),
        .pulse_wc_i      (stim44_pulse_wc_i),
        .pulse_gap_i     (stim44_pulse_gap_i),
        .pulse_wa_i      (stim44_pulse_wa_i),
        .pulse_num_i     (stim44_pulse_num_i),
        .pol_i           (stim44_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en44_s),
        .cathode_en_o    (cathode_en44_s),
        .stim_en_i       (stim_cntrl_en44_s)
    );

    stim_ctrl i_stim_ctrl_ch45 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim45_interval_i),
        .pulse_wc_i      (stim45_pulse_wc_i),
        .pulse_gap_i     (stim45_pulse_gap_i),
        .pulse_wa_i      (stim45_pulse_wa_i),
        .pulse_num_i     (stim45_pulse_num_i),
        .pol_i           (stim45_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en45_s),
        .cathode_en_o    (cathode_en45_s),
        .stim_en_i       (stim_cntrl_en45_s)
    );

    stim_ctrl i_stim_ctrl_ch46 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim46_interval_i),
        .pulse_wc_i      (stim46_pulse_wc_i),
        .pulse_gap_i     (stim46_pulse_gap_i),
        .pulse_wa_i      (stim46_pulse_wa_i),
        .pulse_num_i     (stim46_pulse_num_i),
        .pol_i           (stim46_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en46_s),
        .cathode_en_o    (cathode_en46_s),
        .stim_en_i       (stim_cntrl_en46_s)
    );

    stim_ctrl i_stim_ctrl_ch47 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim47_interval_i),
        .pulse_wc_i      (stim47_pulse_wc_i),
        .pulse_gap_i     (stim47_pulse_gap_i),
        .pulse_wa_i      (stim47_pulse_wa_i),
        .pulse_num_i     (stim47_pulse_num_i),
        .pol_i           (stim47_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en47_s),
        .cathode_en_o    (cathode_en47_s),
        .stim_en_i       (stim_cntrl_en47_s)
    );

    stim_ctrl i_stim_ctrl_ch48 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim48_interval_i),
        .pulse_wc_i      (stim48_pulse_wc_i),
        .pulse_gap_i     (stim48_pulse_gap_i),
        .pulse_wa_i      (stim48_pulse_wa_i),
        .pulse_num_i     (stim48_pulse_num_i),
        .pol_i           (stim48_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en48_s),
        .cathode_en_o    (cathode_en48_s),
        .stim_en_i       (stim_cntrl_en48_s)
    );

    stim_ctrl i_stim_ctrl_ch49 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim49_interval_i),
        .pulse_wc_i      (stim49_pulse_wc_i),
        .pulse_gap_i     (stim49_pulse_gap_i),
        .pulse_wa_i      (stim49_pulse_wa_i),
        .pulse_num_i     (stim49_pulse_num_i),
        .pol_i           (stim49_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en49_s),
        .cathode_en_o    (cathode_en49_s),
        .stim_en_i       (stim_cntrl_en49_s)
    );

    stim_ctrl i_stim_ctrl_ch50 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim50_interval_i),
        .pulse_wc_i      (stim50_pulse_wc_i),
        .pulse_gap_i     (stim50_pulse_gap_i),
        .pulse_wa_i      (stim50_pulse_wa_i),
        .pulse_num_i     (stim50_pulse_num_i),
        .pol_i           (stim50_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en50_s),
        .cathode_en_o    (cathode_en50_s),
        .stim_en_i       (stim_cntrl_en50_s)
    );

    stim_ctrl i_stim_ctrl_ch51 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim51_interval_i),
        .pulse_wc_i      (stim51_pulse_wc_i),
        .pulse_gap_i     (stim51_pulse_gap_i),
        .pulse_wa_i      (stim51_pulse_wa_i),
        .pulse_num_i     (stim51_pulse_num_i),
        .pol_i           (stim51_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en51_s),
        .cathode_en_o    (cathode_en51_s),
        .stim_en_i       (stim_cntrl_en51_s)
    );

    stim_ctrl i_stim_ctrl_ch52 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim52_interval_i),
        .pulse_wc_i      (stim52_pulse_wc_i),
        .pulse_gap_i     (stim52_pulse_gap_i),
        .pulse_wa_i      (stim52_pulse_wa_i),
        .pulse_num_i     (stim52_pulse_num_i),
        .pol_i           (stim52_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en52_s),
        .cathode_en_o    (cathode_en52_s),
        .stim_en_i       (stim_cntrl_en52_s)
    );

    stim_ctrl i_stim_ctrl_ch53 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim53_interval_i),
        .pulse_wc_i      (stim53_pulse_wc_i),
        .pulse_gap_i     (stim53_pulse_gap_i),
        .pulse_wa_i      (stim53_pulse_wa_i),
        .pulse_num_i     (stim53_pulse_num_i),
        .pol_i           (stim53_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en53_s),
        .cathode_en_o    (cathode_en53_s),
        .stim_en_i       (stim_cntrl_en53_s)
    );

    stim_ctrl i_stim_ctrl_ch54 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim54_interval_i),
        .pulse_wc_i      (stim54_pulse_wc_i),
        .pulse_gap_i     (stim54_pulse_gap_i),
        .pulse_wa_i      (stim54_pulse_wa_i),
        .pulse_num_i     (stim54_pulse_num_i),
        .pol_i           (stim54_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en54_s),
        .cathode_en_o    (cathode_en54_s),
        .stim_en_i       (stim_cntrl_en54_s)
    );

    stim_ctrl i_stim_ctrl_ch55 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim55_interval_i),
        .pulse_wc_i      (stim55_pulse_wc_i),
        .pulse_gap_i     (stim55_pulse_gap_i),
        .pulse_wa_i      (stim55_pulse_wa_i),
        .pulse_num_i     (stim55_pulse_num_i),
        .pol_i           (stim55_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en55_s),
        .cathode_en_o    (cathode_en55_s),
        .stim_en_i       (stim_cntrl_en55_s)
    );

    stim_ctrl i_stim_ctrl_ch56 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim56_interval_i),
        .pulse_wc_i      (stim56_pulse_wc_i),
        .pulse_gap_i     (stim56_pulse_gap_i),
        .pulse_wa_i      (stim56_pulse_wa_i),
        .pulse_num_i     (stim56_pulse_num_i),
        .pol_i           (stim56_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en56_s),
        .cathode_en_o    (cathode_en56_s),
        .stim_en_i       (stim_cntrl_en56_s)
    );

    stim_ctrl i_stim_ctrl_ch57 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim57_interval_i),
        .pulse_wc_i      (stim57_pulse_wc_i),
        .pulse_gap_i     (stim57_pulse_gap_i),
        .pulse_wa_i      (stim57_pulse_wa_i),
        .pulse_num_i     (stim57_pulse_num_i),
        .pol_i           (stim57_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en57_s),
        .cathode_en_o    (cathode_en57_s),
        .stim_en_i       (stim_cntrl_en57_s)
    );

    stim_ctrl i_stim_ctrl_ch58 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim58_interval_i),
        .pulse_wc_i      (stim58_pulse_wc_i),
        .pulse_gap_i     (stim58_pulse_gap_i),
        .pulse_wa_i      (stim58_pulse_wa_i),
        .pulse_num_i     (stim58_pulse_num_i),
        .pol_i           (stim58_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en58_s),
        .cathode_en_o    (cathode_en58_s),
        .stim_en_i       (stim_cntrl_en58_s)
    );

    stim_ctrl i_stim_ctrl_ch59 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim59_interval_i),
        .pulse_wc_i      (stim59_pulse_wc_i),
        .pulse_gap_i     (stim59_pulse_gap_i),
        .pulse_wa_i      (stim59_pulse_wa_i),
        .pulse_num_i     (stim59_pulse_num_i),
        .pol_i           (stim59_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en59_s),
        .cathode_en_o    (cathode_en59_s),
        .stim_en_i       (stim_cntrl_en59_s)
    );

    stim_ctrl i_stim_ctrl_ch60 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim60_interval_i),
        .pulse_wc_i      (stim60_pulse_wc_i),
        .pulse_gap_i     (stim60_pulse_gap_i),
        .pulse_wa_i      (stim60_pulse_wa_i),
        .pulse_num_i     (stim60_pulse_num_i),
        .pol_i           (stim60_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en60_s),
        .cathode_en_o    (cathode_en60_s),
        .stim_en_i       (stim_cntrl_en60_s)
    );

    stim_ctrl i_stim_ctrl_ch61 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim61_interval_i),
        .pulse_wc_i      (stim61_pulse_wc_i),
        .pulse_gap_i     (stim61_pulse_gap_i),
        .pulse_wa_i      (stim61_pulse_wa_i),
        .pulse_num_i     (stim61_pulse_num_i),
        .pol_i           (stim61_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en61_s),
        .cathode_en_o    (cathode_en61_s),
        .stim_en_i       (stim_cntrl_en61_s)
    );

    stim_ctrl i_stim_ctrl_ch62 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim62_interval_i),
        .pulse_wc_i      (stim62_pulse_wc_i),
        .pulse_gap_i     (stim62_pulse_gap_i),
        .pulse_wa_i      (stim62_pulse_wa_i),
        .pulse_num_i     (stim62_pulse_num_i),
        .pol_i           (stim62_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en62_s),
        .cathode_en_o    (cathode_en62_s),
        .stim_en_i       (stim_cntrl_en62_s)
    );

    stim_ctrl i_stim_ctrl_ch63 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim63_interval_i),
        .pulse_wc_i      (stim63_pulse_wc_i),
        .pulse_gap_i     (stim63_pulse_gap_i),
        .pulse_wa_i      (stim63_pulse_wa_i),
        .pulse_num_i     (stim63_pulse_num_i),
        .pol_i           (stim63_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en63_s),
        .cathode_en_o    (cathode_en63_s),
        .stim_en_i       (stim_cntrl_en63_s)
    );


    assign mask_en_8bit_s= {stim_mask_en7_g_i,stim_mask_en6_g_i,stim_mask_en5_g_i,stim_mask_en4_g_i,stim_mask_en3_g_i,stim_mask_en2_g_i,stim_mask_en1_g_i,stim_mask_en0_g_i};
    assign mask_en_status0_s = mask_en_8bit_s[0];
    assign mask_en_status1_s = (~mask_en_8bit_s[0]) & (mask_en_8bit_s[1]);
    assign mask_en_status2_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (mask_en_8bit_s[2]);
    assign mask_en_status3_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (mask_en_8bit_s[3]);
    assign mask_en_status4_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (~mask_en_8bit_s[3]) & (mask_en_8bit_s[4]);
    assign mask_en_status5_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (~mask_en_8bit_s[3]) & (~mask_en_8bit_s[4]) & (mask_en_8bit_s[5]);
    assign mask_en_status6_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (~mask_en_8bit_s[3]) & (~mask_en_8bit_s[4]) & (~mask_en_8bit_s[5]) & (mask_en_8bit_s[6]);
    assign mask_en_status7_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (~mask_en_8bit_s[3]) & (~mask_en_8bit_s[4]) & (~mask_en_8bit_s[5]) & (~mask_en_8bit_s[6]) & (mask_en_8bit_s[7]);


    assign  stim_cntrl_en0_s = (stim_mask0_g1_i[0] | stim_mask1_g1_i[0] | stim_mask2_g1_i[0] | stim_mask3_g1_i[0] | stim_mask4_g1_i[0] | stim_mask5_g1_i[0] | stim_mask6_g1_i[0] | stim_mask7_g1_i[0]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en1_s = (stim_mask0_g1_i[1] | stim_mask1_g1_i[1] | stim_mask2_g1_i[1] | stim_mask3_g1_i[1] | stim_mask4_g1_i[1] | stim_mask5_g1_i[1] | stim_mask6_g1_i[1] | stim_mask7_g1_i[1]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en2_s = (stim_mask0_g1_i[2] | stim_mask1_g1_i[2] | stim_mask2_g1_i[2] | stim_mask3_g1_i[2] | stim_mask4_g1_i[2] | stim_mask5_g1_i[2] | stim_mask6_g1_i[2] | stim_mask7_g1_i[2]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en3_s = (stim_mask0_g1_i[3] | stim_mask1_g1_i[3] | stim_mask2_g1_i[3] | stim_mask3_g1_i[3] | stim_mask4_g1_i[3] | stim_mask5_g1_i[3] | stim_mask6_g1_i[3] | stim_mask7_g1_i[3]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en4_s = (stim_mask0_g1_i[4] | stim_mask1_g1_i[4] | stim_mask2_g1_i[4] | stim_mask3_g1_i[4] | stim_mask4_g1_i[4] | stim_mask5_g1_i[4] | stim_mask6_g1_i[4] | stim_mask7_g1_i[4]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en5_s = (stim_mask0_g1_i[5] | stim_mask1_g1_i[5] | stim_mask2_g1_i[5] | stim_mask3_g1_i[5] | stim_mask4_g1_i[5] | stim_mask5_g1_i[5] | stim_mask6_g1_i[5] | stim_mask7_g1_i[5]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en6_s = (stim_mask0_g1_i[6] | stim_mask1_g1_i[6] | stim_mask2_g1_i[6] | stim_mask3_g1_i[6] | stim_mask4_g1_i[6] | stim_mask5_g1_i[6] | stim_mask6_g1_i[6] | stim_mask7_g1_i[6]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en7_s = (stim_mask0_g1_i[7] | stim_mask1_g1_i[7] | stim_mask2_g1_i[7] | stim_mask3_g1_i[7] | stim_mask4_g1_i[7] | stim_mask5_g1_i[7] | stim_mask6_g1_i[7] | stim_mask7_g1_i[7]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en8_s = (stim_mask0_g1_i[8] | stim_mask1_g1_i[8] | stim_mask2_g1_i[8] | stim_mask3_g1_i[8] | stim_mask4_g1_i[8] | stim_mask5_g1_i[8] | stim_mask6_g1_i[8] | stim_mask7_g1_i[8]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en9_s = (stim_mask0_g1_i[9] | stim_mask1_g1_i[9] | stim_mask2_g1_i[9] | stim_mask3_g1_i[9] | stim_mask4_g1_i[9] | stim_mask5_g1_i[9] | stim_mask6_g1_i[9] | stim_mask7_g1_i[9]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en10_s = (stim_mask0_g1_i[10] | stim_mask1_g1_i[10] | stim_mask2_g1_i[10] | stim_mask3_g1_i[10] | stim_mask4_g1_i[10] | stim_mask5_g1_i[10] | stim_mask6_g1_i[10] | stim_mask7_g1_i[10]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en11_s = (stim_mask0_g1_i[11] | stim_mask1_g1_i[11] | stim_mask2_g1_i[11] | stim_mask3_g1_i[11] | stim_mask4_g1_i[11] | stim_mask5_g1_i[11] | stim_mask6_g1_i[11] | stim_mask7_g1_i[11]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en12_s = (stim_mask0_g1_i[12] | stim_mask1_g1_i[12] | stim_mask2_g1_i[12] | stim_mask3_g1_i[12] | stim_mask4_g1_i[12] | stim_mask5_g1_i[12] | stim_mask6_g1_i[12] | stim_mask7_g1_i[12]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en13_s = (stim_mask0_g1_i[13] | stim_mask1_g1_i[13] | stim_mask2_g1_i[13] | stim_mask3_g1_i[13] | stim_mask4_g1_i[13] | stim_mask5_g1_i[13] | stim_mask6_g1_i[13] | stim_mask7_g1_i[13]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en14_s = (stim_mask0_g1_i[14] | stim_mask1_g1_i[14] | stim_mask2_g1_i[14] | stim_mask3_g1_i[14] | stim_mask4_g1_i[14] | stim_mask5_g1_i[14] | stim_mask6_g1_i[14] | stim_mask7_g1_i[14]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en15_s = (stim_mask0_g1_i[15] | stim_mask1_g1_i[15] | stim_mask2_g1_i[15] | stim_mask3_g1_i[15] | stim_mask4_g1_i[15] | stim_mask5_g1_i[15] | stim_mask6_g1_i[15] | stim_mask7_g1_i[15]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en16_s = (stim_mask0_g1_i[16] | stim_mask1_g1_i[16] | stim_mask2_g1_i[16] | stim_mask3_g1_i[16] | stim_mask4_g1_i[16] | stim_mask5_g1_i[16] | stim_mask6_g1_i[16] | stim_mask7_g1_i[16]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en17_s = (stim_mask0_g1_i[17] | stim_mask1_g1_i[17] | stim_mask2_g1_i[17] | stim_mask3_g1_i[17] | stim_mask4_g1_i[17] | stim_mask5_g1_i[17] | stim_mask6_g1_i[17] | stim_mask7_g1_i[17]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en18_s = (stim_mask0_g1_i[18] | stim_mask1_g1_i[18] | stim_mask2_g1_i[18] | stim_mask3_g1_i[18] | stim_mask4_g1_i[18] | stim_mask5_g1_i[18] | stim_mask6_g1_i[18] | stim_mask7_g1_i[18]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en19_s = (stim_mask0_g1_i[19] | stim_mask1_g1_i[19] | stim_mask2_g1_i[19] | stim_mask3_g1_i[19] | stim_mask4_g1_i[19] | stim_mask5_g1_i[19] | stim_mask6_g1_i[19] | stim_mask7_g1_i[19]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en20_s = (stim_mask0_g1_i[20] | stim_mask1_g1_i[20] | stim_mask2_g1_i[20] | stim_mask3_g1_i[20] | stim_mask4_g1_i[20] | stim_mask5_g1_i[20] | stim_mask6_g1_i[20] | stim_mask7_g1_i[20]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en21_s = (stim_mask0_g1_i[21] | stim_mask1_g1_i[21] | stim_mask2_g1_i[21] | stim_mask3_g1_i[21] | stim_mask4_g1_i[21] | stim_mask5_g1_i[21] | stim_mask6_g1_i[21] | stim_mask7_g1_i[21]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en22_s = (stim_mask0_g1_i[22] | stim_mask1_g1_i[22] | stim_mask2_g1_i[22] | stim_mask3_g1_i[22] | stim_mask4_g1_i[22] | stim_mask5_g1_i[22] | stim_mask6_g1_i[22] | stim_mask7_g1_i[22]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en23_s = (stim_mask0_g1_i[23] | stim_mask1_g1_i[23] | stim_mask2_g1_i[23] | stim_mask3_g1_i[23] | stim_mask4_g1_i[23] | stim_mask5_g1_i[23] | stim_mask6_g1_i[23] | stim_mask7_g1_i[23]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en24_s = (stim_mask0_g1_i[24] | stim_mask1_g1_i[24] | stim_mask2_g1_i[24] | stim_mask3_g1_i[24] | stim_mask4_g1_i[24] | stim_mask5_g1_i[24] | stim_mask6_g1_i[24] | stim_mask7_g1_i[24]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en25_s = (stim_mask0_g1_i[25] | stim_mask1_g1_i[25] | stim_mask2_g1_i[25] | stim_mask3_g1_i[25] | stim_mask4_g1_i[25] | stim_mask5_g1_i[25] | stim_mask6_g1_i[25] | stim_mask7_g1_i[25]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en26_s = (stim_mask0_g1_i[26] | stim_mask1_g1_i[26] | stim_mask2_g1_i[26] | stim_mask3_g1_i[26] | stim_mask4_g1_i[26] | stim_mask5_g1_i[26] | stim_mask6_g1_i[26] | stim_mask7_g1_i[26]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en27_s = (stim_mask0_g1_i[27] | stim_mask1_g1_i[27] | stim_mask2_g1_i[27] | stim_mask3_g1_i[27] | stim_mask4_g1_i[27] | stim_mask5_g1_i[27] | stim_mask6_g1_i[27] | stim_mask7_g1_i[27]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en28_s = (stim_mask0_g1_i[28] | stim_mask1_g1_i[28] | stim_mask2_g1_i[28] | stim_mask3_g1_i[28] | stim_mask4_g1_i[28] | stim_mask5_g1_i[28] | stim_mask6_g1_i[28] | stim_mask7_g1_i[28]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en29_s = (stim_mask0_g1_i[29] | stim_mask1_g1_i[29] | stim_mask2_g1_i[29] | stim_mask3_g1_i[29] | stim_mask4_g1_i[29] | stim_mask5_g1_i[29] | stim_mask6_g1_i[29] | stim_mask7_g1_i[29]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en30_s = (stim_mask0_g1_i[30] | stim_mask1_g1_i[30] | stim_mask2_g1_i[30] | stim_mask3_g1_i[30] | stim_mask4_g1_i[30] | stim_mask5_g1_i[30] | stim_mask6_g1_i[30] | stim_mask7_g1_i[30]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en31_s = (stim_mask0_g1_i[31] | stim_mask1_g1_i[31] | stim_mask2_g1_i[31] | stim_mask3_g1_i[31] | stim_mask4_g1_i[31] | stim_mask5_g1_i[31] | stim_mask6_g1_i[31] | stim_mask7_g1_i[31]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en32_s = (stim_mask0_g2_i[0] | stim_mask1_g2_i[0] | stim_mask2_g2_i[0] | stim_mask3_g2_i[0] | stim_mask4_g2_i[0] | stim_mask5_g2_i[0] | stim_mask6_g2_i[0] | stim_mask7_g2_i[0]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en33_s = (stim_mask0_g2_i[1] | stim_mask1_g2_i[1] | stim_mask2_g2_i[1] | stim_mask3_g2_i[1] | stim_mask4_g2_i[1] | stim_mask5_g2_i[1] | stim_mask6_g2_i[1] | stim_mask7_g2_i[1]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en34_s = (stim_mask0_g2_i[2] | stim_mask1_g2_i[2] | stim_mask2_g2_i[2] | stim_mask3_g2_i[2] | stim_mask4_g2_i[2] | stim_mask5_g2_i[2] | stim_mask6_g2_i[2] | stim_mask7_g2_i[2]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en35_s = (stim_mask0_g2_i[3] | stim_mask1_g2_i[3] | stim_mask2_g2_i[3] | stim_mask3_g2_i[3] | stim_mask4_g2_i[3] | stim_mask5_g2_i[3] | stim_mask6_g2_i[3] | stim_mask7_g2_i[3]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en36_s = (stim_mask0_g2_i[4] | stim_mask1_g2_i[4] | stim_mask2_g2_i[4] | stim_mask3_g2_i[4] | stim_mask4_g2_i[4] | stim_mask5_g2_i[4] | stim_mask6_g2_i[4] | stim_mask7_g2_i[4]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en37_s = (stim_mask0_g2_i[5] | stim_mask1_g2_i[5] | stim_mask2_g2_i[5] | stim_mask3_g2_i[5] | stim_mask4_g2_i[5] | stim_mask5_g2_i[5] | stim_mask6_g2_i[5] | stim_mask7_g2_i[5]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en38_s = (stim_mask0_g2_i[6] | stim_mask1_g2_i[6] | stim_mask2_g2_i[6] | stim_mask3_g2_i[6] | stim_mask4_g2_i[6] | stim_mask5_g2_i[6] | stim_mask6_g2_i[6] | stim_mask7_g2_i[6]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en39_s = (stim_mask0_g2_i[7] | stim_mask1_g2_i[7] | stim_mask2_g2_i[7] | stim_mask3_g2_i[7] | stim_mask4_g2_i[7] | stim_mask5_g2_i[7] | stim_mask6_g2_i[7] | stim_mask7_g2_i[7]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en40_s = (stim_mask0_g2_i[8] | stim_mask1_g2_i[8] | stim_mask2_g2_i[8] | stim_mask3_g2_i[8] | stim_mask4_g2_i[8] | stim_mask5_g2_i[8] | stim_mask6_g2_i[8] | stim_mask7_g2_i[8]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en41_s = (stim_mask0_g2_i[9] | stim_mask1_g2_i[9] | stim_mask2_g2_i[9] | stim_mask3_g2_i[9] | stim_mask4_g2_i[9] | stim_mask5_g2_i[9] | stim_mask6_g2_i[9] | stim_mask7_g2_i[9]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en42_s = (stim_mask0_g2_i[10] | stim_mask1_g2_i[10] | stim_mask2_g2_i[10] | stim_mask3_g2_i[10] | stim_mask4_g2_i[10] | stim_mask5_g2_i[10] | stim_mask6_g2_i[10] | stim_mask7_g2_i[10]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en43_s = (stim_mask0_g2_i[11] | stim_mask1_g2_i[11] | stim_mask2_g2_i[11] | stim_mask3_g2_i[11] | stim_mask4_g2_i[11] | stim_mask5_g2_i[11] | stim_mask6_g2_i[11] | stim_mask7_g2_i[11]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en44_s = (stim_mask0_g2_i[12] | stim_mask1_g2_i[12] | stim_mask2_g2_i[12] | stim_mask3_g2_i[12] | stim_mask4_g2_i[12] | stim_mask5_g2_i[12] | stim_mask6_g2_i[12] | stim_mask7_g2_i[12]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en45_s = (stim_mask0_g2_i[13] | stim_mask1_g2_i[13] | stim_mask2_g2_i[13] | stim_mask3_g2_i[13] | stim_mask4_g2_i[13] | stim_mask5_g2_i[13] | stim_mask6_g2_i[13] | stim_mask7_g2_i[13]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en46_s = (stim_mask0_g2_i[14] | stim_mask1_g2_i[14] | stim_mask2_g2_i[14] | stim_mask3_g2_i[14] | stim_mask4_g2_i[14] | stim_mask5_g2_i[14] | stim_mask6_g2_i[14] | stim_mask7_g2_i[14]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en47_s = (stim_mask0_g2_i[15] | stim_mask1_g2_i[15] | stim_mask2_g2_i[15] | stim_mask3_g2_i[15] | stim_mask4_g2_i[15] | stim_mask5_g2_i[15] | stim_mask6_g2_i[15] | stim_mask7_g2_i[15]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en48_s = (stim_mask0_g2_i[16] | stim_mask1_g2_i[16] | stim_mask2_g2_i[16] | stim_mask3_g2_i[16] | stim_mask4_g2_i[16] | stim_mask5_g2_i[16] | stim_mask6_g2_i[16] | stim_mask7_g2_i[16]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en49_s = (stim_mask0_g2_i[17] | stim_mask1_g2_i[17] | stim_mask2_g2_i[17] | stim_mask3_g2_i[17] | stim_mask4_g2_i[17] | stim_mask5_g2_i[17] | stim_mask6_g2_i[17] | stim_mask7_g2_i[17]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en50_s = (stim_mask0_g2_i[18] | stim_mask1_g2_i[18] | stim_mask2_g2_i[18] | stim_mask3_g2_i[18] | stim_mask4_g2_i[18] | stim_mask5_g2_i[18] | stim_mask6_g2_i[18] | stim_mask7_g2_i[18]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en51_s = (stim_mask0_g2_i[19] | stim_mask1_g2_i[19] | stim_mask2_g2_i[19] | stim_mask3_g2_i[19] | stim_mask4_g2_i[19] | stim_mask5_g2_i[19] | stim_mask6_g2_i[19] | stim_mask7_g2_i[19]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en52_s = (stim_mask0_g2_i[20] | stim_mask1_g2_i[20] | stim_mask2_g2_i[20] | stim_mask3_g2_i[20] | stim_mask4_g2_i[20] | stim_mask5_g2_i[20] | stim_mask6_g2_i[20] | stim_mask7_g2_i[20]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en53_s = (stim_mask0_g2_i[21] | stim_mask1_g2_i[21] | stim_mask2_g2_i[21] | stim_mask3_g2_i[21] | stim_mask4_g2_i[21] | stim_mask5_g2_i[21] | stim_mask6_g2_i[21] | stim_mask7_g2_i[21]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en54_s = (stim_mask0_g2_i[22] | stim_mask1_g2_i[22] | stim_mask2_g2_i[22] | stim_mask3_g2_i[22] | stim_mask4_g2_i[22] | stim_mask5_g2_i[22] | stim_mask6_g2_i[22] | stim_mask7_g2_i[22]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en55_s = (stim_mask0_g2_i[23] | stim_mask1_g2_i[23] | stim_mask2_g2_i[23] | stim_mask3_g2_i[23] | stim_mask4_g2_i[23] | stim_mask5_g2_i[23] | stim_mask6_g2_i[23] | stim_mask7_g2_i[23]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en56_s = (stim_mask0_g2_i[24] | stim_mask1_g2_i[24] | stim_mask2_g2_i[24] | stim_mask3_g2_i[24] | stim_mask4_g2_i[24] | stim_mask5_g2_i[24] | stim_mask6_g2_i[24] | stim_mask7_g2_i[24]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en57_s = (stim_mask0_g2_i[25] | stim_mask1_g2_i[25] | stim_mask2_g2_i[25] | stim_mask3_g2_i[25] | stim_mask4_g2_i[25] | stim_mask5_g2_i[25] | stim_mask6_g2_i[25] | stim_mask7_g2_i[25]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en58_s = (stim_mask0_g2_i[26] | stim_mask1_g2_i[26] | stim_mask2_g2_i[26] | stim_mask3_g2_i[26] | stim_mask4_g2_i[26] | stim_mask5_g2_i[26] | stim_mask6_g2_i[26] | stim_mask7_g2_i[26]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en59_s = (stim_mask0_g2_i[27] | stim_mask1_g2_i[27] | stim_mask2_g2_i[27] | stim_mask3_g2_i[27] | stim_mask4_g2_i[27] | stim_mask5_g2_i[27] | stim_mask6_g2_i[27] | stim_mask7_g2_i[27]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en60_s = (stim_mask0_g2_i[28] | stim_mask1_g2_i[28] | stim_mask2_g2_i[28] | stim_mask3_g2_i[28] | stim_mask4_g2_i[28] | stim_mask5_g2_i[28] | stim_mask6_g2_i[28] | stim_mask7_g2_i[28]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en61_s = (stim_mask0_g2_i[29] | stim_mask1_g2_i[29] | stim_mask2_g2_i[29] | stim_mask3_g2_i[29] | stim_mask4_g2_i[29] | stim_mask5_g2_i[29] | stim_mask6_g2_i[29] | stim_mask7_g2_i[29]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en62_s = (stim_mask0_g2_i[30] | stim_mask1_g2_i[30] | stim_mask2_g2_i[30] | stim_mask3_g2_i[30] | stim_mask4_g2_i[30] | stim_mask5_g2_i[30] | stim_mask6_g2_i[30] | stim_mask7_g2_i[30]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en63_s = (stim_mask0_g2_i[31] | stim_mask1_g2_i[31] | stim_mask2_g2_i[31] | stim_mask3_g2_i[31] | stim_mask4_g2_i[31] | stim_mask5_g2_i[31] | stim_mask6_g2_i[31] | stim_mask7_g2_i[31]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_en_vec_o={stim_cntrl_en63_s, stim_cntrl_en62_s, stim_cntrl_en61_s, stim_cntrl_en60_s, stim_cntrl_en59_s, stim_cntrl_en58_s, stim_cntrl_en57_s, stim_cntrl_en56_s, stim_cntrl_en55_s, stim_cntrl_en54_s, stim_cntrl_en53_s, stim_cntrl_en52_s, stim_cntrl_en51_s, stim_cntrl_en50_s, stim_cntrl_en49_s, stim_cntrl_en48_s, stim_cntrl_en47_s, stim_cntrl_en46_s, stim_cntrl_en45_s, stim_cntrl_en44_s, stim_cntrl_en43_s, stim_cntrl_en42_s, stim_cntrl_en41_s, stim_cntrl_en40_s, stim_cntrl_en39_s, stim_cntrl_en38_s, stim_cntrl_en37_s, stim_cntrl_en36_s, stim_cntrl_en35_s, stim_cntrl_en34_s, stim_cntrl_en33_s, stim_cntrl_en32_s, stim_cntrl_en31_s, stim_cntrl_en30_s, stim_cntrl_en29_s, stim_cntrl_en28_s, stim_cntrl_en27_s, stim_cntrl_en26_s, stim_cntrl_en25_s, stim_cntrl_en24_s, stim_cntrl_en23_s, stim_cntrl_en22_s, stim_cntrl_en21_s, stim_cntrl_en20_s, stim_cntrl_en19_s, stim_cntrl_en18_s, stim_cntrl_en17_s, stim_cntrl_en16_s, stim_cntrl_en15_s, stim_cntrl_en14_s, stim_cntrl_en13_s, stim_cntrl_en12_s, stim_cntrl_en11_s, stim_cntrl_en10_s, stim_cntrl_en9_s, stim_cntrl_en8_s, stim_cntrl_en7_s, stim_cntrl_en6_s, stim_cntrl_en5_s, stim_cntrl_en4_s, stim_cntrl_en3_s, stim_cntrl_en2_s, stim_cntrl_en1_s, stim_cntrl_en0_s};
    assign  EnN_vec_o={cathode_en63_s, cathode_en62_s, cathode_en61_s, cathode_en60_s, cathode_en59_s, cathode_en58_s, cathode_en57_s, cathode_en56_s, cathode_en55_s, cathode_en54_s, cathode_en53_s, cathode_en52_s, cathode_en51_s, cathode_en50_s, cathode_en49_s, cathode_en48_s, cathode_en47_s, cathode_en46_s, cathode_en45_s, cathode_en44_s, cathode_en43_s, cathode_en42_s, cathode_en41_s, cathode_en40_s, cathode_en39_s, cathode_en38_s, cathode_en37_s, cathode_en36_s, cathode_en35_s, cathode_en34_s, cathode_en33_s, cathode_en32_s, cathode_en31_s, cathode_en30_s, cathode_en29_s, cathode_en28_s, cathode_en27_s, cathode_en26_s, cathode_en25_s, cathode_en24_s, cathode_en23_s, cathode_en22_s, cathode_en21_s, cathode_en20_s, cathode_en19_s, cathode_en18_s, cathode_en17_s, cathode_en16_s, cathode_en15_s, cathode_en14_s, cathode_en13_s, cathode_en12_s, cathode_en11_s, cathode_en10_s, cathode_en9_s, cathode_en8_s, cathode_en7_s, cathode_en6_s, cathode_en5_s, cathode_en4_s, cathode_en3_s, cathode_en2_s, cathode_en1_s, cathode_en0_s};
    assign  EnP_vec_o={anode_en63_s, anode_en62_s, anode_en61_s, anode_en60_s, anode_en59_s, anode_en58_s, anode_en57_s, anode_en56_s, anode_en55_s, anode_en54_s, anode_en53_s, anode_en52_s, anode_en51_s, anode_en50_s, anode_en49_s, anode_en48_s, anode_en47_s, anode_en46_s, anode_en45_s, anode_en44_s, anode_en43_s, anode_en42_s, anode_en41_s, anode_en40_s, anode_en39_s, anode_en38_s, anode_en37_s, anode_en36_s, anode_en35_s, anode_en34_s, anode_en33_s, anode_en32_s, anode_en31_s, anode_en30_s, anode_en29_s, anode_en28_s, anode_en27_s, anode_en26_s, anode_en25_s, anode_en24_s, anode_en23_s, anode_en22_s, anode_en21_s, anode_en20_s, anode_en19_s, anode_en18_s, anode_en17_s, anode_en16_s, anode_en15_s, anode_en14_s, anode_en13_s, anode_en12_s, anode_en11_s, anode_en10_s, anode_en9_s, anode_en8_s, anode_en7_s, anode_en6_s, anode_en5_s, anode_en4_s, anode_en3_s, anode_en2_s, anode_en1_s, anode_en0_s};
    assign  imp_en_g1_sync_o={stim_cntrl_en31_s,stim_cntrl_en30_s,stim_cntrl_en29_s,stim_cntrl_en28_s,stim_cntrl_en27_s,stim_cntrl_en26_s,stim_cntrl_en25_s,stim_cntrl_en24_s,stim_cntrl_en23_s,stim_cntrl_en22_s,stim_cntrl_en21_s,stim_cntrl_en20_s,stim_cntrl_en19_s,stim_cntrl_en18_s,stim_cntrl_en17_s,stim_cntrl_en16_s,stim_cntrl_en15_s,stim_cntrl_en14_s,stim_cntrl_en13_s,stim_cntrl_en12_s,stim_cntrl_en11_s,stim_cntrl_en10_s,stim_cntrl_en9_s,stim_cntrl_en8_s,stim_cntrl_en7_s,stim_cntrl_en6_s,stim_cntrl_en5_s,stim_cntrl_en4_s,stim_cntrl_en3_s,stim_cntrl_en2_s,stim_cntrl_en1_s,stim_cntrl_en0_s};
    assign  imp_en_g2_sync_o={stim_cntrl_en63_s,stim_cntrl_en62_s,stim_cntrl_en61_s,stim_cntrl_en60_s,stim_cntrl_en59_s,stim_cntrl_en58_s,stim_cntrl_en57_s,stim_cntrl_en56_s,stim_cntrl_en55_s,stim_cntrl_en54_s,stim_cntrl_en53_s,stim_cntrl_en52_s,stim_cntrl_en51_s,stim_cntrl_en50_s,stim_cntrl_en49_s,stim_cntrl_en48_s,stim_cntrl_en47_s,stim_cntrl_en46_s,stim_cntrl_en45_s,stim_cntrl_en44_s,stim_cntrl_en43_s,stim_cntrl_en42_s,stim_cntrl_en41_s,stim_cntrl_en40_s,stim_cntrl_en39_s,stim_cntrl_en38_s,stim_cntrl_en37_s,stim_cntrl_en36_s,stim_cntrl_en35_s,stim_cntrl_en34_s,stim_cntrl_en33_s,stim_cntrl_en32_s};

    assign mask0_cat = {stim_mask0_g2_i,stim_mask0_g1_i};
    always @(mask0_cat) begin
        mask0_ones = 0;
        mask0_cmp  = 0;
        mask0_err  = 0;
        for (i0=0;i0<=63;i0=i0+1) begin
            if (mask0_cat[i0] == 1'b1) begin
                mask0_ones = mask0_ones + 1;
            end
        end
        if ((mask0_ones>7'd7) && (mask0_ones<7'd12) )begin
            mask0_cmp = 1;
        end else if (mask0_ones >= 7'd12) begin
            mask0_err = 1;
            mask0_cmp = 0;
        end else begin
            mask0_cmp  = 0;
        end
    end


    assign mask1_cat = {stim_mask1_g2_i,stim_mask1_g1_i};
    always @(mask1_cat) begin
        mask1_ones = 0;
        mask1_cmp  = 0;
        mask1_err  = 0;
        for (i1=0;i1<=63;i1=i1+1) begin
            if (mask1_cat[i1] == 1'b1) begin
                mask1_ones = mask1_ones + 1;
            end
        end
        if ((mask1_ones>7'd7) && (mask1_ones<7'd12) )begin
            mask1_cmp = 1;
        end else if (mask1_ones >= 7'd12) begin
            mask1_err = 1;
            mask1_cmp = 0;
        end else begin
            mask1_cmp  = 0;
        end
    end


    assign mask2_cat = {stim_mask2_g2_i,stim_mask2_g1_i};
    always @(mask2_cat) begin
        mask2_ones = 0;
        mask2_cmp  = 0;
        mask2_err  = 0;
        for (i2=0;i2<=63;i2=i2+1) begin
            if (mask2_cat[i2] == 1'b1) begin
                mask2_ones = mask2_ones + 1;
            end
        end
        if ((mask2_ones>7'd7) && (mask2_ones<7'd12) )begin
            mask2_cmp = 1;
        end else if (mask2_ones >= 7'd12) begin
            mask2_err = 1;
            mask2_cmp = 0;
        end else begin
            mask2_cmp  = 0;
        end
    end


    assign mask3_cat = {stim_mask3_g2_i,stim_mask3_g1_i};
    always @(mask3_cat) begin
        mask3_ones = 0;
        mask3_cmp  = 0;
        mask3_err  = 0;
        for (i3=0;i3<=63;i3=i3+1) begin
            if (mask3_cat[i3] == 1'b1) begin
                mask3_ones = mask3_ones + 1;
            end
        end
        if ((mask3_ones>7'd7) && (mask3_ones<7'd12) )begin
            mask3_cmp = 1;
        end else if (mask3_ones >= 7'd12) begin
            mask3_err = 1;
            mask3_cmp = 0;
        end else begin
            mask3_cmp  = 0;
        end
    end


    assign mask4_cat = {stim_mask4_g2_i,stim_mask4_g1_i};
    always @(mask4_cat) begin
        mask4_ones = 0;
        mask4_cmp  = 0;
        mask4_err  = 0;
        for (i4=0;i4<=63;i4=i4+1) begin
            if (mask4_cat[i4] == 1'b1) begin
                mask4_ones = mask4_ones + 1;
            end
        end
        if ((mask4_ones>7'd7) && (mask4_ones<7'd12) )begin
            mask4_cmp = 1;
        end else if (mask4_ones >= 7'd12) begin
            mask4_err = 1;
            mask4_cmp = 0;
        end else begin
            mask4_cmp  = 0;
        end
    end


    assign mask5_cat = {stim_mask5_g2_i,stim_mask5_g1_i};
    always @(mask5_cat) begin
        mask5_ones = 0;
        mask5_cmp  = 0;
        mask5_err  = 0;
        for (i5=0;i5<=63;i5=i5+1) begin
            if (mask5_cat[i5] == 1'b1) begin
                mask5_ones = mask5_ones + 1;
            end
        end
        if ((mask5_ones>7'd7) && (mask5_ones<7'd12) )begin
            mask5_cmp = 1;
        end else if (mask5_ones >= 7'd12) begin
            mask5_err = 1;
            mask5_cmp = 0;
        end else begin
            mask5_cmp  = 0;
        end
    end


    assign mask6_cat = {stim_mask6_g2_i,stim_mask6_g1_i};
    always @(mask6_cat) begin
        mask6_ones = 0;
        mask6_cmp  = 0;
        mask6_err  = 0;
        for (i6=0;i6<=63;i6=i6+1) begin
            if (mask6_cat[i6] == 1'b1) begin
                mask6_ones = mask6_ones + 1;
            end
        end
        if ((mask6_ones>7'd7) && (mask6_ones<7'd12) )begin
            mask6_cmp = 1;
        end else if (mask6_ones >= 7'd12) begin
            mask6_err = 1;
            mask6_cmp = 0;
        end else begin
            mask6_cmp  = 0;
        end
    end


    assign mask7_cat = {stim_mask7_g2_i,stim_mask7_g1_i};
    always @(mask7_cat) begin
        mask7_ones = 0;
        mask7_cmp  = 0;
        mask7_err  = 0;
        for (i7=0;i7<=63;i7=i7+1) begin
            if (mask7_cat[i7] == 1'b1) begin
                mask7_ones = mask7_ones + 1;
            end
        end
        if ((mask7_ones>7'd7) && (mask7_ones<7'd12) )begin
            mask7_cmp = 1;
        end else if (mask7_ones >= 7'd12) begin
            mask7_err = 1;
            mask7_cmp = 0;
        end else begin
            mask7_cmp  = 0;
        end
    end


    always @(*) begin
        stim_width_chk[0] = 0;
        if ((stim0_pulse_wc_i>14'd200) || (stim0_pulse_wa_i>14'd200)) begin
            stim_width_chk[0] = 1;
        end else  begin
            stim_width_chk[0] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[1] = 0;
        if ((stim1_pulse_wc_i>14'd200) || (stim1_pulse_wa_i>14'd200)) begin
            stim_width_chk[1] = 1;
        end else  begin
            stim_width_chk[1] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[2] = 0;
        if ((stim2_pulse_wc_i>14'd200) || (stim2_pulse_wa_i>14'd200)) begin
            stim_width_chk[2] = 1;
        end else  begin
            stim_width_chk[2] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[3] = 0;
        if ((stim3_pulse_wc_i>14'd200) || (stim3_pulse_wa_i>14'd200)) begin
            stim_width_chk[3] = 1;
        end else  begin
            stim_width_chk[3] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[4] = 0;
        if ((stim4_pulse_wc_i>14'd200) || (stim4_pulse_wa_i>14'd200)) begin
            stim_width_chk[4] = 1;
        end else  begin
            stim_width_chk[4] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[5] = 0;
        if ((stim5_pulse_wc_i>14'd200) || (stim5_pulse_wa_i>14'd200)) begin
            stim_width_chk[5] = 1;
        end else  begin
            stim_width_chk[5] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[6] = 0;
        if ((stim6_pulse_wc_i>14'd200) || (stim6_pulse_wa_i>14'd200)) begin
            stim_width_chk[6] = 1;
        end else  begin
            stim_width_chk[6] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[7] = 0;
        if ((stim7_pulse_wc_i>14'd200) || (stim7_pulse_wa_i>14'd200)) begin
            stim_width_chk[7] = 1;
        end else  begin
            stim_width_chk[7] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[8] = 0;
        if ((stim8_pulse_wc_i>14'd200) || (stim8_pulse_wa_i>14'd200)) begin
            stim_width_chk[8] = 1;
        end else  begin
            stim_width_chk[8] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[9] = 0;
        if ((stim9_pulse_wc_i>14'd200) || (stim9_pulse_wa_i>14'd200)) begin
            stim_width_chk[9] = 1;
        end else  begin
            stim_width_chk[9] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[10] = 0;
        if ((stim10_pulse_wc_i>14'd200) || (stim10_pulse_wa_i>14'd200)) begin
            stim_width_chk[10] = 1;
        end else  begin
            stim_width_chk[10] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[11] = 0;
        if ((stim11_pulse_wc_i>14'd200) || (stim11_pulse_wa_i>14'd200)) begin
            stim_width_chk[11] = 1;
        end else  begin
            stim_width_chk[11] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[12] = 0;
        if ((stim12_pulse_wc_i>14'd200) || (stim12_pulse_wa_i>14'd200)) begin
            stim_width_chk[12] = 1;
        end else  begin
            stim_width_chk[12] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[13] = 0;
        if ((stim13_pulse_wc_i>14'd200) || (stim13_pulse_wa_i>14'd200)) begin
            stim_width_chk[13] = 1;
        end else  begin
            stim_width_chk[13] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[14] = 0;
        if ((stim14_pulse_wc_i>14'd200) || (stim14_pulse_wa_i>14'd200)) begin
            stim_width_chk[14] = 1;
        end else  begin
            stim_width_chk[14] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[15] = 0;
        if ((stim15_pulse_wc_i>14'd200) || (stim15_pulse_wa_i>14'd200)) begin
            stim_width_chk[15] = 1;
        end else  begin
            stim_width_chk[15] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[16] = 0;
        if ((stim16_pulse_wc_i>14'd200) || (stim16_pulse_wa_i>14'd200)) begin
            stim_width_chk[16] = 1;
        end else  begin
            stim_width_chk[16] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[17] = 0;
        if ((stim17_pulse_wc_i>14'd200) || (stim17_pulse_wa_i>14'd200)) begin
            stim_width_chk[17] = 1;
        end else  begin
            stim_width_chk[17] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[18] = 0;
        if ((stim18_pulse_wc_i>14'd200) || (stim18_pulse_wa_i>14'd200)) begin
            stim_width_chk[18] = 1;
        end else  begin
            stim_width_chk[18] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[19] = 0;
        if ((stim19_pulse_wc_i>14'd200) || (stim19_pulse_wa_i>14'd200)) begin
            stim_width_chk[19] = 1;
        end else  begin
            stim_width_chk[19] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[20] = 0;
        if ((stim20_pulse_wc_i>14'd200) || (stim20_pulse_wa_i>14'd200)) begin
            stim_width_chk[20] = 1;
        end else  begin
            stim_width_chk[20] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[21] = 0;
        if ((stim21_pulse_wc_i>14'd200) || (stim21_pulse_wa_i>14'd200)) begin
            stim_width_chk[21] = 1;
        end else  begin
            stim_width_chk[21] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[22] = 0;
        if ((stim22_pulse_wc_i>14'd200) || (stim22_pulse_wa_i>14'd200)) begin
            stim_width_chk[22] = 1;
        end else  begin
            stim_width_chk[22] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[23] = 0;
        if ((stim23_pulse_wc_i>14'd200) || (stim23_pulse_wa_i>14'd200)) begin
            stim_width_chk[23] = 1;
        end else  begin
            stim_width_chk[23] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[24] = 0;
        if ((stim24_pulse_wc_i>14'd200) || (stim24_pulse_wa_i>14'd200)) begin
            stim_width_chk[24] = 1;
        end else  begin
            stim_width_chk[24] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[25] = 0;
        if ((stim25_pulse_wc_i>14'd200) || (stim25_pulse_wa_i>14'd200)) begin
            stim_width_chk[25] = 1;
        end else  begin
            stim_width_chk[25] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[26] = 0;
        if ((stim26_pulse_wc_i>14'd200) || (stim26_pulse_wa_i>14'd200)) begin
            stim_width_chk[26] = 1;
        end else  begin
            stim_width_chk[26] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[27] = 0;
        if ((stim27_pulse_wc_i>14'd200) || (stim27_pulse_wa_i>14'd200)) begin
            stim_width_chk[27] = 1;
        end else  begin
            stim_width_chk[27] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[28] = 0;
        if ((stim28_pulse_wc_i>14'd200) || (stim28_pulse_wa_i>14'd200)) begin
            stim_width_chk[28] = 1;
        end else  begin
            stim_width_chk[28] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[29] = 0;
        if ((stim29_pulse_wc_i>14'd200) || (stim29_pulse_wa_i>14'd200)) begin
            stim_width_chk[29] = 1;
        end else  begin
            stim_width_chk[29] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[30] = 0;
        if ((stim30_pulse_wc_i>14'd200) || (stim30_pulse_wa_i>14'd200)) begin
            stim_width_chk[30] = 1;
        end else  begin
            stim_width_chk[30] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[31] = 0;
        if ((stim31_pulse_wc_i>14'd200) || (stim31_pulse_wa_i>14'd200)) begin
            stim_width_chk[31] = 1;
        end else  begin
            stim_width_chk[31] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[32] = 0;
        if ((stim32_pulse_wc_i>14'd200) || (stim32_pulse_wa_i>14'd200)) begin
            stim_width_chk[32] = 1;
        end else  begin
            stim_width_chk[32] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[33] = 0;
        if ((stim33_pulse_wc_i>14'd200) || (stim33_pulse_wa_i>14'd200)) begin
            stim_width_chk[33] = 1;
        end else  begin
            stim_width_chk[33] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[34] = 0;
        if ((stim34_pulse_wc_i>14'd200) || (stim34_pulse_wa_i>14'd200)) begin
            stim_width_chk[34] = 1;
        end else  begin
            stim_width_chk[34] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[35] = 0;
        if ((stim35_pulse_wc_i>14'd200) || (stim35_pulse_wa_i>14'd200)) begin
            stim_width_chk[35] = 1;
        end else  begin
            stim_width_chk[35] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[36] = 0;
        if ((stim36_pulse_wc_i>14'd200) || (stim36_pulse_wa_i>14'd200)) begin
            stim_width_chk[36] = 1;
        end else  begin
            stim_width_chk[36] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[37] = 0;
        if ((stim37_pulse_wc_i>14'd200) || (stim37_pulse_wa_i>14'd200)) begin
            stim_width_chk[37] = 1;
        end else  begin
            stim_width_chk[37] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[38] = 0;
        if ((stim38_pulse_wc_i>14'd200) || (stim38_pulse_wa_i>14'd200)) begin
            stim_width_chk[38] = 1;
        end else  begin
            stim_width_chk[38] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[39] = 0;
        if ((stim39_pulse_wc_i>14'd200) || (stim39_pulse_wa_i>14'd200)) begin
            stim_width_chk[39] = 1;
        end else  begin
            stim_width_chk[39] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[40] = 0;
        if ((stim40_pulse_wc_i>14'd200) || (stim40_pulse_wa_i>14'd200)) begin
            stim_width_chk[40] = 1;
        end else  begin
            stim_width_chk[40] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[41] = 0;
        if ((stim41_pulse_wc_i>14'd200) || (stim41_pulse_wa_i>14'd200)) begin
            stim_width_chk[41] = 1;
        end else  begin
            stim_width_chk[41] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[42] = 0;
        if ((stim42_pulse_wc_i>14'd200) || (stim42_pulse_wa_i>14'd200)) begin
            stim_width_chk[42] = 1;
        end else  begin
            stim_width_chk[42] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[43] = 0;
        if ((stim43_pulse_wc_i>14'd200) || (stim43_pulse_wa_i>14'd200)) begin
            stim_width_chk[43] = 1;
        end else  begin
            stim_width_chk[43] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[44] = 0;
        if ((stim44_pulse_wc_i>14'd200) || (stim44_pulse_wa_i>14'd200)) begin
            stim_width_chk[44] = 1;
        end else  begin
            stim_width_chk[44] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[45] = 0;
        if ((stim45_pulse_wc_i>14'd200) || (stim45_pulse_wa_i>14'd200)) begin
            stim_width_chk[45] = 1;
        end else  begin
            stim_width_chk[45] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[46] = 0;
        if ((stim46_pulse_wc_i>14'd200) || (stim46_pulse_wa_i>14'd200)) begin
            stim_width_chk[46] = 1;
        end else  begin
            stim_width_chk[46] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[47] = 0;
        if ((stim47_pulse_wc_i>14'd200) || (stim47_pulse_wa_i>14'd200)) begin
            stim_width_chk[47] = 1;
        end else  begin
            stim_width_chk[47] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[48] = 0;
        if ((stim48_pulse_wc_i>14'd200) || (stim48_pulse_wa_i>14'd200)) begin
            stim_width_chk[48] = 1;
        end else  begin
            stim_width_chk[48] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[49] = 0;
        if ((stim49_pulse_wc_i>14'd200) || (stim49_pulse_wa_i>14'd200)) begin
            stim_width_chk[49] = 1;
        end else  begin
            stim_width_chk[49] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[50] = 0;
        if ((stim50_pulse_wc_i>14'd200) || (stim50_pulse_wa_i>14'd200)) begin
            stim_width_chk[50] = 1;
        end else  begin
            stim_width_chk[50] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[51] = 0;
        if ((stim51_pulse_wc_i>14'd200) || (stim51_pulse_wa_i>14'd200)) begin
            stim_width_chk[51] = 1;
        end else  begin
            stim_width_chk[51] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[52] = 0;
        if ((stim52_pulse_wc_i>14'd200) || (stim52_pulse_wa_i>14'd200)) begin
            stim_width_chk[52] = 1;
        end else  begin
            stim_width_chk[52] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[53] = 0;
        if ((stim53_pulse_wc_i>14'd200) || (stim53_pulse_wa_i>14'd200)) begin
            stim_width_chk[53] = 1;
        end else  begin
            stim_width_chk[53] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[54] = 0;
        if ((stim54_pulse_wc_i>14'd200) || (stim54_pulse_wa_i>14'd200)) begin
            stim_width_chk[54] = 1;
        end else  begin
            stim_width_chk[54] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[55] = 0;
        if ((stim55_pulse_wc_i>14'd200) || (stim55_pulse_wa_i>14'd200)) begin
            stim_width_chk[55] = 1;
        end else  begin
            stim_width_chk[55] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[56] = 0;
        if ((stim56_pulse_wc_i>14'd200) || (stim56_pulse_wa_i>14'd200)) begin
            stim_width_chk[56] = 1;
        end else  begin
            stim_width_chk[56] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[57] = 0;
        if ((stim57_pulse_wc_i>14'd200) || (stim57_pulse_wa_i>14'd200)) begin
            stim_width_chk[57] = 1;
        end else  begin
            stim_width_chk[57] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[58] = 0;
        if ((stim58_pulse_wc_i>14'd200) || (stim58_pulse_wa_i>14'd200)) begin
            stim_width_chk[58] = 1;
        end else  begin
            stim_width_chk[58] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[59] = 0;
        if ((stim59_pulse_wc_i>14'd200) || (stim59_pulse_wa_i>14'd200)) begin
            stim_width_chk[59] = 1;
        end else  begin
            stim_width_chk[59] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[60] = 0;
        if ((stim60_pulse_wc_i>14'd200) || (stim60_pulse_wa_i>14'd200)) begin
            stim_width_chk[60] = 1;
        end else  begin
            stim_width_chk[60] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[61] = 0;
        if ((stim61_pulse_wc_i>14'd200) || (stim61_pulse_wa_i>14'd200)) begin
            stim_width_chk[61] = 1;
        end else  begin
            stim_width_chk[61] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[62] = 0;
        if ((stim62_pulse_wc_i>14'd200) || (stim62_pulse_wa_i>14'd200)) begin
            stim_width_chk[62] = 1;
        end else  begin
            stim_width_chk[62] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[63] = 0;
        if ((stim63_pulse_wc_i>14'd200) || (stim63_pulse_wa_i>14'd200)) begin
            stim_width_chk[63] = 1;
        end else  begin
            stim_width_chk[63] = 0;
        end
    end

endmodule
