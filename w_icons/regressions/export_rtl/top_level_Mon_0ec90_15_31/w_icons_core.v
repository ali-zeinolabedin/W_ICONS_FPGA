/* ICGLUE GENERATED FILE - manual changes out of prepared *icglue keep begin/end* blocks will be overwritten */
/* icglue keep begin head */
/*
 * Module: w_icons_core
 * Author: Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module w_icons_core (
    clk_ref_i,
    clk_adc1_gated_o,
    clk_adc2_gated_o,
    reset_i,
    resetn_top_sync_o,
    stim_xen_i,
    err_sync_o,
    err_stim_sync_o,
    spi_clk_i,
    spi_cs_i,
    spi_mosi_i,
    spi_miso_o,
    dft_testmode_i,
    stim0_ia_o,
    stim0_ic_o,
    stim1_ia_o,
    stim1_ic_o,
    stim2_ia_o,
    stim2_ic_o,
    stim3_ia_o,
    stim3_ic_o,
    stim4_ia_o,
    stim4_ic_o,
    stim5_ia_o,
    stim5_ic_o,
    stim6_ia_o,
    stim6_ic_o,
    stim7_ia_o,
    stim7_ic_o,
    stim8_ia_o,
    stim8_ic_o,
    stim9_ia_o,
    stim9_ic_o,
    stim10_ia_o,
    stim10_ic_o,
    stim11_ia_o,
    stim11_ic_o,
    stim12_ia_o,
    stim12_ic_o,
    stim13_ia_o,
    stim13_ic_o,
    stim14_ia_o,
    stim14_ic_o,
    stim15_ia_o,
    stim15_ic_o,
    stim16_ia_o,
    stim16_ic_o,
    stim17_ia_o,
    stim17_ic_o,
    stim18_ia_o,
    stim18_ic_o,
    stim19_ia_o,
    stim19_ic_o,
    stim20_ia_o,
    stim20_ic_o,
    stim21_ia_o,
    stim21_ic_o,
    stim22_ia_o,
    stim22_ic_o,
    stim23_ia_o,
    stim23_ic_o,
    stim24_ia_o,
    stim24_ic_o,
    stim25_ia_o,
    stim25_ic_o,
    stim26_ia_o,
    stim26_ic_o,
    stim27_ia_o,
    stim27_ic_o,
    stim28_ia_o,
    stim28_ic_o,
    stim29_ia_o,
    stim29_ic_o,
    stim30_ia_o,
    stim30_ic_o,
    stim31_ia_o,
    stim31_ic_o,
    stim32_ia_o,
    stim32_ic_o,
    stim33_ia_o,
    stim33_ic_o,
    stim34_ia_o,
    stim34_ic_o,
    stim35_ia_o,
    stim35_ic_o,
    stim36_ia_o,
    stim36_ic_o,
    stim37_ia_o,
    stim37_ic_o,
    stim38_ia_o,
    stim38_ic_o,
    stim39_ia_o,
    stim39_ic_o,
    stim40_ia_o,
    stim40_ic_o,
    stim41_ia_o,
    stim41_ic_o,
    stim42_ia_o,
    stim42_ic_o,
    stim43_ia_o,
    stim43_ic_o,
    stim44_ia_o,
    stim44_ic_o,
    stim45_ia_o,
    stim45_ic_o,
    stim46_ia_o,
    stim46_ic_o,
    stim47_ia_o,
    stim47_ic_o,
    stim48_ia_o,
    stim48_ic_o,
    stim49_ia_o,
    stim49_ic_o,
    stim50_ia_o,
    stim50_ic_o,
    stim51_ia_o,
    stim51_ic_o,
    stim52_ia_o,
    stim52_ic_o,
    stim53_ia_o,
    stim53_ic_o,
    stim54_ia_o,
    stim54_ic_o,
    stim55_ia_o,
    stim55_ic_o,
    stim56_ia_o,
    stim56_ic_o,
    stim57_ia_o,
    stim57_ic_o,
    stim58_ia_o,
    stim58_ic_o,
    stim59_ia_o,
    stim59_ic_o,
    stim60_ia_o,
    stim60_ic_o,
    stim61_ia_o,
    stim61_ic_o,
    stim62_ia_o,
    stim62_ic_o,
    stim63_ia_o,
    stim63_ic_o,
    stim_range_unsync_o,
    amp_gain_sync_o,
    gdischarge_o,
    adc_en_o,
    sample_out_o,
    adc_res1_i,
    adc_res2_i,
    rec_data1_o,
    rec_data2_o,
    adc_idx_o,
    stim_en_vec_o,
    EnN_vec_o,
    EnP_vec_o,
    limiting_current_o,
    rec_vec_sync_o
);

    parameter STIM_CLKDIV_W      = 12;
    parameter CLKDIV_W_DISCHARGE = 8;
    /* icglue keep begin parameters *//* icglue keep end */

    input         clk_ref_i;
    output        clk_adc1_gated_o;
    output        clk_adc2_gated_o;
    input         reset_i;
    output        resetn_top_sync_o;
    input         stim_xen_i;
    output        err_sync_o;
    output        err_stim_sync_o;
    input         spi_clk_i;
    input         spi_cs_i;
    input         spi_mosi_i;
    output        spi_miso_o;
    input         dft_testmode_i;
    output  [7:0] stim0_ia_o;
    output  [7:0] stim0_ic_o;
    output  [7:0] stim1_ia_o;
    output  [7:0] stim1_ic_o;
    output  [7:0] stim2_ia_o;
    output  [7:0] stim2_ic_o;
    output  [7:0] stim3_ia_o;
    output  [7:0] stim3_ic_o;
    output  [7:0] stim4_ia_o;
    output  [7:0] stim4_ic_o;
    output  [7:0] stim5_ia_o;
    output  [7:0] stim5_ic_o;
    output  [7:0] stim6_ia_o;
    output  [7:0] stim6_ic_o;
    output  [7:0] stim7_ia_o;
    output  [7:0] stim7_ic_o;
    output  [7:0] stim8_ia_o;
    output  [7:0] stim8_ic_o;
    output  [7:0] stim9_ia_o;
    output  [7:0] stim9_ic_o;
    output  [7:0] stim10_ia_o;
    output  [7:0] stim10_ic_o;
    output  [7:0] stim11_ia_o;
    output  [7:0] stim11_ic_o;
    output  [7:0] stim12_ia_o;
    output  [7:0] stim12_ic_o;
    output  [7:0] stim13_ia_o;
    output  [7:0] stim13_ic_o;
    output  [7:0] stim14_ia_o;
    output  [7:0] stim14_ic_o;
    output  [7:0] stim15_ia_o;
    output  [7:0] stim15_ic_o;
    output  [7:0] stim16_ia_o;
    output  [7:0] stim16_ic_o;
    output  [7:0] stim17_ia_o;
    output  [7:0] stim17_ic_o;
    output  [7:0] stim18_ia_o;
    output  [7:0] stim18_ic_o;
    output  [7:0] stim19_ia_o;
    output  [7:0] stim19_ic_o;
    output  [7:0] stim20_ia_o;
    output  [7:0] stim20_ic_o;
    output  [7:0] stim21_ia_o;
    output  [7:0] stim21_ic_o;
    output  [7:0] stim22_ia_o;
    output  [7:0] stim22_ic_o;
    output  [7:0] stim23_ia_o;
    output  [7:0] stim23_ic_o;
    output  [7:0] stim24_ia_o;
    output  [7:0] stim24_ic_o;
    output  [7:0] stim25_ia_o;
    output  [7:0] stim25_ic_o;
    output  [7:0] stim26_ia_o;
    output  [7:0] stim26_ic_o;
    output  [7:0] stim27_ia_o;
    output  [7:0] stim27_ic_o;
    output  [7:0] stim28_ia_o;
    output  [7:0] stim28_ic_o;
    output  [7:0] stim29_ia_o;
    output  [7:0] stim29_ic_o;
    output  [7:0] stim30_ia_o;
    output  [7:0] stim30_ic_o;
    output  [7:0] stim31_ia_o;
    output  [7:0] stim31_ic_o;
    output  [7:0] stim32_ia_o;
    output  [7:0] stim32_ic_o;
    output  [7:0] stim33_ia_o;
    output  [7:0] stim33_ic_o;
    output  [7:0] stim34_ia_o;
    output  [7:0] stim34_ic_o;
    output  [7:0] stim35_ia_o;
    output  [7:0] stim35_ic_o;
    output  [7:0] stim36_ia_o;
    output  [7:0] stim36_ic_o;
    output  [7:0] stim37_ia_o;
    output  [7:0] stim37_ic_o;
    output  [7:0] stim38_ia_o;
    output  [7:0] stim38_ic_o;
    output  [7:0] stim39_ia_o;
    output  [7:0] stim39_ic_o;
    output  [7:0] stim40_ia_o;
    output  [7:0] stim40_ic_o;
    output  [7:0] stim41_ia_o;
    output  [7:0] stim41_ic_o;
    output  [7:0] stim42_ia_o;
    output  [7:0] stim42_ic_o;
    output  [7:0] stim43_ia_o;
    output  [7:0] stim43_ic_o;
    output  [7:0] stim44_ia_o;
    output  [7:0] stim44_ic_o;
    output  [7:0] stim45_ia_o;
    output  [7:0] stim45_ic_o;
    output  [7:0] stim46_ia_o;
    output  [7:0] stim46_ic_o;
    output  [7:0] stim47_ia_o;
    output  [7:0] stim47_ic_o;
    output  [7:0] stim48_ia_o;
    output  [7:0] stim48_ic_o;
    output  [7:0] stim49_ia_o;
    output  [7:0] stim49_ic_o;
    output  [7:0] stim50_ia_o;
    output  [7:0] stim50_ic_o;
    output  [7:0] stim51_ia_o;
    output  [7:0] stim51_ic_o;
    output  [7:0] stim52_ia_o;
    output  [7:0] stim52_ic_o;
    output  [7:0] stim53_ia_o;
    output  [7:0] stim53_ic_o;
    output  [7:0] stim54_ia_o;
    output  [7:0] stim54_ic_o;
    output  [7:0] stim55_ia_o;
    output  [7:0] stim55_ic_o;
    output  [7:0] stim56_ia_o;
    output  [7:0] stim56_ic_o;
    output  [7:0] stim57_ia_o;
    output  [7:0] stim57_ic_o;
    output  [7:0] stim58_ia_o;
    output  [7:0] stim58_ic_o;
    output  [7:0] stim59_ia_o;
    output  [7:0] stim59_ic_o;
    output  [7:0] stim60_ia_o;
    output  [7:0] stim60_ic_o;
    output  [7:0] stim61_ia_o;
    output  [7:0] stim61_ic_o;
    output  [7:0] stim62_ia_o;
    output  [7:0] stim62_ic_o;
    output  [7:0] stim63_ia_o;
    output  [7:0] stim63_ic_o;
    output [63:0] stim_range_unsync_o;
    output [63:0] amp_gain_sync_o;
    output        gdischarge_o;
    output        adc_en_o;
    output        sample_out_o;
    input         adc_res1_i;
    input         adc_res2_i;
    output        rec_data1_o;
    output        rec_data2_o;
    output  [4:0] adc_idx_o;
    output [63:0] stim_en_vec_o;
    output [63:0] EnN_vec_o;
    output [63:0] EnP_vec_o;
    output        limiting_current_o;
    output [63:0] rec_vec_sync_o;

    wire                          resetn_spi_sync_s;
    wire                          stim_xen_sync_s;
    wire                    [7:0] stim_mask_en_s;
    wire                   [31:0] amp_gain_g1_s;
    wire                   [31:0] amp_gain_g2_s;
    wire                   [31:0] chip_error_load_s;
    wire                    [3:0] chip_error_cmd_s;
    wire                    [4:0] chip_error_crc5_s;
    wire                   [31:0] en_rec_ch_g1_s;
    wire                   [31:0] en_rec_ch_g2_s;
    wire                          stim_monophasic_s;
    wire                   [31:0] stim_mask0_g1_s;
    wire                   [31:0] stim_mask0_g2_s;
    wire                   [31:0] stim_mask1_g1_s;
    wire                   [31:0] stim_mask1_g2_s;
    wire                   [31:0] stim_mask2_g1_s;
    wire                   [31:0] stim_mask2_g2_s;
    wire                   [31:0] stim_mask3_g1_s;
    wire                   [31:0] stim_mask3_g2_s;
    wire                   [31:0] stim_mask4_g1_s;
    wire                   [31:0] stim_mask4_g2_s;
    wire                   [31:0] stim_mask5_g1_s;
    wire                   [31:0] stim_mask5_g2_s;
    wire                   [31:0] stim_mask6_g1_s;
    wire                   [31:0] stim_mask6_g2_s;
    wire                   [31:0] stim_mask7_g1_s;
    wire                   [31:0] stim_mask7_g2_s;
    wire                   [15:0] stim0_interval_s;
    wire                   [13:0] stim0_pulse_wc_s;
    wire                   [13:0] stim0_pulse_gap_s;
    wire                   [13:0] stim0_pulse_wa_s;
    wire                   [11:0] stim0_pulse_num_s;
    wire                          stim0_pol_s;
    wire                   [15:0] stim1_interval_s;
    wire                   [13:0] stim1_pulse_wc_s;
    wire                   [13:0] stim1_pulse_gap_s;
    wire                   [13:0] stim1_pulse_wa_s;
    wire                   [11:0] stim1_pulse_num_s;
    wire                          stim1_pol_s;
    wire                   [15:0] stim2_interval_s;
    wire                   [13:0] stim2_pulse_wc_s;
    wire                   [13:0] stim2_pulse_gap_s;
    wire                   [13:0] stim2_pulse_wa_s;
    wire                   [11:0] stim2_pulse_num_s;
    wire                          stim2_pol_s;
    wire                   [15:0] stim3_interval_s;
    wire                   [13:0] stim3_pulse_wc_s;
    wire                   [13:0] stim3_pulse_gap_s;
    wire                   [13:0] stim3_pulse_wa_s;
    wire                   [11:0] stim3_pulse_num_s;
    wire                          stim3_pol_s;
    wire                   [15:0] stim4_interval_s;
    wire                   [13:0] stim4_pulse_wc_s;
    wire                   [13:0] stim4_pulse_gap_s;
    wire                   [13:0] stim4_pulse_wa_s;
    wire                   [11:0] stim4_pulse_num_s;
    wire                          stim4_pol_s;
    wire                   [15:0] stim5_interval_s;
    wire                   [13:0] stim5_pulse_wc_s;
    wire                   [13:0] stim5_pulse_gap_s;
    wire                   [13:0] stim5_pulse_wa_s;
    wire                   [11:0] stim5_pulse_num_s;
    wire                          stim5_pol_s;
    wire                   [15:0] stim6_interval_s;
    wire                   [13:0] stim6_pulse_wc_s;
    wire                   [13:0] stim6_pulse_gap_s;
    wire                   [13:0] stim6_pulse_wa_s;
    wire                   [11:0] stim6_pulse_num_s;
    wire                          stim6_pol_s;
    wire                   [15:0] stim7_interval_s;
    wire                   [13:0] stim7_pulse_wc_s;
    wire                   [13:0] stim7_pulse_gap_s;
    wire                   [13:0] stim7_pulse_wa_s;
    wire                   [11:0] stim7_pulse_num_s;
    wire                          stim7_pol_s;
    wire                   [15:0] stim8_interval_s;
    wire                   [13:0] stim8_pulse_wc_s;
    wire                   [13:0] stim8_pulse_gap_s;
    wire                   [13:0] stim8_pulse_wa_s;
    wire                   [11:0] stim8_pulse_num_s;
    wire                          stim8_pol_s;
    wire                   [15:0] stim9_interval_s;
    wire                   [13:0] stim9_pulse_wc_s;
    wire                   [13:0] stim9_pulse_gap_s;
    wire                   [13:0] stim9_pulse_wa_s;
    wire                   [11:0] stim9_pulse_num_s;
    wire                          stim9_pol_s;
    wire                   [15:0] stim10_interval_s;
    wire                   [13:0] stim10_pulse_wc_s;
    wire                   [13:0] stim10_pulse_gap_s;
    wire                   [13:0] stim10_pulse_wa_s;
    wire                   [11:0] stim10_pulse_num_s;
    wire                          stim10_pol_s;
    wire                   [15:0] stim11_interval_s;
    wire                   [13:0] stim11_pulse_wc_s;
    wire                   [13:0] stim11_pulse_gap_s;
    wire                   [13:0] stim11_pulse_wa_s;
    wire                   [11:0] stim11_pulse_num_s;
    wire                          stim11_pol_s;
    wire                   [15:0] stim12_interval_s;
    wire                   [13:0] stim12_pulse_wc_s;
    wire                   [13:0] stim12_pulse_gap_s;
    wire                   [13:0] stim12_pulse_wa_s;
    wire                   [11:0] stim12_pulse_num_s;
    wire                          stim12_pol_s;
    wire                   [15:0] stim13_interval_s;
    wire                   [13:0] stim13_pulse_wc_s;
    wire                   [13:0] stim13_pulse_gap_s;
    wire                   [13:0] stim13_pulse_wa_s;
    wire                   [11:0] stim13_pulse_num_s;
    wire                          stim13_pol_s;
    wire                   [15:0] stim14_interval_s;
    wire                   [13:0] stim14_pulse_wc_s;
    wire                   [13:0] stim14_pulse_gap_s;
    wire                   [13:0] stim14_pulse_wa_s;
    wire                   [11:0] stim14_pulse_num_s;
    wire                          stim14_pol_s;
    wire                   [15:0] stim15_interval_s;
    wire                   [13:0] stim15_pulse_wc_s;
    wire                   [13:0] stim15_pulse_gap_s;
    wire                   [13:0] stim15_pulse_wa_s;
    wire                   [11:0] stim15_pulse_num_s;
    wire                          stim15_pol_s;
    wire                   [15:0] stim16_interval_s;
    wire                   [13:0] stim16_pulse_wc_s;
    wire                   [13:0] stim16_pulse_gap_s;
    wire                   [13:0] stim16_pulse_wa_s;
    wire                   [11:0] stim16_pulse_num_s;
    wire                          stim16_pol_s;
    wire                   [15:0] stim17_interval_s;
    wire                   [13:0] stim17_pulse_wc_s;
    wire                   [13:0] stim17_pulse_gap_s;
    wire                   [13:0] stim17_pulse_wa_s;
    wire                   [11:0] stim17_pulse_num_s;
    wire                          stim17_pol_s;
    wire                   [15:0] stim18_interval_s;
    wire                   [13:0] stim18_pulse_wc_s;
    wire                   [13:0] stim18_pulse_gap_s;
    wire                   [13:0] stim18_pulse_wa_s;
    wire                   [11:0] stim18_pulse_num_s;
    wire                          stim18_pol_s;
    wire                   [15:0] stim19_interval_s;
    wire                   [13:0] stim19_pulse_wc_s;
    wire                   [13:0] stim19_pulse_gap_s;
    wire                   [13:0] stim19_pulse_wa_s;
    wire                   [11:0] stim19_pulse_num_s;
    wire                          stim19_pol_s;
    wire                   [15:0] stim20_interval_s;
    wire                   [13:0] stim20_pulse_wc_s;
    wire                   [13:0] stim20_pulse_gap_s;
    wire                   [13:0] stim20_pulse_wa_s;
    wire                   [11:0] stim20_pulse_num_s;
    wire                          stim20_pol_s;
    wire                   [15:0] stim21_interval_s;
    wire                   [13:0] stim21_pulse_wc_s;
    wire                   [13:0] stim21_pulse_gap_s;
    wire                   [13:0] stim21_pulse_wa_s;
    wire                   [11:0] stim21_pulse_num_s;
    wire                          stim21_pol_s;
    wire                   [15:0] stim22_interval_s;
    wire                   [13:0] stim22_pulse_wc_s;
    wire                   [13:0] stim22_pulse_gap_s;
    wire                   [13:0] stim22_pulse_wa_s;
    wire                   [11:0] stim22_pulse_num_s;
    wire                          stim22_pol_s;
    wire                   [15:0] stim23_interval_s;
    wire                   [13:0] stim23_pulse_wc_s;
    wire                   [13:0] stim23_pulse_gap_s;
    wire                   [13:0] stim23_pulse_wa_s;
    wire                   [11:0] stim23_pulse_num_s;
    wire                          stim23_pol_s;
    wire                   [15:0] stim24_interval_s;
    wire                   [13:0] stim24_pulse_wc_s;
    wire                   [13:0] stim24_pulse_gap_s;
    wire                   [13:0] stim24_pulse_wa_s;
    wire                   [11:0] stim24_pulse_num_s;
    wire                          stim24_pol_s;
    wire                   [15:0] stim25_interval_s;
    wire                   [13:0] stim25_pulse_wc_s;
    wire                   [13:0] stim25_pulse_gap_s;
    wire                   [13:0] stim25_pulse_wa_s;
    wire                   [11:0] stim25_pulse_num_s;
    wire                          stim25_pol_s;
    wire                   [15:0] stim26_interval_s;
    wire                   [13:0] stim26_pulse_wc_s;
    wire                   [13:0] stim26_pulse_gap_s;
    wire                   [13:0] stim26_pulse_wa_s;
    wire                   [11:0] stim26_pulse_num_s;
    wire                          stim26_pol_s;
    wire                   [15:0] stim27_interval_s;
    wire                   [13:0] stim27_pulse_wc_s;
    wire                   [13:0] stim27_pulse_gap_s;
    wire                   [13:0] stim27_pulse_wa_s;
    wire                   [11:0] stim27_pulse_num_s;
    wire                          stim27_pol_s;
    wire                   [15:0] stim28_interval_s;
    wire                   [13:0] stim28_pulse_wc_s;
    wire                   [13:0] stim28_pulse_gap_s;
    wire                   [13:0] stim28_pulse_wa_s;
    wire                   [11:0] stim28_pulse_num_s;
    wire                          stim28_pol_s;
    wire                   [15:0] stim29_interval_s;
    wire                   [13:0] stim29_pulse_wc_s;
    wire                   [13:0] stim29_pulse_gap_s;
    wire                   [13:0] stim29_pulse_wa_s;
    wire                   [11:0] stim29_pulse_num_s;
    wire                          stim29_pol_s;
    wire                   [15:0] stim30_interval_s;
    wire                   [13:0] stim30_pulse_wc_s;
    wire                   [13:0] stim30_pulse_gap_s;
    wire                   [13:0] stim30_pulse_wa_s;
    wire                   [11:0] stim30_pulse_num_s;
    wire                          stim30_pol_s;
    wire                   [15:0] stim31_interval_s;
    wire                   [13:0] stim31_pulse_wc_s;
    wire                   [13:0] stim31_pulse_gap_s;
    wire                   [13:0] stim31_pulse_wa_s;
    wire                   [11:0] stim31_pulse_num_s;
    wire                          stim31_pol_s;
    wire                   [15:0] stim32_interval_s;
    wire                   [13:0] stim32_pulse_wc_s;
    wire                   [13:0] stim32_pulse_gap_s;
    wire                   [13:0] stim32_pulse_wa_s;
    wire                   [11:0] stim32_pulse_num_s;
    wire                          stim32_pol_s;
    wire                   [15:0] stim33_interval_s;
    wire                   [13:0] stim33_pulse_wc_s;
    wire                   [13:0] stim33_pulse_gap_s;
    wire                   [13:0] stim33_pulse_wa_s;
    wire                   [11:0] stim33_pulse_num_s;
    wire                          stim33_pol_s;
    wire                   [15:0] stim34_interval_s;
    wire                   [13:0] stim34_pulse_wc_s;
    wire                   [13:0] stim34_pulse_gap_s;
    wire                   [13:0] stim34_pulse_wa_s;
    wire                   [11:0] stim34_pulse_num_s;
    wire                          stim34_pol_s;
    wire                   [15:0] stim35_interval_s;
    wire                   [13:0] stim35_pulse_wc_s;
    wire                   [13:0] stim35_pulse_gap_s;
    wire                   [13:0] stim35_pulse_wa_s;
    wire                   [11:0] stim35_pulse_num_s;
    wire                          stim35_pol_s;
    wire                   [15:0] stim36_interval_s;
    wire                   [13:0] stim36_pulse_wc_s;
    wire                   [13:0] stim36_pulse_gap_s;
    wire                   [13:0] stim36_pulse_wa_s;
    wire                   [11:0] stim36_pulse_num_s;
    wire                          stim36_pol_s;
    wire                   [15:0] stim37_interval_s;
    wire                   [13:0] stim37_pulse_wc_s;
    wire                   [13:0] stim37_pulse_gap_s;
    wire                   [13:0] stim37_pulse_wa_s;
    wire                   [11:0] stim37_pulse_num_s;
    wire                          stim37_pol_s;
    wire                   [15:0] stim38_interval_s;
    wire                   [13:0] stim38_pulse_wc_s;
    wire                   [13:0] stim38_pulse_gap_s;
    wire                   [13:0] stim38_pulse_wa_s;
    wire                   [11:0] stim38_pulse_num_s;
    wire                          stim38_pol_s;
    wire                   [15:0] stim39_interval_s;
    wire                   [13:0] stim39_pulse_wc_s;
    wire                   [13:0] stim39_pulse_gap_s;
    wire                   [13:0] stim39_pulse_wa_s;
    wire                   [11:0] stim39_pulse_num_s;
    wire                          stim39_pol_s;
    wire                   [15:0] stim40_interval_s;
    wire                   [13:0] stim40_pulse_wc_s;
    wire                   [13:0] stim40_pulse_gap_s;
    wire                   [13:0] stim40_pulse_wa_s;
    wire                   [11:0] stim40_pulse_num_s;
    wire                          stim40_pol_s;
    wire                   [15:0] stim41_interval_s;
    wire                   [13:0] stim41_pulse_wc_s;
    wire                   [13:0] stim41_pulse_gap_s;
    wire                   [13:0] stim41_pulse_wa_s;
    wire                   [11:0] stim41_pulse_num_s;
    wire                          stim41_pol_s;
    wire                   [15:0] stim42_interval_s;
    wire                   [13:0] stim42_pulse_wc_s;
    wire                   [13:0] stim42_pulse_gap_s;
    wire                   [13:0] stim42_pulse_wa_s;
    wire                   [11:0] stim42_pulse_num_s;
    wire                          stim42_pol_s;
    wire                   [15:0] stim43_interval_s;
    wire                   [13:0] stim43_pulse_wc_s;
    wire                   [13:0] stim43_pulse_gap_s;
    wire                   [13:0] stim43_pulse_wa_s;
    wire                   [11:0] stim43_pulse_num_s;
    wire                          stim43_pol_s;
    wire                   [15:0] stim44_interval_s;
    wire                   [13:0] stim44_pulse_wc_s;
    wire                   [13:0] stim44_pulse_gap_s;
    wire                   [13:0] stim44_pulse_wa_s;
    wire                   [11:0] stim44_pulse_num_s;
    wire                          stim44_pol_s;
    wire                   [15:0] stim45_interval_s;
    wire                   [13:0] stim45_pulse_wc_s;
    wire                   [13:0] stim45_pulse_gap_s;
    wire                   [13:0] stim45_pulse_wa_s;
    wire                   [11:0] stim45_pulse_num_s;
    wire                          stim45_pol_s;
    wire                   [15:0] stim46_interval_s;
    wire                   [13:0] stim46_pulse_wc_s;
    wire                   [13:0] stim46_pulse_gap_s;
    wire                   [13:0] stim46_pulse_wa_s;
    wire                   [11:0] stim46_pulse_num_s;
    wire                          stim46_pol_s;
    wire                   [15:0] stim47_interval_s;
    wire                   [13:0] stim47_pulse_wc_s;
    wire                   [13:0] stim47_pulse_gap_s;
    wire                   [13:0] stim47_pulse_wa_s;
    wire                   [11:0] stim47_pulse_num_s;
    wire                          stim47_pol_s;
    wire                   [15:0] stim48_interval_s;
    wire                   [13:0] stim48_pulse_wc_s;
    wire                   [13:0] stim48_pulse_gap_s;
    wire                   [13:0] stim48_pulse_wa_s;
    wire                   [11:0] stim48_pulse_num_s;
    wire                          stim48_pol_s;
    wire                   [15:0] stim49_interval_s;
    wire                   [13:0] stim49_pulse_wc_s;
    wire                   [13:0] stim49_pulse_gap_s;
    wire                   [13:0] stim49_pulse_wa_s;
    wire                   [11:0] stim49_pulse_num_s;
    wire                          stim49_pol_s;
    wire                   [15:0] stim50_interval_s;
    wire                   [13:0] stim50_pulse_wc_s;
    wire                   [13:0] stim50_pulse_gap_s;
    wire                   [13:0] stim50_pulse_wa_s;
    wire                   [11:0] stim50_pulse_num_s;
    wire                          stim50_pol_s;
    wire                   [15:0] stim51_interval_s;
    wire                   [13:0] stim51_pulse_wc_s;
    wire                   [13:0] stim51_pulse_gap_s;
    wire                   [13:0] stim51_pulse_wa_s;
    wire                   [11:0] stim51_pulse_num_s;
    wire                          stim51_pol_s;
    wire                   [15:0] stim52_interval_s;
    wire                   [13:0] stim52_pulse_wc_s;
    wire                   [13:0] stim52_pulse_gap_s;
    wire                   [13:0] stim52_pulse_wa_s;
    wire                   [11:0] stim52_pulse_num_s;
    wire                          stim52_pol_s;
    wire                   [15:0] stim53_interval_s;
    wire                   [13:0] stim53_pulse_wc_s;
    wire                   [13:0] stim53_pulse_gap_s;
    wire                   [13:0] stim53_pulse_wa_s;
    wire                   [11:0] stim53_pulse_num_s;
    wire                          stim53_pol_s;
    wire                   [15:0] stim54_interval_s;
    wire                   [13:0] stim54_pulse_wc_s;
    wire                   [13:0] stim54_pulse_gap_s;
    wire                   [13:0] stim54_pulse_wa_s;
    wire                   [11:0] stim54_pulse_num_s;
    wire                          stim54_pol_s;
    wire                   [15:0] stim55_interval_s;
    wire                   [13:0] stim55_pulse_wc_s;
    wire                   [13:0] stim55_pulse_gap_s;
    wire                   [13:0] stim55_pulse_wa_s;
    wire                   [11:0] stim55_pulse_num_s;
    wire                          stim55_pol_s;
    wire                   [15:0] stim56_interval_s;
    wire                   [13:0] stim56_pulse_wc_s;
    wire                   [13:0] stim56_pulse_gap_s;
    wire                   [13:0] stim56_pulse_wa_s;
    wire                   [11:0] stim56_pulse_num_s;
    wire                          stim56_pol_s;
    wire                   [15:0] stim57_interval_s;
    wire                   [13:0] stim57_pulse_wc_s;
    wire                   [13:0] stim57_pulse_gap_s;
    wire                   [13:0] stim57_pulse_wa_s;
    wire                   [11:0] stim57_pulse_num_s;
    wire                          stim57_pol_s;
    wire                   [15:0] stim58_interval_s;
    wire                   [13:0] stim58_pulse_wc_s;
    wire                   [13:0] stim58_pulse_gap_s;
    wire                   [13:0] stim58_pulse_wa_s;
    wire                   [11:0] stim58_pulse_num_s;
    wire                          stim58_pol_s;
    wire                   [15:0] stim59_interval_s;
    wire                   [13:0] stim59_pulse_wc_s;
    wire                   [13:0] stim59_pulse_gap_s;
    wire                   [13:0] stim59_pulse_wa_s;
    wire                   [11:0] stim59_pulse_num_s;
    wire                          stim59_pol_s;
    wire                   [15:0] stim60_interval_s;
    wire                   [13:0] stim60_pulse_wc_s;
    wire                   [13:0] stim60_pulse_gap_s;
    wire                   [13:0] stim60_pulse_wa_s;
    wire                   [11:0] stim60_pulse_num_s;
    wire                          stim60_pol_s;
    wire                   [15:0] stim61_interval_s;
    wire                   [13:0] stim61_pulse_wc_s;
    wire                   [13:0] stim61_pulse_gap_s;
    wire                   [13:0] stim61_pulse_wa_s;
    wire                   [11:0] stim61_pulse_num_s;
    wire                          stim61_pol_s;
    wire                   [15:0] stim62_interval_s;
    wire                   [13:0] stim62_pulse_wc_s;
    wire                   [13:0] stim62_pulse_gap_s;
    wire                   [13:0] stim62_pulse_wa_s;
    wire                   [11:0] stim62_pulse_num_s;
    wire                          stim62_pol_s;
    wire                   [15:0] stim63_interval_s;
    wire                   [13:0] stim63_pulse_wc_s;
    wire                   [13:0] stim63_pulse_gap_s;
    wire                   [13:0] stim63_pulse_wa_s;
    wire                   [11:0] stim63_pulse_num_s;
    wire                          stim63_pol_s;
    wire                          error_s;
    wire                          err_stim_s;
    wire                          stim_mask_en0_sync_s;
    wire                          stim_mask_en1_sync_s;
    wire                          stim_mask_en2_sync_s;
    wire                          stim_mask_en3_sync_s;
    wire                          stim_mask_en4_sync_s;
    wire                          stim_mask_en5_sync_s;
    wire                          stim_mask_en6_sync_s;
    wire                          stim_mask_en7_sync_s;
    wire                          clk_stim_s;
    wire      [STIM_CLKDIV_W-1:0] div_clk_stim_s;
    wire                          en_clk_stim_s;
    wire [CLKDIV_W_DISCHARGE-1:0] div_clk_discharge_s;
    wire                          en_clk_discharge_s;
    wire                          clk_discharge_main_s;
    wire                   [19:0] pw_discharge_s;
    wire                          rec_sync_en_s;
    wire                          rec_en_s;
    wire                   [31:0] imp_en_g1_sync_s;
    wire                   [31:0] imp_en_g2_sync_s;
    wire                   [31:0] en_rec_sync_g1_s;
    wire                   [31:0] en_rec_sync_g2_s;
    /* icglue keep begin declarations *//* icglue keep end */


    w_icons_mgmt #(
        .STIM_CLKDIV_W      (STIM_CLKDIV_W),
        .CLKDIV_W_DISCHARGE (CLKDIV_W_DISCHARGE)
    ) i_w_icons_mgmt (
        .clk_ref_i            (clk_ref_i),
        .clk_adc1_gated_o     (clk_adc1_gated_o),
        .clk_adc2_gated_o     (clk_adc2_gated_o),
        .reset_i              (reset_i),
        .resetn_top_sync_o    (resetn_top_sync_o),
        .resetn_spi_sync_o    (resetn_spi_sync_s),
        .stim_xen_i           (stim_xen_i),
        .stim_xen_sync_o      (stim_xen_sync_s),
        .err_sync_o           (err_sync_o),
        .err_stim_sync_o      (err_stim_sync_o),
        .spi_clk_i            (spi_clk_i),
        .dft_testmode_i       (dft_testmode_i),
        .stim_mask_en_i       (stim_mask_en_s),
        .amp_gain_g1_i        (amp_gain_g1_s),
        .amp_gain_g2_i        (amp_gain_g2_s),
        .chip_error_load_i    (chip_error_load_s),
        .chip_error_cmd_i     (chip_error_cmd_s),
        .chip_error_crc5_i    (chip_error_crc5_s),
        .en_rec_ch_g1_i       (en_rec_ch_g1_s),
        .en_rec_ch_g2_i       (en_rec_ch_g2_s),
        .error_i              (error_s),
        .err_stim_i           (err_stim_s),
        .amp_gain_sync_o      (amp_gain_sync_o),
        .stim_mask_en0_sync_o (stim_mask_en0_sync_s),
        .stim_mask_en1_sync_o (stim_mask_en1_sync_s),
        .stim_mask_en2_sync_o (stim_mask_en2_sync_s),
        .stim_mask_en3_sync_o (stim_mask_en3_sync_s),
        .stim_mask_en4_sync_o (stim_mask_en4_sync_s),
        .stim_mask_en5_sync_o (stim_mask_en5_sync_s),
        .stim_mask_en6_sync_o (stim_mask_en6_sync_s),
        .stim_mask_en7_sync_o (stim_mask_en7_sync_s),
        .clk_stim_o           (clk_stim_s),
        .div_clk_stim_i       (div_clk_stim_s),
        .en_clk_stim_i        (en_clk_stim_s),
        .div_clk_discharge_i  (div_clk_discharge_s),
        .en_clk_discharge_i   (en_clk_discharge_s),
        .clk_discharge_main_o (clk_discharge_main_s),
        .rec_sync_en_o        (rec_sync_en_s),
        .rec_en_i             (rec_en_s),
        .rec_vec_sync_o       (rec_vec_sync_o),
        .en_rec_sync_g1_o     (en_rec_sync_g1_s),
        .en_rec_sync_g2_o     (en_rec_sync_g2_s)
    );

    spi_wrap #(
        .STIM_CLKDIV_W      (STIM_CLKDIV_W),
        .CLKDIV_W_DISCHARGE (CLKDIV_W_DISCHARGE)
    ) i_spi_wrap (
        .resetn_spi_sync_i   (resetn_spi_sync_s),
        .spi_clk_i           (spi_clk_i),
        .spi_cs_i            (spi_cs_i),
        .spi_mosi_i          (spi_mosi_i),
        .spi_miso_o          (spi_miso_o),
        .stim_mask_en_o      (stim_mask_en_s),
        .amp_gain_g1_o       (amp_gain_g1_s),
        .amp_gain_g2_o       (amp_gain_g2_s),
        .chip_error_load_o   (chip_error_load_s),
        .chip_error_cmd_o    (chip_error_cmd_s),
        .chip_error_crc5_o   (chip_error_crc5_s),
        .en_rec_ch_g1_o      (en_rec_ch_g1_s),
        .en_rec_ch_g2_o      (en_rec_ch_g2_s),
        .stim_monophasic_o   (stim_monophasic_s),
        .stim_mask0_g1_o     (stim_mask0_g1_s),
        .stim_mask0_g2_o     (stim_mask0_g2_s),
        .stim_mask1_g1_o     (stim_mask1_g1_s),
        .stim_mask1_g2_o     (stim_mask1_g2_s),
        .stim_mask2_g1_o     (stim_mask2_g1_s),
        .stim_mask2_g2_o     (stim_mask2_g2_s),
        .stim_mask3_g1_o     (stim_mask3_g1_s),
        .stim_mask3_g2_o     (stim_mask3_g2_s),
        .stim_mask4_g1_o     (stim_mask4_g1_s),
        .stim_mask4_g2_o     (stim_mask4_g2_s),
        .stim_mask5_g1_o     (stim_mask5_g1_s),
        .stim_mask5_g2_o     (stim_mask5_g2_s),
        .stim_mask6_g1_o     (stim_mask6_g1_s),
        .stim_mask6_g2_o     (stim_mask6_g2_s),
        .stim_mask7_g1_o     (stim_mask7_g1_s),
        .stim_mask7_g2_o     (stim_mask7_g2_s),
        .stim0_interval_o    (stim0_interval_s),
        .stim0_ia_o          (stim0_ia_o),
        .stim0_ic_o          (stim0_ic_o),
        .stim0_pulse_wc_o    (stim0_pulse_wc_s),
        .stim0_pulse_gap_o   (stim0_pulse_gap_s),
        .stim0_pulse_wa_o    (stim0_pulse_wa_s),
        .stim0_pulse_num_o   (stim0_pulse_num_s),
        .stim0_pol_o         (stim0_pol_s),
        .stim1_interval_o    (stim1_interval_s),
        .stim1_ia_o          (stim1_ia_o),
        .stim1_ic_o          (stim1_ic_o),
        .stim1_pulse_wc_o    (stim1_pulse_wc_s),
        .stim1_pulse_gap_o   (stim1_pulse_gap_s),
        .stim1_pulse_wa_o    (stim1_pulse_wa_s),
        .stim1_pulse_num_o   (stim1_pulse_num_s),
        .stim1_pol_o         (stim1_pol_s),
        .stim2_interval_o    (stim2_interval_s),
        .stim2_ia_o          (stim2_ia_o),
        .stim2_ic_o          (stim2_ic_o),
        .stim2_pulse_wc_o    (stim2_pulse_wc_s),
        .stim2_pulse_gap_o   (stim2_pulse_gap_s),
        .stim2_pulse_wa_o    (stim2_pulse_wa_s),
        .stim2_pulse_num_o   (stim2_pulse_num_s),
        .stim2_pol_o         (stim2_pol_s),
        .stim3_interval_o    (stim3_interval_s),
        .stim3_ia_o          (stim3_ia_o),
        .stim3_ic_o          (stim3_ic_o),
        .stim3_pulse_wc_o    (stim3_pulse_wc_s),
        .stim3_pulse_gap_o   (stim3_pulse_gap_s),
        .stim3_pulse_wa_o    (stim3_pulse_wa_s),
        .stim3_pulse_num_o   (stim3_pulse_num_s),
        .stim3_pol_o         (stim3_pol_s),
        .stim4_interval_o    (stim4_interval_s),
        .stim4_ia_o          (stim4_ia_o),
        .stim4_ic_o          (stim4_ic_o),
        .stim4_pulse_wc_o    (stim4_pulse_wc_s),
        .stim4_pulse_gap_o   (stim4_pulse_gap_s),
        .stim4_pulse_wa_o    (stim4_pulse_wa_s),
        .stim4_pulse_num_o   (stim4_pulse_num_s),
        .stim4_pol_o         (stim4_pol_s),
        .stim5_interval_o    (stim5_interval_s),
        .stim5_ia_o          (stim5_ia_o),
        .stim5_ic_o          (stim5_ic_o),
        .stim5_pulse_wc_o    (stim5_pulse_wc_s),
        .stim5_pulse_gap_o   (stim5_pulse_gap_s),
        .stim5_pulse_wa_o    (stim5_pulse_wa_s),
        .stim5_pulse_num_o   (stim5_pulse_num_s),
        .stim5_pol_o         (stim5_pol_s),
        .stim6_interval_o    (stim6_interval_s),
        .stim6_ia_o          (stim6_ia_o),
        .stim6_ic_o          (stim6_ic_o),
        .stim6_pulse_wc_o    (stim6_pulse_wc_s),
        .stim6_pulse_gap_o   (stim6_pulse_gap_s),
        .stim6_pulse_wa_o    (stim6_pulse_wa_s),
        .stim6_pulse_num_o   (stim6_pulse_num_s),
        .stim6_pol_o         (stim6_pol_s),
        .stim7_interval_o    (stim7_interval_s),
        .stim7_ia_o          (stim7_ia_o),
        .stim7_ic_o          (stim7_ic_o),
        .stim7_pulse_wc_o    (stim7_pulse_wc_s),
        .stim7_pulse_gap_o   (stim7_pulse_gap_s),
        .stim7_pulse_wa_o    (stim7_pulse_wa_s),
        .stim7_pulse_num_o   (stim7_pulse_num_s),
        .stim7_pol_o         (stim7_pol_s),
        .stim8_interval_o    (stim8_interval_s),
        .stim8_ia_o          (stim8_ia_o),
        .stim8_ic_o          (stim8_ic_o),
        .stim8_pulse_wc_o    (stim8_pulse_wc_s),
        .stim8_pulse_gap_o   (stim8_pulse_gap_s),
        .stim8_pulse_wa_o    (stim8_pulse_wa_s),
        .stim8_pulse_num_o   (stim8_pulse_num_s),
        .stim8_pol_o         (stim8_pol_s),
        .stim9_interval_o    (stim9_interval_s),
        .stim9_ia_o          (stim9_ia_o),
        .stim9_ic_o          (stim9_ic_o),
        .stim9_pulse_wc_o    (stim9_pulse_wc_s),
        .stim9_pulse_gap_o   (stim9_pulse_gap_s),
        .stim9_pulse_wa_o    (stim9_pulse_wa_s),
        .stim9_pulse_num_o   (stim9_pulse_num_s),
        .stim9_pol_o         (stim9_pol_s),
        .stim10_interval_o   (stim10_interval_s),
        .stim10_ia_o         (stim10_ia_o),
        .stim10_ic_o         (stim10_ic_o),
        .stim10_pulse_wc_o   (stim10_pulse_wc_s),
        .stim10_pulse_gap_o  (stim10_pulse_gap_s),
        .stim10_pulse_wa_o   (stim10_pulse_wa_s),
        .stim10_pulse_num_o  (stim10_pulse_num_s),
        .stim10_pol_o        (stim10_pol_s),
        .stim11_interval_o   (stim11_interval_s),
        .stim11_ia_o         (stim11_ia_o),
        .stim11_ic_o         (stim11_ic_o),
        .stim11_pulse_wc_o   (stim11_pulse_wc_s),
        .stim11_pulse_gap_o  (stim11_pulse_gap_s),
        .stim11_pulse_wa_o   (stim11_pulse_wa_s),
        .stim11_pulse_num_o  (stim11_pulse_num_s),
        .stim11_pol_o        (stim11_pol_s),
        .stim12_interval_o   (stim12_interval_s),
        .stim12_ia_o         (stim12_ia_o),
        .stim12_ic_o         (stim12_ic_o),
        .stim12_pulse_wc_o   (stim12_pulse_wc_s),
        .stim12_pulse_gap_o  (stim12_pulse_gap_s),
        .stim12_pulse_wa_o   (stim12_pulse_wa_s),
        .stim12_pulse_num_o  (stim12_pulse_num_s),
        .stim12_pol_o        (stim12_pol_s),
        .stim13_interval_o   (stim13_interval_s),
        .stim13_ia_o         (stim13_ia_o),
        .stim13_ic_o         (stim13_ic_o),
        .stim13_pulse_wc_o   (stim13_pulse_wc_s),
        .stim13_pulse_gap_o  (stim13_pulse_gap_s),
        .stim13_pulse_wa_o   (stim13_pulse_wa_s),
        .stim13_pulse_num_o  (stim13_pulse_num_s),
        .stim13_pol_o        (stim13_pol_s),
        .stim14_interval_o   (stim14_interval_s),
        .stim14_ia_o         (stim14_ia_o),
        .stim14_ic_o         (stim14_ic_o),
        .stim14_pulse_wc_o   (stim14_pulse_wc_s),
        .stim14_pulse_gap_o  (stim14_pulse_gap_s),
        .stim14_pulse_wa_o   (stim14_pulse_wa_s),
        .stim14_pulse_num_o  (stim14_pulse_num_s),
        .stim14_pol_o        (stim14_pol_s),
        .stim15_interval_o   (stim15_interval_s),
        .stim15_ia_o         (stim15_ia_o),
        .stim15_ic_o         (stim15_ic_o),
        .stim15_pulse_wc_o   (stim15_pulse_wc_s),
        .stim15_pulse_gap_o  (stim15_pulse_gap_s),
        .stim15_pulse_wa_o   (stim15_pulse_wa_s),
        .stim15_pulse_num_o  (stim15_pulse_num_s),
        .stim15_pol_o        (stim15_pol_s),
        .stim16_interval_o   (stim16_interval_s),
        .stim16_ia_o         (stim16_ia_o),
        .stim16_ic_o         (stim16_ic_o),
        .stim16_pulse_wc_o   (stim16_pulse_wc_s),
        .stim16_pulse_gap_o  (stim16_pulse_gap_s),
        .stim16_pulse_wa_o   (stim16_pulse_wa_s),
        .stim16_pulse_num_o  (stim16_pulse_num_s),
        .stim16_pol_o        (stim16_pol_s),
        .stim17_interval_o   (stim17_interval_s),
        .stim17_ia_o         (stim17_ia_o),
        .stim17_ic_o         (stim17_ic_o),
        .stim17_pulse_wc_o   (stim17_pulse_wc_s),
        .stim17_pulse_gap_o  (stim17_pulse_gap_s),
        .stim17_pulse_wa_o   (stim17_pulse_wa_s),
        .stim17_pulse_num_o  (stim17_pulse_num_s),
        .stim17_pol_o        (stim17_pol_s),
        .stim18_interval_o   (stim18_interval_s),
        .stim18_ia_o         (stim18_ia_o),
        .stim18_ic_o         (stim18_ic_o),
        .stim18_pulse_wc_o   (stim18_pulse_wc_s),
        .stim18_pulse_gap_o  (stim18_pulse_gap_s),
        .stim18_pulse_wa_o   (stim18_pulse_wa_s),
        .stim18_pulse_num_o  (stim18_pulse_num_s),
        .stim18_pol_o        (stim18_pol_s),
        .stim19_interval_o   (stim19_interval_s),
        .stim19_ia_o         (stim19_ia_o),
        .stim19_ic_o         (stim19_ic_o),
        .stim19_pulse_wc_o   (stim19_pulse_wc_s),
        .stim19_pulse_gap_o  (stim19_pulse_gap_s),
        .stim19_pulse_wa_o   (stim19_pulse_wa_s),
        .stim19_pulse_num_o  (stim19_pulse_num_s),
        .stim19_pol_o        (stim19_pol_s),
        .stim20_interval_o   (stim20_interval_s),
        .stim20_ia_o         (stim20_ia_o),
        .stim20_ic_o         (stim20_ic_o),
        .stim20_pulse_wc_o   (stim20_pulse_wc_s),
        .stim20_pulse_gap_o  (stim20_pulse_gap_s),
        .stim20_pulse_wa_o   (stim20_pulse_wa_s),
        .stim20_pulse_num_o  (stim20_pulse_num_s),
        .stim20_pol_o        (stim20_pol_s),
        .stim21_interval_o   (stim21_interval_s),
        .stim21_ia_o         (stim21_ia_o),
        .stim21_ic_o         (stim21_ic_o),
        .stim21_pulse_wc_o   (stim21_pulse_wc_s),
        .stim21_pulse_gap_o  (stim21_pulse_gap_s),
        .stim21_pulse_wa_o   (stim21_pulse_wa_s),
        .stim21_pulse_num_o  (stim21_pulse_num_s),
        .stim21_pol_o        (stim21_pol_s),
        .stim22_interval_o   (stim22_interval_s),
        .stim22_ia_o         (stim22_ia_o),
        .stim22_ic_o         (stim22_ic_o),
        .stim22_pulse_wc_o   (stim22_pulse_wc_s),
        .stim22_pulse_gap_o  (stim22_pulse_gap_s),
        .stim22_pulse_wa_o   (stim22_pulse_wa_s),
        .stim22_pulse_num_o  (stim22_pulse_num_s),
        .stim22_pol_o        (stim22_pol_s),
        .stim23_interval_o   (stim23_interval_s),
        .stim23_ia_o         (stim23_ia_o),
        .stim23_ic_o         (stim23_ic_o),
        .stim23_pulse_wc_o   (stim23_pulse_wc_s),
        .stim23_pulse_gap_o  (stim23_pulse_gap_s),
        .stim23_pulse_wa_o   (stim23_pulse_wa_s),
        .stim23_pulse_num_o  (stim23_pulse_num_s),
        .stim23_pol_o        (stim23_pol_s),
        .stim24_interval_o   (stim24_interval_s),
        .stim24_ia_o         (stim24_ia_o),
        .stim24_ic_o         (stim24_ic_o),
        .stim24_pulse_wc_o   (stim24_pulse_wc_s),
        .stim24_pulse_gap_o  (stim24_pulse_gap_s),
        .stim24_pulse_wa_o   (stim24_pulse_wa_s),
        .stim24_pulse_num_o  (stim24_pulse_num_s),
        .stim24_pol_o        (stim24_pol_s),
        .stim25_interval_o   (stim25_interval_s),
        .stim25_ia_o         (stim25_ia_o),
        .stim25_ic_o         (stim25_ic_o),
        .stim25_pulse_wc_o   (stim25_pulse_wc_s),
        .stim25_pulse_gap_o  (stim25_pulse_gap_s),
        .stim25_pulse_wa_o   (stim25_pulse_wa_s),
        .stim25_pulse_num_o  (stim25_pulse_num_s),
        .stim25_pol_o        (stim25_pol_s),
        .stim26_interval_o   (stim26_interval_s),
        .stim26_ia_o         (stim26_ia_o),
        .stim26_ic_o         (stim26_ic_o),
        .stim26_pulse_wc_o   (stim26_pulse_wc_s),
        .stim26_pulse_gap_o  (stim26_pulse_gap_s),
        .stim26_pulse_wa_o   (stim26_pulse_wa_s),
        .stim26_pulse_num_o  (stim26_pulse_num_s),
        .stim26_pol_o        (stim26_pol_s),
        .stim27_interval_o   (stim27_interval_s),
        .stim27_ia_o         (stim27_ia_o),
        .stim27_ic_o         (stim27_ic_o),
        .stim27_pulse_wc_o   (stim27_pulse_wc_s),
        .stim27_pulse_gap_o  (stim27_pulse_gap_s),
        .stim27_pulse_wa_o   (stim27_pulse_wa_s),
        .stim27_pulse_num_o  (stim27_pulse_num_s),
        .stim27_pol_o        (stim27_pol_s),
        .stim28_interval_o   (stim28_interval_s),
        .stim28_ia_o         (stim28_ia_o),
        .stim28_ic_o         (stim28_ic_o),
        .stim28_pulse_wc_o   (stim28_pulse_wc_s),
        .stim28_pulse_gap_o  (stim28_pulse_gap_s),
        .stim28_pulse_wa_o   (stim28_pulse_wa_s),
        .stim28_pulse_num_o  (stim28_pulse_num_s),
        .stim28_pol_o        (stim28_pol_s),
        .stim29_interval_o   (stim29_interval_s),
        .stim29_ia_o         (stim29_ia_o),
        .stim29_ic_o         (stim29_ic_o),
        .stim29_pulse_wc_o   (stim29_pulse_wc_s),
        .stim29_pulse_gap_o  (stim29_pulse_gap_s),
        .stim29_pulse_wa_o   (stim29_pulse_wa_s),
        .stim29_pulse_num_o  (stim29_pulse_num_s),
        .stim29_pol_o        (stim29_pol_s),
        .stim30_interval_o   (stim30_interval_s),
        .stim30_ia_o         (stim30_ia_o),
        .stim30_ic_o         (stim30_ic_o),
        .stim30_pulse_wc_o   (stim30_pulse_wc_s),
        .stim30_pulse_gap_o  (stim30_pulse_gap_s),
        .stim30_pulse_wa_o   (stim30_pulse_wa_s),
        .stim30_pulse_num_o  (stim30_pulse_num_s),
        .stim30_pol_o        (stim30_pol_s),
        .stim31_interval_o   (stim31_interval_s),
        .stim31_ia_o         (stim31_ia_o),
        .stim31_ic_o         (stim31_ic_o),
        .stim31_pulse_wc_o   (stim31_pulse_wc_s),
        .stim31_pulse_gap_o  (stim31_pulse_gap_s),
        .stim31_pulse_wa_o   (stim31_pulse_wa_s),
        .stim31_pulse_num_o  (stim31_pulse_num_s),
        .stim31_pol_o        (stim31_pol_s),
        .stim32_interval_o   (stim32_interval_s),
        .stim32_ia_o         (stim32_ia_o),
        .stim32_ic_o         (stim32_ic_o),
        .stim32_pulse_wc_o   (stim32_pulse_wc_s),
        .stim32_pulse_gap_o  (stim32_pulse_gap_s),
        .stim32_pulse_wa_o   (stim32_pulse_wa_s),
        .stim32_pulse_num_o  (stim32_pulse_num_s),
        .stim32_pol_o        (stim32_pol_s),
        .stim33_interval_o   (stim33_interval_s),
        .stim33_ia_o         (stim33_ia_o),
        .stim33_ic_o         (stim33_ic_o),
        .stim33_pulse_wc_o   (stim33_pulse_wc_s),
        .stim33_pulse_gap_o  (stim33_pulse_gap_s),
        .stim33_pulse_wa_o   (stim33_pulse_wa_s),
        .stim33_pulse_num_o  (stim33_pulse_num_s),
        .stim33_pol_o        (stim33_pol_s),
        .stim34_interval_o   (stim34_interval_s),
        .stim34_ia_o         (stim34_ia_o),
        .stim34_ic_o         (stim34_ic_o),
        .stim34_pulse_wc_o   (stim34_pulse_wc_s),
        .stim34_pulse_gap_o  (stim34_pulse_gap_s),
        .stim34_pulse_wa_o   (stim34_pulse_wa_s),
        .stim34_pulse_num_o  (stim34_pulse_num_s),
        .stim34_pol_o        (stim34_pol_s),
        .stim35_interval_o   (stim35_interval_s),
        .stim35_ia_o         (stim35_ia_o),
        .stim35_ic_o         (stim35_ic_o),
        .stim35_pulse_wc_o   (stim35_pulse_wc_s),
        .stim35_pulse_gap_o  (stim35_pulse_gap_s),
        .stim35_pulse_wa_o   (stim35_pulse_wa_s),
        .stim35_pulse_num_o  (stim35_pulse_num_s),
        .stim35_pol_o        (stim35_pol_s),
        .stim36_interval_o   (stim36_interval_s),
        .stim36_ia_o         (stim36_ia_o),
        .stim36_ic_o         (stim36_ic_o),
        .stim36_pulse_wc_o   (stim36_pulse_wc_s),
        .stim36_pulse_gap_o  (stim36_pulse_gap_s),
        .stim36_pulse_wa_o   (stim36_pulse_wa_s),
        .stim36_pulse_num_o  (stim36_pulse_num_s),
        .stim36_pol_o        (stim36_pol_s),
        .stim37_interval_o   (stim37_interval_s),
        .stim37_ia_o         (stim37_ia_o),
        .stim37_ic_o         (stim37_ic_o),
        .stim37_pulse_wc_o   (stim37_pulse_wc_s),
        .stim37_pulse_gap_o  (stim37_pulse_gap_s),
        .stim37_pulse_wa_o   (stim37_pulse_wa_s),
        .stim37_pulse_num_o  (stim37_pulse_num_s),
        .stim37_pol_o        (stim37_pol_s),
        .stim38_interval_o   (stim38_interval_s),
        .stim38_ia_o         (stim38_ia_o),
        .stim38_ic_o         (stim38_ic_o),
        .stim38_pulse_wc_o   (stim38_pulse_wc_s),
        .stim38_pulse_gap_o  (stim38_pulse_gap_s),
        .stim38_pulse_wa_o   (stim38_pulse_wa_s),
        .stim38_pulse_num_o  (stim38_pulse_num_s),
        .stim38_pol_o        (stim38_pol_s),
        .stim39_interval_o   (stim39_interval_s),
        .stim39_ia_o         (stim39_ia_o),
        .stim39_ic_o         (stim39_ic_o),
        .stim39_pulse_wc_o   (stim39_pulse_wc_s),
        .stim39_pulse_gap_o  (stim39_pulse_gap_s),
        .stim39_pulse_wa_o   (stim39_pulse_wa_s),
        .stim39_pulse_num_o  (stim39_pulse_num_s),
        .stim39_pol_o        (stim39_pol_s),
        .stim40_interval_o   (stim40_interval_s),
        .stim40_ia_o         (stim40_ia_o),
        .stim40_ic_o         (stim40_ic_o),
        .stim40_pulse_wc_o   (stim40_pulse_wc_s),
        .stim40_pulse_gap_o  (stim40_pulse_gap_s),
        .stim40_pulse_wa_o   (stim40_pulse_wa_s),
        .stim40_pulse_num_o  (stim40_pulse_num_s),
        .stim40_pol_o        (stim40_pol_s),
        .stim41_interval_o   (stim41_interval_s),
        .stim41_ia_o         (stim41_ia_o),
        .stim41_ic_o         (stim41_ic_o),
        .stim41_pulse_wc_o   (stim41_pulse_wc_s),
        .stim41_pulse_gap_o  (stim41_pulse_gap_s),
        .stim41_pulse_wa_o   (stim41_pulse_wa_s),
        .stim41_pulse_num_o  (stim41_pulse_num_s),
        .stim41_pol_o        (stim41_pol_s),
        .stim42_interval_o   (stim42_interval_s),
        .stim42_ia_o         (stim42_ia_o),
        .stim42_ic_o         (stim42_ic_o),
        .stim42_pulse_wc_o   (stim42_pulse_wc_s),
        .stim42_pulse_gap_o  (stim42_pulse_gap_s),
        .stim42_pulse_wa_o   (stim42_pulse_wa_s),
        .stim42_pulse_num_o  (stim42_pulse_num_s),
        .stim42_pol_o        (stim42_pol_s),
        .stim43_interval_o   (stim43_interval_s),
        .stim43_ia_o         (stim43_ia_o),
        .stim43_ic_o         (stim43_ic_o),
        .stim43_pulse_wc_o   (stim43_pulse_wc_s),
        .stim43_pulse_gap_o  (stim43_pulse_gap_s),
        .stim43_pulse_wa_o   (stim43_pulse_wa_s),
        .stim43_pulse_num_o  (stim43_pulse_num_s),
        .stim43_pol_o        (stim43_pol_s),
        .stim44_interval_o   (stim44_interval_s),
        .stim44_ia_o         (stim44_ia_o),
        .stim44_ic_o         (stim44_ic_o),
        .stim44_pulse_wc_o   (stim44_pulse_wc_s),
        .stim44_pulse_gap_o  (stim44_pulse_gap_s),
        .stim44_pulse_wa_o   (stim44_pulse_wa_s),
        .stim44_pulse_num_o  (stim44_pulse_num_s),
        .stim44_pol_o        (stim44_pol_s),
        .stim45_interval_o   (stim45_interval_s),
        .stim45_ia_o         (stim45_ia_o),
        .stim45_ic_o         (stim45_ic_o),
        .stim45_pulse_wc_o   (stim45_pulse_wc_s),
        .stim45_pulse_gap_o  (stim45_pulse_gap_s),
        .stim45_pulse_wa_o   (stim45_pulse_wa_s),
        .stim45_pulse_num_o  (stim45_pulse_num_s),
        .stim45_pol_o        (stim45_pol_s),
        .stim46_interval_o   (stim46_interval_s),
        .stim46_ia_o         (stim46_ia_o),
        .stim46_ic_o         (stim46_ic_o),
        .stim46_pulse_wc_o   (stim46_pulse_wc_s),
        .stim46_pulse_gap_o  (stim46_pulse_gap_s),
        .stim46_pulse_wa_o   (stim46_pulse_wa_s),
        .stim46_pulse_num_o  (stim46_pulse_num_s),
        .stim46_pol_o        (stim46_pol_s),
        .stim47_interval_o   (stim47_interval_s),
        .stim47_ia_o         (stim47_ia_o),
        .stim47_ic_o         (stim47_ic_o),
        .stim47_pulse_wc_o   (stim47_pulse_wc_s),
        .stim47_pulse_gap_o  (stim47_pulse_gap_s),
        .stim47_pulse_wa_o   (stim47_pulse_wa_s),
        .stim47_pulse_num_o  (stim47_pulse_num_s),
        .stim47_pol_o        (stim47_pol_s),
        .stim48_interval_o   (stim48_interval_s),
        .stim48_ia_o         (stim48_ia_o),
        .stim48_ic_o         (stim48_ic_o),
        .stim48_pulse_wc_o   (stim48_pulse_wc_s),
        .stim48_pulse_gap_o  (stim48_pulse_gap_s),
        .stim48_pulse_wa_o   (stim48_pulse_wa_s),
        .stim48_pulse_num_o  (stim48_pulse_num_s),
        .stim48_pol_o        (stim48_pol_s),
        .stim49_interval_o   (stim49_interval_s),
        .stim49_ia_o         (stim49_ia_o),
        .stim49_ic_o         (stim49_ic_o),
        .stim49_pulse_wc_o   (stim49_pulse_wc_s),
        .stim49_pulse_gap_o  (stim49_pulse_gap_s),
        .stim49_pulse_wa_o   (stim49_pulse_wa_s),
        .stim49_pulse_num_o  (stim49_pulse_num_s),
        .stim49_pol_o        (stim49_pol_s),
        .stim50_interval_o   (stim50_interval_s),
        .stim50_ia_o         (stim50_ia_o),
        .stim50_ic_o         (stim50_ic_o),
        .stim50_pulse_wc_o   (stim50_pulse_wc_s),
        .stim50_pulse_gap_o  (stim50_pulse_gap_s),
        .stim50_pulse_wa_o   (stim50_pulse_wa_s),
        .stim50_pulse_num_o  (stim50_pulse_num_s),
        .stim50_pol_o        (stim50_pol_s),
        .stim51_interval_o   (stim51_interval_s),
        .stim51_ia_o         (stim51_ia_o),
        .stim51_ic_o         (stim51_ic_o),
        .stim51_pulse_wc_o   (stim51_pulse_wc_s),
        .stim51_pulse_gap_o  (stim51_pulse_gap_s),
        .stim51_pulse_wa_o   (stim51_pulse_wa_s),
        .stim51_pulse_num_o  (stim51_pulse_num_s),
        .stim51_pol_o        (stim51_pol_s),
        .stim52_interval_o   (stim52_interval_s),
        .stim52_ia_o         (stim52_ia_o),
        .stim52_ic_o         (stim52_ic_o),
        .stim52_pulse_wc_o   (stim52_pulse_wc_s),
        .stim52_pulse_gap_o  (stim52_pulse_gap_s),
        .stim52_pulse_wa_o   (stim52_pulse_wa_s),
        .stim52_pulse_num_o  (stim52_pulse_num_s),
        .stim52_pol_o        (stim52_pol_s),
        .stim53_interval_o   (stim53_interval_s),
        .stim53_ia_o         (stim53_ia_o),
        .stim53_ic_o         (stim53_ic_o),
        .stim53_pulse_wc_o   (stim53_pulse_wc_s),
        .stim53_pulse_gap_o  (stim53_pulse_gap_s),
        .stim53_pulse_wa_o   (stim53_pulse_wa_s),
        .stim53_pulse_num_o  (stim53_pulse_num_s),
        .stim53_pol_o        (stim53_pol_s),
        .stim54_interval_o   (stim54_interval_s),
        .stim54_ia_o         (stim54_ia_o),
        .stim54_ic_o         (stim54_ic_o),
        .stim54_pulse_wc_o   (stim54_pulse_wc_s),
        .stim54_pulse_gap_o  (stim54_pulse_gap_s),
        .stim54_pulse_wa_o   (stim54_pulse_wa_s),
        .stim54_pulse_num_o  (stim54_pulse_num_s),
        .stim54_pol_o        (stim54_pol_s),
        .stim55_interval_o   (stim55_interval_s),
        .stim55_ia_o         (stim55_ia_o),
        .stim55_ic_o         (stim55_ic_o),
        .stim55_pulse_wc_o   (stim55_pulse_wc_s),
        .stim55_pulse_gap_o  (stim55_pulse_gap_s),
        .stim55_pulse_wa_o   (stim55_pulse_wa_s),
        .stim55_pulse_num_o  (stim55_pulse_num_s),
        .stim55_pol_o        (stim55_pol_s),
        .stim56_interval_o   (stim56_interval_s),
        .stim56_ia_o         (stim56_ia_o),
        .stim56_ic_o         (stim56_ic_o),
        .stim56_pulse_wc_o   (stim56_pulse_wc_s),
        .stim56_pulse_gap_o  (stim56_pulse_gap_s),
        .stim56_pulse_wa_o   (stim56_pulse_wa_s),
        .stim56_pulse_num_o  (stim56_pulse_num_s),
        .stim56_pol_o        (stim56_pol_s),
        .stim57_interval_o   (stim57_interval_s),
        .stim57_ia_o         (stim57_ia_o),
        .stim57_ic_o         (stim57_ic_o),
        .stim57_pulse_wc_o   (stim57_pulse_wc_s),
        .stim57_pulse_gap_o  (stim57_pulse_gap_s),
        .stim57_pulse_wa_o   (stim57_pulse_wa_s),
        .stim57_pulse_num_o  (stim57_pulse_num_s),
        .stim57_pol_o        (stim57_pol_s),
        .stim58_interval_o   (stim58_interval_s),
        .stim58_ia_o         (stim58_ia_o),
        .stim58_ic_o         (stim58_ic_o),
        .stim58_pulse_wc_o   (stim58_pulse_wc_s),
        .stim58_pulse_gap_o  (stim58_pulse_gap_s),
        .stim58_pulse_wa_o   (stim58_pulse_wa_s),
        .stim58_pulse_num_o  (stim58_pulse_num_s),
        .stim58_pol_o        (stim58_pol_s),
        .stim59_interval_o   (stim59_interval_s),
        .stim59_ia_o         (stim59_ia_o),
        .stim59_ic_o         (stim59_ic_o),
        .stim59_pulse_wc_o   (stim59_pulse_wc_s),
        .stim59_pulse_gap_o  (stim59_pulse_gap_s),
        .stim59_pulse_wa_o   (stim59_pulse_wa_s),
        .stim59_pulse_num_o  (stim59_pulse_num_s),
        .stim59_pol_o        (stim59_pol_s),
        .stim60_interval_o   (stim60_interval_s),
        .stim60_ia_o         (stim60_ia_o),
        .stim60_ic_o         (stim60_ic_o),
        .stim60_pulse_wc_o   (stim60_pulse_wc_s),
        .stim60_pulse_gap_o  (stim60_pulse_gap_s),
        .stim60_pulse_wa_o   (stim60_pulse_wa_s),
        .stim60_pulse_num_o  (stim60_pulse_num_s),
        .stim60_pol_o        (stim60_pol_s),
        .stim61_interval_o   (stim61_interval_s),
        .stim61_ia_o         (stim61_ia_o),
        .stim61_ic_o         (stim61_ic_o),
        .stim61_pulse_wc_o   (stim61_pulse_wc_s),
        .stim61_pulse_gap_o  (stim61_pulse_gap_s),
        .stim61_pulse_wa_o   (stim61_pulse_wa_s),
        .stim61_pulse_num_o  (stim61_pulse_num_s),
        .stim61_pol_o        (stim61_pol_s),
        .stim62_interval_o   (stim62_interval_s),
        .stim62_ia_o         (stim62_ia_o),
        .stim62_ic_o         (stim62_ic_o),
        .stim62_pulse_wc_o   (stim62_pulse_wc_s),
        .stim62_pulse_gap_o  (stim62_pulse_gap_s),
        .stim62_pulse_wa_o   (stim62_pulse_wa_s),
        .stim62_pulse_num_o  (stim62_pulse_num_s),
        .stim62_pol_o        (stim62_pol_s),
        .stim63_interval_o   (stim63_interval_s),
        .stim63_ia_o         (stim63_ia_o),
        .stim63_ic_o         (stim63_ic_o),
        .stim63_pulse_wc_o   (stim63_pulse_wc_s),
        .stim63_pulse_gap_o  (stim63_pulse_gap_s),
        .stim63_pulse_wa_o   (stim63_pulse_wa_s),
        .stim63_pulse_num_o  (stim63_pulse_num_s),
        .stim63_pol_o        (stim63_pol_s),
        .stim_range_unsync_o (stim_range_unsync_o),
        .error_o             (error_s),
        .div_clk_stim_o      (div_clk_stim_s),
        .en_clk_stim_o       (en_clk_stim_s),
        .div_clk_discharge_o (div_clk_discharge_s),
        .en_clk_discharge_o  (en_clk_discharge_s),
        .pw_discharge_o      (pw_discharge_s),
        .rec_en_o            (rec_en_s)
    );

    stim_ctrls_wrap i_stim_ctrls_wrap (
        .reset_n_i          (resetn_top_sync_o),
        .stim_xen_sync_i    (stim_xen_sync_s),
        .stim_monophasic_i  (stim_monophasic_s),
        .stim_mask0_g1_i    (stim_mask0_g1_s),
        .stim_mask0_g2_i    (stim_mask0_g2_s),
        .stim_mask1_g1_i    (stim_mask1_g1_s),
        .stim_mask1_g2_i    (stim_mask1_g2_s),
        .stim_mask2_g1_i    (stim_mask2_g1_s),
        .stim_mask2_g2_i    (stim_mask2_g2_s),
        .stim_mask3_g1_i    (stim_mask3_g1_s),
        .stim_mask3_g2_i    (stim_mask3_g2_s),
        .stim_mask4_g1_i    (stim_mask4_g1_s),
        .stim_mask4_g2_i    (stim_mask4_g2_s),
        .stim_mask5_g1_i    (stim_mask5_g1_s),
        .stim_mask5_g2_i    (stim_mask5_g2_s),
        .stim_mask6_g1_i    (stim_mask6_g1_s),
        .stim_mask6_g2_i    (stim_mask6_g2_s),
        .stim_mask7_g1_i    (stim_mask7_g1_s),
        .stim_mask7_g2_i    (stim_mask7_g2_s),
        .stim0_interval_i   (stim0_interval_s),
        .stim0_pulse_wc_i   (stim0_pulse_wc_s),
        .stim0_pulse_gap_i  (stim0_pulse_gap_s),
        .stim0_pulse_wa_i   (stim0_pulse_wa_s),
        .stim0_pulse_num_i  (stim0_pulse_num_s),
        .stim0_pol_i        (stim0_pol_s),
        .stim1_interval_i   (stim1_interval_s),
        .stim1_pulse_wc_i   (stim1_pulse_wc_s),
        .stim1_pulse_gap_i  (stim1_pulse_gap_s),
        .stim1_pulse_wa_i   (stim1_pulse_wa_s),
        .stim1_pulse_num_i  (stim1_pulse_num_s),
        .stim1_pol_i        (stim1_pol_s),
        .stim2_interval_i   (stim2_interval_s),
        .stim2_pulse_wc_i   (stim2_pulse_wc_s),
        .stim2_pulse_gap_i  (stim2_pulse_gap_s),
        .stim2_pulse_wa_i   (stim2_pulse_wa_s),
        .stim2_pulse_num_i  (stim2_pulse_num_s),
        .stim2_pol_i        (stim2_pol_s),
        .stim3_interval_i   (stim3_interval_s),
        .stim3_pulse_wc_i   (stim3_pulse_wc_s),
        .stim3_pulse_gap_i  (stim3_pulse_gap_s),
        .stim3_pulse_wa_i   (stim3_pulse_wa_s),
        .stim3_pulse_num_i  (stim3_pulse_num_s),
        .stim3_pol_i        (stim3_pol_s),
        .stim4_interval_i   (stim4_interval_s),
        .stim4_pulse_wc_i   (stim4_pulse_wc_s),
        .stim4_pulse_gap_i  (stim4_pulse_gap_s),
        .stim4_pulse_wa_i   (stim4_pulse_wa_s),
        .stim4_pulse_num_i  (stim4_pulse_num_s),
        .stim4_pol_i        (stim4_pol_s),
        .stim5_interval_i   (stim5_interval_s),
        .stim5_pulse_wc_i   (stim5_pulse_wc_s),
        .stim5_pulse_gap_i  (stim5_pulse_gap_s),
        .stim5_pulse_wa_i   (stim5_pulse_wa_s),
        .stim5_pulse_num_i  (stim5_pulse_num_s),
        .stim5_pol_i        (stim5_pol_s),
        .stim6_interval_i   (stim6_interval_s),
        .stim6_pulse_wc_i   (stim6_pulse_wc_s),
        .stim6_pulse_gap_i  (stim6_pulse_gap_s),
        .stim6_pulse_wa_i   (stim6_pulse_wa_s),
        .stim6_pulse_num_i  (stim6_pulse_num_s),
        .stim6_pol_i        (stim6_pol_s),
        .stim7_interval_i   (stim7_interval_s),
        .stim7_pulse_wc_i   (stim7_pulse_wc_s),
        .stim7_pulse_gap_i  (stim7_pulse_gap_s),
        .stim7_pulse_wa_i   (stim7_pulse_wa_s),
        .stim7_pulse_num_i  (stim7_pulse_num_s),
        .stim7_pol_i        (stim7_pol_s),
        .stim8_interval_i   (stim8_interval_s),
        .stim8_pulse_wc_i   (stim8_pulse_wc_s),
        .stim8_pulse_gap_i  (stim8_pulse_gap_s),
        .stim8_pulse_wa_i   (stim8_pulse_wa_s),
        .stim8_pulse_num_i  (stim8_pulse_num_s),
        .stim8_pol_i        (stim8_pol_s),
        .stim9_interval_i   (stim9_interval_s),
        .stim9_pulse_wc_i   (stim9_pulse_wc_s),
        .stim9_pulse_gap_i  (stim9_pulse_gap_s),
        .stim9_pulse_wa_i   (stim9_pulse_wa_s),
        .stim9_pulse_num_i  (stim9_pulse_num_s),
        .stim9_pol_i        (stim9_pol_s),
        .stim10_interval_i  (stim10_interval_s),
        .stim10_pulse_wc_i  (stim10_pulse_wc_s),
        .stim10_pulse_gap_i (stim10_pulse_gap_s),
        .stim10_pulse_wa_i  (stim10_pulse_wa_s),
        .stim10_pulse_num_i (stim10_pulse_num_s),
        .stim10_pol_i       (stim10_pol_s),
        .stim11_interval_i  (stim11_interval_s),
        .stim11_pulse_wc_i  (stim11_pulse_wc_s),
        .stim11_pulse_gap_i (stim11_pulse_gap_s),
        .stim11_pulse_wa_i  (stim11_pulse_wa_s),
        .stim11_pulse_num_i (stim11_pulse_num_s),
        .stim11_pol_i       (stim11_pol_s),
        .stim12_interval_i  (stim12_interval_s),
        .stim12_pulse_wc_i  (stim12_pulse_wc_s),
        .stim12_pulse_gap_i (stim12_pulse_gap_s),
        .stim12_pulse_wa_i  (stim12_pulse_wa_s),
        .stim12_pulse_num_i (stim12_pulse_num_s),
        .stim12_pol_i       (stim12_pol_s),
        .stim13_interval_i  (stim13_interval_s),
        .stim13_pulse_wc_i  (stim13_pulse_wc_s),
        .stim13_pulse_gap_i (stim13_pulse_gap_s),
        .stim13_pulse_wa_i  (stim13_pulse_wa_s),
        .stim13_pulse_num_i (stim13_pulse_num_s),
        .stim13_pol_i       (stim13_pol_s),
        .stim14_interval_i  (stim14_interval_s),
        .stim14_pulse_wc_i  (stim14_pulse_wc_s),
        .stim14_pulse_gap_i (stim14_pulse_gap_s),
        .stim14_pulse_wa_i  (stim14_pulse_wa_s),
        .stim14_pulse_num_i (stim14_pulse_num_s),
        .stim14_pol_i       (stim14_pol_s),
        .stim15_interval_i  (stim15_interval_s),
        .stim15_pulse_wc_i  (stim15_pulse_wc_s),
        .stim15_pulse_gap_i (stim15_pulse_gap_s),
        .stim15_pulse_wa_i  (stim15_pulse_wa_s),
        .stim15_pulse_num_i (stim15_pulse_num_s),
        .stim15_pol_i       (stim15_pol_s),
        .stim16_interval_i  (stim16_interval_s),
        .stim16_pulse_wc_i  (stim16_pulse_wc_s),
        .stim16_pulse_gap_i (stim16_pulse_gap_s),
        .stim16_pulse_wa_i  (stim16_pulse_wa_s),
        .stim16_pulse_num_i (stim16_pulse_num_s),
        .stim16_pol_i       (stim16_pol_s),
        .stim17_interval_i  (stim17_interval_s),
        .stim17_pulse_wc_i  (stim17_pulse_wc_s),
        .stim17_pulse_gap_i (stim17_pulse_gap_s),
        .stim17_pulse_wa_i  (stim17_pulse_wa_s),
        .stim17_pulse_num_i (stim17_pulse_num_s),
        .stim17_pol_i       (stim17_pol_s),
        .stim18_interval_i  (stim18_interval_s),
        .stim18_pulse_wc_i  (stim18_pulse_wc_s),
        .stim18_pulse_gap_i (stim18_pulse_gap_s),
        .stim18_pulse_wa_i  (stim18_pulse_wa_s),
        .stim18_pulse_num_i (stim18_pulse_num_s),
        .stim18_pol_i       (stim18_pol_s),
        .stim19_interval_i  (stim19_interval_s),
        .stim19_pulse_wc_i  (stim19_pulse_wc_s),
        .stim19_pulse_gap_i (stim19_pulse_gap_s),
        .stim19_pulse_wa_i  (stim19_pulse_wa_s),
        .stim19_pulse_num_i (stim19_pulse_num_s),
        .stim19_pol_i       (stim19_pol_s),
        .stim20_interval_i  (stim20_interval_s),
        .stim20_pulse_wc_i  (stim20_pulse_wc_s),
        .stim20_pulse_gap_i (stim20_pulse_gap_s),
        .stim20_pulse_wa_i  (stim20_pulse_wa_s),
        .stim20_pulse_num_i (stim20_pulse_num_s),
        .stim20_pol_i       (stim20_pol_s),
        .stim21_interval_i  (stim21_interval_s),
        .stim21_pulse_wc_i  (stim21_pulse_wc_s),
        .stim21_pulse_gap_i (stim21_pulse_gap_s),
        .stim21_pulse_wa_i  (stim21_pulse_wa_s),
        .stim21_pulse_num_i (stim21_pulse_num_s),
        .stim21_pol_i       (stim21_pol_s),
        .stim22_interval_i  (stim22_interval_s),
        .stim22_pulse_wc_i  (stim22_pulse_wc_s),
        .stim22_pulse_gap_i (stim22_pulse_gap_s),
        .stim22_pulse_wa_i  (stim22_pulse_wa_s),
        .stim22_pulse_num_i (stim22_pulse_num_s),
        .stim22_pol_i       (stim22_pol_s),
        .stim23_interval_i  (stim23_interval_s),
        .stim23_pulse_wc_i  (stim23_pulse_wc_s),
        .stim23_pulse_gap_i (stim23_pulse_gap_s),
        .stim23_pulse_wa_i  (stim23_pulse_wa_s),
        .stim23_pulse_num_i (stim23_pulse_num_s),
        .stim23_pol_i       (stim23_pol_s),
        .stim24_interval_i  (stim24_interval_s),
        .stim24_pulse_wc_i  (stim24_pulse_wc_s),
        .stim24_pulse_gap_i (stim24_pulse_gap_s),
        .stim24_pulse_wa_i  (stim24_pulse_wa_s),
        .stim24_pulse_num_i (stim24_pulse_num_s),
        .stim24_pol_i       (stim24_pol_s),
        .stim25_interval_i  (stim25_interval_s),
        .stim25_pulse_wc_i  (stim25_pulse_wc_s),
        .stim25_pulse_gap_i (stim25_pulse_gap_s),
        .stim25_pulse_wa_i  (stim25_pulse_wa_s),
        .stim25_pulse_num_i (stim25_pulse_num_s),
        .stim25_pol_i       (stim25_pol_s),
        .stim26_interval_i  (stim26_interval_s),
        .stim26_pulse_wc_i  (stim26_pulse_wc_s),
        .stim26_pulse_gap_i (stim26_pulse_gap_s),
        .stim26_pulse_wa_i  (stim26_pulse_wa_s),
        .stim26_pulse_num_i (stim26_pulse_num_s),
        .stim26_pol_i       (stim26_pol_s),
        .stim27_interval_i  (stim27_interval_s),
        .stim27_pulse_wc_i  (stim27_pulse_wc_s),
        .stim27_pulse_gap_i (stim27_pulse_gap_s),
        .stim27_pulse_wa_i  (stim27_pulse_wa_s),
        .stim27_pulse_num_i (stim27_pulse_num_s),
        .stim27_pol_i       (stim27_pol_s),
        .stim28_interval_i  (stim28_interval_s),
        .stim28_pulse_wc_i  (stim28_pulse_wc_s),
        .stim28_pulse_gap_i (stim28_pulse_gap_s),
        .stim28_pulse_wa_i  (stim28_pulse_wa_s),
        .stim28_pulse_num_i (stim28_pulse_num_s),
        .stim28_pol_i       (stim28_pol_s),
        .stim29_interval_i  (stim29_interval_s),
        .stim29_pulse_wc_i  (stim29_pulse_wc_s),
        .stim29_pulse_gap_i (stim29_pulse_gap_s),
        .stim29_pulse_wa_i  (stim29_pulse_wa_s),
        .stim29_pulse_num_i (stim29_pulse_num_s),
        .stim29_pol_i       (stim29_pol_s),
        .stim30_interval_i  (stim30_interval_s),
        .stim30_pulse_wc_i  (stim30_pulse_wc_s),
        .stim30_pulse_gap_i (stim30_pulse_gap_s),
        .stim30_pulse_wa_i  (stim30_pulse_wa_s),
        .stim30_pulse_num_i (stim30_pulse_num_s),
        .stim30_pol_i       (stim30_pol_s),
        .stim31_interval_i  (stim31_interval_s),
        .stim31_pulse_wc_i  (stim31_pulse_wc_s),
        .stim31_pulse_gap_i (stim31_pulse_gap_s),
        .stim31_pulse_wa_i  (stim31_pulse_wa_s),
        .stim31_pulse_num_i (stim31_pulse_num_s),
        .stim31_pol_i       (stim31_pol_s),
        .stim32_interval_i  (stim32_interval_s),
        .stim32_pulse_wc_i  (stim32_pulse_wc_s),
        .stim32_pulse_gap_i (stim32_pulse_gap_s),
        .stim32_pulse_wa_i  (stim32_pulse_wa_s),
        .stim32_pulse_num_i (stim32_pulse_num_s),
        .stim32_pol_i       (stim32_pol_s),
        .stim33_interval_i  (stim33_interval_s),
        .stim33_pulse_wc_i  (stim33_pulse_wc_s),
        .stim33_pulse_gap_i (stim33_pulse_gap_s),
        .stim33_pulse_wa_i  (stim33_pulse_wa_s),
        .stim33_pulse_num_i (stim33_pulse_num_s),
        .stim33_pol_i       (stim33_pol_s),
        .stim34_interval_i  (stim34_interval_s),
        .stim34_pulse_wc_i  (stim34_pulse_wc_s),
        .stim34_pulse_gap_i (stim34_pulse_gap_s),
        .stim34_pulse_wa_i  (stim34_pulse_wa_s),
        .stim34_pulse_num_i (stim34_pulse_num_s),
        .stim34_pol_i       (stim34_pol_s),
        .stim35_interval_i  (stim35_interval_s),
        .stim35_pulse_wc_i  (stim35_pulse_wc_s),
        .stim35_pulse_gap_i (stim35_pulse_gap_s),
        .stim35_pulse_wa_i  (stim35_pulse_wa_s),
        .stim35_pulse_num_i (stim35_pulse_num_s),
        .stim35_pol_i       (stim35_pol_s),
        .stim36_interval_i  (stim36_interval_s),
        .stim36_pulse_wc_i  (stim36_pulse_wc_s),
        .stim36_pulse_gap_i (stim36_pulse_gap_s),
        .stim36_pulse_wa_i  (stim36_pulse_wa_s),
        .stim36_pulse_num_i (stim36_pulse_num_s),
        .stim36_pol_i       (stim36_pol_s),
        .stim37_interval_i  (stim37_interval_s),
        .stim37_pulse_wc_i  (stim37_pulse_wc_s),
        .stim37_pulse_gap_i (stim37_pulse_gap_s),
        .stim37_pulse_wa_i  (stim37_pulse_wa_s),
        .stim37_pulse_num_i (stim37_pulse_num_s),
        .stim37_pol_i       (stim37_pol_s),
        .stim38_interval_i  (stim38_interval_s),
        .stim38_pulse_wc_i  (stim38_pulse_wc_s),
        .stim38_pulse_gap_i (stim38_pulse_gap_s),
        .stim38_pulse_wa_i  (stim38_pulse_wa_s),
        .stim38_pulse_num_i (stim38_pulse_num_s),
        .stim38_pol_i       (stim38_pol_s),
        .stim39_interval_i  (stim39_interval_s),
        .stim39_pulse_wc_i  (stim39_pulse_wc_s),
        .stim39_pulse_gap_i (stim39_pulse_gap_s),
        .stim39_pulse_wa_i  (stim39_pulse_wa_s),
        .stim39_pulse_num_i (stim39_pulse_num_s),
        .stim39_pol_i       (stim39_pol_s),
        .stim40_interval_i  (stim40_interval_s),
        .stim40_pulse_wc_i  (stim40_pulse_wc_s),
        .stim40_pulse_gap_i (stim40_pulse_gap_s),
        .stim40_pulse_wa_i  (stim40_pulse_wa_s),
        .stim40_pulse_num_i (stim40_pulse_num_s),
        .stim40_pol_i       (stim40_pol_s),
        .stim41_interval_i  (stim41_interval_s),
        .stim41_pulse_wc_i  (stim41_pulse_wc_s),
        .stim41_pulse_gap_i (stim41_pulse_gap_s),
        .stim41_pulse_wa_i  (stim41_pulse_wa_s),
        .stim41_pulse_num_i (stim41_pulse_num_s),
        .stim41_pol_i       (stim41_pol_s),
        .stim42_interval_i  (stim42_interval_s),
        .stim42_pulse_wc_i  (stim42_pulse_wc_s),
        .stim42_pulse_gap_i (stim42_pulse_gap_s),
        .stim42_pulse_wa_i  (stim42_pulse_wa_s),
        .stim42_pulse_num_i (stim42_pulse_num_s),
        .stim42_pol_i       (stim42_pol_s),
        .stim43_interval_i  (stim43_interval_s),
        .stim43_pulse_wc_i  (stim43_pulse_wc_s),
        .stim43_pulse_gap_i (stim43_pulse_gap_s),
        .stim43_pulse_wa_i  (stim43_pulse_wa_s),
        .stim43_pulse_num_i (stim43_pulse_num_s),
        .stim43_pol_i       (stim43_pol_s),
        .stim44_interval_i  (stim44_interval_s),
        .stim44_pulse_wc_i  (stim44_pulse_wc_s),
        .stim44_pulse_gap_i (stim44_pulse_gap_s),
        .stim44_pulse_wa_i  (stim44_pulse_wa_s),
        .stim44_pulse_num_i (stim44_pulse_num_s),
        .stim44_pol_i       (stim44_pol_s),
        .stim45_interval_i  (stim45_interval_s),
        .stim45_pulse_wc_i  (stim45_pulse_wc_s),
        .stim45_pulse_gap_i (stim45_pulse_gap_s),
        .stim45_pulse_wa_i  (stim45_pulse_wa_s),
        .stim45_pulse_num_i (stim45_pulse_num_s),
        .stim45_pol_i       (stim45_pol_s),
        .stim46_interval_i  (stim46_interval_s),
        .stim46_pulse_wc_i  (stim46_pulse_wc_s),
        .stim46_pulse_gap_i (stim46_pulse_gap_s),
        .stim46_pulse_wa_i  (stim46_pulse_wa_s),
        .stim46_pulse_num_i (stim46_pulse_num_s),
        .stim46_pol_i       (stim46_pol_s),
        .stim47_interval_i  (stim47_interval_s),
        .stim47_pulse_wc_i  (stim47_pulse_wc_s),
        .stim47_pulse_gap_i (stim47_pulse_gap_s),
        .stim47_pulse_wa_i  (stim47_pulse_wa_s),
        .stim47_pulse_num_i (stim47_pulse_num_s),
        .stim47_pol_i       (stim47_pol_s),
        .stim48_interval_i  (stim48_interval_s),
        .stim48_pulse_wc_i  (stim48_pulse_wc_s),
        .stim48_pulse_gap_i (stim48_pulse_gap_s),
        .stim48_pulse_wa_i  (stim48_pulse_wa_s),
        .stim48_pulse_num_i (stim48_pulse_num_s),
        .stim48_pol_i       (stim48_pol_s),
        .stim49_interval_i  (stim49_interval_s),
        .stim49_pulse_wc_i  (stim49_pulse_wc_s),
        .stim49_pulse_gap_i (stim49_pulse_gap_s),
        .stim49_pulse_wa_i  (stim49_pulse_wa_s),
        .stim49_pulse_num_i (stim49_pulse_num_s),
        .stim49_pol_i       (stim49_pol_s),
        .stim50_interval_i  (stim50_interval_s),
        .stim50_pulse_wc_i  (stim50_pulse_wc_s),
        .stim50_pulse_gap_i (stim50_pulse_gap_s),
        .stim50_pulse_wa_i  (stim50_pulse_wa_s),
        .stim50_pulse_num_i (stim50_pulse_num_s),
        .stim50_pol_i       (stim50_pol_s),
        .stim51_interval_i  (stim51_interval_s),
        .stim51_pulse_wc_i  (stim51_pulse_wc_s),
        .stim51_pulse_gap_i (stim51_pulse_gap_s),
        .stim51_pulse_wa_i  (stim51_pulse_wa_s),
        .stim51_pulse_num_i (stim51_pulse_num_s),
        .stim51_pol_i       (stim51_pol_s),
        .stim52_interval_i  (stim52_interval_s),
        .stim52_pulse_wc_i  (stim52_pulse_wc_s),
        .stim52_pulse_gap_i (stim52_pulse_gap_s),
        .stim52_pulse_wa_i  (stim52_pulse_wa_s),
        .stim52_pulse_num_i (stim52_pulse_num_s),
        .stim52_pol_i       (stim52_pol_s),
        .stim53_interval_i  (stim53_interval_s),
        .stim53_pulse_wc_i  (stim53_pulse_wc_s),
        .stim53_pulse_gap_i (stim53_pulse_gap_s),
        .stim53_pulse_wa_i  (stim53_pulse_wa_s),
        .stim53_pulse_num_i (stim53_pulse_num_s),
        .stim53_pol_i       (stim53_pol_s),
        .stim54_interval_i  (stim54_interval_s),
        .stim54_pulse_wc_i  (stim54_pulse_wc_s),
        .stim54_pulse_gap_i (stim54_pulse_gap_s),
        .stim54_pulse_wa_i  (stim54_pulse_wa_s),
        .stim54_pulse_num_i (stim54_pulse_num_s),
        .stim54_pol_i       (stim54_pol_s),
        .stim55_interval_i  (stim55_interval_s),
        .stim55_pulse_wc_i  (stim55_pulse_wc_s),
        .stim55_pulse_gap_i (stim55_pulse_gap_s),
        .stim55_pulse_wa_i  (stim55_pulse_wa_s),
        .stim55_pulse_num_i (stim55_pulse_num_s),
        .stim55_pol_i       (stim55_pol_s),
        .stim56_interval_i  (stim56_interval_s),
        .stim56_pulse_wc_i  (stim56_pulse_wc_s),
        .stim56_pulse_gap_i (stim56_pulse_gap_s),
        .stim56_pulse_wa_i  (stim56_pulse_wa_s),
        .stim56_pulse_num_i (stim56_pulse_num_s),
        .stim56_pol_i       (stim56_pol_s),
        .stim57_interval_i  (stim57_interval_s),
        .stim57_pulse_wc_i  (stim57_pulse_wc_s),
        .stim57_pulse_gap_i (stim57_pulse_gap_s),
        .stim57_pulse_wa_i  (stim57_pulse_wa_s),
        .stim57_pulse_num_i (stim57_pulse_num_s),
        .stim57_pol_i       (stim57_pol_s),
        .stim58_interval_i  (stim58_interval_s),
        .stim58_pulse_wc_i  (stim58_pulse_wc_s),
        .stim58_pulse_gap_i (stim58_pulse_gap_s),
        .stim58_pulse_wa_i  (stim58_pulse_wa_s),
        .stim58_pulse_num_i (stim58_pulse_num_s),
        .stim58_pol_i       (stim58_pol_s),
        .stim59_interval_i  (stim59_interval_s),
        .stim59_pulse_wc_i  (stim59_pulse_wc_s),
        .stim59_pulse_gap_i (stim59_pulse_gap_s),
        .stim59_pulse_wa_i  (stim59_pulse_wa_s),
        .stim59_pulse_num_i (stim59_pulse_num_s),
        .stim59_pol_i       (stim59_pol_s),
        .stim60_interval_i  (stim60_interval_s),
        .stim60_pulse_wc_i  (stim60_pulse_wc_s),
        .stim60_pulse_gap_i (stim60_pulse_gap_s),
        .stim60_pulse_wa_i  (stim60_pulse_wa_s),
        .stim60_pulse_num_i (stim60_pulse_num_s),
        .stim60_pol_i       (stim60_pol_s),
        .stim61_interval_i  (stim61_interval_s),
        .stim61_pulse_wc_i  (stim61_pulse_wc_s),
        .stim61_pulse_gap_i (stim61_pulse_gap_s),
        .stim61_pulse_wa_i  (stim61_pulse_wa_s),
        .stim61_pulse_num_i (stim61_pulse_num_s),
        .stim61_pol_i       (stim61_pol_s),
        .stim62_interval_i  (stim62_interval_s),
        .stim62_pulse_wc_i  (stim62_pulse_wc_s),
        .stim62_pulse_gap_i (stim62_pulse_gap_s),
        .stim62_pulse_wa_i  (stim62_pulse_wa_s),
        .stim62_pulse_num_i (stim62_pulse_num_s),
        .stim62_pol_i       (stim62_pol_s),
        .stim63_interval_i  (stim63_interval_s),
        .stim63_pulse_wc_i  (stim63_pulse_wc_s),
        .stim63_pulse_gap_i (stim63_pulse_gap_s),
        .stim63_pulse_wa_i  (stim63_pulse_wa_s),
        .stim63_pulse_num_i (stim63_pulse_num_s),
        .stim63_pol_i       (stim63_pol_s),
        .err_stim_o         (err_stim_s),
        .stim_mask_en0_g_i  (stim_mask_en0_sync_s),
        .stim_mask_en1_g_i  (stim_mask_en1_sync_s),
        .stim_mask_en2_g_i  (stim_mask_en2_sync_s),
        .stim_mask_en3_g_i  (stim_mask_en3_sync_s),
        .stim_mask_en4_g_i  (stim_mask_en4_sync_s),
        .stim_mask_en5_g_i  (stim_mask_en5_sync_s),
        .stim_mask_en6_g_i  (stim_mask_en6_sync_s),
        .stim_mask_en7_g_i  (stim_mask_en7_sync_s),
        .clk_stim_i         (clk_stim_s),
        .stim_en_vec_o      (stim_en_vec_o),
        .EnN_vec_o          (EnN_vec_o),
        .EnP_vec_o          (EnP_vec_o),
        .imp_en_g1_sync_o   (imp_en_g1_sync_s),
        .imp_en_g2_sync_o   (imp_en_g2_sync_s),
        .limiting_current_o (limiting_current_o)
    );

    rec_ctrl i_rec_ctrl (
        .clk_i                (clk_ref_i),
        .reset_n_i            (resetn_top_sync_o),
        .stim_mask_en0_sync_i (stim_mask_en0_sync_s),
        .stim_mask_en1_sync_i (stim_mask_en1_sync_s),
        .stim_mask_en2_sync_i (stim_mask_en2_sync_s),
        .stim_mask_en3_sync_i (stim_mask_en3_sync_s),
        .stim_mask_en4_sync_i (stim_mask_en4_sync_s),
        .stim_mask_en5_sync_i (stim_mask_en5_sync_s),
        .stim_mask_en6_sync_i (stim_mask_en6_sync_s),
        .stim_mask_en7_sync_i (stim_mask_en7_sync_s),
        .clk_discharge_main_i (clk_discharge_main_s),
        .gdischarge_o         (gdischarge_o),
        .pw_discharge_i       (pw_discharge_s),
        .rec_sync_en_i        (rec_sync_en_s),
        .adc_en_o             (adc_en_o),
        .sample_out_o         (sample_out_o),
        .adc_res1_i           (adc_res1_i),
        .adc_res2_i           (adc_res2_i),
        .rec_data1_o          (rec_data1_o),
        .rec_data2_o          (rec_data2_o),
        .adc_idx_o            (adc_idx_o),
        .imp_en_g1_sync_i     (imp_en_g1_sync_s),
        .imp_en_g2_sync_i     (imp_en_g2_sync_s),
        .en_rec_sync_g1_i     (en_rec_sync_g1_s),
        .en_rec_sync_g2_i     (en_rec_sync_g2_s)
    );

endmodule
