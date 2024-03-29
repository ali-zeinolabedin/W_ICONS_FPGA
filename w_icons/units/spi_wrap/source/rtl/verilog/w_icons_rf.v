/* icglue keep begin head */
/*
 * Module      : w_icons_rf
 * Author      : Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module w_icons_rf (
    apb_resetn_i,
    apb_clk_i,
    apb_addr_i,
    apb_sel_i,
    apb_enable_i,
    apb_wdata_i,
    apb_write_i,
    apb_strb_i,
    apb_rdata_o,
    apb_ready_o,
    apb_slverr_o,
    apb_prot_i,
    apb_prot_en_i,
    chip_id_i,
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
    div_clk_stim_o,
    en_clk_stim_o,
    div_clk_discharge_o,
    en_clk_discharge_o,
    pw_discharge_o,
    rec_en_o
);

    parameter IN_WIDTH_IA        = 8;
    parameter IN_WIDTH_WA        = 14;
    parameter STIM_CLKDIV_W      = 12;
    parameter CLKDIV_W_DISCHARGE = 8;
    /* icglue keep begin parameters *//* icglue keep end */

    input                           apb_resetn_i;
    input                           apb_clk_i;
    input                     [9:0] apb_addr_i;
    input                           apb_sel_i;
    input                           apb_enable_i;
    input                    [31:0] apb_wdata_i;
    input                           apb_write_i;
    input                     [3:0] apb_strb_i;
    output                   [31:0] apb_rdata_o;
    output                          apb_ready_o;
    output                          apb_slverr_o;
    input                     [2:0] apb_prot_i;
    input                           apb_prot_en_i;
    input                    [31:0] chip_id_i;
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
    output      [STIM_CLKDIV_W-1:0] div_clk_stim_o;
    output                          en_clk_stim_o;
    output [CLKDIV_W_DISCHARGE-1:0] div_clk_discharge_o;
    output                          en_clk_discharge_o;
    output                   [19:0] pw_discharge_o;
    output                          rec_en_o;

    wire  [7:0] stim0_ia_mux_s;
    wire [13:0] stim0_pulse_wa_mux_s;
    wire        stim0_mode_s;
    wire        stim0_range_s;
    wire  [7:0] stim1_ia_mux_s;
    wire [13:0] stim1_pulse_wa_mux_s;
    wire        stim1_mode_s;
    wire        stim1_range_s;
    wire  [7:0] stim2_ia_mux_s;
    wire [13:0] stim2_pulse_wa_mux_s;
    wire        stim2_mode_s;
    wire        stim2_range_s;
    wire  [7:0] stim3_ia_mux_s;
    wire [13:0] stim3_pulse_wa_mux_s;
    wire        stim3_mode_s;
    wire        stim3_range_s;
    /* icglue keep begin declarations *//* icglue keep end */


    /*************************************************************************/
    /* Regfile ADDRESS definition                                            */
    /*************************************************************************/
    localparam RA_CHIP_STATUS_ID        = 10'h000;
    localparam RA_CHIP_ERROR_STATUS1    = 10'h004;
    localparam RA_CHIP_ERROR_STATUS2    = 10'h008;
    localparam RA_ADC_AMP1              = 10'h00C;
    localparam RA_ADC_AMP2              = 10'h010;
    localparam RA_REC_STIM_CONTROL      = 10'h014;
    localparam RA_STIM_MASK0_P1         = 10'h018;
    localparam RA_STIM_MASK0_P2         = 10'h01C;
    localparam RA_STIM_MASK1_P1         = 10'h020;
    localparam RA_STIM_MASK1_P2         = 10'h024;
    localparam RA_STIM_MASK2_P1         = 10'h028;
    localparam RA_STIM_MASK2_P2         = 10'h02C;
    localparam RA_STIM_MASK3_P1         = 10'h030;
    localparam RA_STIM_MASK3_P2         = 10'h034;
    localparam RA_STIM_MASK4_P1         = 10'h038;
    localparam RA_STIM_MASK4_P2         = 10'h03C;
    localparam RA_STIM_MASK5_P1         = 10'h040;
    localparam RA_STIM_MASK5_P2         = 10'h044;
    localparam RA_STIM_MASK6_P1         = 10'h048;
    localparam RA_STIM_MASK6_P2         = 10'h04C;
    localparam RA_STIM_MASK7_P1         = 10'h050;
    localparam RA_STIM_MASK7_P2         = 10'h054;
    localparam RA_ENABLED_CH_REC_G1     = 10'h058;
    localparam RA_ENABLED_CH_REC_G2     = 10'h05C;
    localparam RA_REC_DISCHARGE_CONTROL = 10'h060;
    localparam RA_STIM_CH0_P0           = 10'h064;
    localparam RA_STIM_CH0_PULSE_P1     = 10'h068;
    localparam RA_STIM_CH0_PULSE_P2     = 10'h06C;
    localparam RA_STIM_CH1_P0           = 10'h070;
    localparam RA_STIM_CH1_PULSE_P1     = 10'h074;
    localparam RA_STIM_CH1_PULSE_P2     = 10'h078;
    localparam RA_STIM_CH2_P0           = 10'h07C;
    localparam RA_STIM_CH2_PULSE_P1     = 10'h080;
    localparam RA_STIM_CH2_PULSE_P2     = 10'h084;
    localparam RA_STIM_CH3_P0           = 10'h088;
    localparam RA_STIM_CH3_PULSE_P1     = 10'h08C;
    localparam RA_STIM_CH3_PULSE_P2     = 10'h090;
    /* icglue keep begin regfile-w_icons_top-addresses *//* icglue keep end */

    /*************************************************************************/
    /* regfile signal definition                                             */
    /*************************************************************************/

    reg   [31:0] apb_rf_r_data;
    reg          apb_ready;
    reg          apb_slverr;
    wire         rf_w_sel;
    wire         rf_r_sel;
    wire         rf_apb_prot_ok;
    reg          rf_write_permitted;
    reg          rf_next_write_permitted;
    reg          rf_read_permitted;
    reg          rf_next_read_permitted;

    // regfile registers / wires
    wire  [31:0] val_chip_status_id;

    wire  [31:0] val_chip_error_status1;
    reg   [31:0] reg_chip_error_status1_chip_error_load;

    wire  [31:0] val_chip_error_status2;
    reg    [3:0] reg_chip_error_status2_chip_error_cmd;
    reg    [4:0] reg_chip_error_status2_chip_error_crc5;

    wire  [31:0] val_adc_amp1;
    reg   [31:0] reg_adc_amp1_amp_gain_g1;

    wire  [31:0] val_adc_amp2;
    reg   [31:0] reg_adc_amp2_amp_gain_g2;

    wire  [31:0] val_rec_stim_control;
    reg   [11:0] reg_rec_stim_control_div_clk_stim;
    reg          reg_rec_stim_control_en_clk_stim;
    reg    [7:0] reg_rec_stim_control_stim_mask_en;
    reg          reg_rec_stim_control_rec_en;

    wire  [31:0] val_stim_mask0_p1;
    reg   [31:0] reg_stim_mask0_p1_stim_mask0_g1;

    wire  [31:0] val_stim_mask0_p2;
    reg   [31:0] reg_stim_mask0_p2_stim_mask0_g2;

    wire  [31:0] val_stim_mask1_p1;
    reg   [31:0] reg_stim_mask1_p1_stim_mask1_g1;

    wire  [31:0] val_stim_mask1_p2;
    reg   [31:0] reg_stim_mask1_p2_stim_mask1_g2;

    wire  [31:0] val_stim_mask2_p1;
    reg   [31:0] reg_stim_mask2_p1_stim_mask2_g1;

    wire  [31:0] val_stim_mask2_p2;
    reg   [31:0] reg_stim_mask2_p2_stim_mask2_g2;

    wire  [31:0] val_stim_mask3_p1;
    reg   [31:0] reg_stim_mask3_p1_stim_mask3_g1;

    wire  [31:0] val_stim_mask3_p2;
    reg   [31:0] reg_stim_mask3_p2_stim_mask3_g2;

    wire  [31:0] val_stim_mask4_p1;
    reg   [31:0] reg_stim_mask4_p1_stim_mask4_g1;

    wire  [31:0] val_stim_mask4_p2;
    reg   [31:0] reg_stim_mask4_p2_stim_mask4_g2;

    wire  [31:0] val_stim_mask5_p1;
    reg   [31:0] reg_stim_mask5_p1_stim_mask5_g1;

    wire  [31:0] val_stim_mask5_p2;
    reg   [31:0] reg_stim_mask5_p2_stim_mask5_g2;

    wire  [31:0] val_stim_mask6_p1;
    reg   [31:0] reg_stim_mask6_p1_stim_mask6_g1;

    wire  [31:0] val_stim_mask6_p2;
    reg   [31:0] reg_stim_mask6_p2_stim_mask6_g2;

    wire  [31:0] val_stim_mask7_p1;
    reg   [31:0] reg_stim_mask7_p1_stim_mask7_g1;

    wire  [31:0] val_stim_mask7_p2;
    reg   [31:0] reg_stim_mask7_p2_stim_mask7_g2;

    wire  [31:0] val_enabled_ch_rec_g1;
    reg   [31:0] reg_enabled_ch_rec_g1_en_rec_ch_g1;

    wire  [31:0] val_enabled_ch_rec_g2;
    reg   [31:0] reg_enabled_ch_rec_g2_en_rec_ch_g2;

    wire  [31:0] val_rec_discharge_control;
    reg    [7:0] reg_rec_discharge_control_div_clk_discharge;
    reg          reg_rec_discharge_control_en_clk_discharge;
    reg   [19:0] reg_rec_discharge_control_pw_discharge;

    wire  [31:0] val_stim_ch0_p0;
    reg   [15:0] reg_stim_ch0_p0_stim0_interval;
    reg    [7:0] reg_stim_ch0_p0_stim0_ia_mux;
    reg    [7:0] reg_stim_ch0_p0_stim0_ic;

    wire  [31:0] val_stim_ch0_pulse_p1;
    reg   [13:0] reg_stim_ch0_pulse_p1_stim0_pulse_wc;
    reg   [13:0] reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux;

    wire  [31:0] val_stim_ch0_pulse_p2;
    reg   [13:0] reg_stim_ch0_pulse_p2_stim0_pulse_gap;
    reg   [11:0] reg_stim_ch0_pulse_p2_stim0_pulse_num;
    reg          reg_stim_ch0_pulse_p2_stim0_pol;
    reg          reg_stim_ch0_pulse_p2_stim0_range;

    wire  [31:0] val_stim_ch1_p0;
    reg   [15:0] reg_stim_ch1_p0_stim1_interval;
    reg    [7:0] reg_stim_ch1_p0_stim1_ia_mux;
    reg    [7:0] reg_stim_ch1_p0_stim1_ic;

    wire  [31:0] val_stim_ch1_pulse_p1;
    reg   [13:0] reg_stim_ch1_pulse_p1_stim1_pulse_wc;
    reg   [13:0] reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux;

    wire  [31:0] val_stim_ch1_pulse_p2;
    reg   [13:0] reg_stim_ch1_pulse_p2_stim1_pulse_gap;
    reg   [11:0] reg_stim_ch1_pulse_p2_stim1_pulse_num;
    reg          reg_stim_ch1_pulse_p2_stim1_pol;
    reg          reg_stim_ch1_pulse_p2_stim1_range;

    wire  [31:0] val_stim_ch2_p0;
    reg   [15:0] reg_stim_ch2_p0_stim2_interval;
    reg    [7:0] reg_stim_ch2_p0_stim2_ia_mux;
    reg    [7:0] reg_stim_ch2_p0_stim2_ic;

    wire  [31:0] val_stim_ch2_pulse_p1;
    reg   [13:0] reg_stim_ch2_pulse_p1_stim2_pulse_wc;
    reg   [13:0] reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux;

    wire  [31:0] val_stim_ch2_pulse_p2;
    reg   [13:0] reg_stim_ch2_pulse_p2_stim2_pulse_gap;
    reg   [11:0] reg_stim_ch2_pulse_p2_stim2_pulse_num;
    reg          reg_stim_ch2_pulse_p2_stim2_pol;
    reg          reg_stim_ch2_pulse_p2_stim2_range;

    wire  [31:0] val_stim_ch3_p0;
    reg   [15:0] reg_stim_ch3_p0_stim3_interval;
    reg    [7:0] reg_stim_ch3_p0_stim3_ia_mux;
    reg    [7:0] reg_stim_ch3_p0_stim3_ic;

    wire  [31:0] val_stim_ch3_pulse_p1;
    reg   [13:0] reg_stim_ch3_pulse_p1_stim3_pulse_wc;
    reg   [13:0] reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux;

    wire  [31:0] val_stim_ch3_pulse_p2;
    reg   [13:0] reg_stim_ch3_pulse_p2_stim3_pulse_gap;
    reg   [11:0] reg_stim_ch3_pulse_p2_stim3_pulse_num;
    reg          reg_stim_ch3_pulse_p2_stim3_pol;
    reg          reg_stim_ch3_pulse_p2_stim3_range;

    /* icglue keep begin regfile-w_icons_top-declaration *//* icglue keep end */

    assign rf_apb_prot_ok = apb_prot_i[0] | ~apb_prot_en_i;




    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w0 (
        .I1  (stim0_pulse_wc_o),
        .I0  (stim0_pulse_wa_mux_s),
        .Z   (stim0_pulse_wa_o),
        .SEL (stim0_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w1 (
        .I1  (stim1_pulse_wc_o),
        .I0  (stim1_pulse_wa_mux_s),
        .Z   (stim1_pulse_wa_o),
        .SEL (stim1_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w2 (
        .I1  (stim2_pulse_wc_o),
        .I0  (stim2_pulse_wa_mux_s),
        .Z   (stim2_pulse_wa_o),
        .SEL (stim2_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_WA)
    ) i_common_mux_stim_w3 (
        .I1  (stim3_pulse_wc_o),
        .I0  (stim3_pulse_wa_mux_s),
        .Z   (stim3_pulse_wa_o),
        .SEL (stim3_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i0 (
        .I0  (stim0_ia_mux_s),
        .Z   (stim0_ia_o),
        .I1  (stim0_ic_o),
        .SEL (stim0_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i1 (
        .I0  (stim1_ia_mux_s),
        .Z   (stim1_ia_o),
        .I1  (stim1_ic_o),
        .SEL (stim1_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i2 (
        .I0  (stim2_ia_mux_s),
        .Z   (stim2_ia_o),
        .I1  (stim2_ic_o),
        .SEL (stim2_mode_s)
    );

    common_mux #(
        .IN_W (IN_WIDTH_IA)
    ) i_common_mux_stim_i3 (
        .I0  (stim3_ia_mux_s),
        .Z   (stim3_ia_o),
        .I1  (stim3_ic_o),
        .SEL (stim3_mode_s)
    );


    assign stim_monophasic_o = 1'b0;
    assign stim0_mode_s = 1'b1;
    assign stim1_mode_s = 1'b1;
    assign stim2_mode_s = 1'b1;
    assign stim3_mode_s = 1'b1;
    assign  stim_range_unsync_o = {stim3_range_s, stim2_range_s, stim1_range_s, stim0_range_s};

    /*************************************************************************/
    /* Regfile - registers (write-logic & read value assignmment)            */
    /*************************************************************************/
    assign rf_r_sel = ~apb_write_i & apb_sel_i;
    assign rf_w_sel =  apb_write_i & apb_sel_i;
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            rf_write_permitted <= 1'b0;
            rf_read_permitted  <= 1'b0;
        end else begin
            if (rf_r_sel == 1'b1) begin
                rf_read_permitted  <= rf_next_read_permitted;
            end
            if (rf_w_sel == 1'b1) begin
                rf_write_permitted <= rf_next_write_permitted;
            end
        end
    end

    // chip_status_id @ 0x0

    assign val_chip_status_id[31: 0] = chip_id_i;

    // chip_error_status1 @ 0x4
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_chip_error_status1_chip_error_load <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_CHIP_ERROR_STATUS1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_chip_error_status1_chip_error_load[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_chip_error_status1_chip_error_load[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_chip_error_status1_chip_error_load[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_chip_error_status1_chip_error_load[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign chip_error_load_o        = reg_chip_error_status1_chip_error_load;

    assign val_chip_error_status1[31: 0] = reg_chip_error_status1_chip_error_load;

    // chip_error_status2 @ 0x8
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_chip_error_status2_chip_error_cmd  <= 4'h0;
            reg_chip_error_status2_chip_error_crc5 <= 5'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_CHIP_ERROR_STATUS2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_chip_error_status2_chip_error_cmd [ 3: 0] <= apb_wdata_i[ 3: 0];
                        reg_chip_error_status2_chip_error_crc5[ 3: 0] <= apb_wdata_i[ 7: 4];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_chip_error_status2_chip_error_crc5[    4] <= apb_wdata_i[    8];
                    end
                end
            end
        end
    end
    assign chip_error_cmd_o         = reg_chip_error_status2_chip_error_cmd;
    assign chip_error_crc5_o        = reg_chip_error_status2_chip_error_crc5;

    assign val_chip_error_status2[ 3: 0] = reg_chip_error_status2_chip_error_cmd;
    assign val_chip_error_status2[ 8: 4] = reg_chip_error_status2_chip_error_crc5;
    assign val_chip_error_status2[31: 9] = 23'b0;

    // adc_amp1 @ 0xc
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_adc_amp1_amp_gain_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_ADC_AMP1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_adc_amp1_amp_gain_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_adc_amp1_amp_gain_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_adc_amp1_amp_gain_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_adc_amp1_amp_gain_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign amp_gain_g1_o        = reg_adc_amp1_amp_gain_g1;

    assign val_adc_amp1[31: 0] = reg_adc_amp1_amp_gain_g1;

    // adc_amp2 @ 0x10
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_adc_amp2_amp_gain_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_ADC_AMP2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_adc_amp2_amp_gain_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_adc_amp2_amp_gain_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_adc_amp2_amp_gain_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_adc_amp2_amp_gain_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign amp_gain_g2_o        = reg_adc_amp2_amp_gain_g2;

    assign val_adc_amp2[31: 0] = reg_adc_amp2_amp_gain_g2;

    // rec_stim_control @ 0x14
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_rec_stim_control_div_clk_stim <= 12'h21;
            reg_rec_stim_control_en_clk_stim  <= 1'b0;
            reg_rec_stim_control_stim_mask_en <= 8'h00;
            reg_rec_stim_control_rec_en       <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_REC_STIM_CONTROL) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_rec_stim_control_div_clk_stim[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_rec_stim_control_div_clk_stim[11: 8] <= apb_wdata_i[11: 8];
                        reg_rec_stim_control_en_clk_stim         <= apb_wdata_i[   12];
                        reg_rec_stim_control_stim_mask_en[ 2: 0] <= apb_wdata_i[15:13];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_rec_stim_control_stim_mask_en[ 7: 3] <= apb_wdata_i[20:16];
                        reg_rec_stim_control_rec_en              <= apb_wdata_i[   21];
                    end
                end
            end
        end
    end
    assign div_clk_stim_o        = reg_rec_stim_control_div_clk_stim;
    assign en_clk_stim_o         = reg_rec_stim_control_en_clk_stim;
    assign stim_mask_en_o        = reg_rec_stim_control_stim_mask_en;
    assign rec_en_o              = reg_rec_stim_control_rec_en;

    assign val_rec_stim_control[11: 0] = reg_rec_stim_control_div_clk_stim;
    assign val_rec_stim_control[   12] = reg_rec_stim_control_en_clk_stim;
    assign val_rec_stim_control[20:13] = reg_rec_stim_control_stim_mask_en;
    assign val_rec_stim_control[   21] = reg_rec_stim_control_rec_en;
    assign val_rec_stim_control[31:22] = 10'b0;

    // stim_mask0_p1 @ 0x18
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask0_p1_stim_mask0_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK0_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask0_p1_stim_mask0_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask0_p1_stim_mask0_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask0_p1_stim_mask0_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask0_p1_stim_mask0_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask0_g1_o        = reg_stim_mask0_p1_stim_mask0_g1;

    assign val_stim_mask0_p1[31: 0] = reg_stim_mask0_p1_stim_mask0_g1;

    // stim_mask0_p2 @ 0x1c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask0_p2_stim_mask0_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK0_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask0_p2_stim_mask0_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask0_p2_stim_mask0_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask0_p2_stim_mask0_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask0_p2_stim_mask0_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask0_g2_o        = reg_stim_mask0_p2_stim_mask0_g2;

    assign val_stim_mask0_p2[31: 0] = reg_stim_mask0_p2_stim_mask0_g2;

    // stim_mask1_p1 @ 0x20
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask1_p1_stim_mask1_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK1_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask1_p1_stim_mask1_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask1_p1_stim_mask1_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask1_p1_stim_mask1_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask1_p1_stim_mask1_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask1_g1_o        = reg_stim_mask1_p1_stim_mask1_g1;

    assign val_stim_mask1_p1[31: 0] = reg_stim_mask1_p1_stim_mask1_g1;

    // stim_mask1_p2 @ 0x24
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask1_p2_stim_mask1_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK1_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask1_p2_stim_mask1_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask1_p2_stim_mask1_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask1_p2_stim_mask1_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask1_p2_stim_mask1_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask1_g2_o        = reg_stim_mask1_p2_stim_mask1_g2;

    assign val_stim_mask1_p2[31: 0] = reg_stim_mask1_p2_stim_mask1_g2;

    // stim_mask2_p1 @ 0x28
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask2_p1_stim_mask2_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK2_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask2_p1_stim_mask2_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask2_p1_stim_mask2_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask2_p1_stim_mask2_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask2_p1_stim_mask2_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask2_g1_o        = reg_stim_mask2_p1_stim_mask2_g1;

    assign val_stim_mask2_p1[31: 0] = reg_stim_mask2_p1_stim_mask2_g1;

    // stim_mask2_p2 @ 0x2c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask2_p2_stim_mask2_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK2_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask2_p2_stim_mask2_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask2_p2_stim_mask2_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask2_p2_stim_mask2_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask2_p2_stim_mask2_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask2_g2_o        = reg_stim_mask2_p2_stim_mask2_g2;

    assign val_stim_mask2_p2[31: 0] = reg_stim_mask2_p2_stim_mask2_g2;

    // stim_mask3_p1 @ 0x30
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask3_p1_stim_mask3_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK3_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask3_p1_stim_mask3_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask3_p1_stim_mask3_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask3_p1_stim_mask3_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask3_p1_stim_mask3_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask3_g1_o        = reg_stim_mask3_p1_stim_mask3_g1;

    assign val_stim_mask3_p1[31: 0] = reg_stim_mask3_p1_stim_mask3_g1;

    // stim_mask3_p2 @ 0x34
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask3_p2_stim_mask3_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK3_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask3_p2_stim_mask3_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask3_p2_stim_mask3_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask3_p2_stim_mask3_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask3_p2_stim_mask3_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask3_g2_o        = reg_stim_mask3_p2_stim_mask3_g2;

    assign val_stim_mask3_p2[31: 0] = reg_stim_mask3_p2_stim_mask3_g2;

    // stim_mask4_p1 @ 0x38
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask4_p1_stim_mask4_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK4_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask4_p1_stim_mask4_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask4_p1_stim_mask4_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask4_p1_stim_mask4_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask4_p1_stim_mask4_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask4_g1_o        = reg_stim_mask4_p1_stim_mask4_g1;

    assign val_stim_mask4_p1[31: 0] = reg_stim_mask4_p1_stim_mask4_g1;

    // stim_mask4_p2 @ 0x3c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask4_p2_stim_mask4_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK4_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask4_p2_stim_mask4_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask4_p2_stim_mask4_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask4_p2_stim_mask4_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask4_p2_stim_mask4_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask4_g2_o        = reg_stim_mask4_p2_stim_mask4_g2;

    assign val_stim_mask4_p2[31: 0] = reg_stim_mask4_p2_stim_mask4_g2;

    // stim_mask5_p1 @ 0x40
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask5_p1_stim_mask5_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK5_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask5_p1_stim_mask5_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask5_p1_stim_mask5_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask5_p1_stim_mask5_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask5_p1_stim_mask5_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask5_g1_o        = reg_stim_mask5_p1_stim_mask5_g1;

    assign val_stim_mask5_p1[31: 0] = reg_stim_mask5_p1_stim_mask5_g1;

    // stim_mask5_p2 @ 0x44
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask5_p2_stim_mask5_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK5_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask5_p2_stim_mask5_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask5_p2_stim_mask5_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask5_p2_stim_mask5_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask5_p2_stim_mask5_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask5_g2_o        = reg_stim_mask5_p2_stim_mask5_g2;

    assign val_stim_mask5_p2[31: 0] = reg_stim_mask5_p2_stim_mask5_g2;

    // stim_mask6_p1 @ 0x48
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask6_p1_stim_mask6_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK6_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask6_p1_stim_mask6_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask6_p1_stim_mask6_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask6_p1_stim_mask6_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask6_p1_stim_mask6_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask6_g1_o        = reg_stim_mask6_p1_stim_mask6_g1;

    assign val_stim_mask6_p1[31: 0] = reg_stim_mask6_p1_stim_mask6_g1;

    // stim_mask6_p2 @ 0x4c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask6_p2_stim_mask6_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK6_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask6_p2_stim_mask6_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask6_p2_stim_mask6_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask6_p2_stim_mask6_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask6_p2_stim_mask6_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask6_g2_o        = reg_stim_mask6_p2_stim_mask6_g2;

    assign val_stim_mask6_p2[31: 0] = reg_stim_mask6_p2_stim_mask6_g2;

    // stim_mask7_p1 @ 0x50
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask7_p1_stim_mask7_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK7_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask7_p1_stim_mask7_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask7_p1_stim_mask7_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask7_p1_stim_mask7_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask7_p1_stim_mask7_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask7_g1_o        = reg_stim_mask7_p1_stim_mask7_g1;

    assign val_stim_mask7_p1[31: 0] = reg_stim_mask7_p1_stim_mask7_g1;

    // stim_mask7_p2 @ 0x54
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_mask7_p2_stim_mask7_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_MASK7_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_mask7_p2_stim_mask7_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_mask7_p2_stim_mask7_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_mask7_p2_stim_mask7_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_mask7_p2_stim_mask7_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim_mask7_g2_o        = reg_stim_mask7_p2_stim_mask7_g2;

    assign val_stim_mask7_p2[31: 0] = reg_stim_mask7_p2_stim_mask7_g2;

    // enabled_ch_rec_g1 @ 0x58
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_enabled_ch_rec_g1_en_rec_ch_g1 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_ENABLED_CH_REC_G1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_enabled_ch_rec_g1_en_rec_ch_g1[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_enabled_ch_rec_g1_en_rec_ch_g1[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_enabled_ch_rec_g1_en_rec_ch_g1[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_enabled_ch_rec_g1_en_rec_ch_g1[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign en_rec_ch_g1_o        = reg_enabled_ch_rec_g1_en_rec_ch_g1;

    assign val_enabled_ch_rec_g1[31: 0] = reg_enabled_ch_rec_g1_en_rec_ch_g1;

    // enabled_ch_rec_g2 @ 0x5c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_enabled_ch_rec_g2_en_rec_ch_g2 <= 32'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_ENABLED_CH_REC_G2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_enabled_ch_rec_g2_en_rec_ch_g2[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_enabled_ch_rec_g2_en_rec_ch_g2[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_enabled_ch_rec_g2_en_rec_ch_g2[23:16] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_enabled_ch_rec_g2_en_rec_ch_g2[31:24] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign en_rec_ch_g2_o        = reg_enabled_ch_rec_g2_en_rec_ch_g2;

    assign val_enabled_ch_rec_g2[31: 0] = reg_enabled_ch_rec_g2_en_rec_ch_g2;

    // rec_discharge_control @ 0x60
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_rec_discharge_control_div_clk_discharge <= 8'h42;
            reg_rec_discharge_control_en_clk_discharge  <= 1'b0;
            reg_rec_discharge_control_pw_discharge      <= 20'h10;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_REC_DISCHARGE_CONTROL) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_rec_discharge_control_div_clk_discharge[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_rec_discharge_control_en_clk_discharge         <= apb_wdata_i[    8];
                        reg_rec_discharge_control_pw_discharge     [ 3: 0] <= apb_wdata_i[15:12];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_rec_discharge_control_pw_discharge     [11: 4] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_rec_discharge_control_pw_discharge     [19:12] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign div_clk_discharge_o        = reg_rec_discharge_control_div_clk_discharge;
    assign en_clk_discharge_o         = reg_rec_discharge_control_en_clk_discharge;
    assign pw_discharge_o             = reg_rec_discharge_control_pw_discharge;

    assign val_rec_discharge_control[ 7: 0] = reg_rec_discharge_control_div_clk_discharge;
    assign val_rec_discharge_control[    8] = reg_rec_discharge_control_en_clk_discharge;
    assign val_rec_discharge_control[11: 9] = 3'b0;
    assign val_rec_discharge_control[31:12] = reg_rec_discharge_control_pw_discharge;

    // stim_ch0_p0 @ 0x64
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch0_p0_stim0_interval <= 16'h0;
            reg_stim_ch0_p0_stim0_ia_mux   <= 8'h0;
            reg_stim_ch0_p0_stim0_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH0_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch0_p0_stim0_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch0_p0_stim0_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch0_p0_stim0_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch0_p0_stim0_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim0_interval_o        = reg_stim_ch0_p0_stim0_interval;
    assign stim0_ia_mux_s          = reg_stim_ch0_p0_stim0_ia_mux;
    assign stim0_ic_o              = reg_stim_ch0_p0_stim0_ic;

    assign val_stim_ch0_p0[15: 0] = reg_stim_ch0_p0_stim0_interval;
    assign val_stim_ch0_p0[23:16] = reg_stim_ch0_p0_stim0_ia_mux;
    assign val_stim_ch0_p0[31:24] = reg_stim_ch0_p0_stim0_ic;

    // stim_ch0_pulse_p1 @ 0x68
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch0_pulse_p1_stim0_pulse_wc     <= 14'h0;
            reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH0_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch0_pulse_p1_stim0_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch0_pulse_p1_stim0_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim0_pulse_wc_o            = reg_stim_ch0_pulse_p1_stim0_pulse_wc;
    assign stim0_pulse_wa_mux_s        = reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux;

    assign val_stim_ch0_pulse_p1[13: 0] = reg_stim_ch0_pulse_p1_stim0_pulse_wc;
    assign val_stim_ch0_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch0_pulse_p1[29:16] = reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux;
    assign val_stim_ch0_pulse_p1[31:30] = 2'b0;

    // stim_ch0_pulse_p2 @ 0x6c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch0_pulse_p2_stim0_pulse_gap <= 14'h0;
            reg_stim_ch0_pulse_p2_stim0_pulse_num <= 12'h0;
            reg_stim_ch0_pulse_p2_stim0_pol       <= 1'b0;
            reg_stim_ch0_pulse_p2_stim0_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH0_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch0_pulse_p2_stim0_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch0_pulse_p2_stim0_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch0_pulse_p2_stim0_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch0_pulse_p2_stim0_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch0_pulse_p2_stim0_pol              <= apb_wdata_i[   30];
                        reg_stim_ch0_pulse_p2_stim0_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim0_pulse_gap_o        = reg_stim_ch0_pulse_p2_stim0_pulse_gap;
    assign stim0_pulse_num_o        = reg_stim_ch0_pulse_p2_stim0_pulse_num;
    assign stim0_pol_o              = reg_stim_ch0_pulse_p2_stim0_pol;
    assign stim0_range_s            = reg_stim_ch0_pulse_p2_stim0_range;

    assign val_stim_ch0_pulse_p2[13: 0] = reg_stim_ch0_pulse_p2_stim0_pulse_gap;
    assign val_stim_ch0_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch0_pulse_p2[27:16] = reg_stim_ch0_pulse_p2_stim0_pulse_num;
    assign val_stim_ch0_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch0_pulse_p2[   30] = reg_stim_ch0_pulse_p2_stim0_pol;
    assign val_stim_ch0_pulse_p2[   31] = reg_stim_ch0_pulse_p2_stim0_range;

    // stim_ch1_p0 @ 0x70
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch1_p0_stim1_interval <= 16'h0;
            reg_stim_ch1_p0_stim1_ia_mux   <= 8'h0;
            reg_stim_ch1_p0_stim1_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH1_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch1_p0_stim1_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch1_p0_stim1_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch1_p0_stim1_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch1_p0_stim1_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim1_interval_o        = reg_stim_ch1_p0_stim1_interval;
    assign stim1_ia_mux_s          = reg_stim_ch1_p0_stim1_ia_mux;
    assign stim1_ic_o              = reg_stim_ch1_p0_stim1_ic;

    assign val_stim_ch1_p0[15: 0] = reg_stim_ch1_p0_stim1_interval;
    assign val_stim_ch1_p0[23:16] = reg_stim_ch1_p0_stim1_ia_mux;
    assign val_stim_ch1_p0[31:24] = reg_stim_ch1_p0_stim1_ic;

    // stim_ch1_pulse_p1 @ 0x74
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch1_pulse_p1_stim1_pulse_wc     <= 14'h0;
            reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH1_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch1_pulse_p1_stim1_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch1_pulse_p1_stim1_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim1_pulse_wc_o            = reg_stim_ch1_pulse_p1_stim1_pulse_wc;
    assign stim1_pulse_wa_mux_s        = reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux;

    assign val_stim_ch1_pulse_p1[13: 0] = reg_stim_ch1_pulse_p1_stim1_pulse_wc;
    assign val_stim_ch1_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch1_pulse_p1[29:16] = reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux;
    assign val_stim_ch1_pulse_p1[31:30] = 2'b0;

    // stim_ch1_pulse_p2 @ 0x78
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch1_pulse_p2_stim1_pulse_gap <= 14'h0;
            reg_stim_ch1_pulse_p2_stim1_pulse_num <= 12'h0;
            reg_stim_ch1_pulse_p2_stim1_pol       <= 1'b0;
            reg_stim_ch1_pulse_p2_stim1_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH1_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch1_pulse_p2_stim1_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch1_pulse_p2_stim1_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch1_pulse_p2_stim1_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch1_pulse_p2_stim1_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch1_pulse_p2_stim1_pol              <= apb_wdata_i[   30];
                        reg_stim_ch1_pulse_p2_stim1_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim1_pulse_gap_o        = reg_stim_ch1_pulse_p2_stim1_pulse_gap;
    assign stim1_pulse_num_o        = reg_stim_ch1_pulse_p2_stim1_pulse_num;
    assign stim1_pol_o              = reg_stim_ch1_pulse_p2_stim1_pol;
    assign stim1_range_s            = reg_stim_ch1_pulse_p2_stim1_range;

    assign val_stim_ch1_pulse_p2[13: 0] = reg_stim_ch1_pulse_p2_stim1_pulse_gap;
    assign val_stim_ch1_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch1_pulse_p2[27:16] = reg_stim_ch1_pulse_p2_stim1_pulse_num;
    assign val_stim_ch1_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch1_pulse_p2[   30] = reg_stim_ch1_pulse_p2_stim1_pol;
    assign val_stim_ch1_pulse_p2[   31] = reg_stim_ch1_pulse_p2_stim1_range;

    // stim_ch2_p0 @ 0x7c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch2_p0_stim2_interval <= 16'h0;
            reg_stim_ch2_p0_stim2_ia_mux   <= 8'h0;
            reg_stim_ch2_p0_stim2_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH2_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch2_p0_stim2_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch2_p0_stim2_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch2_p0_stim2_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch2_p0_stim2_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim2_interval_o        = reg_stim_ch2_p0_stim2_interval;
    assign stim2_ia_mux_s          = reg_stim_ch2_p0_stim2_ia_mux;
    assign stim2_ic_o              = reg_stim_ch2_p0_stim2_ic;

    assign val_stim_ch2_p0[15: 0] = reg_stim_ch2_p0_stim2_interval;
    assign val_stim_ch2_p0[23:16] = reg_stim_ch2_p0_stim2_ia_mux;
    assign val_stim_ch2_p0[31:24] = reg_stim_ch2_p0_stim2_ic;

    // stim_ch2_pulse_p1 @ 0x80
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch2_pulse_p1_stim2_pulse_wc     <= 14'h0;
            reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH2_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch2_pulse_p1_stim2_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch2_pulse_p1_stim2_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim2_pulse_wc_o            = reg_stim_ch2_pulse_p1_stim2_pulse_wc;
    assign stim2_pulse_wa_mux_s        = reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux;

    assign val_stim_ch2_pulse_p1[13: 0] = reg_stim_ch2_pulse_p1_stim2_pulse_wc;
    assign val_stim_ch2_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch2_pulse_p1[29:16] = reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux;
    assign val_stim_ch2_pulse_p1[31:30] = 2'b0;

    // stim_ch2_pulse_p2 @ 0x84
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch2_pulse_p2_stim2_pulse_gap <= 14'h0;
            reg_stim_ch2_pulse_p2_stim2_pulse_num <= 12'h0;
            reg_stim_ch2_pulse_p2_stim2_pol       <= 1'b0;
            reg_stim_ch2_pulse_p2_stim2_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH2_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch2_pulse_p2_stim2_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch2_pulse_p2_stim2_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch2_pulse_p2_stim2_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch2_pulse_p2_stim2_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch2_pulse_p2_stim2_pol              <= apb_wdata_i[   30];
                        reg_stim_ch2_pulse_p2_stim2_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim2_pulse_gap_o        = reg_stim_ch2_pulse_p2_stim2_pulse_gap;
    assign stim2_pulse_num_o        = reg_stim_ch2_pulse_p2_stim2_pulse_num;
    assign stim2_pol_o              = reg_stim_ch2_pulse_p2_stim2_pol;
    assign stim2_range_s            = reg_stim_ch2_pulse_p2_stim2_range;

    assign val_stim_ch2_pulse_p2[13: 0] = reg_stim_ch2_pulse_p2_stim2_pulse_gap;
    assign val_stim_ch2_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch2_pulse_p2[27:16] = reg_stim_ch2_pulse_p2_stim2_pulse_num;
    assign val_stim_ch2_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch2_pulse_p2[   30] = reg_stim_ch2_pulse_p2_stim2_pol;
    assign val_stim_ch2_pulse_p2[   31] = reg_stim_ch2_pulse_p2_stim2_range;

    // stim_ch3_p0 @ 0x88
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch3_p0_stim3_interval <= 16'h0;
            reg_stim_ch3_p0_stim3_ia_mux   <= 8'h0;
            reg_stim_ch3_p0_stim3_ic       <= 8'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH3_P0) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch3_p0_stim3_interval[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch3_p0_stim3_interval[15: 8] <= apb_wdata_i[15: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch3_p0_stim3_ia_mux  [ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch3_p0_stim3_ic      [ 7: 0] <= apb_wdata_i[31:24];
                    end
                end
            end
        end
    end
    assign stim3_interval_o        = reg_stim_ch3_p0_stim3_interval;
    assign stim3_ia_mux_s          = reg_stim_ch3_p0_stim3_ia_mux;
    assign stim3_ic_o              = reg_stim_ch3_p0_stim3_ic;

    assign val_stim_ch3_p0[15: 0] = reg_stim_ch3_p0_stim3_interval;
    assign val_stim_ch3_p0[23:16] = reg_stim_ch3_p0_stim3_ia_mux;
    assign val_stim_ch3_p0[31:24] = reg_stim_ch3_p0_stim3_ic;

    // stim_ch3_pulse_p1 @ 0x8c
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch3_pulse_p1_stim3_pulse_wc     <= 14'h0;
            reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux <= 14'h0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH3_PULSE_P1) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch3_pulse_p1_stim3_pulse_wc    [ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch3_pulse_p1_stim3_pulse_wc    [13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13: 8] <= apb_wdata_i[29:24];
                    end
                end
            end
        end
    end
    assign stim3_pulse_wc_o            = reg_stim_ch3_pulse_p1_stim3_pulse_wc;
    assign stim3_pulse_wa_mux_s        = reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux;

    assign val_stim_ch3_pulse_p1[13: 0] = reg_stim_ch3_pulse_p1_stim3_pulse_wc;
    assign val_stim_ch3_pulse_p1[15:14] = 2'b0;
    assign val_stim_ch3_pulse_p1[29:16] = reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux;
    assign val_stim_ch3_pulse_p1[31:30] = 2'b0;

    // stim_ch3_pulse_p2 @ 0x90
    always @(posedge apb_clk_i or negedge apb_resetn_i) begin
        if (apb_resetn_i == 1'b0) begin
            reg_stim_ch3_pulse_p2_stim3_pulse_gap <= 14'h0;
            reg_stim_ch3_pulse_p2_stim3_pulse_num <= 12'h0;
            reg_stim_ch3_pulse_p2_stim3_pol       <= 1'b0;
            reg_stim_ch3_pulse_p2_stim3_range     <= 1'b0;
        end else begin
            if (rf_w_sel && apb_enable_i) begin
                if (apb_addr_i == RA_STIM_CH3_PULSE_P2) begin
                    if (apb_strb_i[0] == 1'b1) begin
                        reg_stim_ch3_pulse_p2_stim3_pulse_gap[ 7: 0] <= apb_wdata_i[ 7: 0];
                    end
                    if (apb_strb_i[1] == 1'b1) begin
                        reg_stim_ch3_pulse_p2_stim3_pulse_gap[13: 8] <= apb_wdata_i[13: 8];
                    end
                    if (apb_strb_i[2] == 1'b1) begin
                        reg_stim_ch3_pulse_p2_stim3_pulse_num[ 7: 0] <= apb_wdata_i[23:16];
                    end
                    if (apb_strb_i[3] == 1'b1) begin
                        reg_stim_ch3_pulse_p2_stim3_pulse_num[11: 8] <= apb_wdata_i[27:24];
                        reg_stim_ch3_pulse_p2_stim3_pol              <= apb_wdata_i[   30];
                        reg_stim_ch3_pulse_p2_stim3_range            <= apb_wdata_i[   31];
                    end
                end
            end
        end
    end
    assign stim3_pulse_gap_o        = reg_stim_ch3_pulse_p2_stim3_pulse_gap;
    assign stim3_pulse_num_o        = reg_stim_ch3_pulse_p2_stim3_pulse_num;
    assign stim3_pol_o              = reg_stim_ch3_pulse_p2_stim3_pol;
    assign stim3_range_s            = reg_stim_ch3_pulse_p2_stim3_range;

    assign val_stim_ch3_pulse_p2[13: 0] = reg_stim_ch3_pulse_p2_stim3_pulse_gap;
    assign val_stim_ch3_pulse_p2[15:14] = 2'b0;
    assign val_stim_ch3_pulse_p2[27:16] = reg_stim_ch3_pulse_p2_stim3_pulse_num;
    assign val_stim_ch3_pulse_p2[29:28] = 2'b0;
    assign val_stim_ch3_pulse_p2[   30] = reg_stim_ch3_pulse_p2_stim3_pol;
    assign val_stim_ch3_pulse_p2[   31] = reg_stim_ch3_pulse_p2_stim3_range;


    /*************************************************************************/
    /* apb ready/error generate                                              */
    /*************************************************************************/
    always @(*) begin
        apb_ready = 1'b1;
        apb_slverr = 1'b0;
        if (rf_w_sel && apb_enable_i) begin
            apb_slverr = ~rf_write_permitted;
        end
        if (rf_r_sel && apb_enable_i) begin
            apb_slverr = ~rf_read_permitted;
        end
        /* icglue keep begin generate-apb-ready-error *//* icglue keep end */
    end
    assign apb_ready_o = apb_ready;
    assign apb_slverr_o = apb_slverr;

    /* icglue keep begin regfile-w_icons_top-code *//* icglue keep end */

    /*************************************************************************/
    /* Regfile registers (read-logic)                                        */
    /*************************************************************************/
    always @(*) begin
        rf_next_write_permitted = 1'b0;
        rf_next_read_permitted = 1'b1;
        case (apb_addr_i)
            RA_CHIP_STATUS_ID: begin
                apb_rf_r_data = val_chip_status_id;
            end
            RA_CHIP_ERROR_STATUS1: begin
                apb_rf_r_data = val_chip_error_status1;
                rf_next_write_permitted = 1'b1;
            end
            RA_CHIP_ERROR_STATUS2: begin
                apb_rf_r_data = val_chip_error_status2;
                rf_next_write_permitted = 1'b1;
            end
            RA_ADC_AMP1: begin
                apb_rf_r_data = val_adc_amp1;
                rf_next_write_permitted = 1'b1;
            end
            RA_ADC_AMP2: begin
                apb_rf_r_data = val_adc_amp2;
                rf_next_write_permitted = 1'b1;
            end
            RA_REC_STIM_CONTROL: begin
                apb_rf_r_data = val_rec_stim_control;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK0_P1: begin
                apb_rf_r_data = val_stim_mask0_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK0_P2: begin
                apb_rf_r_data = val_stim_mask0_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK1_P1: begin
                apb_rf_r_data = val_stim_mask1_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK1_P2: begin
                apb_rf_r_data = val_stim_mask1_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK2_P1: begin
                apb_rf_r_data = val_stim_mask2_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK2_P2: begin
                apb_rf_r_data = val_stim_mask2_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK3_P1: begin
                apb_rf_r_data = val_stim_mask3_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK3_P2: begin
                apb_rf_r_data = val_stim_mask3_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK4_P1: begin
                apb_rf_r_data = val_stim_mask4_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK4_P2: begin
                apb_rf_r_data = val_stim_mask4_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK5_P1: begin
                apb_rf_r_data = val_stim_mask5_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK5_P2: begin
                apb_rf_r_data = val_stim_mask5_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK6_P1: begin
                apb_rf_r_data = val_stim_mask6_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK6_P2: begin
                apb_rf_r_data = val_stim_mask6_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK7_P1: begin
                apb_rf_r_data = val_stim_mask7_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_MASK7_P2: begin
                apb_rf_r_data = val_stim_mask7_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_ENABLED_CH_REC_G1: begin
                apb_rf_r_data = val_enabled_ch_rec_g1;
                rf_next_write_permitted = 1'b1;
            end
            RA_ENABLED_CH_REC_G2: begin
                apb_rf_r_data = val_enabled_ch_rec_g2;
                rf_next_write_permitted = 1'b1;
            end
            RA_REC_DISCHARGE_CONTROL: begin
                apb_rf_r_data = val_rec_discharge_control;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH0_P0: begin
                apb_rf_r_data = val_stim_ch0_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH0_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch0_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH0_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch0_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH1_P0: begin
                apb_rf_r_data = val_stim_ch1_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH1_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch1_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH1_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch1_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH2_P0: begin
                apb_rf_r_data = val_stim_ch2_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH2_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch2_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH2_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch2_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH3_P0: begin
                apb_rf_r_data = val_stim_ch3_p0;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH3_PULSE_P1: begin
                apb_rf_r_data = val_stim_ch3_pulse_p1;
                rf_next_write_permitted = 1'b1;
            end
            RA_STIM_CH3_PULSE_P2: begin
                apb_rf_r_data = val_stim_ch3_pulse_p2;
                rf_next_write_permitted = 1'b1;
            end
            /* icglue keep begin regfile-w_icons_top-outputmux *//* icglue keep end */
            default: begin
                apb_rf_r_data = 32'h00000000;
                rf_next_read_permitted = 1'b0;
            end
        endcase
    end
    assign apb_rdata_o = apb_rf_r_data;
    /* icglue keep begin regfile-w_icons_top-outputcode *//* icglue keep end */
endmodule
