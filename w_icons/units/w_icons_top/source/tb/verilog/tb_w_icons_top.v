/* icglue keep begin head */
/*
 * Module      : tb_w_icons_top
 * Author      :  Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module tb_w_icons_top ();

    parameter CLKS_PER_HALF_BIT = 1;
    /* icglue keep begin parameters *//* icglue keep end */

    wire       CLK_REF_SPI_S;
    wire       spi_clk_tb_s;
    wire       spi_mosi_tb_s;
    wire       spi_miso_tb_s;
    wire       resetn_tb_sync_s;
    wire       CLK_REF_S;
    wire       RESET_N_S;
    wire       STIM_XEN_S;
    wire       ERR_CRC_S;
    wire       ERR_STIM_S;
    wire       SPI_CLK_S;
    wire       SPI_CS_S;
    wire       SPI_MOSI_S;
    wire       SPI_MISO_S;
    wire [7:0] tx_data_s;
    wire       tx_data_valid_s;
    wire       tx_data_ready_s;
    wire [7:0] rx_data_s;
    wire       rx_data_valid_s;
    wire       dft_testmode_tb_s;
    wire       CLK_REC_S;
    wire       ADC_EN_S;
    wire       ADC1_OUT_S;
    wire       ADC2_OUT_S;
    /* icglue keep begin declarations */
    reg [9:0]  base_add_s;
    reg [15:0] interval_s [63:0];
    reg [7:0]  ia_s       [63:0];
    reg [15:0] ic_s       [63:0];
    reg [13:0] wc_s       [63:0];
    reg [13:0] gap_s      [63:0];
    reg [13:0] wa_s       [63:0];
    reg [11:0] num_s      [63:0];
    reg        pol_s      [63:0];
    reg        range_s    [63:0];

    /* icglue keep end */


    common_reset_sync i_common_reset_sync_tb (
        .clk_i          (CLK_REF_SPI_S),
        .sync_reset_q_o (resetn_tb_sync_s),
        .reset_q_i      (RESET_N_S),
        .scan_mode_i    (dft_testmode_tb_s)
    );

    spi_master_emulator #(
        .CLKS_PER_HALF_BIT (CLKS_PER_HALF_BIT)
    ) i_spi_master_emulator (
        .clk_i           (CLK_REF_SPI_S),
        .spi_clk_o       (spi_clk_tb_s),
        .spi_mosi_o      (spi_mosi_tb_s),
        .spi_miso_i      (spi_miso_tb_s),
        .reset_n_i       (resetn_tb_sync_s),
        .tx_data_i       (tx_data_s),
        .tx_data_valid_i (tx_data_valid_s),
        .tx_data_ready_o (tx_data_ready_s),
        .rx_data_o       (rx_data_s),
        .rx_data_valid_o (rx_data_valid_s)
    );

    w_icons_top i_w_icons_top (
        .CLK_REF_I  (CLK_REF_S),
        .RESET_N_I  (RESET_N_S),
        .STIM_XEN_I (STIM_XEN_S),
        .ERR_CRC_O  (ERR_CRC_S),
        .ERR_STIM_O (ERR_STIM_S),
        .SPI_CLK_I  (SPI_CLK_S),
        .SPI_CS_I   (SPI_CS_S),
        .SPI_MOSI_I (SPI_MOSI_S),
        .SPI_MISO_O (SPI_MISO_S),
        .CLK_REC_O  (CLK_REC_S),
        .ADC_EN_O   (ADC_EN_S),
        .ADC1_OUT_O (ADC1_OUT_S),
        .ADC2_OUT_O (ADC2_OUT_S)
    );


    assign SPI_CLK_S = spi_clk_tb_s;
    assign SPI_MOSI_S = spi_mosi_tb_s;
    assign spi_miso_tb_s = SPI_MISO_S;
    assign dft_testmode_tb_s = 1'b0;
    /* clock/reset */

    `include "tb_selfcheck.vh"


    reg                 clk_ref;
    reg                 clk_ref_spi;
    reg                 reset_n;

    reg                 spi_cs;
    reg  [7:0]          tx_data;
    reg                 tx_data_valid;
    reg                 stim_xen;

    assign CLK_REF_S    = clk_ref;
    assign RESET_N_S    = reset_n;
    assign STIM_XEN_S   = stim_xen;
    assign CLK_REF_SPI_S = clk_ref_spi;

    parameter CLKPERIOD_REF     = 10; //10, for 100MHz
    parameter CLKPERIOD_REF_SPI = 62.5;


    initial begin: reset_gen
        spi_cs  = 1'b1;
        reset_n = 1'b0;
        #(5.3*CLKPERIOD_REF);
        reset_n = 1'b1;
        stim_xen = 1'b0;
    end

    always begin: clk_gen
        clk_ref = 1'b0;
        #(CLKPERIOD_REF / 2.0);
        clk_ref = 1'b1;
        #(CLKPERIOD_REF / 2.0);
    end

    always begin: clk_gen_spi
        clk_ref_spi = 1'b0;
        #(CLKPERIOD_REF_SPI / 2.0);
        clk_ref_spi = 1'b1;
        #(CLKPERIOD_REF_SPI / 2.0);
    end


    //SPI Master Emulator connection
    initial begin
        tx_data = 0;
        tx_data_valid = 0;
    end

    assign tx_data_s       = tx_data;
    assign tx_data_valid_s = tx_data_valid;
    assign SPI_CS_S        = spi_cs;


    `include "spi_master_top_level_tasks.vh"
    `include "testcase.vh"

endmodule
