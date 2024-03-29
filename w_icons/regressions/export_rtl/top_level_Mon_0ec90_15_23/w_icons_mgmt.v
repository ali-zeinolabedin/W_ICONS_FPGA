/*
 * Module: w_icons_mgmt
 * Author: Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
`timescale 1ns/1ps

module w_icons_mgmt (
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
    chip_error_load_i,
    chip_error_cmd_i,
    chip_error_crc5_i,
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
    clk_stim_o,
    div_clk_stim_i,
    en_clk_stim_i,
    div_clk_discharge_i,
    en_clk_discharge_i,
    clk_discharge_main_o,
    rec_sync_en_o,
    rec_en_i,
    rec_vec_sync_o,
    en_rec_sync_g1_o,
    en_rec_sync_g2_o
);

    parameter STIM_CLKDIV_W      = 12;
    parameter CLKDIV_W_DISCHARGE = 8;

    input                           clk_ref_i;
    output                          clk_adc1_gated_o;
    output                          clk_adc2_gated_o;
    input                           reset_i;
    output                          resetn_top_sync_o;
    output                          resetn_spi_sync_o;
    input                           stim_xen_i;
    output                          stim_xen_sync_o;
    output                          err_sync_o;
    output                          err_stim_sync_o;
    input                           spi_clk_i;
    input                           dft_testmode_i;
    input                     [7:0] stim_mask_en_i;
    input                    [31:0] amp_gain_g1_i;
    input                    [31:0] amp_gain_g2_i;
    input                    [31:0] chip_error_load_i;
    input                     [3:0] chip_error_cmd_i;
    input                     [4:0] chip_error_crc5_i;
    input                    [31:0] en_rec_ch_g1_i;
    input                    [31:0] en_rec_ch_g2_i;
    input                           error_i;
    input                           err_stim_i;
    output                   [63:0] amp_gain_sync_o;
    output                          stim_mask_en0_sync_o;
    output                          stim_mask_en1_sync_o;
    output                          stim_mask_en2_sync_o;
    output                          stim_mask_en3_sync_o;
    output                          stim_mask_en4_sync_o;
    output                          stim_mask_en5_sync_o;
    output                          stim_mask_en6_sync_o;
    output                          stim_mask_en7_sync_o;
    output                          clk_stim_o;
    input       [STIM_CLKDIV_W-1:0] div_clk_stim_i;
    input                           en_clk_stim_i;
    input  [CLKDIV_W_DISCHARGE-1:0] div_clk_discharge_i;
    input                           en_clk_discharge_i;
    output                          clk_discharge_main_o;
    output                          rec_sync_en_o;
    input                           rec_en_i;
    output                   [63:0] rec_vec_sync_o;
    output                   [31:0] en_rec_sync_g1_o;
    output                   [31:0] en_rec_sync_g2_o;

    wire  en_clk_stim_sync_xen_s;
    wire  en_clk_discharge_sync_s;


    w_icons_sync_rst i_w_icons_sync_rst (
        .clk_ref_i               (clk_ref_i),
        .clk_adc1_gated_o        (clk_adc1_gated_o),
        .clk_adc2_gated_o        (clk_adc2_gated_o),
        .reset_i                 (reset_i),
        .resetn_top_sync_o       (resetn_top_sync_o),
        .resetn_spi_sync_o       (resetn_spi_sync_o),
        .stim_xen_i              (stim_xen_i),
        .stim_xen_sync_o         (stim_xen_sync_o),
        .err_sync_o              (err_sync_o),
        .err_stim_sync_o         (err_stim_sync_o),
        .spi_clk_i               (spi_clk_i),
        .dft_testmode_i          (dft_testmode_i),
        .stim_mask_en_i          (stim_mask_en_i),
        .amp_gain_g1_i           (amp_gain_g1_i),
        .amp_gain_g2_i           (amp_gain_g2_i),
        .en_rec_ch_g1_i          (en_rec_ch_g1_i),
        .en_rec_ch_g2_i          (en_rec_ch_g2_i),
        .error_i                 (error_i),
        .err_stim_i              (err_stim_i),
        .amp_gain_sync_o         (amp_gain_sync_o),
        .stim_mask_en0_sync_o    (stim_mask_en0_sync_o),
        .stim_mask_en1_sync_o    (stim_mask_en1_sync_o),
        .stim_mask_en2_sync_o    (stim_mask_en2_sync_o),
        .stim_mask_en3_sync_o    (stim_mask_en3_sync_o),
        .stim_mask_en4_sync_o    (stim_mask_en4_sync_o),
        .stim_mask_en5_sync_o    (stim_mask_en5_sync_o),
        .stim_mask_en6_sync_o    (stim_mask_en6_sync_o),
        .stim_mask_en7_sync_o    (stim_mask_en7_sync_o),
        .clk_stim_i              (clk_stim_o),
        .en_clk_stim_i           (en_clk_stim_i),
        .en_clk_stim_sync_xen_o  (en_clk_stim_sync_xen_s),
        .en_clk_discharge_i      (en_clk_discharge_i),
        .en_clk_discharge_sync_o (en_clk_discharge_sync_s),
        .rec_sync_en_o           (rec_sync_en_o),
        .rec_en_i                (rec_en_i),
        .rec_vec_sync_o          (rec_vec_sync_o),
        .en_rec_sync_g1_o        (en_rec_sync_g1_o),
        .en_rec_sync_g2_o        (en_rec_sync_g2_o)
    );

    common_clkdiv_by_n #(
        .DIV_VAL_N_W (STIM_CLKDIV_W)
    ) i_common_clkdiv_by_n (
        .clk_i       (clk_ref_i),
        .reset_n_i   (resetn_top_sync_o),
        .clk_div_o   (clk_stim_o),
        .div_val_n_i (div_clk_stim_i),
        .enable_i    (en_clk_stim_sync_xen_s)
    );

    common_clkdiv_by_n #(
        .DIV_VAL_N_W (CLKDIV_W_DISCHARGE)
    ) i_common_clkdiv_by_n_discharge (
        .clk_i       (clk_ref_i),
        .reset_n_i   (resetn_top_sync_o),
        .div_val_n_i (div_clk_discharge_i),
        .enable_i    (en_clk_discharge_sync_s),
        .clk_div_o   (clk_discharge_main_o)
    );

endmodule
