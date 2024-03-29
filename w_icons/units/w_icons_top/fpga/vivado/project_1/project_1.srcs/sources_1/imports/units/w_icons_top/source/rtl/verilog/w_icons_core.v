/* icglue keep begin head */
/*
 * Module      : w_icons_core
 * Author      : Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module w_icons_core (
    CLK_REF_I,
    clk_adc1_gated_o,
    clk_adc2_gated_o,
    RESET_N_I,
    resetn_top_sync_o,
    STIM_XEN_I,
    ERR_CRC_O,
    ERR_STIM_O,
    SPI_CLK_I,
    SPI_CS_I,
    SPI_MOSI_I,
    SPI_MISO_O,
    dft_testmode_i,
    stim0_ia_o,
    stim0_ic_o,
    stim1_ia_o,
    stim1_ic_o,
    stim2_ia_o,
    stim2_ic_o,
    stim3_ia_o,
    stim3_ic_o,
    stim_range_unsync_o,
    amp_gain_sync_o,
    CLK_REC_I,
    gdischarge_o,
    ADC_EN_O,
    sample_out_o,
    adc_res1_i,
    adc_res2_i,
    ADC1_OUT_O,
    ADC2_OUT_O,
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

    input         CLK_REF_I;
    output        clk_adc1_gated_o;
    output        clk_adc2_gated_o;
    input         RESET_N_I;
    output        resetn_top_sync_o;
    input         STIM_XEN_I;
    output        ERR_CRC_O;
    output        ERR_STIM_O;
    input         SPI_CLK_I;
    input         SPI_CS_I;
    input         SPI_MOSI_I;
    output        SPI_MISO_O;
    input         dft_testmode_i;
    output  [7:0] stim0_ia_o;
    output  [7:0] stim0_ic_o;
    output  [7:0] stim1_ia_o;
    output  [7:0] stim1_ic_o;
    output  [7:0] stim2_ia_o;
    output  [7:0] stim2_ic_o;
    output  [7:0] stim3_ia_o;
    output  [7:0] stim3_ic_o;
    output  [3:0] stim_range_unsync_o;
    output [63:0] amp_gain_sync_o;
    input         CLK_REC_I;
    output        gdischarge_o;
    output        ADC_EN_O;
    output        sample_out_o;
    input         adc_res1_i;
    input         adc_res2_i;
    output        ADC1_OUT_O;
    output        ADC2_OUT_O;
    output  [4:0] adc_idx_o;
    output [63:0] stim_en_vec_o;
    output  [3:0] EnN_vec_o;
    output  [3:0] EnP_vec_o;
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
        .CLK_REF_I            (CLK_REF_I),
        .clk_adc1_gated_o     (clk_adc1_gated_o),
        .clk_adc2_gated_o     (clk_adc2_gated_o),
        .RESET_N_I            (RESET_N_I),
        .resetn_top_sync_o    (resetn_top_sync_o),
        .resetn_spi_sync_o    (resetn_spi_sync_s),
        .STIM_XEN_I           (STIM_XEN_I),
        .stim_xen_sync_o      (stim_xen_sync_s),
        .ERR_CRC_O            (ERR_CRC_O),
        .ERR_STIM_O           (ERR_STIM_O),
        .SPI_CLK_I            (SPI_CLK_I),
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
        .CLK_REC_I            (CLK_REC_I),
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
        .SPI_CLK_I           (SPI_CLK_I),
        .SPI_CS_I            (SPI_CS_I),
        .SPI_MOSI_I          (SPI_MOSI_I),
        .SPI_MISO_O          (SPI_MISO_O),
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
        .stim_range_unsync_o (stim_range_unsync_o),
        .error_o             (error_s),
        .div_clk_stim_o      (div_clk_stim_s),
        .en_clk_stim_o       (en_clk_stim_s),
        .div_clk_discharge_o (div_clk_discharge_s),
        .en_clk_discharge_o  (en_clk_discharge_s),
        .pw_discharge_o      (pw_discharge_s),
        .rec_en_o            (rec_en_s)
    );
    /* icglue keep begin declarations */
   
    /* icglue keep end */
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
        .reset_n_i            (resetn_top_sync_o),
        .stim_mask_en0_sync_i (stim_mask_en0_sync_s),
        .stim_mask_en1_sync_i (stim_mask_en1_sync_s),
        .stim_mask_en2_sync_i (stim_mask_en2_sync_s),
        .stim_mask_en3_sync_i (stim_mask_en3_sync_s),
        .stim_mask_en4_sync_i (stim_mask_en4_sync_s),
        .stim_mask_en5_sync_i (stim_mask_en5_sync_s),
        .stim_mask_en6_sync_i (stim_mask_en6_sync_s),
        .stim_mask_en7_sync_i (stim_mask_en7_sync_s),
        .clk_i                (CLK_REC_I),
        .clk_discharge_main_i (clk_discharge_main_s),
        .gdischarge_o         (gdischarge_o),
        .pw_discharge_i       (pw_discharge_s),
        .rec_sync_en_i        (rec_sync_en_s),
        .adc_en_o             (ADC_EN_O),
        .sample_out_o         (sample_out_o),
        .adc_res1_i           (adc_res1_i),
        .adc_res2_i           (adc_res2_i),
        .rec_data1_o          (ADC1_OUT_O),
        .rec_data2_o          (ADC2_OUT_O),
        .adc_idx_o            (adc_idx_o),
        .imp_en_g1_sync_i     (imp_en_g1_sync_s),
        .imp_en_g2_sync_i     (imp_en_g2_sync_s),
        .en_rec_sync_g1_i     (en_rec_sync_g1_s),
        .en_rec_sync_g2_i     (en_rec_sync_g2_s)
    );
    /* icglue keep begin declarations */
    
    /* icglue keep end */

endmodule
