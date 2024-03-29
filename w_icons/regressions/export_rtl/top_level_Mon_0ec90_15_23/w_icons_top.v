/*
 * Module: w_icons_top
 * Author: Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
`timescale 1ns/1ps

module w_icons_top (
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
    ERR_STIM_B
);

    inout  RESET_N_B;
    inout  CLK_REF_B;
    inout  SPI_CLK_B;
    inout  SPI_CS_B;
    inout  SPI_MOSI_B;
    inout  SPI_MISO_B;
    inout  STIM_XEN_B;
    inout  ADC1_OUT_B;
    inout  ADC2_OUT_B;
    inout  ADC_EN_B;
    inout  ERR_CRC_B;
    inout  ERR_STIM_B;

    wire        clk_ref_s;
    wire        clk_adc1_gated_s;
    wire        clk_adc2_gated_s;
    wire        reset_s;
    wire        resetn_top_sync_s;
    wire        stim_xen_s;
    wire        err_sync_s;
    wire        err_stim_sync_s;
    wire        spi_clk_s;
    wire        spi_cs_s;
    wire        spi_mosi_s;
    wire        spi_miso_s;
    wire        dft_testmode_s;
    wire  [7:0] stim0_ia_s;
    wire  [7:0] stim0_ic_s;
    wire  [7:0] stim1_ia_s;
    wire  [7:0] stim1_ic_s;
    wire  [7:0] stim2_ia_s;
    wire  [7:0] stim2_ic_s;
    wire  [7:0] stim3_ia_s;
    wire  [7:0] stim3_ic_s;
    wire  [7:0] stim4_ia_s;
    wire  [7:0] stim4_ic_s;
    wire  [7:0] stim5_ia_s;
    wire  [7:0] stim5_ic_s;
    wire  [7:0] stim6_ia_s;
    wire  [7:0] stim6_ic_s;
    wire  [7:0] stim7_ia_s;
    wire  [7:0] stim7_ic_s;
    wire  [7:0] stim8_ia_s;
    wire  [7:0] stim8_ic_s;
    wire  [7:0] stim9_ia_s;
    wire  [7:0] stim9_ic_s;
    wire  [7:0] stim10_ia_s;
    wire  [7:0] stim10_ic_s;
    wire  [7:0] stim11_ia_s;
    wire  [7:0] stim11_ic_s;
    wire  [7:0] stim12_ia_s;
    wire  [7:0] stim12_ic_s;
    wire  [7:0] stim13_ia_s;
    wire  [7:0] stim13_ic_s;
    wire  [7:0] stim14_ia_s;
    wire  [7:0] stim14_ic_s;
    wire  [7:0] stim15_ia_s;
    wire  [7:0] stim15_ic_s;
    wire  [7:0] stim16_ia_s;
    wire  [7:0] stim16_ic_s;
    wire  [7:0] stim17_ia_s;
    wire  [7:0] stim17_ic_s;
    wire  [7:0] stim18_ia_s;
    wire  [7:0] stim18_ic_s;
    wire  [7:0] stim19_ia_s;
    wire  [7:0] stim19_ic_s;
    wire  [7:0] stim20_ia_s;
    wire  [7:0] stim20_ic_s;
    wire  [7:0] stim21_ia_s;
    wire  [7:0] stim21_ic_s;
    wire  [7:0] stim22_ia_s;
    wire  [7:0] stim22_ic_s;
    wire  [7:0] stim23_ia_s;
    wire  [7:0] stim23_ic_s;
    wire  [7:0] stim24_ia_s;
    wire  [7:0] stim24_ic_s;
    wire  [7:0] stim25_ia_s;
    wire  [7:0] stim25_ic_s;
    wire  [7:0] stim26_ia_s;
    wire  [7:0] stim26_ic_s;
    wire  [7:0] stim27_ia_s;
    wire  [7:0] stim27_ic_s;
    wire  [7:0] stim28_ia_s;
    wire  [7:0] stim28_ic_s;
    wire  [7:0] stim29_ia_s;
    wire  [7:0] stim29_ic_s;
    wire  [7:0] stim30_ia_s;
    wire  [7:0] stim30_ic_s;
    wire  [7:0] stim31_ia_s;
    wire  [7:0] stim31_ic_s;
    wire  [7:0] stim32_ia_s;
    wire  [7:0] stim32_ic_s;
    wire  [7:0] stim33_ia_s;
    wire  [7:0] stim33_ic_s;
    wire  [7:0] stim34_ia_s;
    wire  [7:0] stim34_ic_s;
    wire  [7:0] stim35_ia_s;
    wire  [7:0] stim35_ic_s;
    wire  [7:0] stim36_ia_s;
    wire  [7:0] stim36_ic_s;
    wire  [7:0] stim37_ia_s;
    wire  [7:0] stim37_ic_s;
    wire  [7:0] stim38_ia_s;
    wire  [7:0] stim38_ic_s;
    wire  [7:0] stim39_ia_s;
    wire  [7:0] stim39_ic_s;
    wire  [7:0] stim40_ia_s;
    wire  [7:0] stim40_ic_s;
    wire  [7:0] stim41_ia_s;
    wire  [7:0] stim41_ic_s;
    wire  [7:0] stim42_ia_s;
    wire  [7:0] stim42_ic_s;
    wire  [7:0] stim43_ia_s;
    wire  [7:0] stim43_ic_s;
    wire  [7:0] stim44_ia_s;
    wire  [7:0] stim44_ic_s;
    wire  [7:0] stim45_ia_s;
    wire  [7:0] stim45_ic_s;
    wire  [7:0] stim46_ia_s;
    wire  [7:0] stim46_ic_s;
    wire  [7:0] stim47_ia_s;
    wire  [7:0] stim47_ic_s;
    wire  [7:0] stim48_ia_s;
    wire  [7:0] stim48_ic_s;
    wire  [7:0] stim49_ia_s;
    wire  [7:0] stim49_ic_s;
    wire  [7:0] stim50_ia_s;
    wire  [7:0] stim50_ic_s;
    wire  [7:0] stim51_ia_s;
    wire  [7:0] stim51_ic_s;
    wire  [7:0] stim52_ia_s;
    wire  [7:0] stim52_ic_s;
    wire  [7:0] stim53_ia_s;
    wire  [7:0] stim53_ic_s;
    wire  [7:0] stim54_ia_s;
    wire  [7:0] stim54_ic_s;
    wire  [7:0] stim55_ia_s;
    wire  [7:0] stim55_ic_s;
    wire  [7:0] stim56_ia_s;
    wire  [7:0] stim56_ic_s;
    wire  [7:0] stim57_ia_s;
    wire  [7:0] stim57_ic_s;
    wire  [7:0] stim58_ia_s;
    wire  [7:0] stim58_ic_s;
    wire  [7:0] stim59_ia_s;
    wire  [7:0] stim59_ic_s;
    wire  [7:0] stim60_ia_s;
    wire  [7:0] stim60_ic_s;
    wire  [7:0] stim61_ia_s;
    wire  [7:0] stim61_ic_s;
    wire  [7:0] stim62_ia_s;
    wire  [7:0] stim62_ic_s;
    wire  [7:0] stim63_ia_s;
    wire  [7:0] stim63_ic_s;
    wire [63:0] stim_range_unsync_s;
    wire [63:0] amp_gain_sync_s;
    wire        gdischarge_s;
    wire        adc_en_s;
    wire        sample_out_s;
    wire        adc_res1_s;
    wire        adc_res2_s;
    wire        rec_data1_s;
    wire        rec_data2_s;
    wire  [4:0] adc_idx_s;
    wire [63:0] stim_en_vec_s;
    wire [63:0] EnN_vec_s;
    wire [63:0] EnP_vec_s;
    wire        limiting_current_s;
    wire [63:0] rec_vec_sync_s;


    w_icons_pads i_w_icons_pads (
        .RESET_N_B       (RESET_N_B),
        .CLK_REF_B       (CLK_REF_B),
        .SPI_CLK_B       (SPI_CLK_B),
        .SPI_CS_B        (SPI_CS_B),
        .SPI_MOSI_B      (SPI_MOSI_B),
        .SPI_MISO_B      (SPI_MISO_B),
        .STIM_XEN_B      (STIM_XEN_B),
        .ADC1_OUT_B      (ADC1_OUT_B),
        .ADC2_OUT_B      (ADC2_OUT_B),
        .ADC_EN_B        (ADC_EN_B),
        .ERR_CRC_B       (ERR_CRC_B),
        .ERR_STIM_B      (ERR_STIM_B),
        .clk_ref_o       (clk_ref_s),
        .reset_o         (reset_s),
        .stim_xen_o      (stim_xen_s),
        .err_sync_i      (err_sync_s),
        .err_stim_sync_i (err_stim_sync_s),
        .spi_clk_o       (spi_clk_s),
        .spi_cs_o        (spi_cs_s),
        .spi_mosi_o      (spi_mosi_s),
        .spi_miso_i      (spi_miso_s),
        .adc_en_i        (adc_en_s),
        .rec_data1_i     (rec_data1_s),
        .rec_data2_i     (rec_data2_s)
    );

    w_icons_core i_w_icons_core (
        .clk_ref_i           (clk_ref_s),
        .clk_adc1_gated_o    (clk_adc1_gated_s),
        .clk_adc2_gated_o    (clk_adc2_gated_s),
        .reset_i             (reset_s),
        .resetn_top_sync_o   (resetn_top_sync_s),
        .stim_xen_i          (stim_xen_s),
        .err_sync_o          (err_sync_s),
        .err_stim_sync_o     (err_stim_sync_s),
        .spi_clk_i           (spi_clk_s),
        .spi_cs_i            (spi_cs_s),
        .spi_mosi_i          (spi_mosi_s),
        .spi_miso_o          (spi_miso_s),
        .dft_testmode_i      (dft_testmode_s),
        .stim0_ia_o          (stim0_ia_s),
        .stim0_ic_o          (stim0_ic_s),
        .stim1_ia_o          (stim1_ia_s),
        .stim1_ic_o          (stim1_ic_s),
        .stim2_ia_o          (stim2_ia_s),
        .stim2_ic_o          (stim2_ic_s),
        .stim3_ia_o          (stim3_ia_s),
        .stim3_ic_o          (stim3_ic_s),
        .stim4_ia_o          (stim4_ia_s),
        .stim4_ic_o          (stim4_ic_s),
        .stim5_ia_o          (stim5_ia_s),
        .stim5_ic_o          (stim5_ic_s),
        .stim6_ia_o          (stim6_ia_s),
        .stim6_ic_o          (stim6_ic_s),
        .stim7_ia_o          (stim7_ia_s),
        .stim7_ic_o          (stim7_ic_s),
        .stim8_ia_o          (stim8_ia_s),
        .stim8_ic_o          (stim8_ic_s),
        .stim9_ia_o          (stim9_ia_s),
        .stim9_ic_o          (stim9_ic_s),
        .stim10_ia_o         (stim10_ia_s),
        .stim10_ic_o         (stim10_ic_s),
        .stim11_ia_o         (stim11_ia_s),
        .stim11_ic_o         (stim11_ic_s),
        .stim12_ia_o         (stim12_ia_s),
        .stim12_ic_o         (stim12_ic_s),
        .stim13_ia_o         (stim13_ia_s),
        .stim13_ic_o         (stim13_ic_s),
        .stim14_ia_o         (stim14_ia_s),
        .stim14_ic_o         (stim14_ic_s),
        .stim15_ia_o         (stim15_ia_s),
        .stim15_ic_o         (stim15_ic_s),
        .stim16_ia_o         (stim16_ia_s),
        .stim16_ic_o         (stim16_ic_s),
        .stim17_ia_o         (stim17_ia_s),
        .stim17_ic_o         (stim17_ic_s),
        .stim18_ia_o         (stim18_ia_s),
        .stim18_ic_o         (stim18_ic_s),
        .stim19_ia_o         (stim19_ia_s),
        .stim19_ic_o         (stim19_ic_s),
        .stim20_ia_o         (stim20_ia_s),
        .stim20_ic_o         (stim20_ic_s),
        .stim21_ia_o         (stim21_ia_s),
        .stim21_ic_o         (stim21_ic_s),
        .stim22_ia_o         (stim22_ia_s),
        .stim22_ic_o         (stim22_ic_s),
        .stim23_ia_o         (stim23_ia_s),
        .stim23_ic_o         (stim23_ic_s),
        .stim24_ia_o         (stim24_ia_s),
        .stim24_ic_o         (stim24_ic_s),
        .stim25_ia_o         (stim25_ia_s),
        .stim25_ic_o         (stim25_ic_s),
        .stim26_ia_o         (stim26_ia_s),
        .stim26_ic_o         (stim26_ic_s),
        .stim27_ia_o         (stim27_ia_s),
        .stim27_ic_o         (stim27_ic_s),
        .stim28_ia_o         (stim28_ia_s),
        .stim28_ic_o         (stim28_ic_s),
        .stim29_ia_o         (stim29_ia_s),
        .stim29_ic_o         (stim29_ic_s),
        .stim30_ia_o         (stim30_ia_s),
        .stim30_ic_o         (stim30_ic_s),
        .stim31_ia_o         (stim31_ia_s),
        .stim31_ic_o         (stim31_ic_s),
        .stim32_ia_o         (stim32_ia_s),
        .stim32_ic_o         (stim32_ic_s),
        .stim33_ia_o         (stim33_ia_s),
        .stim33_ic_o         (stim33_ic_s),
        .stim34_ia_o         (stim34_ia_s),
        .stim34_ic_o         (stim34_ic_s),
        .stim35_ia_o         (stim35_ia_s),
        .stim35_ic_o         (stim35_ic_s),
        .stim36_ia_o         (stim36_ia_s),
        .stim36_ic_o         (stim36_ic_s),
        .stim37_ia_o         (stim37_ia_s),
        .stim37_ic_o         (stim37_ic_s),
        .stim38_ia_o         (stim38_ia_s),
        .stim38_ic_o         (stim38_ic_s),
        .stim39_ia_o         (stim39_ia_s),
        .stim39_ic_o         (stim39_ic_s),
        .stim40_ia_o         (stim40_ia_s),
        .stim40_ic_o         (stim40_ic_s),
        .stim41_ia_o         (stim41_ia_s),
        .stim41_ic_o         (stim41_ic_s),
        .stim42_ia_o         (stim42_ia_s),
        .stim42_ic_o         (stim42_ic_s),
        .stim43_ia_o         (stim43_ia_s),
        .stim43_ic_o         (stim43_ic_s),
        .stim44_ia_o         (stim44_ia_s),
        .stim44_ic_o         (stim44_ic_s),
        .stim45_ia_o         (stim45_ia_s),
        .stim45_ic_o         (stim45_ic_s),
        .stim46_ia_o         (stim46_ia_s),
        .stim46_ic_o         (stim46_ic_s),
        .stim47_ia_o         (stim47_ia_s),
        .stim47_ic_o         (stim47_ic_s),
        .stim48_ia_o         (stim48_ia_s),
        .stim48_ic_o         (stim48_ic_s),
        .stim49_ia_o         (stim49_ia_s),
        .stim49_ic_o         (stim49_ic_s),
        .stim50_ia_o         (stim50_ia_s),
        .stim50_ic_o         (stim50_ic_s),
        .stim51_ia_o         (stim51_ia_s),
        .stim51_ic_o         (stim51_ic_s),
        .stim52_ia_o         (stim52_ia_s),
        .stim52_ic_o         (stim52_ic_s),
        .stim53_ia_o         (stim53_ia_s),
        .stim53_ic_o         (stim53_ic_s),
        .stim54_ia_o         (stim54_ia_s),
        .stim54_ic_o         (stim54_ic_s),
        .stim55_ia_o         (stim55_ia_s),
        .stim55_ic_o         (stim55_ic_s),
        .stim56_ia_o         (stim56_ia_s),
        .stim56_ic_o         (stim56_ic_s),
        .stim57_ia_o         (stim57_ia_s),
        .stim57_ic_o         (stim57_ic_s),
        .stim58_ia_o         (stim58_ia_s),
        .stim58_ic_o         (stim58_ic_s),
        .stim59_ia_o         (stim59_ia_s),
        .stim59_ic_o         (stim59_ic_s),
        .stim60_ia_o         (stim60_ia_s),
        .stim60_ic_o         (stim60_ic_s),
        .stim61_ia_o         (stim61_ia_s),
        .stim61_ic_o         (stim61_ic_s),
        .stim62_ia_o         (stim62_ia_s),
        .stim62_ic_o         (stim62_ic_s),
        .stim63_ia_o         (stim63_ia_s),
        .stim63_ic_o         (stim63_ic_s),
        .stim_range_unsync_o (stim_range_unsync_s),
        .amp_gain_sync_o     (amp_gain_sync_s),
        .gdischarge_o        (gdischarge_s),
        .adc_en_o            (adc_en_s),
        .sample_out_o        (sample_out_s),
        .adc_res1_i          (adc_res1_s),
        .adc_res2_i          (adc_res2_s),
        .rec_data1_o         (rec_data1_s),
        .rec_data2_o         (rec_data2_s),
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
        .Bn5              (stim4_ia_s),
        .Bp5              (stim4_ic_s),
        .Bn6              (stim5_ia_s),
        .Bp6              (stim5_ic_s),
        .Bn7              (stim6_ia_s),
        .Bp7              (stim6_ic_s),
        .Bn8              (stim7_ia_s),
        .Bp8              (stim7_ic_s),
        .Bn9              (stim8_ia_s),
        .Bp9              (stim8_ic_s),
        .Bn10             (stim9_ia_s),
        .Bp10             (stim9_ic_s),
        .Bn11             (stim10_ia_s),
        .Bp11             (stim10_ic_s),
        .Bn12             (stim11_ia_s),
        .Bp12             (stim11_ic_s),
        .Bn13             (stim12_ia_s),
        .Bp13             (stim12_ic_s),
        .Bn14             (stim13_ia_s),
        .Bp14             (stim13_ic_s),
        .Bn15             (stim14_ia_s),
        .Bp15             (stim14_ic_s),
        .Bn16             (stim15_ia_s),
        .Bp16             (stim15_ic_s),
        .Bn17             (stim16_ia_s),
        .Bp17             (stim16_ic_s),
        .Bn18             (stim17_ia_s),
        .Bp18             (stim17_ic_s),
        .Bn19             (stim18_ia_s),
        .Bp19             (stim18_ic_s),
        .Bn20             (stim19_ia_s),
        .Bp20             (stim19_ic_s),
        .Bn21             (stim20_ia_s),
        .Bp21             (stim20_ic_s),
        .Bn22             (stim21_ia_s),
        .Bp22             (stim21_ic_s),
        .Bn23             (stim22_ia_s),
        .Bp23             (stim22_ic_s),
        .Bn24             (stim23_ia_s),
        .Bp24             (stim23_ic_s),
        .Bn25             (stim24_ia_s),
        .Bp25             (stim24_ic_s),
        .Bn26             (stim25_ia_s),
        .Bp26             (stim25_ic_s),
        .Bn27             (stim26_ia_s),
        .Bp27             (stim26_ic_s),
        .Bn28             (stim27_ia_s),
        .Bp28             (stim27_ic_s),
        .Bn29             (stim28_ia_s),
        .Bp29             (stim28_ic_s),
        .Bn30             (stim29_ia_s),
        .Bp30             (stim29_ic_s),
        .Bn31             (stim30_ia_s),
        .Bp31             (stim30_ic_s),
        .Bn32             (stim31_ia_s),
        .Bp32             (stim31_ic_s),
        .Bn33             (stim32_ia_s),
        .Bp33             (stim32_ic_s),
        .Bn34             (stim33_ia_s),
        .Bp34             (stim33_ic_s),
        .Bn35             (stim34_ia_s),
        .Bp35             (stim34_ic_s),
        .Bn36             (stim35_ia_s),
        .Bp36             (stim35_ic_s),
        .Bn37             (stim36_ia_s),
        .Bp37             (stim36_ic_s),
        .Bn38             (stim37_ia_s),
        .Bp38             (stim37_ic_s),
        .Bn39             (stim38_ia_s),
        .Bp39             (stim38_ic_s),
        .Bn40             (stim39_ia_s),
        .Bp40             (stim39_ic_s),
        .Bn41             (stim40_ia_s),
        .Bp41             (stim40_ic_s),
        .Bn42             (stim41_ia_s),
        .Bp42             (stim41_ic_s),
        .Bn43             (stim42_ia_s),
        .Bp43             (stim42_ic_s),
        .Bn44             (stim43_ia_s),
        .Bp44             (stim43_ic_s),
        .Bn45             (stim44_ia_s),
        .Bp45             (stim44_ic_s),
        .Bn46             (stim45_ia_s),
        .Bp46             (stim45_ic_s),
        .Bn47             (stim46_ia_s),
        .Bp47             (stim46_ic_s),
        .Bn48             (stim47_ia_s),
        .Bp48             (stim47_ic_s),
        .Bn49             (stim48_ia_s),
        .Bp49             (stim48_ic_s),
        .Bn50             (stim49_ia_s),
        .Bp50             (stim49_ic_s),
        .Bn51             (stim50_ia_s),
        .Bp51             (stim50_ic_s),
        .Bn52             (stim51_ia_s),
        .Bp52             (stim51_ic_s),
        .Bn53             (stim52_ia_s),
        .Bp53             (stim52_ic_s),
        .Bn54             (stim53_ia_s),
        .Bp54             (stim53_ic_s),
        .Bn55             (stim54_ia_s),
        .Bp55             (stim54_ic_s),
        .Bn56             (stim55_ia_s),
        .Bp56             (stim55_ic_s),
        .Bn57             (stim56_ia_s),
        .Bp57             (stim56_ic_s),
        .Bn58             (stim57_ia_s),
        .Bp58             (stim57_ic_s),
        .Bn59             (stim58_ia_s),
        .Bp59             (stim58_ic_s),
        .Bn60             (stim59_ia_s),
        .Bp60             (stim59_ic_s),
        .Bn61             (stim60_ia_s),
        .Bp61             (stim60_ic_s),
        .Bn62             (stim61_ia_s),
        .Bp62             (stim61_ic_s),
        .Bn63             (stim62_ia_s),
        .Bp63             (stim62_ic_s),
        .Bn64             (stim63_ia_s),
        .Bp64             (stim63_ic_s),
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
endmodule
