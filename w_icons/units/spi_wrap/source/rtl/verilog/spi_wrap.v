/* icglue keep begin head */
/*
 * Module      : spi_wrap
 * Author      : Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module spi_wrap (
    resetn_spi_sync_i,
    SPI_CLK_I,
    SPI_CS_I,
    SPI_MOSI_I,
    SPI_MISO_O,
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
    /* icglue keep begin parameters *//* icglue keep end */

    input                           resetn_spi_sync_i;
    input                           SPI_CLK_I;
    input                           SPI_CS_I;
    input                           SPI_MOSI_I;
    output                          SPI_MISO_O;
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
    output                    [3:0] stim_range_unsync_o;
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
    /* icglue keep begin declarations *//* icglue keep end */


    w_icons_rf #(
        .STIM_CLKDIV_W      (STIM_CLKDIV_W),
        .CLKDIV_W_DISCHARGE (CLKDIV_W_DISCHARGE)
    ) i_w_icons_rf (
        .apb_resetn_i        (resetn_spi_sync_i),
        .apb_clk_i           (SPI_CLK_I),
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
        .spi_clk_i      (SPI_CLK_I),
        .spi_cs_i       (SPI_CS_I),
        .spi_mosi_i     (SPI_MOSI_I),
        .spi_miso_o     (SPI_MISO_O),
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
        .spi_clk_i      (SPI_CLK_I),
        .spi_cs_i       (SPI_CS_I),
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
