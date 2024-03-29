/* icglue keep begin head */
/*
 * Module      : w_icons_top
 * Author      : Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module w_icons_top (
    CLK_REF_I,
    RESET_N_I,
    STIM_XEN_I,
    ERR_CRC_O,
    ERR_STIM_O,
    SPI_CLK_I,
    SPI_CS_I,
    SPI_MOSI_I,
    SPI_MISO_O,
    CLK_REC_O,
    ADC_EN_O,
    ADC1_OUT_O,
    ADC2_OUT_O
);

    parameter TOP_CLKDIV_W = 12;
    /* icglue keep begin parameters *//* icglue keep end */

    input   CLK_REF_I;
    input   RESET_N_I;
    input   STIM_XEN_I;
    output  ERR_CRC_O;
    output  ERR_STIM_O;
    input   SPI_CLK_I;
    input   SPI_CS_I;
    input   SPI_MOSI_I;
    output  SPI_MISO_O;
    output  CLK_REC_O;
    output  ADC_EN_O;
    output  ADC1_OUT_O;
    output  ADC2_OUT_O;

    wire                    clk_adc1_gated_s;
    wire                    clk_adc2_gated_s;
    wire                    resetn_top_sync_s;
    wire                    dft_testmode_s;
    wire              [7:0] stim0_ia_s;
    wire              [7:0] stim0_ic_s;
    wire              [7:0] stim1_ia_s;
    wire              [7:0] stim1_ic_s;
    wire              [7:0] stim2_ia_s;
    wire              [7:0] stim2_ic_s;
    wire              [7:0] stim3_ia_s;
    wire              [7:0] stim3_ic_s;
    wire              [3:0] stim_range_unsync_s;
    wire             [63:0] amp_gain_sync_s;
    wire [TOP_CLKDIV_W-1:0] div_clk_top_s;
    wire                    en_clk_top_s;
    wire                    gdischarge_s;
    wire                    sample_out_s;
    wire                    adc_res1_s;
    wire                    adc_res2_s;
    wire              [4:0] adc_idx_s;
    wire             [63:0] stim_en_vec_s;
    wire              [3:0] EnN_vec_s;
    wire              [3:0] EnP_vec_s;
    wire                    limiting_current_s;
    wire             [63:0] rec_vec_sync_s;
    /* icglue keep begin declarations *//* icglue keep end */


    common_clkdiv_by_n #(
        .DIV_VAL_N_W (TOP_CLKDIV_W)
    ) i_common_clkdiv_by_n_top (
        .clk_i       (CLK_REF_I),
        .reset_n_i   (resetn_top_sync_s),
        .clk_div_o   (CLK_REC_O),
        .div_val_n_i (div_clk_top_s),
        .enable_i    (en_clk_top_s)
    );

    w_icons_core i_w_icons_core (
        .CLK_REF_I           (CLK_REF_I),
        .clk_adc1_gated_o    (clk_adc1_gated_s),
        .clk_adc2_gated_o    (clk_adc2_gated_s),
        .RESET_N_I           (RESET_N_I),
        .resetn_top_sync_o   (resetn_top_sync_s),
        .STIM_XEN_I          (STIM_XEN_I),
        .ERR_CRC_O           (ERR_CRC_O),
        .ERR_STIM_O          (ERR_STIM_O),
        .SPI_CLK_I           (SPI_CLK_I),
        .SPI_CS_I            (SPI_CS_I),
        .SPI_MOSI_I          (SPI_MOSI_I),
        .SPI_MISO_O          (SPI_MISO_O),
        .dft_testmode_i      (dft_testmode_s),
        .stim0_ia_o          (stim0_ia_s),
        .stim0_ic_o          (stim0_ic_s),
        .stim1_ia_o          (stim1_ia_s),
        .stim1_ic_o          (stim1_ic_s),
        .stim2_ia_o          (stim2_ia_s),
        .stim2_ic_o          (stim2_ic_s),
        .stim3_ia_o          (stim3_ia_s),
        .stim3_ic_o          (stim3_ic_s),
        .stim_range_unsync_o (stim_range_unsync_s),
        .amp_gain_sync_o     (amp_gain_sync_s),
        .CLK_REC_I           (CLK_REC_O),
        .gdischarge_o        (gdischarge_s),
        .ADC_EN_O            (ADC_EN_O),
        .sample_out_o        (sample_out_s),
        .adc_res1_i          (adc_res1_s),
        .adc_res2_i          (adc_res2_s),
        .ADC1_OUT_O          (ADC1_OUT_O),
        .ADC2_OUT_O          (ADC2_OUT_O),
        .adc_idx_o           (adc_idx_s),
        .stim_en_vec_o       (stim_en_vec_s),
        .EnN_vec_o           (EnN_vec_s),
        .EnP_vec_o           (EnP_vec_s),
        .limiting_current_o  (limiting_current_s),
        .rec_vec_sync_o      (rec_vec_sync_s)
    );
    
    rec_stim64ch_macro i_rec_stim64ch_macro (
        .clk_adc1_gated_i (clk_adc1_gated_s),
        .clk_adc2_gated_i (clk_adc2_gated_s),
        .reset_n_i        (resetn_top_sync_s),
        .Bn1              (stim0_ia_s),
        .Bp1              (stim0_ic_s),
        .Bn2              (stim1_ia_s),
        .Bp2              (stim1_ic_s),
        .Bn3              (stim2_ia_s),
        .Bp3              (stim2_ic_s),
        .Bn4              (stim3_ia_s),
        .Bp4              (stim3_ic_s),
        .StimRange        (stim_range_unsync_s),
        .Gain             (amp_gain_sync_s),
        .GDis             (gdischarge_s),
        .adc2_smp_ctrl_i  (sample_out_s),
        .adc1_smp_ctrl_i  (sample_out_s),
        .adc_res1_o       (adc_res1_s),
        .adc_res2_o       (adc_res2_s),
        .mux_ctrl_adc1_i  (adc_idx_s),
        .mux_ctrl_adc2_i  (adc_idx_s),
        .EnStim           (stim_en_vec_s),
        .EnN              (EnN_vec_s),
        .EnP              (EnP_vec_s),
        .FDA              (limiting_current_s),
        .EnPow            (rec_vec_sync_s)
    );
    

    assign dft_testmode_s = 1'b0;
    assign div_clk_top_s = 2'b11;
    assign en_clk_top_s = 1'b1;

    
endmodule
