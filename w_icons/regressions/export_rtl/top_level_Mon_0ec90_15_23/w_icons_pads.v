/*
 * Module: w_icons_pads
 * Author: Ali Zeinolabedin
 */
`timescale 1ns/1ps

module w_icons_pads (
    RESET_N_B,
    CLK_REF_B,
    SPI_CLK_B,
    SPI_CS_B,
    SPI_MOSI_B,
    SPI_MISO_B,
    STIM_XEN_B,
    ADC1_OUT_B,
    ADC2_OUT_B,
    ADC_EN_B,
    ERR_CRC_B,
    ERR_STIM_B,
    clk_ref_o,
    reset_o,
    stim_xen_o,
    err_sync_i,
    err_stim_sync_i,
    spi_clk_o,
    spi_cs_o,
    spi_mosi_o,
    spi_miso_i,
    adc_en_i,
    rec_data1_i,
    rec_data2_i
);

    inout   RESET_N_B;
    inout   CLK_REF_B;
    inout   SPI_CLK_B;
    inout   SPI_CS_B;
    inout   SPI_MOSI_B;
    inout   SPI_MISO_B;
    inout   STIM_XEN_B;
    inout   ADC1_OUT_B;
    inout   ADC2_OUT_B;
    inout   ADC_EN_B;
    inout   ERR_CRC_B;
    inout   ERR_STIM_B;
    output  clk_ref_o;
    output  reset_o;
    output  stim_xen_o;
    input   err_sync_i;
    input   err_stim_sync_i;
    output  spi_clk_o;
    output  spi_cs_o;
    output  spi_mosi_o;
    input   spi_miso_i;
    input   adc_en_i;
    input   rec_data1_i;
    input   rec_data2_i;

    wire  input_dummy_s;
    wire  spimiso_dummy_s;
    wire  adc0_dummy_s;
    wire  adc1_dummy_s;
    wire  adc2_dummy_s;
    wire  err_dummy_s;
    wire  err_stim_dummy_s;
    wire  ie_i_s;
    wire  oe_i_s;
    wire  ds_i_s;
    wire  ie_o_s;
    wire  oe_o_s;
    wire  ds_o_s;
    wire  pe_i_s;


    PDUW0412CDG i_PDUW0412CDG_clk_ref (
        .PAD (CLK_REF_B),
        .I   (input_dummy_s),
        .IE  (ie_i_s),
        .OEN (oe_i_s),
        .DS  (ds_i_s),
        .PE  (pe_i_s),
        .C   (clk_ref_o)
    );

    PDUW0412CDG i_PDUW0412CDG_resetn (
        .PAD (RESET_N_B),
        .I   (input_dummy_s),
        .IE  (ie_i_s),
        .OEN (oe_i_s),
        .DS  (ds_i_s),
        .PE  (pe_i_s),
        .C   (reset_o)
    );

    PDUW0412CDG i_PDUW0412CDG_spiclk (
        .PAD (SPI_CLK_B),
        .I   (input_dummy_s),
        .IE  (ie_i_s),
        .OEN (oe_i_s),
        .DS  (ds_i_s),
        .PE  (pe_i_s),
        .C   (spi_clk_o)
    );

    PDUW0412CDG i_PDUW0412CDG_spics (
        .PAD (SPI_CS_B),
        .I   (input_dummy_s),
        .IE  (ie_i_s),
        .OEN (oe_i_s),
        .DS  (ds_i_s),
        .PE  (pe_i_s),
        .C   (spi_cs_o)
    );

    PDUW0412CDG i_PDUW0412CDG_spimosi (
        .PAD (SPI_MOSI_B),
        .I   (input_dummy_s),
        .IE  (ie_i_s),
        .OEN (oe_i_s),
        .DS  (ds_i_s),
        .PE  (pe_i_s),
        .C   (spi_mosi_o)
    );

    PDUW0412CDG i_PDUW0412CDG_spimiso (
        .PAD (SPI_MISO_B),
        .C   (spimiso_dummy_s),
        .IE  (ie_o_s),
        .OEN (oe_o_s),
        .DS  (ds_o_s),
        .PE  (pe_i_s),
        .I   (spi_miso_i)
    );

    PDUW0412CDG i_PDUW0412CDG_stim_xen (
        .PAD (STIM_XEN_B),
        .I   (input_dummy_s),
        .IE  (ie_i_s),
        .OEN (oe_i_s),
        .DS  (ds_i_s),
        .PE  (pe_i_s),
        .C   (stim_xen_o)
    );

    PDUW0412CDG i_PDUW0412CDG_adc_res0 (
        .PAD (ADC_EN_B),
        .C   (adc0_dummy_s),
        .IE  (ie_o_s),
        .OEN (oe_o_s),
        .DS  (ds_o_s),
        .PE  (pe_i_s),
        .I   (adc_en_i)
    );

    PDUW0412CDG i_PDUW0412CDG_adc_res1 (
        .PAD (ADC1_OUT_B),
        .C   (adc1_dummy_s),
        .IE  (ie_o_s),
        .OEN (oe_o_s),
        .DS  (ds_o_s),
        .PE  (pe_i_s),
        .I   (rec_data1_i)
    );

    PDUW0412CDG i_PDUW0412CDG_adc_res2 (
        .PAD (ADC2_OUT_B),
        .C   (adc2_dummy_s),
        .IE  (ie_o_s),
        .OEN (oe_o_s),
        .DS  (ds_o_s),
        .PE  (pe_i_s),
        .I   (rec_data2_i)
    );

    PDUW0412CDG i_PDUW0412CDG_err (
        .PAD (ERR_CRC_B),
        .C   (err_dummy_s),
        .IE  (ie_o_s),
        .OEN (oe_o_s),
        .DS  (ds_o_s),
        .PE  (pe_i_s),
        .I   (err_sync_i)
    );

    PDUW0412CDG i_PDUW0412CDG_err_stim (
        .PAD (ERR_STIM_B),
        .C   (err_stim_dummy_s),
        .IE  (ie_o_s),
        .OEN (oe_o_s),
        .DS  (ds_o_s),
        .PE  (pe_i_s),
        .I   (err_stim_sync_i)
    );


    assign input_dummy_s = 1'b0;
    assign ie_i_s = 1'b1;
    assign oe_i_s = 1'b1;
    assign ds_i_s = 1'b0;
    assign ie_o_s = 1'b0;
    assign oe_o_s = 1'b0;
    assign ds_o_s = 1'b1;
    assign pe_i_s = 1'b0;
endmodule
