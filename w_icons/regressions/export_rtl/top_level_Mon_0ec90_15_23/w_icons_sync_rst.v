/*
 * Module: w_icons_sync_rst
 * Author: Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
`timescale 1ns/1ps

module w_icons_sync_rst (
    clk_ref_i,
    clk_adc1_gated_o,
    clk_adc2_gated_o,
    reset_i,
    resetn_top_sync_o,
    resetn_spi_sync_o,
    stim_xen_i,
    stim_xen_sync_o,
    err_sync_o,
    err_stim_sync_o,
    spi_clk_i,
    dft_testmode_i,
    stim_mask_en_i,
    amp_gain_g1_i,
    amp_gain_g2_i,
    en_rec_ch_g1_i,
    en_rec_ch_g2_i,
    error_i,
    err_stim_i,
    amp_gain_sync_o,
    stim_mask_en0_sync_o,
    stim_mask_en1_sync_o,
    stim_mask_en2_sync_o,
    stim_mask_en3_sync_o,
    stim_mask_en4_sync_o,
    stim_mask_en5_sync_o,
    stim_mask_en6_sync_o,
    stim_mask_en7_sync_o,
    clk_stim_i,
    en_clk_stim_i,
    en_clk_stim_sync_xen_o,
    en_clk_discharge_i,
    en_clk_discharge_sync_o,
    rec_sync_en_o,
    rec_en_i,
    rec_vec_sync_o,
    en_rec_sync_g1_o,
    en_rec_sync_g2_o
);

    input         clk_ref_i;
    output        clk_adc1_gated_o;
    output        clk_adc2_gated_o;
    input         reset_i;
    output        resetn_top_sync_o;
    output        resetn_spi_sync_o;
    input         stim_xen_i;
    output        stim_xen_sync_o;
    output        err_sync_o;
    output        err_stim_sync_o;
    input         spi_clk_i;
    input         dft_testmode_i;
    input   [7:0] stim_mask_en_i;
    input  [31:0] amp_gain_g1_i;
    input  [31:0] amp_gain_g2_i;
    input  [31:0] en_rec_ch_g1_i;
    input  [31:0] en_rec_ch_g2_i;
    input         error_i;
    input         err_stim_i;
    output [63:0] amp_gain_sync_o;
    output        stim_mask_en0_sync_o;
    output        stim_mask_en1_sync_o;
    output        stim_mask_en2_sync_o;
    output        stim_mask_en3_sync_o;
    output        stim_mask_en4_sync_o;
    output        stim_mask_en5_sync_o;
    output        stim_mask_en6_sync_o;
    output        stim_mask_en7_sync_o;
    input         clk_stim_i;
    input         en_clk_stim_i;
    output        en_clk_stim_sync_xen_o;
    input         en_clk_discharge_i;
    output        en_clk_discharge_sync_o;
    output        rec_sync_en_o;
    input         rec_en_i;
    output [63:0] rec_vec_sync_o;
    output [31:0] en_rec_sync_g1_o;
    output [31:0] en_rec_sync_g2_o;

    wire  clk_adc1_s;
    wire  clk_adc2_s;
    wire  adc_amp_ch0_gain_s;
    wire  adc_amp_ch1_gain_s;
    wire  adc_amp_ch2_gain_s;
    wire  adc_amp_ch3_gain_s;
    wire  adc_amp_ch4_gain_s;
    wire  adc_amp_ch5_gain_s;
    wire  adc_amp_ch6_gain_s;
    wire  adc_amp_ch7_gain_s;
    wire  adc_amp_ch8_gain_s;
    wire  adc_amp_ch9_gain_s;
    wire  adc_amp_ch10_gain_s;
    wire  adc_amp_ch11_gain_s;
    wire  adc_amp_ch12_gain_s;
    wire  adc_amp_ch13_gain_s;
    wire  adc_amp_ch14_gain_s;
    wire  adc_amp_ch15_gain_s;
    wire  adc_amp_ch16_gain_s;
    wire  adc_amp_ch17_gain_s;
    wire  adc_amp_ch18_gain_s;
    wire  adc_amp_ch19_gain_s;
    wire  adc_amp_ch20_gain_s;
    wire  adc_amp_ch21_gain_s;
    wire  adc_amp_ch22_gain_s;
    wire  adc_amp_ch23_gain_s;
    wire  adc_amp_ch24_gain_s;
    wire  adc_amp_ch25_gain_s;
    wire  adc_amp_ch26_gain_s;
    wire  adc_amp_ch27_gain_s;
    wire  adc_amp_ch28_gain_s;
    wire  adc_amp_ch29_gain_s;
    wire  adc_amp_ch30_gain_s;
    wire  adc_amp_ch31_gain_s;
    wire  adc_amp_ch32_gain_s;
    wire  adc_amp_ch33_gain_s;
    wire  adc_amp_ch34_gain_s;
    wire  adc_amp_ch35_gain_s;
    wire  adc_amp_ch36_gain_s;
    wire  adc_amp_ch37_gain_s;
    wire  adc_amp_ch38_gain_s;
    wire  adc_amp_ch39_gain_s;
    wire  adc_amp_ch40_gain_s;
    wire  adc_amp_ch41_gain_s;
    wire  adc_amp_ch42_gain_s;
    wire  adc_amp_ch43_gain_s;
    wire  adc_amp_ch44_gain_s;
    wire  adc_amp_ch45_gain_s;
    wire  adc_amp_ch46_gain_s;
    wire  adc_amp_ch47_gain_s;
    wire  adc_amp_ch48_gain_s;
    wire  adc_amp_ch49_gain_s;
    wire  adc_amp_ch50_gain_s;
    wire  adc_amp_ch51_gain_s;
    wire  adc_amp_ch52_gain_s;
    wire  adc_amp_ch53_gain_s;
    wire  adc_amp_ch54_gain_s;
    wire  adc_amp_ch55_gain_s;
    wire  adc_amp_ch56_gain_s;
    wire  adc_amp_ch57_gain_s;
    wire  adc_amp_ch58_gain_s;
    wire  adc_amp_ch59_gain_s;
    wire  adc_amp_ch60_gain_s;
    wire  adc_amp_ch61_gain_s;
    wire  adc_amp_ch62_gain_s;
    wire  adc_amp_ch63_gain_s;
    wire  amp_gain_g1_0_s;
    wire  amp_gain_g1_1_s;
    wire  amp_gain_g1_2_s;
    wire  amp_gain_g1_3_s;
    wire  amp_gain_g1_4_s;
    wire  amp_gain_g1_5_s;
    wire  amp_gain_g1_6_s;
    wire  amp_gain_g1_7_s;
    wire  amp_gain_g1_8_s;
    wire  amp_gain_g1_9_s;
    wire  amp_gain_g1_10_s;
    wire  amp_gain_g1_11_s;
    wire  amp_gain_g1_12_s;
    wire  amp_gain_g1_13_s;
    wire  amp_gain_g1_14_s;
    wire  amp_gain_g1_15_s;
    wire  amp_gain_g1_16_s;
    wire  amp_gain_g1_17_s;
    wire  amp_gain_g1_18_s;
    wire  amp_gain_g1_19_s;
    wire  amp_gain_g1_20_s;
    wire  amp_gain_g1_21_s;
    wire  amp_gain_g1_22_s;
    wire  amp_gain_g1_23_s;
    wire  amp_gain_g1_24_s;
    wire  amp_gain_g1_25_s;
    wire  amp_gain_g1_26_s;
    wire  amp_gain_g1_27_s;
    wire  amp_gain_g1_28_s;
    wire  amp_gain_g1_29_s;
    wire  amp_gain_g1_30_s;
    wire  amp_gain_g1_31_s;
    wire  amp_gain_g2_0_s;
    wire  amp_gain_g2_1_s;
    wire  amp_gain_g2_2_s;
    wire  amp_gain_g2_3_s;
    wire  amp_gain_g2_4_s;
    wire  amp_gain_g2_5_s;
    wire  amp_gain_g2_6_s;
    wire  amp_gain_g2_7_s;
    wire  amp_gain_g2_8_s;
    wire  amp_gain_g2_9_s;
    wire  amp_gain_g2_10_s;
    wire  amp_gain_g2_11_s;
    wire  amp_gain_g2_12_s;
    wire  amp_gain_g2_13_s;
    wire  amp_gain_g2_14_s;
    wire  amp_gain_g2_15_s;
    wire  amp_gain_g2_16_s;
    wire  amp_gain_g2_17_s;
    wire  amp_gain_g2_18_s;
    wire  amp_gain_g2_19_s;
    wire  amp_gain_g2_20_s;
    wire  amp_gain_g2_21_s;
    wire  amp_gain_g2_22_s;
    wire  amp_gain_g2_23_s;
    wire  amp_gain_g2_24_s;
    wire  amp_gain_g2_25_s;
    wire  amp_gain_g2_26_s;
    wire  amp_gain_g2_27_s;
    wire  amp_gain_g2_28_s;
    wire  amp_gain_g2_29_s;
    wire  amp_gain_g2_30_s;
    wire  amp_gain_g2_31_s;
    wire  stim_mask_en_0_s;
    wire  stim_mask_en_1_s;
    wire  stim_mask_en_2_s;
    wire  stim_mask_en_3_s;
    wire  stim_mask_en_4_s;
    wire  stim_mask_en_5_s;
    wire  stim_mask_en_6_s;
    wire  stim_mask_en_7_s;
    wire  en_clk_stim_sync_s;
    wire  en_rec_ch0_synch_s;
    wire  en_rec_ch1_synch_s;
    wire  en_rec_ch2_synch_s;
    wire  en_rec_ch3_synch_s;
    wire  en_rec_ch4_synch_s;
    wire  en_rec_ch5_synch_s;
    wire  en_rec_ch6_synch_s;
    wire  en_rec_ch7_synch_s;
    wire  en_rec_ch8_synch_s;
    wire  en_rec_ch9_synch_s;
    wire  en_rec_ch10_synch_s;
    wire  en_rec_ch11_synch_s;
    wire  en_rec_ch12_synch_s;
    wire  en_rec_ch13_synch_s;
    wire  en_rec_ch14_synch_s;
    wire  en_rec_ch15_synch_s;
    wire  en_rec_ch16_synch_s;
    wire  en_rec_ch17_synch_s;
    wire  en_rec_ch18_synch_s;
    wire  en_rec_ch19_synch_s;
    wire  en_rec_ch20_synch_s;
    wire  en_rec_ch21_synch_s;
    wire  en_rec_ch22_synch_s;
    wire  en_rec_ch23_synch_s;
    wire  en_rec_ch24_synch_s;
    wire  en_rec_ch25_synch_s;
    wire  en_rec_ch26_synch_s;
    wire  en_rec_ch27_synch_s;
    wire  en_rec_ch28_synch_s;
    wire  en_rec_ch29_synch_s;
    wire  en_rec_ch30_synch_s;
    wire  en_rec_ch31_synch_s;
    wire  en_rec_ch32_synch_s;
    wire  en_rec_ch33_synch_s;
    wire  en_rec_ch34_synch_s;
    wire  en_rec_ch35_synch_s;
    wire  en_rec_ch36_synch_s;
    wire  en_rec_ch37_synch_s;
    wire  en_rec_ch38_synch_s;
    wire  en_rec_ch39_synch_s;
    wire  en_rec_ch40_synch_s;
    wire  en_rec_ch41_synch_s;
    wire  en_rec_ch42_synch_s;
    wire  en_rec_ch43_synch_s;
    wire  en_rec_ch44_synch_s;
    wire  en_rec_ch45_synch_s;
    wire  en_rec_ch46_synch_s;
    wire  en_rec_ch47_synch_s;
    wire  en_rec_ch48_synch_s;
    wire  en_rec_ch49_synch_s;
    wire  en_rec_ch50_synch_s;
    wire  en_rec_ch51_synch_s;
    wire  en_rec_ch52_synch_s;
    wire  en_rec_ch53_synch_s;
    wire  en_rec_ch54_synch_s;
    wire  en_rec_ch55_synch_s;
    wire  en_rec_ch56_synch_s;
    wire  en_rec_ch57_synch_s;
    wire  en_rec_ch58_synch_s;
    wire  en_rec_ch59_synch_s;
    wire  en_rec_ch60_synch_s;
    wire  en_rec_ch61_synch_s;
    wire  en_rec_ch62_synch_s;
    wire  en_rec_ch63_synch_s;
    wire  en_rec_ch_g1_0_s;
    wire  en_rec_ch_g1_1_s;
    wire  en_rec_ch_g1_2_s;
    wire  en_rec_ch_g1_3_s;
    wire  en_rec_ch_g1_4_s;
    wire  en_rec_ch_g1_5_s;
    wire  en_rec_ch_g1_6_s;
    wire  en_rec_ch_g1_7_s;
    wire  en_rec_ch_g1_8_s;
    wire  en_rec_ch_g1_9_s;
    wire  en_rec_ch_g1_10_s;
    wire  en_rec_ch_g1_11_s;
    wire  en_rec_ch_g1_12_s;
    wire  en_rec_ch_g1_13_s;
    wire  en_rec_ch_g1_14_s;
    wire  en_rec_ch_g1_15_s;
    wire  en_rec_ch_g1_16_s;
    wire  en_rec_ch_g1_17_s;
    wire  en_rec_ch_g1_18_s;
    wire  en_rec_ch_g1_19_s;
    wire  en_rec_ch_g1_20_s;
    wire  en_rec_ch_g1_21_s;
    wire  en_rec_ch_g1_22_s;
    wire  en_rec_ch_g1_23_s;
    wire  en_rec_ch_g1_24_s;
    wire  en_rec_ch_g1_25_s;
    wire  en_rec_ch_g1_26_s;
    wire  en_rec_ch_g1_27_s;
    wire  en_rec_ch_g1_28_s;
    wire  en_rec_ch_g1_29_s;
    wire  en_rec_ch_g1_30_s;
    wire  en_rec_ch_g1_31_s;
    wire  en_rec_ch_g2_0_s;
    wire  en_rec_ch_g2_1_s;
    wire  en_rec_ch_g2_2_s;
    wire  en_rec_ch_g2_3_s;
    wire  en_rec_ch_g2_4_s;
    wire  en_rec_ch_g2_5_s;
    wire  en_rec_ch_g2_6_s;
    wire  en_rec_ch_g2_7_s;
    wire  en_rec_ch_g2_8_s;
    wire  en_rec_ch_g2_9_s;
    wire  en_rec_ch_g2_10_s;
    wire  en_rec_ch_g2_11_s;
    wire  en_rec_ch_g2_12_s;
    wire  en_rec_ch_g2_13_s;
    wire  en_rec_ch_g2_14_s;
    wire  en_rec_ch_g2_15_s;
    wire  en_rec_ch_g2_16_s;
    wire  en_rec_ch_g2_17_s;
    wire  en_rec_ch_g2_18_s;
    wire  en_rec_ch_g2_19_s;
    wire  en_rec_ch_g2_20_s;
    wire  en_rec_ch_g2_21_s;
    wire  en_rec_ch_g2_22_s;
    wire  en_rec_ch_g2_23_s;
    wire  en_rec_ch_g2_24_s;
    wire  en_rec_ch_g2_25_s;
    wire  en_rec_ch_g2_26_s;
    wire  en_rec_ch_g2_27_s;
    wire  en_rec_ch_g2_28_s;
    wire  en_rec_ch_g2_29_s;
    wire  en_rec_ch_g2_30_s;
    wire  en_rec_ch_g2_31_s;
    wire  en_clk_adc1_sync_s;
    wire  en_clk_adc2_sync_s;


    common_reset_sync i_common_reset_sync (
        .clk_i          (clk_ref_i),
        .reset_q_i      (reset_i),
        .sync_reset_q_o (resetn_top_sync_o),
        .scan_mode_i    (dft_testmode_i)
    );

    common_reset_sync i_common_reset_sync_spi (
        .reset_q_i      (reset_i),
        .sync_reset_q_o (resetn_spi_sync_o),
        .clk_i          (spi_clk_i),
        .scan_mode_i    (dft_testmode_i)
    );

    common_sync i_common_sync_adc0 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch0_gain_s),
        .data_i    (amp_gain_g1_0_s)
    );

    common_sync i_common_sync_adc1 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch1_gain_s),
        .data_i    (amp_gain_g1_1_s)
    );

    common_sync i_common_sync_adc2 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch2_gain_s),
        .data_i    (amp_gain_g1_2_s)
    );

    common_sync i_common_sync_adc3 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch3_gain_s),
        .data_i    (amp_gain_g1_3_s)
    );

    common_sync i_common_sync_adc4 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch4_gain_s),
        .data_i    (amp_gain_g1_4_s)
    );

    common_sync i_common_sync_adc5 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch5_gain_s),
        .data_i    (amp_gain_g1_5_s)
    );

    common_sync i_common_sync_adc6 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch6_gain_s),
        .data_i    (amp_gain_g1_6_s)
    );

    common_sync i_common_sync_adc7 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch7_gain_s),
        .data_i    (amp_gain_g1_7_s)
    );

    common_sync i_common_sync_adc8 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch8_gain_s),
        .data_i    (amp_gain_g1_8_s)
    );

    common_sync i_common_sync_adc9 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch9_gain_s),
        .data_i    (amp_gain_g1_9_s)
    );

    common_sync i_common_sync_adc10 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch10_gain_s),
        .data_i    (amp_gain_g1_10_s)
    );

    common_sync i_common_sync_adc11 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch11_gain_s),
        .data_i    (amp_gain_g1_11_s)
    );

    common_sync i_common_sync_adc12 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch12_gain_s),
        .data_i    (amp_gain_g1_12_s)
    );

    common_sync i_common_sync_adc13 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch13_gain_s),
        .data_i    (amp_gain_g1_13_s)
    );

    common_sync i_common_sync_adc14 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch14_gain_s),
        .data_i    (amp_gain_g1_14_s)
    );

    common_sync i_common_sync_adc15 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch15_gain_s),
        .data_i    (amp_gain_g1_15_s)
    );

    common_sync i_common_sync_adc16 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch16_gain_s),
        .data_i    (amp_gain_g1_16_s)
    );

    common_sync i_common_sync_adc17 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch17_gain_s),
        .data_i    (amp_gain_g1_17_s)
    );

    common_sync i_common_sync_adc18 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch18_gain_s),
        .data_i    (amp_gain_g1_18_s)
    );

    common_sync i_common_sync_adc19 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch19_gain_s),
        .data_i    (amp_gain_g1_19_s)
    );

    common_sync i_common_sync_adc20 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch20_gain_s),
        .data_i    (amp_gain_g1_20_s)
    );

    common_sync i_common_sync_adc21 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch21_gain_s),
        .data_i    (amp_gain_g1_21_s)
    );

    common_sync i_common_sync_adc22 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch22_gain_s),
        .data_i    (amp_gain_g1_22_s)
    );

    common_sync i_common_sync_adc23 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch23_gain_s),
        .data_i    (amp_gain_g1_23_s)
    );

    common_sync i_common_sync_adc24 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch24_gain_s),
        .data_i    (amp_gain_g1_24_s)
    );

    common_sync i_common_sync_adc25 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch25_gain_s),
        .data_i    (amp_gain_g1_25_s)
    );

    common_sync i_common_sync_adc26 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch26_gain_s),
        .data_i    (amp_gain_g1_26_s)
    );

    common_sync i_common_sync_adc27 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch27_gain_s),
        .data_i    (amp_gain_g1_27_s)
    );

    common_sync i_common_sync_adc28 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch28_gain_s),
        .data_i    (amp_gain_g1_28_s)
    );

    common_sync i_common_sync_adc29 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch29_gain_s),
        .data_i    (amp_gain_g1_29_s)
    );

    common_sync i_common_sync_adc30 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch30_gain_s),
        .data_i    (amp_gain_g1_30_s)
    );

    common_sync i_common_sync_adc31 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch31_gain_s),
        .data_i    (amp_gain_g1_31_s)
    );

    common_sync i_common_sync_adc32 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch32_gain_s),
        .data_i    (amp_gain_g2_0_s)
    );

    common_sync i_common_sync_adc33 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch33_gain_s),
        .data_i    (amp_gain_g2_1_s)
    );

    common_sync i_common_sync_adc34 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch34_gain_s),
        .data_i    (amp_gain_g2_2_s)
    );

    common_sync i_common_sync_adc35 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch35_gain_s),
        .data_i    (amp_gain_g2_3_s)
    );

    common_sync i_common_sync_adc36 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch36_gain_s),
        .data_i    (amp_gain_g2_4_s)
    );

    common_sync i_common_sync_adc37 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch37_gain_s),
        .data_i    (amp_gain_g2_5_s)
    );

    common_sync i_common_sync_adc38 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch38_gain_s),
        .data_i    (amp_gain_g2_6_s)
    );

    common_sync i_common_sync_adc39 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch39_gain_s),
        .data_i    (amp_gain_g2_7_s)
    );

    common_sync i_common_sync_adc40 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch40_gain_s),
        .data_i    (amp_gain_g2_8_s)
    );

    common_sync i_common_sync_adc41 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch41_gain_s),
        .data_i    (amp_gain_g2_9_s)
    );

    common_sync i_common_sync_adc42 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch42_gain_s),
        .data_i    (amp_gain_g2_10_s)
    );

    common_sync i_common_sync_adc43 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch43_gain_s),
        .data_i    (amp_gain_g2_11_s)
    );

    common_sync i_common_sync_adc44 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch44_gain_s),
        .data_i    (amp_gain_g2_12_s)
    );

    common_sync i_common_sync_adc45 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch45_gain_s),
        .data_i    (amp_gain_g2_13_s)
    );

    common_sync i_common_sync_adc46 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch46_gain_s),
        .data_i    (amp_gain_g2_14_s)
    );

    common_sync i_common_sync_adc47 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch47_gain_s),
        .data_i    (amp_gain_g2_15_s)
    );

    common_sync i_common_sync_adc48 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch48_gain_s),
        .data_i    (amp_gain_g2_16_s)
    );

    common_sync i_common_sync_adc49 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch49_gain_s),
        .data_i    (amp_gain_g2_17_s)
    );

    common_sync i_common_sync_adc50 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch50_gain_s),
        .data_i    (amp_gain_g2_18_s)
    );

    common_sync i_common_sync_adc51 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch51_gain_s),
        .data_i    (amp_gain_g2_19_s)
    );

    common_sync i_common_sync_adc52 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch52_gain_s),
        .data_i    (amp_gain_g2_20_s)
    );

    common_sync i_common_sync_adc53 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch53_gain_s),
        .data_i    (amp_gain_g2_21_s)
    );

    common_sync i_common_sync_adc54 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch54_gain_s),
        .data_i    (amp_gain_g2_22_s)
    );

    common_sync i_common_sync_adc55 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch55_gain_s),
        .data_i    (amp_gain_g2_23_s)
    );

    common_sync i_common_sync_adc56 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch56_gain_s),
        .data_i    (amp_gain_g2_24_s)
    );

    common_sync i_common_sync_adc57 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch57_gain_s),
        .data_i    (amp_gain_g2_25_s)
    );

    common_sync i_common_sync_adc58 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch58_gain_s),
        .data_i    (amp_gain_g2_26_s)
    );

    common_sync i_common_sync_adc59 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch59_gain_s),
        .data_i    (amp_gain_g2_27_s)
    );

    common_sync i_common_sync_adc60 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch60_gain_s),
        .data_i    (amp_gain_g2_28_s)
    );

    common_sync i_common_sync_adc61 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch61_gain_s),
        .data_i    (amp_gain_g2_29_s)
    );

    common_sync i_common_sync_adc62 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch62_gain_s),
        .data_i    (amp_gain_g2_30_s)
    );

    common_sync i_common_sync_adc63 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (adc_amp_ch63_gain_s),
        .data_i    (amp_gain_g2_31_s)
    );

    common_sync i_common_sync_en_rec_ch0 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch0_synch_s),
        .data_i    (en_rec_ch_g1_0_s)
    );

    common_sync i_common_sync_en_rec_ch1 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch1_synch_s),
        .data_i    (en_rec_ch_g1_1_s)
    );

    common_sync i_common_sync_en_rec_ch2 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch2_synch_s),
        .data_i    (en_rec_ch_g1_2_s)
    );

    common_sync i_common_sync_en_rec_ch3 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch3_synch_s),
        .data_i    (en_rec_ch_g1_3_s)
    );

    common_sync i_common_sync_en_rec_ch4 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch4_synch_s),
        .data_i    (en_rec_ch_g1_4_s)
    );

    common_sync i_common_sync_en_rec_ch5 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch5_synch_s),
        .data_i    (en_rec_ch_g1_5_s)
    );

    common_sync i_common_sync_en_rec_ch6 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch6_synch_s),
        .data_i    (en_rec_ch_g1_6_s)
    );

    common_sync i_common_sync_en_rec_ch7 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch7_synch_s),
        .data_i    (en_rec_ch_g1_7_s)
    );

    common_sync i_common_sync_en_rec_ch8 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch8_synch_s),
        .data_i    (en_rec_ch_g1_8_s)
    );

    common_sync i_common_sync_en_rec_ch9 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch9_synch_s),
        .data_i    (en_rec_ch_g1_9_s)
    );

    common_sync i_common_sync_en_rec_ch10 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch10_synch_s),
        .data_i    (en_rec_ch_g1_10_s)
    );

    common_sync i_common_sync_en_rec_ch11 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch11_synch_s),
        .data_i    (en_rec_ch_g1_11_s)
    );

    common_sync i_common_sync_en_rec_ch12 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch12_synch_s),
        .data_i    (en_rec_ch_g1_12_s)
    );

    common_sync i_common_sync_en_rec_ch13 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch13_synch_s),
        .data_i    (en_rec_ch_g1_13_s)
    );

    common_sync i_common_sync_en_rec_ch14 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch14_synch_s),
        .data_i    (en_rec_ch_g1_14_s)
    );

    common_sync i_common_sync_en_rec_ch15 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch15_synch_s),
        .data_i    (en_rec_ch_g1_15_s)
    );

    common_sync i_common_sync_en_rec_ch16 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch16_synch_s),
        .data_i    (en_rec_ch_g1_16_s)
    );

    common_sync i_common_sync_en_rec_ch17 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch17_synch_s),
        .data_i    (en_rec_ch_g1_17_s)
    );

    common_sync i_common_sync_en_rec_ch18 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch18_synch_s),
        .data_i    (en_rec_ch_g1_18_s)
    );

    common_sync i_common_sync_en_rec_ch19 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch19_synch_s),
        .data_i    (en_rec_ch_g1_19_s)
    );

    common_sync i_common_sync_en_rec_ch20 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch20_synch_s),
        .data_i    (en_rec_ch_g1_20_s)
    );

    common_sync i_common_sync_en_rec_ch21 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch21_synch_s),
        .data_i    (en_rec_ch_g1_21_s)
    );

    common_sync i_common_sync_en_rec_ch22 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch22_synch_s),
        .data_i    (en_rec_ch_g1_22_s)
    );

    common_sync i_common_sync_en_rec_ch23 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch23_synch_s),
        .data_i    (en_rec_ch_g1_23_s)
    );

    common_sync i_common_sync_en_rec_ch24 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch24_synch_s),
        .data_i    (en_rec_ch_g1_24_s)
    );

    common_sync i_common_sync_en_rec_ch25 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch25_synch_s),
        .data_i    (en_rec_ch_g1_25_s)
    );

    common_sync i_common_sync_en_rec_ch26 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch26_synch_s),
        .data_i    (en_rec_ch_g1_26_s)
    );

    common_sync i_common_sync_en_rec_ch27 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch27_synch_s),
        .data_i    (en_rec_ch_g1_27_s)
    );

    common_sync i_common_sync_en_rec_ch28 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch28_synch_s),
        .data_i    (en_rec_ch_g1_28_s)
    );

    common_sync i_common_sync_en_rec_ch29 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch29_synch_s),
        .data_i    (en_rec_ch_g1_29_s)
    );

    common_sync i_common_sync_en_rec_ch30 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch30_synch_s),
        .data_i    (en_rec_ch_g1_30_s)
    );

    common_sync i_common_sync_en_rec_ch31 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch31_synch_s),
        .data_i    (en_rec_ch_g1_31_s)
    );

    common_sync i_common_sync_en_rec_ch32 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch32_synch_s),
        .data_i    (en_rec_ch_g2_0_s)
    );

    common_sync i_common_sync_en_rec_ch33 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch33_synch_s),
        .data_i    (en_rec_ch_g2_1_s)
    );

    common_sync i_common_sync_en_rec_ch34 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch34_synch_s),
        .data_i    (en_rec_ch_g2_2_s)
    );

    common_sync i_common_sync_en_rec_ch35 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch35_synch_s),
        .data_i    (en_rec_ch_g2_3_s)
    );

    common_sync i_common_sync_en_rec_ch36 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch36_synch_s),
        .data_i    (en_rec_ch_g2_4_s)
    );

    common_sync i_common_sync_en_rec_ch37 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch37_synch_s),
        .data_i    (en_rec_ch_g2_5_s)
    );

    common_sync i_common_sync_en_rec_ch38 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch38_synch_s),
        .data_i    (en_rec_ch_g2_6_s)
    );

    common_sync i_common_sync_en_rec_ch39 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch39_synch_s),
        .data_i    (en_rec_ch_g2_7_s)
    );

    common_sync i_common_sync_en_rec_ch40 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch40_synch_s),
        .data_i    (en_rec_ch_g2_8_s)
    );

    common_sync i_common_sync_en_rec_ch41 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch41_synch_s),
        .data_i    (en_rec_ch_g2_9_s)
    );

    common_sync i_common_sync_en_rec_ch42 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch42_synch_s),
        .data_i    (en_rec_ch_g2_10_s)
    );

    common_sync i_common_sync_en_rec_ch43 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch43_synch_s),
        .data_i    (en_rec_ch_g2_11_s)
    );

    common_sync i_common_sync_en_rec_ch44 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch44_synch_s),
        .data_i    (en_rec_ch_g2_12_s)
    );

    common_sync i_common_sync_en_rec_ch45 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch45_synch_s),
        .data_i    (en_rec_ch_g2_13_s)
    );

    common_sync i_common_sync_en_rec_ch46 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch46_synch_s),
        .data_i    (en_rec_ch_g2_14_s)
    );

    common_sync i_common_sync_en_rec_ch47 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch47_synch_s),
        .data_i    (en_rec_ch_g2_15_s)
    );

    common_sync i_common_sync_en_rec_ch48 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch48_synch_s),
        .data_i    (en_rec_ch_g2_16_s)
    );

    common_sync i_common_sync_en_rec_ch49 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch49_synch_s),
        .data_i    (en_rec_ch_g2_17_s)
    );

    common_sync i_common_sync_en_rec_ch50 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch50_synch_s),
        .data_i    (en_rec_ch_g2_18_s)
    );

    common_sync i_common_sync_en_rec_ch51 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch51_synch_s),
        .data_i    (en_rec_ch_g2_19_s)
    );

    common_sync i_common_sync_en_rec_ch52 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch52_synch_s),
        .data_i    (en_rec_ch_g2_20_s)
    );

    common_sync i_common_sync_en_rec_ch53 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch53_synch_s),
        .data_i    (en_rec_ch_g2_21_s)
    );

    common_sync i_common_sync_en_rec_ch54 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch54_synch_s),
        .data_i    (en_rec_ch_g2_22_s)
    );

    common_sync i_common_sync_en_rec_ch55 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch55_synch_s),
        .data_i    (en_rec_ch_g2_23_s)
    );

    common_sync i_common_sync_en_rec_ch56 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch56_synch_s),
        .data_i    (en_rec_ch_g2_24_s)
    );

    common_sync i_common_sync_en_rec_ch57 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch57_synch_s),
        .data_i    (en_rec_ch_g2_25_s)
    );

    common_sync i_common_sync_en_rec_ch58 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch58_synch_s),
        .data_i    (en_rec_ch_g2_26_s)
    );

    common_sync i_common_sync_en_rec_ch59 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch59_synch_s),
        .data_i    (en_rec_ch_g2_27_s)
    );

    common_sync i_common_sync_en_rec_ch60 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch60_synch_s),
        .data_i    (en_rec_ch_g2_28_s)
    );

    common_sync i_common_sync_en_rec_ch61 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch61_synch_s),
        .data_i    (en_rec_ch_g2_29_s)
    );

    common_sync i_common_sync_en_rec_ch62 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch62_synch_s),
        .data_i    (en_rec_ch_g2_30_s)
    );

    common_sync i_common_sync_en_rec_ch63 (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (en_rec_ch63_synch_s),
        .data_i    (en_rec_ch_g2_31_s)
    );

    common_sync i_common_sync_clk_div_discharge (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_i    (en_clk_discharge_i),
        .data_o    (en_clk_discharge_sync_o)
    );

    common_sync i_common_sync_stim0 (
        .reset_n_i (resetn_top_sync_o),
        .data_o    (stim_mask_en0_sync_o),
        .data_i    (stim_mask_en_0_s),
        .clk_i     (clk_stim_i)
    );

    common_sync i_common_sync_stim1 (
        .reset_n_i (resetn_top_sync_o),
        .data_o    (stim_mask_en1_sync_o),
        .data_i    (stim_mask_en_1_s),
        .clk_i     (clk_stim_i)
    );

    common_sync i_common_sync_stim2 (
        .reset_n_i (resetn_top_sync_o),
        .data_o    (stim_mask_en2_sync_o),
        .data_i    (stim_mask_en_2_s),
        .clk_i     (clk_stim_i)
    );

    common_sync i_common_sync_stim3 (
        .reset_n_i (resetn_top_sync_o),
        .data_o    (stim_mask_en3_sync_o),
        .data_i    (stim_mask_en_3_s),
        .clk_i     (clk_stim_i)
    );

    common_sync i_common_sync_stim4 (
        .reset_n_i (resetn_top_sync_o),
        .data_o    (stim_mask_en4_sync_o),
        .data_i    (stim_mask_en_4_s),
        .clk_i     (clk_stim_i)
    );

    common_sync i_common_sync_stim5 (
        .reset_n_i (resetn_top_sync_o),
        .data_o    (stim_mask_en5_sync_o),
        .data_i    (stim_mask_en_5_s),
        .clk_i     (clk_stim_i)
    );

    common_sync i_common_sync_stim6 (
        .reset_n_i (resetn_top_sync_o),
        .data_o    (stim_mask_en6_sync_o),
        .data_i    (stim_mask_en_6_s),
        .clk_i     (clk_stim_i)
    );

    common_sync i_common_sync_stim7 (
        .reset_n_i (resetn_top_sync_o),
        .data_o    (stim_mask_en7_sync_o),
        .data_i    (stim_mask_en_7_s),
        .clk_i     (clk_stim_i)
    );

    common_sync i_common_sync_clk_div_stim (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_i    (en_clk_stim_i),
        .data_o    (en_clk_stim_sync_s)
    );

    common_sync i_common_sync_rec_en (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (rec_sync_en_o),
        .data_i    (rec_en_i)
    );

    common_sync i_common_sync_stim_xen (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_i    (stim_xen_i),
        .data_o    (stim_xen_sync_o)
    );

    common_sync i_common_sync_err (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (err_sync_o),
        .data_i    (error_i)
    );

    common_sync i_common_sync_err_stim (
        .clk_i     (clk_ref_i),
        .reset_n_i (resetn_top_sync_o),
        .data_o    (err_stim_sync_o),
        .data_i    (err_stim_i)
    );

    common_clkbuf i_common_clkbuf_adc1 (
        .I (clk_adc1_s),
        .Z (clk_adc1_gated_o)
    );

    common_clkbuf i_common_clkbuf_adc2 (
        .I (clk_adc2_s),
        .Z (clk_adc2_gated_o)
    );

    common_clkgate i_common_clkgate_adc1 (
        .CP   (clk_ref_i),
        .CPEN (clk_adc1_s),
        .EN   (en_clk_adc1_sync_s)
    );

    common_clkgate i_common_clkgate_adc2 (
        .CP   (clk_ref_i),
        .CPEN (clk_adc2_s),
        .EN   (en_clk_adc2_sync_s)
    );


    assign  amp_gain_sync_o={adc_amp_ch63_gain_s, adc_amp_ch62_gain_s, adc_amp_ch61_gain_s, adc_amp_ch60_gain_s, adc_amp_ch59_gain_s, adc_amp_ch58_gain_s, adc_amp_ch57_gain_s, adc_amp_ch56_gain_s, adc_amp_ch55_gain_s, adc_amp_ch54_gain_s, adc_amp_ch53_gain_s, adc_amp_ch52_gain_s, adc_amp_ch51_gain_s, adc_amp_ch50_gain_s, adc_amp_ch49_gain_s, adc_amp_ch48_gain_s, adc_amp_ch47_gain_s, adc_amp_ch46_gain_s, adc_amp_ch45_gain_s, adc_amp_ch44_gain_s, adc_amp_ch43_gain_s, adc_amp_ch42_gain_s, adc_amp_ch41_gain_s, adc_amp_ch40_gain_s, adc_amp_ch39_gain_s, adc_amp_ch38_gain_s, adc_amp_ch37_gain_s, adc_amp_ch36_gain_s, adc_amp_ch35_gain_s, adc_amp_ch34_gain_s, adc_amp_ch33_gain_s, adc_amp_ch32_gain_s, adc_amp_ch31_gain_s, adc_amp_ch30_gain_s, adc_amp_ch29_gain_s, adc_amp_ch28_gain_s, adc_amp_ch27_gain_s, adc_amp_ch26_gain_s, adc_amp_ch25_gain_s, adc_amp_ch24_gain_s, adc_amp_ch23_gain_s, adc_amp_ch22_gain_s, adc_amp_ch21_gain_s, adc_amp_ch20_gain_s, adc_amp_ch19_gain_s, adc_amp_ch18_gain_s, adc_amp_ch17_gain_s, adc_amp_ch16_gain_s, adc_amp_ch15_gain_s, adc_amp_ch14_gain_s, adc_amp_ch13_gain_s, adc_amp_ch12_gain_s, adc_amp_ch11_gain_s, adc_amp_ch10_gain_s, adc_amp_ch9_gain_s, adc_amp_ch8_gain_s, adc_amp_ch7_gain_s, adc_amp_ch6_gain_s, adc_amp_ch5_gain_s, adc_amp_ch4_gain_s, adc_amp_ch3_gain_s, adc_amp_ch2_gain_s, adc_amp_ch1_gain_s, adc_amp_ch0_gain_s};
    assign  {amp_gain_g1_31_s, amp_gain_g1_30_s, amp_gain_g1_29_s, amp_gain_g1_28_s, amp_gain_g1_27_s, amp_gain_g1_26_s, amp_gain_g1_25_s, amp_gain_g1_24_s, amp_gain_g1_23_s, amp_gain_g1_22_s, amp_gain_g1_21_s, amp_gain_g1_20_s, amp_gain_g1_19_s, amp_gain_g1_18_s, amp_gain_g1_17_s, amp_gain_g1_16_s, amp_gain_g1_15_s, amp_gain_g1_14_s, amp_gain_g1_13_s, amp_gain_g1_12_s, amp_gain_g1_11_s, amp_gain_g1_10_s, amp_gain_g1_9_s, amp_gain_g1_8_s, amp_gain_g1_7_s, amp_gain_g1_6_s, amp_gain_g1_5_s, amp_gain_g1_4_s, amp_gain_g1_3_s, amp_gain_g1_2_s, amp_gain_g1_1_s, amp_gain_g1_0_s}=amp_gain_g1_i;
    assign {amp_gain_g2_31_s, amp_gain_g2_30_s, amp_gain_g2_29_s, amp_gain_g2_28_s, amp_gain_g2_27_s, amp_gain_g2_26_s, amp_gain_g2_25_s, amp_gain_g2_24_s, amp_gain_g2_23_s, amp_gain_g2_22_s, amp_gain_g2_21_s, amp_gain_g2_20_s, amp_gain_g2_19_s, amp_gain_g2_18_s, amp_gain_g2_17_s, amp_gain_g2_16_s, amp_gain_g2_15_s, amp_gain_g2_14_s, amp_gain_g2_13_s, amp_gain_g2_12_s, amp_gain_g2_11_s, amp_gain_g2_10_s, amp_gain_g2_9_s, amp_gain_g2_8_s, amp_gain_g2_7_s, amp_gain_g2_6_s, amp_gain_g2_5_s, amp_gain_g2_4_s, amp_gain_g2_3_s, amp_gain_g2_2_s, amp_gain_g2_1_s, amp_gain_g2_0_s}=amp_gain_g2_i;
    assign  {stim_mask_en_7_s, stim_mask_en_6_s, stim_mask_en_5_s, stim_mask_en_4_s, stim_mask_en_3_s, stim_mask_en_2_s, stim_mask_en_1_s, stim_mask_en_0_s}=stim_mask_en_i;
    assign en_clk_stim_sync_xen_o = en_clk_stim_sync_s | stim_xen_sync_o;



    assign  rec_vec_sync_o={en_rec_ch63_synch_s, en_rec_ch62_synch_s, en_rec_ch61_synch_s, en_rec_ch60_synch_s, en_rec_ch59_synch_s, en_rec_ch58_synch_s, en_rec_ch57_synch_s, en_rec_ch56_synch_s, en_rec_ch55_synch_s, en_rec_ch54_synch_s, en_rec_ch53_synch_s, en_rec_ch52_synch_s, en_rec_ch51_synch_s, en_rec_ch50_synch_s, en_rec_ch49_synch_s, en_rec_ch48_synch_s, en_rec_ch47_synch_s, en_rec_ch46_synch_s, en_rec_ch45_synch_s, en_rec_ch44_synch_s, en_rec_ch43_synch_s, en_rec_ch42_synch_s, en_rec_ch41_synch_s, en_rec_ch40_synch_s, en_rec_ch39_synch_s, en_rec_ch38_synch_s, en_rec_ch37_synch_s, en_rec_ch36_synch_s, en_rec_ch35_synch_s, en_rec_ch34_synch_s, en_rec_ch33_synch_s, en_rec_ch32_synch_s, en_rec_ch31_synch_s, en_rec_ch30_synch_s, en_rec_ch29_synch_s, en_rec_ch28_synch_s, en_rec_ch27_synch_s, en_rec_ch26_synch_s, en_rec_ch25_synch_s, en_rec_ch24_synch_s, en_rec_ch23_synch_s, en_rec_ch22_synch_s, en_rec_ch21_synch_s, en_rec_ch20_synch_s, en_rec_ch19_synch_s, en_rec_ch18_synch_s, en_rec_ch17_synch_s, en_rec_ch16_synch_s, en_rec_ch15_synch_s, en_rec_ch14_synch_s, en_rec_ch13_synch_s, en_rec_ch12_synch_s, en_rec_ch11_synch_s, en_rec_ch10_synch_s, en_rec_ch9_synch_s, en_rec_ch8_synch_s, en_rec_ch7_synch_s, en_rec_ch6_synch_s, en_rec_ch5_synch_s, en_rec_ch4_synch_s, en_rec_ch3_synch_s, en_rec_ch2_synch_s, en_rec_ch1_synch_s, en_rec_ch0_synch_s};
    assign  {en_rec_ch_g1_31_s, en_rec_ch_g1_30_s, en_rec_ch_g1_29_s, en_rec_ch_g1_28_s, en_rec_ch_g1_27_s, en_rec_ch_g1_26_s, en_rec_ch_g1_25_s, en_rec_ch_g1_24_s, en_rec_ch_g1_23_s, en_rec_ch_g1_22_s, en_rec_ch_g1_21_s, en_rec_ch_g1_20_s, en_rec_ch_g1_19_s, en_rec_ch_g1_18_s, en_rec_ch_g1_17_s, en_rec_ch_g1_16_s, en_rec_ch_g1_15_s, en_rec_ch_g1_14_s, en_rec_ch_g1_13_s, en_rec_ch_g1_12_s, en_rec_ch_g1_11_s, en_rec_ch_g1_10_s, en_rec_ch_g1_9_s, en_rec_ch_g1_8_s, en_rec_ch_g1_7_s, en_rec_ch_g1_6_s, en_rec_ch_g1_5_s, en_rec_ch_g1_4_s, en_rec_ch_g1_3_s, en_rec_ch_g1_2_s, en_rec_ch_g1_1_s, en_rec_ch_g1_0_s}=en_rec_ch_g1_i;
    assign  en_rec_sync_g1_o={en_rec_ch31_synch_s, en_rec_ch30_synch_s, en_rec_ch29_synch_s, en_rec_ch28_synch_s, en_rec_ch27_synch_s, en_rec_ch26_synch_s, en_rec_ch25_synch_s, en_rec_ch24_synch_s, en_rec_ch23_synch_s, en_rec_ch22_synch_s, en_rec_ch21_synch_s, en_rec_ch20_synch_s, en_rec_ch19_synch_s, en_rec_ch18_synch_s, en_rec_ch17_synch_s, en_rec_ch16_synch_s, en_rec_ch15_synch_s, en_rec_ch14_synch_s, en_rec_ch13_synch_s, en_rec_ch12_synch_s, en_rec_ch11_synch_s, en_rec_ch10_synch_s, en_rec_ch9_synch_s, en_rec_ch8_synch_s, en_rec_ch7_synch_s, en_rec_ch6_synch_s, en_rec_ch5_synch_s, en_rec_ch4_synch_s, en_rec_ch3_synch_s, en_rec_ch2_synch_s, en_rec_ch1_synch_s, en_rec_ch0_synch_s};
    assign  en_rec_sync_g2_o={en_rec_ch63_synch_s, en_rec_ch62_synch_s, en_rec_ch61_synch_s, en_rec_ch60_synch_s, en_rec_ch59_synch_s, en_rec_ch58_synch_s, en_rec_ch57_synch_s, en_rec_ch56_synch_s, en_rec_ch55_synch_s, en_rec_ch54_synch_s, en_rec_ch53_synch_s, en_rec_ch52_synch_s, en_rec_ch51_synch_s, en_rec_ch50_synch_s, en_rec_ch49_synch_s, en_rec_ch48_synch_s, en_rec_ch47_synch_s, en_rec_ch46_synch_s, en_rec_ch45_synch_s, en_rec_ch44_synch_s, en_rec_ch43_synch_s, en_rec_ch42_synch_s, en_rec_ch41_synch_s, en_rec_ch40_synch_s, en_rec_ch39_synch_s, en_rec_ch38_synch_s, en_rec_ch37_synch_s, en_rec_ch36_synch_s, en_rec_ch35_synch_s, en_rec_ch34_synch_s, en_rec_ch33_synch_s, en_rec_ch32_synch_s};
    assign  {en_rec_ch_g2_31_s, en_rec_ch_g2_30_s, en_rec_ch_g2_29_s, en_rec_ch_g2_28_s, en_rec_ch_g2_27_s, en_rec_ch_g2_26_s, en_rec_ch_g2_25_s, en_rec_ch_g2_24_s, en_rec_ch_g2_23_s, en_rec_ch_g2_22_s, en_rec_ch_g2_21_s, en_rec_ch_g2_20_s, en_rec_ch_g2_19_s, en_rec_ch_g2_18_s, en_rec_ch_g2_17_s, en_rec_ch_g2_16_s, en_rec_ch_g2_15_s, en_rec_ch_g2_14_s, en_rec_ch_g2_13_s, en_rec_ch_g2_12_s, en_rec_ch_g2_11_s, en_rec_ch_g2_10_s, en_rec_ch_g2_9_s, en_rec_ch_g2_8_s, en_rec_ch_g2_7_s, en_rec_ch_g2_6_s, en_rec_ch_g2_5_s, en_rec_ch_g2_4_s, en_rec_ch_g2_3_s, en_rec_ch_g2_2_s, en_rec_ch_g2_1_s, en_rec_ch_g2_0_s}=en_rec_ch_g2_i;
    assign  en_clk_adc1_sync_s = |en_rec_sync_g1_o;
    assign  en_clk_adc2_sync_s = |en_rec_sync_g2_o;
endmodule
