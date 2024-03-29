/*
 * Module: spi_wrap
 * Author: Ali Zeinolabedin
 */
`timescale 1ns/1ps

module spi_wrap (
    resetn_spi_sync_i,
    spi_clk_i,
    spi_cs_i,
    spi_mosi_i,
    spi_miso_o,
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
    error_o,
    div_clk_stim_o,
    en_clk_stim_o,
    div_clk_discharge_o,
    en_clk_discharge_o,
    pw_discharge_o,
    rec_en_o
);

    parameter TX_WIDTH           = 36;
    parameter STIM_CLKDIV_W      = 12;
    parameter CLKDIV_W_DISCHARGE = 8;

    input                           resetn_spi_sync_i;
    input                           spi_clk_i;
    input                           spi_cs_i;
    input                           spi_mosi_i;
    output                          spi_miso_o;
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
    output                          error_o;
    output      [STIM_CLKDIV_W-1:0] div_clk_stim_o;
    output                          en_clk_stim_o;
    output [CLKDIV_W_DISCHARGE-1:0] div_clk_discharge_o;
    output                          en_clk_discharge_o;
    output                   [19:0] pw_discharge_o;
    output                          rec_en_o;

    wire          [9:0] apb_addr_s;
    wire                apb_sel_s;
    wire                apb_enable_s;
    wire         [31:0] apb_wdata_s;
    wire                apb_write_s;
    wire          [3:0] apb_strb_s;
    wire         [31:0] apb_rdata_s;
    wire                apb_ready_s;
    wire                apb_slverr_s;
    wire          [2:0] apb_prot_s;
    wire                apb_prot_en_s;
    wire         [31:0] chip_id_s;
    wire [TX_WIDTH-1:0] spi_rx_word_s;
    wire                rx_done_s;
    wire         [31:0] spi_tx_word_s;
    wire                tx_ready_s;
    wire                crc5_chk_s;
    wire                tx_done_s;
    wire          [4:0] crc5_ext_s;
    wire          [3:0] spi_cmd4b_s;
    wire                spi_cmd4b_en_s;


    w_icons_rf #(
        .STIM_CLKDIV_W      (STIM_CLKDIV_W),
        .CLKDIV_W_DISCHARGE (CLKDIV_W_DISCHARGE)
    ) i_w_icons_rf (
        .apb_resetn_i        (resetn_spi_sync_i),
        .apb_clk_i           (spi_clk_i),
        .apb_addr_i          (apb_addr_s),
        .apb_sel_i           (apb_sel_s),
        .apb_enable_i        (apb_enable_s),
        .apb_wdata_i         (apb_wdata_s),
        .apb_write_i         (apb_write_s),
        .apb_strb_i          (apb_strb_s),
        .apb_rdata_o         (apb_rdata_s),
        .apb_ready_o         (apb_ready_s),
        .apb_slverr_o        (apb_slverr_s),
        .apb_prot_i          (apb_prot_s),
        .apb_prot_en_i       (apb_prot_en_s),
        .chip_id_i           (chip_id_s),
        .stim_mask_en_o      (stim_mask_en_o),
        .amp_gain_g1_o       (amp_gain_g1_o),
        .amp_gain_g2_o       (amp_gain_g2_o),
        .chip_error_load_o   (chip_error_load_o),
        .chip_error_cmd_o    (chip_error_cmd_o),
        .chip_error_crc5_o   (chip_error_crc5_o),
        .en_rec_ch_g1_o      (en_rec_ch_g1_o),
        .en_rec_ch_g2_o      (en_rec_ch_g2_o),
        .stim_monophasic_o   (stim_monophasic_o),
        .stim_mask0_g1_o     (stim_mask0_g1_o),
        .stim_mask0_g2_o     (stim_mask0_g2_o),
        .stim_mask1_g1_o     (stim_mask1_g1_o),
        .stim_mask1_g2_o     (stim_mask1_g2_o),
        .stim_mask2_g1_o     (stim_mask2_g1_o),
        .stim_mask2_g2_o     (stim_mask2_g2_o),
        .stim_mask3_g1_o     (stim_mask3_g1_o),
        .stim_mask3_g2_o     (stim_mask3_g2_o),
        .stim_mask4_g1_o     (stim_mask4_g1_o),
        .stim_mask4_g2_o     (stim_mask4_g2_o),
        .stim_mask5_g1_o     (stim_mask5_g1_o),
        .stim_mask5_g2_o     (stim_mask5_g2_o),
        .stim_mask6_g1_o     (stim_mask6_g1_o),
        .stim_mask6_g2_o     (stim_mask6_g2_o),
        .stim_mask7_g1_o     (stim_mask7_g1_o),
        .stim_mask7_g2_o     (stim_mask7_g2_o),
        .stim0_interval_o    (stim0_interval_o),
        .stim0_ia_o          (stim0_ia_o),
        .stim0_ic_o          (stim0_ic_o),
        .stim0_pulse_wc_o    (stim0_pulse_wc_o),
        .stim0_pulse_gap_o   (stim0_pulse_gap_o),
        .stim0_pulse_wa_o    (stim0_pulse_wa_o),
        .stim0_pulse_num_o   (stim0_pulse_num_o),
        .stim0_pol_o         (stim0_pol_o),
        .stim1_interval_o    (stim1_interval_o),
        .stim1_ia_o          (stim1_ia_o),
        .stim1_ic_o          (stim1_ic_o),
        .stim1_pulse_wc_o    (stim1_pulse_wc_o),
        .stim1_pulse_gap_o   (stim1_pulse_gap_o),
        .stim1_pulse_wa_o    (stim1_pulse_wa_o),
        .stim1_pulse_num_o   (stim1_pulse_num_o),
        .stim1_pol_o         (stim1_pol_o),
        .stim2_interval_o    (stim2_interval_o),
        .stim2_ia_o          (stim2_ia_o),
        .stim2_ic_o          (stim2_ic_o),
        .stim2_pulse_wc_o    (stim2_pulse_wc_o),
        .stim2_pulse_gap_o   (stim2_pulse_gap_o),
        .stim2_pulse_wa_o    (stim2_pulse_wa_o),
        .stim2_pulse_num_o   (stim2_pulse_num_o),
        .stim2_pol_o         (stim2_pol_o),
        .stim3_interval_o    (stim3_interval_o),
        .stim3_ia_o          (stim3_ia_o),
        .stim3_ic_o          (stim3_ic_o),
        .stim3_pulse_wc_o    (stim3_pulse_wc_o),
        .stim3_pulse_gap_o   (stim3_pulse_gap_o),
        .stim3_pulse_wa_o    (stim3_pulse_wa_o),
        .stim3_pulse_num_o   (stim3_pulse_num_o),
        .stim3_pol_o         (stim3_pol_o),
        .stim4_interval_o    (stim4_interval_o),
        .stim4_ia_o          (stim4_ia_o),
        .stim4_ic_o          (stim4_ic_o),
        .stim4_pulse_wc_o    (stim4_pulse_wc_o),
        .stim4_pulse_gap_o   (stim4_pulse_gap_o),
        .stim4_pulse_wa_o    (stim4_pulse_wa_o),
        .stim4_pulse_num_o   (stim4_pulse_num_o),
        .stim4_pol_o         (stim4_pol_o),
        .stim5_interval_o    (stim5_interval_o),
        .stim5_ia_o          (stim5_ia_o),
        .stim5_ic_o          (stim5_ic_o),
        .stim5_pulse_wc_o    (stim5_pulse_wc_o),
        .stim5_pulse_gap_o   (stim5_pulse_gap_o),
        .stim5_pulse_wa_o    (stim5_pulse_wa_o),
        .stim5_pulse_num_o   (stim5_pulse_num_o),
        .stim5_pol_o         (stim5_pol_o),
        .stim6_interval_o    (stim6_interval_o),
        .stim6_ia_o          (stim6_ia_o),
        .stim6_ic_o          (stim6_ic_o),
        .stim6_pulse_wc_o    (stim6_pulse_wc_o),
        .stim6_pulse_gap_o   (stim6_pulse_gap_o),
        .stim6_pulse_wa_o    (stim6_pulse_wa_o),
        .stim6_pulse_num_o   (stim6_pulse_num_o),
        .stim6_pol_o         (stim6_pol_o),
        .stim7_interval_o    (stim7_interval_o),
        .stim7_ia_o          (stim7_ia_o),
        .stim7_ic_o          (stim7_ic_o),
        .stim7_pulse_wc_o    (stim7_pulse_wc_o),
        .stim7_pulse_gap_o   (stim7_pulse_gap_o),
        .stim7_pulse_wa_o    (stim7_pulse_wa_o),
        .stim7_pulse_num_o   (stim7_pulse_num_o),
        .stim7_pol_o         (stim7_pol_o),
        .stim8_interval_o    (stim8_interval_o),
        .stim8_ia_o          (stim8_ia_o),
        .stim8_ic_o          (stim8_ic_o),
        .stim8_pulse_wc_o    (stim8_pulse_wc_o),
        .stim8_pulse_gap_o   (stim8_pulse_gap_o),
        .stim8_pulse_wa_o    (stim8_pulse_wa_o),
        .stim8_pulse_num_o   (stim8_pulse_num_o),
        .stim8_pol_o         (stim8_pol_o),
        .stim9_interval_o    (stim9_interval_o),
        .stim9_ia_o          (stim9_ia_o),
        .stim9_ic_o          (stim9_ic_o),
        .stim9_pulse_wc_o    (stim9_pulse_wc_o),
        .stim9_pulse_gap_o   (stim9_pulse_gap_o),
        .stim9_pulse_wa_o    (stim9_pulse_wa_o),
        .stim9_pulse_num_o   (stim9_pulse_num_o),
        .stim9_pol_o         (stim9_pol_o),
        .stim10_interval_o   (stim10_interval_o),
        .stim10_ia_o         (stim10_ia_o),
        .stim10_ic_o         (stim10_ic_o),
        .stim10_pulse_wc_o   (stim10_pulse_wc_o),
        .stim10_pulse_gap_o  (stim10_pulse_gap_o),
        .stim10_pulse_wa_o   (stim10_pulse_wa_o),
        .stim10_pulse_num_o  (stim10_pulse_num_o),
        .stim10_pol_o        (stim10_pol_o),
        .stim11_interval_o   (stim11_interval_o),
        .stim11_ia_o         (stim11_ia_o),
        .stim11_ic_o         (stim11_ic_o),
        .stim11_pulse_wc_o   (stim11_pulse_wc_o),
        .stim11_pulse_gap_o  (stim11_pulse_gap_o),
        .stim11_pulse_wa_o   (stim11_pulse_wa_o),
        .stim11_pulse_num_o  (stim11_pulse_num_o),
        .stim11_pol_o        (stim11_pol_o),
        .stim12_interval_o   (stim12_interval_o),
        .stim12_ia_o         (stim12_ia_o),
        .stim12_ic_o         (stim12_ic_o),
        .stim12_pulse_wc_o   (stim12_pulse_wc_o),
        .stim12_pulse_gap_o  (stim12_pulse_gap_o),
        .stim12_pulse_wa_o   (stim12_pulse_wa_o),
        .stim12_pulse_num_o  (stim12_pulse_num_o),
        .stim12_pol_o        (stim12_pol_o),
        .stim13_interval_o   (stim13_interval_o),
        .stim13_ia_o         (stim13_ia_o),
        .stim13_ic_o         (stim13_ic_o),
        .stim13_pulse_wc_o   (stim13_pulse_wc_o),
        .stim13_pulse_gap_o  (stim13_pulse_gap_o),
        .stim13_pulse_wa_o   (stim13_pulse_wa_o),
        .stim13_pulse_num_o  (stim13_pulse_num_o),
        .stim13_pol_o        (stim13_pol_o),
        .stim14_interval_o   (stim14_interval_o),
        .stim14_ia_o         (stim14_ia_o),
        .stim14_ic_o         (stim14_ic_o),
        .stim14_pulse_wc_o   (stim14_pulse_wc_o),
        .stim14_pulse_gap_o  (stim14_pulse_gap_o),
        .stim14_pulse_wa_o   (stim14_pulse_wa_o),
        .stim14_pulse_num_o  (stim14_pulse_num_o),
        .stim14_pol_o        (stim14_pol_o),
        .stim15_interval_o   (stim15_interval_o),
        .stim15_ia_o         (stim15_ia_o),
        .stim15_ic_o         (stim15_ic_o),
        .stim15_pulse_wc_o   (stim15_pulse_wc_o),
        .stim15_pulse_gap_o  (stim15_pulse_gap_o),
        .stim15_pulse_wa_o   (stim15_pulse_wa_o),
        .stim15_pulse_num_o  (stim15_pulse_num_o),
        .stim15_pol_o        (stim15_pol_o),
        .stim16_interval_o   (stim16_interval_o),
        .stim16_ia_o         (stim16_ia_o),
        .stim16_ic_o         (stim16_ic_o),
        .stim16_pulse_wc_o   (stim16_pulse_wc_o),
        .stim16_pulse_gap_o  (stim16_pulse_gap_o),
        .stim16_pulse_wa_o   (stim16_pulse_wa_o),
        .stim16_pulse_num_o  (stim16_pulse_num_o),
        .stim16_pol_o        (stim16_pol_o),
        .stim17_interval_o   (stim17_interval_o),
        .stim17_ia_o         (stim17_ia_o),
        .stim17_ic_o         (stim17_ic_o),
        .stim17_pulse_wc_o   (stim17_pulse_wc_o),
        .stim17_pulse_gap_o  (stim17_pulse_gap_o),
        .stim17_pulse_wa_o   (stim17_pulse_wa_o),
        .stim17_pulse_num_o  (stim17_pulse_num_o),
        .stim17_pol_o        (stim17_pol_o),
        .stim18_interval_o   (stim18_interval_o),
        .stim18_ia_o         (stim18_ia_o),
        .stim18_ic_o         (stim18_ic_o),
        .stim18_pulse_wc_o   (stim18_pulse_wc_o),
        .stim18_pulse_gap_o  (stim18_pulse_gap_o),
        .stim18_pulse_wa_o   (stim18_pulse_wa_o),
        .stim18_pulse_num_o  (stim18_pulse_num_o),
        .stim18_pol_o        (stim18_pol_o),
        .stim19_interval_o   (stim19_interval_o),
        .stim19_ia_o         (stim19_ia_o),
        .stim19_ic_o         (stim19_ic_o),
        .stim19_pulse_wc_o   (stim19_pulse_wc_o),
        .stim19_pulse_gap_o  (stim19_pulse_gap_o),
        .stim19_pulse_wa_o   (stim19_pulse_wa_o),
        .stim19_pulse_num_o  (stim19_pulse_num_o),
        .stim19_pol_o        (stim19_pol_o),
        .stim20_interval_o   (stim20_interval_o),
        .stim20_ia_o         (stim20_ia_o),
        .stim20_ic_o         (stim20_ic_o),
        .stim20_pulse_wc_o   (stim20_pulse_wc_o),
        .stim20_pulse_gap_o  (stim20_pulse_gap_o),
        .stim20_pulse_wa_o   (stim20_pulse_wa_o),
        .stim20_pulse_num_o  (stim20_pulse_num_o),
        .stim20_pol_o        (stim20_pol_o),
        .stim21_interval_o   (stim21_interval_o),
        .stim21_ia_o         (stim21_ia_o),
        .stim21_ic_o         (stim21_ic_o),
        .stim21_pulse_wc_o   (stim21_pulse_wc_o),
        .stim21_pulse_gap_o  (stim21_pulse_gap_o),
        .stim21_pulse_wa_o   (stim21_pulse_wa_o),
        .stim21_pulse_num_o  (stim21_pulse_num_o),
        .stim21_pol_o        (stim21_pol_o),
        .stim22_interval_o   (stim22_interval_o),
        .stim22_ia_o         (stim22_ia_o),
        .stim22_ic_o         (stim22_ic_o),
        .stim22_pulse_wc_o   (stim22_pulse_wc_o),
        .stim22_pulse_gap_o  (stim22_pulse_gap_o),
        .stim22_pulse_wa_o   (stim22_pulse_wa_o),
        .stim22_pulse_num_o  (stim22_pulse_num_o),
        .stim22_pol_o        (stim22_pol_o),
        .stim23_interval_o   (stim23_interval_o),
        .stim23_ia_o         (stim23_ia_o),
        .stim23_ic_o         (stim23_ic_o),
        .stim23_pulse_wc_o   (stim23_pulse_wc_o),
        .stim23_pulse_gap_o  (stim23_pulse_gap_o),
        .stim23_pulse_wa_o   (stim23_pulse_wa_o),
        .stim23_pulse_num_o  (stim23_pulse_num_o),
        .stim23_pol_o        (stim23_pol_o),
        .stim24_interval_o   (stim24_interval_o),
        .stim24_ia_o         (stim24_ia_o),
        .stim24_ic_o         (stim24_ic_o),
        .stim24_pulse_wc_o   (stim24_pulse_wc_o),
        .stim24_pulse_gap_o  (stim24_pulse_gap_o),
        .stim24_pulse_wa_o   (stim24_pulse_wa_o),
        .stim24_pulse_num_o  (stim24_pulse_num_o),
        .stim24_pol_o        (stim24_pol_o),
        .stim25_interval_o   (stim25_interval_o),
        .stim25_ia_o         (stim25_ia_o),
        .stim25_ic_o         (stim25_ic_o),
        .stim25_pulse_wc_o   (stim25_pulse_wc_o),
        .stim25_pulse_gap_o  (stim25_pulse_gap_o),
        .stim25_pulse_wa_o   (stim25_pulse_wa_o),
        .stim25_pulse_num_o  (stim25_pulse_num_o),
        .stim25_pol_o        (stim25_pol_o),
        .stim26_interval_o   (stim26_interval_o),
        .stim26_ia_o         (stim26_ia_o),
        .stim26_ic_o         (stim26_ic_o),
        .stim26_pulse_wc_o   (stim26_pulse_wc_o),
        .stim26_pulse_gap_o  (stim26_pulse_gap_o),
        .stim26_pulse_wa_o   (stim26_pulse_wa_o),
        .stim26_pulse_num_o  (stim26_pulse_num_o),
        .stim26_pol_o        (stim26_pol_o),
        .stim27_interval_o   (stim27_interval_o),
        .stim27_ia_o         (stim27_ia_o),
        .stim27_ic_o         (stim27_ic_o),
        .stim27_pulse_wc_o   (stim27_pulse_wc_o),
        .stim27_pulse_gap_o  (stim27_pulse_gap_o),
        .stim27_pulse_wa_o   (stim27_pulse_wa_o),
        .stim27_pulse_num_o  (stim27_pulse_num_o),
        .stim27_pol_o        (stim27_pol_o),
        .stim28_interval_o   (stim28_interval_o),
        .stim28_ia_o         (stim28_ia_o),
        .stim28_ic_o         (stim28_ic_o),
        .stim28_pulse_wc_o   (stim28_pulse_wc_o),
        .stim28_pulse_gap_o  (stim28_pulse_gap_o),
        .stim28_pulse_wa_o   (stim28_pulse_wa_o),
        .stim28_pulse_num_o  (stim28_pulse_num_o),
        .stim28_pol_o        (stim28_pol_o),
        .stim29_interval_o   (stim29_interval_o),
        .stim29_ia_o         (stim29_ia_o),
        .stim29_ic_o         (stim29_ic_o),
        .stim29_pulse_wc_o   (stim29_pulse_wc_o),
        .stim29_pulse_gap_o  (stim29_pulse_gap_o),
        .stim29_pulse_wa_o   (stim29_pulse_wa_o),
        .stim29_pulse_num_o  (stim29_pulse_num_o),
        .stim29_pol_o        (stim29_pol_o),
        .stim30_interval_o   (stim30_interval_o),
        .stim30_ia_o         (stim30_ia_o),
        .stim30_ic_o         (stim30_ic_o),
        .stim30_pulse_wc_o   (stim30_pulse_wc_o),
        .stim30_pulse_gap_o  (stim30_pulse_gap_o),
        .stim30_pulse_wa_o   (stim30_pulse_wa_o),
        .stim30_pulse_num_o  (stim30_pulse_num_o),
        .stim30_pol_o        (stim30_pol_o),
        .stim31_interval_o   (stim31_interval_o),
        .stim31_ia_o         (stim31_ia_o),
        .stim31_ic_o         (stim31_ic_o),
        .stim31_pulse_wc_o   (stim31_pulse_wc_o),
        .stim31_pulse_gap_o  (stim31_pulse_gap_o),
        .stim31_pulse_wa_o   (stim31_pulse_wa_o),
        .stim31_pulse_num_o  (stim31_pulse_num_o),
        .stim31_pol_o        (stim31_pol_o),
        .stim32_interval_o   (stim32_interval_o),
        .stim32_ia_o         (stim32_ia_o),
        .stim32_ic_o         (stim32_ic_o),
        .stim32_pulse_wc_o   (stim32_pulse_wc_o),
        .stim32_pulse_gap_o  (stim32_pulse_gap_o),
        .stim32_pulse_wa_o   (stim32_pulse_wa_o),
        .stim32_pulse_num_o  (stim32_pulse_num_o),
        .stim32_pol_o        (stim32_pol_o),
        .stim33_interval_o   (stim33_interval_o),
        .stim33_ia_o         (stim33_ia_o),
        .stim33_ic_o         (stim33_ic_o),
        .stim33_pulse_wc_o   (stim33_pulse_wc_o),
        .stim33_pulse_gap_o  (stim33_pulse_gap_o),
        .stim33_pulse_wa_o   (stim33_pulse_wa_o),
        .stim33_pulse_num_o  (stim33_pulse_num_o),
        .stim33_pol_o        (stim33_pol_o),
        .stim34_interval_o   (stim34_interval_o),
        .stim34_ia_o         (stim34_ia_o),
        .stim34_ic_o         (stim34_ic_o),
        .stim34_pulse_wc_o   (stim34_pulse_wc_o),
        .stim34_pulse_gap_o  (stim34_pulse_gap_o),
        .stim34_pulse_wa_o   (stim34_pulse_wa_o),
        .stim34_pulse_num_o  (stim34_pulse_num_o),
        .stim34_pol_o        (stim34_pol_o),
        .stim35_interval_o   (stim35_interval_o),
        .stim35_ia_o         (stim35_ia_o),
        .stim35_ic_o         (stim35_ic_o),
        .stim35_pulse_wc_o   (stim35_pulse_wc_o),
        .stim35_pulse_gap_o  (stim35_pulse_gap_o),
        .stim35_pulse_wa_o   (stim35_pulse_wa_o),
        .stim35_pulse_num_o  (stim35_pulse_num_o),
        .stim35_pol_o        (stim35_pol_o),
        .stim36_interval_o   (stim36_interval_o),
        .stim36_ia_o         (stim36_ia_o),
        .stim36_ic_o         (stim36_ic_o),
        .stim36_pulse_wc_o   (stim36_pulse_wc_o),
        .stim36_pulse_gap_o  (stim36_pulse_gap_o),
        .stim36_pulse_wa_o   (stim36_pulse_wa_o),
        .stim36_pulse_num_o  (stim36_pulse_num_o),
        .stim36_pol_o        (stim36_pol_o),
        .stim37_interval_o   (stim37_interval_o),
        .stim37_ia_o         (stim37_ia_o),
        .stim37_ic_o         (stim37_ic_o),
        .stim37_pulse_wc_o   (stim37_pulse_wc_o),
        .stim37_pulse_gap_o  (stim37_pulse_gap_o),
        .stim37_pulse_wa_o   (stim37_pulse_wa_o),
        .stim37_pulse_num_o  (stim37_pulse_num_o),
        .stim37_pol_o        (stim37_pol_o),
        .stim38_interval_o   (stim38_interval_o),
        .stim38_ia_o         (stim38_ia_o),
        .stim38_ic_o         (stim38_ic_o),
        .stim38_pulse_wc_o   (stim38_pulse_wc_o),
        .stim38_pulse_gap_o  (stim38_pulse_gap_o),
        .stim38_pulse_wa_o   (stim38_pulse_wa_o),
        .stim38_pulse_num_o  (stim38_pulse_num_o),
        .stim38_pol_o        (stim38_pol_o),
        .stim39_interval_o   (stim39_interval_o),
        .stim39_ia_o         (stim39_ia_o),
        .stim39_ic_o         (stim39_ic_o),
        .stim39_pulse_wc_o   (stim39_pulse_wc_o),
        .stim39_pulse_gap_o  (stim39_pulse_gap_o),
        .stim39_pulse_wa_o   (stim39_pulse_wa_o),
        .stim39_pulse_num_o  (stim39_pulse_num_o),
        .stim39_pol_o        (stim39_pol_o),
        .stim40_interval_o   (stim40_interval_o),
        .stim40_ia_o         (stim40_ia_o),
        .stim40_ic_o         (stim40_ic_o),
        .stim40_pulse_wc_o   (stim40_pulse_wc_o),
        .stim40_pulse_gap_o  (stim40_pulse_gap_o),
        .stim40_pulse_wa_o   (stim40_pulse_wa_o),
        .stim40_pulse_num_o  (stim40_pulse_num_o),
        .stim40_pol_o        (stim40_pol_o),
        .stim41_interval_o   (stim41_interval_o),
        .stim41_ia_o         (stim41_ia_o),
        .stim41_ic_o         (stim41_ic_o),
        .stim41_pulse_wc_o   (stim41_pulse_wc_o),
        .stim41_pulse_gap_o  (stim41_pulse_gap_o),
        .stim41_pulse_wa_o   (stim41_pulse_wa_o),
        .stim41_pulse_num_o  (stim41_pulse_num_o),
        .stim41_pol_o        (stim41_pol_o),
        .stim42_interval_o   (stim42_interval_o),
        .stim42_ia_o         (stim42_ia_o),
        .stim42_ic_o         (stim42_ic_o),
        .stim42_pulse_wc_o   (stim42_pulse_wc_o),
        .stim42_pulse_gap_o  (stim42_pulse_gap_o),
        .stim42_pulse_wa_o   (stim42_pulse_wa_o),
        .stim42_pulse_num_o  (stim42_pulse_num_o),
        .stim42_pol_o        (stim42_pol_o),
        .stim43_interval_o   (stim43_interval_o),
        .stim43_ia_o         (stim43_ia_o),
        .stim43_ic_o         (stim43_ic_o),
        .stim43_pulse_wc_o   (stim43_pulse_wc_o),
        .stim43_pulse_gap_o  (stim43_pulse_gap_o),
        .stim43_pulse_wa_o   (stim43_pulse_wa_o),
        .stim43_pulse_num_o  (stim43_pulse_num_o),
        .stim43_pol_o        (stim43_pol_o),
        .stim44_interval_o   (stim44_interval_o),
        .stim44_ia_o         (stim44_ia_o),
        .stim44_ic_o         (stim44_ic_o),
        .stim44_pulse_wc_o   (stim44_pulse_wc_o),
        .stim44_pulse_gap_o  (stim44_pulse_gap_o),
        .stim44_pulse_wa_o   (stim44_pulse_wa_o),
        .stim44_pulse_num_o  (stim44_pulse_num_o),
        .stim44_pol_o        (stim44_pol_o),
        .stim45_interval_o   (stim45_interval_o),
        .stim45_ia_o         (stim45_ia_o),
        .stim45_ic_o         (stim45_ic_o),
        .stim45_pulse_wc_o   (stim45_pulse_wc_o),
        .stim45_pulse_gap_o  (stim45_pulse_gap_o),
        .stim45_pulse_wa_o   (stim45_pulse_wa_o),
        .stim45_pulse_num_o  (stim45_pulse_num_o),
        .stim45_pol_o        (stim45_pol_o),
        .stim46_interval_o   (stim46_interval_o),
        .stim46_ia_o         (stim46_ia_o),
        .stim46_ic_o         (stim46_ic_o),
        .stim46_pulse_wc_o   (stim46_pulse_wc_o),
        .stim46_pulse_gap_o  (stim46_pulse_gap_o),
        .stim46_pulse_wa_o   (stim46_pulse_wa_o),
        .stim46_pulse_num_o  (stim46_pulse_num_o),
        .stim46_pol_o        (stim46_pol_o),
        .stim47_interval_o   (stim47_interval_o),
        .stim47_ia_o         (stim47_ia_o),
        .stim47_ic_o         (stim47_ic_o),
        .stim47_pulse_wc_o   (stim47_pulse_wc_o),
        .stim47_pulse_gap_o  (stim47_pulse_gap_o),
        .stim47_pulse_wa_o   (stim47_pulse_wa_o),
        .stim47_pulse_num_o  (stim47_pulse_num_o),
        .stim47_pol_o        (stim47_pol_o),
        .stim48_interval_o   (stim48_interval_o),
        .stim48_ia_o         (stim48_ia_o),
        .stim48_ic_o         (stim48_ic_o),
        .stim48_pulse_wc_o   (stim48_pulse_wc_o),
        .stim48_pulse_gap_o  (stim48_pulse_gap_o),
        .stim48_pulse_wa_o   (stim48_pulse_wa_o),
        .stim48_pulse_num_o  (stim48_pulse_num_o),
        .stim48_pol_o        (stim48_pol_o),
        .stim49_interval_o   (stim49_interval_o),
        .stim49_ia_o         (stim49_ia_o),
        .stim49_ic_o         (stim49_ic_o),
        .stim49_pulse_wc_o   (stim49_pulse_wc_o),
        .stim49_pulse_gap_o  (stim49_pulse_gap_o),
        .stim49_pulse_wa_o   (stim49_pulse_wa_o),
        .stim49_pulse_num_o  (stim49_pulse_num_o),
        .stim49_pol_o        (stim49_pol_o),
        .stim50_interval_o   (stim50_interval_o),
        .stim50_ia_o         (stim50_ia_o),
        .stim50_ic_o         (stim50_ic_o),
        .stim50_pulse_wc_o   (stim50_pulse_wc_o),
        .stim50_pulse_gap_o  (stim50_pulse_gap_o),
        .stim50_pulse_wa_o   (stim50_pulse_wa_o),
        .stim50_pulse_num_o  (stim50_pulse_num_o),
        .stim50_pol_o        (stim50_pol_o),
        .stim51_interval_o   (stim51_interval_o),
        .stim51_ia_o         (stim51_ia_o),
        .stim51_ic_o         (stim51_ic_o),
        .stim51_pulse_wc_o   (stim51_pulse_wc_o),
        .stim51_pulse_gap_o  (stim51_pulse_gap_o),
        .stim51_pulse_wa_o   (stim51_pulse_wa_o),
        .stim51_pulse_num_o  (stim51_pulse_num_o),
        .stim51_pol_o        (stim51_pol_o),
        .stim52_interval_o   (stim52_interval_o),
        .stim52_ia_o         (stim52_ia_o),
        .stim52_ic_o         (stim52_ic_o),
        .stim52_pulse_wc_o   (stim52_pulse_wc_o),
        .stim52_pulse_gap_o  (stim52_pulse_gap_o),
        .stim52_pulse_wa_o   (stim52_pulse_wa_o),
        .stim52_pulse_num_o  (stim52_pulse_num_o),
        .stim52_pol_o        (stim52_pol_o),
        .stim53_interval_o   (stim53_interval_o),
        .stim53_ia_o         (stim53_ia_o),
        .stim53_ic_o         (stim53_ic_o),
        .stim53_pulse_wc_o   (stim53_pulse_wc_o),
        .stim53_pulse_gap_o  (stim53_pulse_gap_o),
        .stim53_pulse_wa_o   (stim53_pulse_wa_o),
        .stim53_pulse_num_o  (stim53_pulse_num_o),
        .stim53_pol_o        (stim53_pol_o),
        .stim54_interval_o   (stim54_interval_o),
        .stim54_ia_o         (stim54_ia_o),
        .stim54_ic_o         (stim54_ic_o),
        .stim54_pulse_wc_o   (stim54_pulse_wc_o),
        .stim54_pulse_gap_o  (stim54_pulse_gap_o),
        .stim54_pulse_wa_o   (stim54_pulse_wa_o),
        .stim54_pulse_num_o  (stim54_pulse_num_o),
        .stim54_pol_o        (stim54_pol_o),
        .stim55_interval_o   (stim55_interval_o),
        .stim55_ia_o         (stim55_ia_o),
        .stim55_ic_o         (stim55_ic_o),
        .stim55_pulse_wc_o   (stim55_pulse_wc_o),
        .stim55_pulse_gap_o  (stim55_pulse_gap_o),
        .stim55_pulse_wa_o   (stim55_pulse_wa_o),
        .stim55_pulse_num_o  (stim55_pulse_num_o),
        .stim55_pol_o        (stim55_pol_o),
        .stim56_interval_o   (stim56_interval_o),
        .stim56_ia_o         (stim56_ia_o),
        .stim56_ic_o         (stim56_ic_o),
        .stim56_pulse_wc_o   (stim56_pulse_wc_o),
        .stim56_pulse_gap_o  (stim56_pulse_gap_o),
        .stim56_pulse_wa_o   (stim56_pulse_wa_o),
        .stim56_pulse_num_o  (stim56_pulse_num_o),
        .stim56_pol_o        (stim56_pol_o),
        .stim57_interval_o   (stim57_interval_o),
        .stim57_ia_o         (stim57_ia_o),
        .stim57_ic_o         (stim57_ic_o),
        .stim57_pulse_wc_o   (stim57_pulse_wc_o),
        .stim57_pulse_gap_o  (stim57_pulse_gap_o),
        .stim57_pulse_wa_o   (stim57_pulse_wa_o),
        .stim57_pulse_num_o  (stim57_pulse_num_o),
        .stim57_pol_o        (stim57_pol_o),
        .stim58_interval_o   (stim58_interval_o),
        .stim58_ia_o         (stim58_ia_o),
        .stim58_ic_o         (stim58_ic_o),
        .stim58_pulse_wc_o   (stim58_pulse_wc_o),
        .stim58_pulse_gap_o  (stim58_pulse_gap_o),
        .stim58_pulse_wa_o   (stim58_pulse_wa_o),
        .stim58_pulse_num_o  (stim58_pulse_num_o),
        .stim58_pol_o        (stim58_pol_o),
        .stim59_interval_o   (stim59_interval_o),
        .stim59_ia_o         (stim59_ia_o),
        .stim59_ic_o         (stim59_ic_o),
        .stim59_pulse_wc_o   (stim59_pulse_wc_o),
        .stim59_pulse_gap_o  (stim59_pulse_gap_o),
        .stim59_pulse_wa_o   (stim59_pulse_wa_o),
        .stim59_pulse_num_o  (stim59_pulse_num_o),
        .stim59_pol_o        (stim59_pol_o),
        .stim60_interval_o   (stim60_interval_o),
        .stim60_ia_o         (stim60_ia_o),
        .stim60_ic_o         (stim60_ic_o),
        .stim60_pulse_wc_o   (stim60_pulse_wc_o),
        .stim60_pulse_gap_o  (stim60_pulse_gap_o),
        .stim60_pulse_wa_o   (stim60_pulse_wa_o),
        .stim60_pulse_num_o  (stim60_pulse_num_o),
        .stim60_pol_o        (stim60_pol_o),
        .stim61_interval_o   (stim61_interval_o),
        .stim61_ia_o         (stim61_ia_o),
        .stim61_ic_o         (stim61_ic_o),
        .stim61_pulse_wc_o   (stim61_pulse_wc_o),
        .stim61_pulse_gap_o  (stim61_pulse_gap_o),
        .stim61_pulse_wa_o   (stim61_pulse_wa_o),
        .stim61_pulse_num_o  (stim61_pulse_num_o),
        .stim61_pol_o        (stim61_pol_o),
        .stim62_interval_o   (stim62_interval_o),
        .stim62_ia_o         (stim62_ia_o),
        .stim62_ic_o         (stim62_ic_o),
        .stim62_pulse_wc_o   (stim62_pulse_wc_o),
        .stim62_pulse_gap_o  (stim62_pulse_gap_o),
        .stim62_pulse_wa_o   (stim62_pulse_wa_o),
        .stim62_pulse_num_o  (stim62_pulse_num_o),
        .stim62_pol_o        (stim62_pol_o),
        .stim63_interval_o   (stim63_interval_o),
        .stim63_ia_o         (stim63_ia_o),
        .stim63_ic_o         (stim63_ic_o),
        .stim63_pulse_wc_o   (stim63_pulse_wc_o),
        .stim63_pulse_gap_o  (stim63_pulse_gap_o),
        .stim63_pulse_wa_o   (stim63_pulse_wa_o),
        .stim63_pulse_num_o  (stim63_pulse_num_o),
        .stim63_pol_o        (stim63_pol_o),
        .stim_range_unsync_o (stim_range_unsync_o),
        .div_clk_stim_o      (div_clk_stim_o),
        .en_clk_stim_o       (en_clk_stim_o),
        .div_clk_discharge_o (div_clk_discharge_o),
        .en_clk_discharge_o  (en_clk_discharge_o),
        .pw_discharge_o      (pw_discharge_o),
        .rec_en_o            (rec_en_o)
    );

    spi_slave_common #(
        .TX_WIDTH (TX_WIDTH)
    ) i_spi_slave_common (
        .spi_clk_i      (spi_clk_i),
        .spi_cs_i       (spi_cs_i),
        .spi_mosi_i     (spi_mosi_i),
        .spi_miso_o     (spi_miso_o),
        .spi_rx_word_o  (spi_rx_word_s),
        .rx_done_o      (rx_done_s),
        .spi_tx_word_i  (spi_tx_word_s),
        .tx_ready_i     (tx_ready_s),
        .crc5_chk_o     (crc5_chk_s),
        .tx_done_o      (tx_done_s),
        .crc5_ext_o     (crc5_ext_s),
        .spi_cmd4b_o    (spi_cmd4b_s),
        .spi_cmd4b_en_o (spi_cmd4b_en_s)
    );

    spi_custom_logic #(
        .TX_WIDTH (TX_WIDTH)
    ) i_spi_custom_logic (
        .spi_clk_i      (spi_clk_i),
        .spi_cs_i       (spi_cs_i),
        .apb_addr_o     (apb_addr_s),
        .apb_sel_o      (apb_sel_s),
        .apb_enable_o   (apb_enable_s),
        .apb_wdata_o    (apb_wdata_s),
        .apb_write_o    (apb_write_s),
        .apb_strb_o     (apb_strb_s),
        .apb_rdata_i    (apb_rdata_s),
        .apb_ready_i    (apb_ready_s),
        .apb_slverr_i   (apb_slverr_s),
        .apb_prot_o     (apb_prot_s),
        .apb_prot_en_o  (apb_prot_en_s),
        .chip_id_o      (chip_id_s),
        .stim_mask_en_i (stim_mask_en_o),
        .spi_rx_word_i  (spi_rx_word_s),
        .rx_done_i      (rx_done_s),
        .spi_tx_word_o  (spi_tx_word_s),
        .tx_ready_o     (tx_ready_s),
        .crc5_chk_i     (crc5_chk_s),
        .tx_done_i      (tx_done_s),
        .crc5_ext_i     (crc5_ext_s),
        .spi_cmd4b_i    (spi_cmd4b_s),
        .spi_cmd4b_en_i (spi_cmd4b_en_s),
        .error_o        (error_o)
    );

endmodule
