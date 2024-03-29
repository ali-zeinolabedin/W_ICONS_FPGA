/* icglue keep begin head */
/*
 * Module      : rec_stim64ch_macro
 * Author      : Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module rec_stim64ch_macro (
    clk_adc1_gated_i,
    clk_adc2_gated_i,
    reset_n_i,
    Bn1,
    Bp1,
    Bn2,
    Bp2,
    Bn3,
    Bp3,
    Bn4,
    Bp4,
    StimRange,
    Gain,
    GDis,
    adc2_smp_ctrl_i,
    adc1_smp_ctrl_i,
    adc_res1_o,
    adc_res2_o,
    mux_ctrl_adc1_i,
    mux_ctrl_adc2_i,
    EnStim,
    EnN,
    EnP,
    FDA,
    EnPow
);
    /* icglue keep begin parameters *//* icglue keep end */

    input         clk_adc1_gated_i;
    input         clk_adc2_gated_i;
    input         reset_n_i;
    input   [7:0] Bn1;
    input   [7:0] Bp1;
    input   [7:0] Bn2;
    input   [7:0] Bp2;
    input   [7:0] Bn3;
    input   [7:0] Bp3;
    input   [7:0] Bn4;
    input   [7:0] Bp4;
    input   [3:0] StimRange;
    input  [63:0] Gain;
    input         GDis;
    input         adc2_smp_ctrl_i;
    input         adc1_smp_ctrl_i;
    output        adc_res1_o;
    output        adc_res2_o;
    input   [4:0] mux_ctrl_adc1_i;
    input   [4:0] mux_ctrl_adc2_i;
    input  [63:0] EnStim;
    input   [3:0] EnN;
    input   [3:0] EnP;
    input         FDA;
    input  [63:0] EnPow;
    /* icglue keep begin declarations */
   
    /* icglue keep end */

    //not supported in iverilog
    //wire [17:0] test_adc_out [3:0];
    //Packed array supported
    reg              adc_res1;
    reg              adc_res2;
    reg              adc_res1_o;
    reg              adc_res2_o;
    reg [17:0] test_adc1_out     [31:0];
    reg [17:0] test_adc2_out     [31:0];
    reg [17:0] test_adc1_imp_out [31:0];
    reg [17:0] test_adc2_imp_out [31:0];
    reg [15:0]       i;
    reg [5:0]        counter;
    reg              cnt_en1, cnt_en2;
    reg [127:0] test_cathode       [63:0] ;
    reg         test_cathode_chk   [63:0] ;
    reg [127:0] test_anode         [63:0] ;
    reg         test_anode_chk     [63:0] ;
    reg [127:0] test_gap           [63:0] ;
    reg         test_gap_chk       [63:0] ;
    reg [127:0] test_interval      [63:0] ;
    reg         test_interval_chk  [63:0] ;
    reg [127:0] test_num           [63:0] ;
    reg         test_num_chk       [63:0] ;
    reg         test_interval_en   [63:0] ;
    reg [4:0]   ones_am            [63:0] ;
    reg               adc1_smp_ctrl_1d, adc2_smp_ctrl_1d;
    reg start_chk ;
    // inital delay to avoid printing check messages due to un-initialized states..>
    //...> of the port during the netlist simulation at the beginning
    initial begin
        start_chk = 1'b0;
        #500;
        start_chk = 1'b1;
    end

    initial begin
        counter         = 'b0;
        cnt_en1         = 'b0;
        cnt_en2         = 'b0;
        for ( i=0 ; i< 32; i = i +1) begin
            test_adc1_out[i]     = 18'h0720+ 2'b10*i;
            test_adc2_out[i]     = 18'h0920+ 2'b10*i;
            test_adc1_imp_out[i] = 18'h0320+ 2'b10*i;
            test_adc2_imp_out[i] = 18'h0220+ 2'b10*i;
        end
        for ( i=0 ; i< 4; i = i +1) begin
            test_cathode[i]  = 0;
            test_anode[i]    = 0;
            test_gap[i]      = 0;
            test_interval[i] = 0;
            test_num[i]      = 0;
            ones_am[i]       = 0;
        end
        for ( i=0 ; i< 4; i = i +1) begin
            test_cathode_chk[i]  = 0;
            test_anode_chk[i]    = 0;
            test_gap_chk[i]      = 0;
            test_interval_chk[i] = 0;
            test_num_chk[i]      = 0;
            test_interval_en[i]  = 0;
        end
    end

    always @(posedge clk_adc1_gated_i) begin
        if (cnt_en1 == 1'b1) begin
            //shifting all input data when only cnt_en is 1
            for ( i=0 ; i< 32; i = i +1) begin
                test_adc1_out[i]     <= test_adc1_out[i] << 1;
                test_adc1_imp_out[i] <= test_adc1_imp_out[i] << 1;
            end
        end else begin
            for ( i=0 ; i< 32; i = i +1) begin
                test_adc1_out[i]     <= 18'h0720+ 2'b10*i;
                test_adc1_imp_out[i] <= 18'h0320+ 2'b10*i;
            end
        end
        adc_res1_o       <= adc_res1;
        adc1_smp_ctrl_1d <= adc1_smp_ctrl_i;
    end

    always @(posedge clk_adc2_gated_i) begin
        if (cnt_en2 == 1'b1) begin
            //shifting all input data when only cnt_en is 1
            for ( i=0 ; i< 32; i = i +1) begin
                test_adc2_out[i]     <= test_adc2_out[i] << 1;
                test_adc2_imp_out[i] <= test_adc2_imp_out[i] << 1;
            end
        end else begin
            for ( i=0 ; i< 32; i = i +1) begin
                test_adc2_out[i]     <= 18'h0920+ 2'b10*i;
                test_adc2_imp_out[i] <= 18'h0220+ 2'b10*i;
            end
        end
        adc_res2_o       <= adc_res2;
        adc2_smp_ctrl_1d <= adc2_smp_ctrl_i;
    end

    always @(negedge adc1_smp_ctrl_i) begin
        cnt_en1  = 1'b1;
    end
    always @(posedge adc1_smp_ctrl_i) begin
        cnt_en1  = 1'b0;
    end

    always @(negedge adc2_smp_ctrl_i) begin
        cnt_en2  = 1'b1;
    end
    always @(posedge adc2_smp_ctrl_i) begin
        cnt_en2  = 1'b0;
    end
    always @(*) begin
        case (mux_ctrl_adc1_i)
            5'd00  :  adc_res1 = EnStim[0]  ? test_adc1_imp_out[0][17]  : test_adc1_out[0][17];
            5'd01  :  adc_res1 = EnStim[1]  ? test_adc1_imp_out[1][17]  : test_adc1_out[1][17];
            5'd02  :  adc_res1 = EnStim[2]  ? test_adc1_imp_out[2][17]  : test_adc1_out[2][17];
            5'd03  :  adc_res1 = EnStim[3]  ? test_adc1_imp_out[3][17]  : test_adc1_out[3][17];
            5'd04  :  adc_res1 = EnStim[4]  ? test_adc1_imp_out[4][17]  : test_adc1_out[4][17];
            5'd05  :  adc_res1 = EnStim[5]  ? test_adc1_imp_out[5][17]  : test_adc1_out[5][17];
            5'd06  :  adc_res1 = EnStim[6]  ? test_adc1_imp_out[6][17]  : test_adc1_out[6][17];
            5'd07  :  adc_res1 = EnStim[7]  ? test_adc1_imp_out[7][17]  : test_adc1_out[7][17];
            5'd08  :  adc_res1 = EnStim[8]  ? test_adc1_imp_out[8][17]  : test_adc1_out[8][17];
            5'd09  :  adc_res1 = EnStim[9]  ? test_adc1_imp_out[9][17]  : test_adc1_out[9][17];
            5'd10  :  adc_res1 = EnStim[10] ? test_adc1_imp_out[10][17] : test_adc1_out[10][17];
            5'd11  :  adc_res1 = EnStim[11] ? test_adc1_imp_out[11][17] : test_adc1_out[11][17];
            5'd12  :  adc_res1 = EnStim[12] ? test_adc1_imp_out[12][17] : test_adc1_out[12][17];
            5'd13  :  adc_res1 = EnStim[13] ? test_adc1_imp_out[13][17] : test_adc1_out[13][17];
            5'd14  :  adc_res1 = EnStim[14] ? test_adc1_imp_out[14][17] : test_adc1_out[14][17];
            5'd15  :  adc_res1 = EnStim[15] ? test_adc1_imp_out[15][17] : test_adc1_out[15][17];
            5'd16  :  adc_res1 = EnStim[16] ? test_adc1_imp_out[16][17] : test_adc1_out[16][17];
            5'd17  :  adc_res1 = EnStim[17] ? test_adc1_imp_out[17][17] : test_adc1_out[17][17];
            5'd18  :  adc_res1 = EnStim[18] ? test_adc1_imp_out[18][17] : test_adc1_out[18][17];
            5'd19  :  adc_res1 = EnStim[19] ? test_adc1_imp_out[19][17] : test_adc1_out[19][17];
            5'd20  :  adc_res1 = EnStim[20] ? test_adc1_imp_out[20][17] : test_adc1_out[20][17];
            5'd21  :  adc_res1 = EnStim[21] ? test_adc1_imp_out[21][17] : test_adc1_out[21][17];
            5'd22  :  adc_res1 = EnStim[22] ? test_adc1_imp_out[22][17] : test_adc1_out[22][17];
            5'd23  :  adc_res1 = EnStim[23] ? test_adc1_imp_out[23][17] : test_adc1_out[23][17];
            5'd24  :  adc_res1 = EnStim[24] ? test_adc1_imp_out[24][17] : test_adc1_out[24][17];
            5'd25  :  adc_res1 = EnStim[25] ? test_adc1_imp_out[25][17] : test_adc1_out[25][17];
            5'd26  :  adc_res1 = EnStim[26] ? test_adc1_imp_out[26][17] : test_adc1_out[26][17];
            5'd27  :  adc_res1 = EnStim[27] ? test_adc1_imp_out[27][17] : test_adc1_out[27][17];
            5'd28  :  adc_res1 = EnStim[28] ? test_adc1_imp_out[28][17] : test_adc1_out[28][17];
            5'd29  :  adc_res1 = EnStim[29] ? test_adc1_imp_out[29][17] : test_adc1_out[29][17];
            5'd30  :  adc_res1 = EnStim[30] ? test_adc1_imp_out[30][17] : test_adc1_out[30][17];
            5'd31  :  adc_res1 = EnStim[31] ? test_adc1_imp_out[31][17] : test_adc1_out[31][17];
     endcase
    end
    always @(*) begin
        case (mux_ctrl_adc2_i)
            5'd00  :  adc_res2 = EnStim[32]  ? test_adc2_imp_out[0][17]  : test_adc2_out[0][17];
            5'd01  :  adc_res2 = EnStim[33]  ? test_adc2_imp_out[1][17]  : test_adc2_out[1][17];
            5'd02  :  adc_res2 = EnStim[34]  ? test_adc2_imp_out[2][17]  : test_adc2_out[2][17];
            5'd03  :  adc_res2 = EnStim[35]  ? test_adc2_imp_out[3][17]  : test_adc2_out[3][17];
            5'd04  :  adc_res2 = EnStim[36]  ? test_adc2_imp_out[4][17]  : test_adc2_out[4][17];
            5'd05  :  adc_res2 = EnStim[37]  ? test_adc2_imp_out[5][17]  : test_adc2_out[5][17];
            5'd06  :  adc_res2 = EnStim[38]  ? test_adc2_imp_out[6][17]  : test_adc2_out[6][17];
            5'd07  :  adc_res2 = EnStim[39]  ? test_adc2_imp_out[7][17]  : test_adc2_out[7][17];
            5'd08  :  adc_res2 = EnStim[40]  ? test_adc2_imp_out[8][17]  : test_adc2_out[8][17];
            5'd09  :  adc_res2 = EnStim[41]  ? test_adc2_imp_out[9][17]  : test_adc2_out[9][17];
            5'd10  :  adc_res2 = EnStim[42] ? test_adc2_imp_out[10][17] : test_adc2_out[10][17];
            5'd11  :  adc_res2 = EnStim[43] ? test_adc2_imp_out[11][17] : test_adc2_out[11][17];
            5'd12  :  adc_res2 = EnStim[44] ? test_adc2_imp_out[12][17] : test_adc2_out[12][17];
            5'd13  :  adc_res2 = EnStim[45] ? test_adc2_imp_out[13][17] : test_adc2_out[13][17];
            5'd14  :  adc_res2 = EnStim[46] ? test_adc2_imp_out[14][17] : test_adc2_out[14][17];
            5'd15  :  adc_res2 = EnStim[47] ? test_adc2_imp_out[15][17] : test_adc2_out[15][17];
            5'd16  :  adc_res2 = EnStim[48] ? test_adc2_imp_out[16][17] : test_adc2_out[16][17];
            5'd17  :  adc_res2 = EnStim[49] ? test_adc2_imp_out[17][17] : test_adc2_out[17][17];
            5'd18  :  adc_res2 = EnStim[50] ? test_adc2_imp_out[18][17] : test_adc2_out[18][17];
            5'd19  :  adc_res2 = EnStim[51] ? test_adc2_imp_out[19][17] : test_adc2_out[19][17];
            5'd20  :  adc_res2 = EnStim[52] ? test_adc2_imp_out[20][17] : test_adc2_out[20][17];
            5'd21  :  adc_res2 = EnStim[53] ? test_adc2_imp_out[21][17] : test_adc2_out[21][17];
            5'd22  :  adc_res2 = EnStim[54] ? test_adc2_imp_out[22][17] : test_adc2_out[22][17];
            5'd23  :  adc_res2 = EnStim[55] ? test_adc2_imp_out[23][17] : test_adc2_out[23][17];
            5'd24  :  adc_res2 = EnStim[56] ? test_adc2_imp_out[24][17] : test_adc2_out[24][17];
            5'd25  :  adc_res2 = EnStim[57] ? test_adc2_imp_out[25][17] : test_adc2_out[25][17];
            5'd26  :  adc_res2 = EnStim[58] ? test_adc2_imp_out[26][17] : test_adc2_out[26][17];
            5'd27  :  adc_res2 = EnStim[59] ? test_adc2_imp_out[27][17] : test_adc2_out[27][17];
            5'd28  :  adc_res2 = EnStim[60] ? test_adc2_imp_out[28][17] : test_adc2_out[28][17];
            5'd29  :  adc_res2 = EnStim[61] ? test_adc2_imp_out[29][17] : test_adc2_out[29][17];
            5'd30  :  adc_res2 = EnStim[62] ? test_adc2_imp_out[30][17] : test_adc2_out[30][17];
            5'd31  :  adc_res2 = EnStim[63] ? test_adc2_imp_out[31][17] : test_adc2_out[31][17];
        endcase
    end


    // test the discharge_i
    always @(posedge clk_adc1_gated_i ) begin
        if (|EnPow == 1'b1) begin
            tb_check_discharge;
        end
    end

    always @(posedge clk_adc2_gated_i ) begin
        if (|EnPow == 1'b1) begin
            tb_check_discharge;
        end
    end


    always@(Gain) begin
        if( (|Gain  === 1'b1) || (|Gain === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Gain is not valid ");
            end
        end
    end

    always@(EnN) begin
        if( (|EnN === 1'b1) || (|EnN === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("EnN is not valid ");
            end
        end
    end


    always@(EnP) begin
        if( (|EnP === 1'b1) || (|EnP === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("EnP is not valid ");
            end
        end
    end

    always@(EnStim) begin
        if( (|EnStim  === 1'b1) || (|EnStim === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("EnStim is not valid ");
            end
        end
    end

    always@(StimRange) begin
        if( (|StimRange === 1'b1) || (|StimRange === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("StimRange_i is not valid ");
            end
        end
    end

    always@(EnPow) begin
        if( (|EnPow  === 1'b1) || (|EnPow  === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("en_rec_ch_i  is not valid ");
            end
        end
    end

    wire [4:0] ones_ch;
    assign ones_ch = count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});


    always @(Bp1) begin
        if( (|Bp1  === 1'b1) || (|Bp1 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp1 is not valid: %h ",Bp1);
            end
        end
    end

    always @(Bn1) begin
        if( (|Bn1  === 1'b1) || (|Bn1 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn1 is not valid ");
            end
        end
    end

    always @(Bp2) begin
        if( (|Bp2  === 1'b1) || (|Bp2 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp2 is not valid: %h ",Bp2);
            end
        end
    end

    always @(Bn2) begin
        if( (|Bn2  === 1'b1) || (|Bn2 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn2 is not valid ");
            end
        end
    end

    always @(Bp3) begin
        if( (|Bp3  === 1'b1) || (|Bp3 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp3 is not valid: %h ",Bp3);
            end
        end
    end

    always @(Bn3) begin
        if( (|Bn3  === 1'b1) || (|Bn3 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn3 is not valid ");
            end
        end
    end

    always @(Bp4) begin
        if( (|Bp4  === 1'b1) || (|Bp4 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp4 is not valid: %h ",Bp4);
            end
        end
    end

    always @(Bn4) begin
        if( (|Bn4  === 1'b1) || (|Bn4 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn4 is not valid ");
            end
        end
    end

    //Channel0
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REC_S)) begin
        if (EnN[0] == 1'b1) begin
            test_cathode_chk [0] <= 1'b1;
            test_cathode[0]      <= test_cathode[0] + 1'b1;

            if (!test_num_chk[0]) begin
                test_num[0]     <= test_num[0] + 1'b1;
                test_num_chk[0] <= 1'b1;
            end

        end else if ( (EnN[0] == 1'b0) && (test_cathode_chk[0]) ) begin
            test_cathode_chk [0] <= 1'b0;
            if ((test_cathode[0]/33) == tb_w_icons_top.wc_s[0]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 0,test_cathode[0]/33,tb_w_icons_top.wc_s[0]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 0,test_cathode[0]/33,tb_w_icons_top.wc_s[0]);
                tb_stim_err;
            end
            test_cathode[0] <= 0;
            test_num_chk[0] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REC_S)) begin
        if (EnP[0] == 1'b1) begin
            test_anode_chk [0] <= 1'b1;
            test_anode[0]      <= test_anode[0] + 1'b1;

        end else if ( (EnP[0] == 1'b0) && (test_anode_chk[0]) ) begin
            test_anode_chk [0] <= 1'b0;
            if ((test_anode[0]/33) == tb_w_icons_top.wc_s[0]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 0,test_anode[0]/33,tb_w_icons_top.wc_s[0]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 0,test_anode[0]/33,tb_w_icons_top.wc_s[0]);
                tb_stim_err;
            end
            test_anode[0] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if (EnN[0] == 1'b1) begin
            test_gap[0]      <= 0;
            test_gap_chk [0] <= 1'b1;
        end else if ( (EnN[0] == 1'b0) && (EnP[0] == 1'b0) && (test_gap_chk [0]) ) begin
            test_gap[0] <= test_gap[0] + 1'b1;
        end else if ((EnP[0] == 1'b1) && (test_gap_chk [0])) begin

            if ((test_gap[0]/33) == tb_w_icons_top.gap_s[0]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 0,test_gap[0]/33,tb_w_icons_top.gap_s[0]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 0,test_gap[0]/33,tb_w_icons_top.gap_s[0]);
                tb_stim_err;
            end
            test_gap[0]      <= 0;
            test_gap_chk [0] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if (test_interval_en[0] && (test_num[0] < tb_w_icons_top.num_s[0]) ) begin
            if (test_num[0] < tb_w_icons_top.interval_s[0]) begin
                if (EnP[0] == 1'b1) begin
                    test_interval[0]      <= 0;
                    test_interval_chk [0] <= 1'b1;
                end else if ( (EnP[0] == 1'b0) && (EnN[0] == 1'b0) && (test_interval_chk[0]) ) begin
                    test_interval[0] <= test_interval[0] + 1'b1;
                end else if ((EnN[0] == 1'b1) && (test_interval_chk[0])) begin

                    if ((test_interval[0]/33) == tb_w_icons_top.interval_s[0]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 0,test_interval[0]/33,tb_w_icons_top.interval_s[0]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 0,test_interval[0]/33,tb_w_icons_top.interval_s[0]);
                        tb_stim_err;
                    end
                    test_interval[0]      <= 0;
                    test_interval_chk [0] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if ((EnN[0] == 1'b1) && (test_num[0] < tb_w_icons_top.num_s[0]) && (test_num_chk[0] == 1'b0)) begin
            test_num[0]         <= test_num[0] + 1'b1;
            test_num_chk[0]     <= 1'b1;
            test_interval_en[0] <= 1'b1;

        end else if ((EnP[0] == 1'b1) && (test_num[0] < tb_w_icons_top.num_s[0]) && (test_num_chk[0] == 1'b1)) begin
            test_num_chk[0]     <= 1'b0;


        end else if ( ((EnN[0] == 1'b0) && (EnP[0] == 1'b0) && (test_num[0] == tb_w_icons_top.num_s[0])) ) begin
            test_num[0]         <= 0;
            test_num_chk[0]     <= 1'b0;
            test_interval_en[0] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if ((EnN[0] == 1'b1) || (EnP[0] == 1'b1)) begin
            if ( (Bn1 == tb_w_icons_top.ic_s[0]) && (Bp1 == tb_w_icons_top.ic_s[0]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 0,Bn1,Bp1,tb_w_icons_top.ic_s[0]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        //ones_am[0] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",0 );
                tb_stim_err;
            end
        end
    end


    //Channel1
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REC_S)) begin
        if (EnN[1] == 1'b1) begin
            test_cathode_chk [1] <= 1'b1;
            test_cathode[1]      <= test_cathode[1] + 1'b1;

            if (!test_num_chk[1]) begin
                test_num[1]     <= test_num[1] + 1'b1;
                test_num_chk[1] <= 1'b1;
            end

        end else if ( (EnN[1] == 1'b0) && (test_cathode_chk[1]) ) begin
            test_cathode_chk [1] <= 1'b0;
            if ((test_cathode[1]/33) == tb_w_icons_top.wc_s[1]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 1,test_cathode[1]/33,tb_w_icons_top.wc_s[1]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 1,test_cathode[1]/33,tb_w_icons_top.wc_s[1]);
                tb_stim_err;
            end
            test_cathode[1] <= 0;
            test_num_chk[1] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REC_S)) begin
        if (EnP[1] == 1'b1) begin
            test_anode_chk [1] <= 1'b1;
            test_anode[1]      <= test_anode[1] + 1'b1;

        end else if ( (EnP[1] == 1'b0) && (test_anode_chk[1]) ) begin
            test_anode_chk [1] <= 1'b0;
            if ((test_anode[1]/33) == tb_w_icons_top.wc_s[1]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 1,test_anode[1]/33,tb_w_icons_top.wc_s[1]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 1,test_anode[1]/33,tb_w_icons_top.wc_s[1]);
                tb_stim_err;
            end
            test_anode[1] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if (EnN[1] == 1'b1) begin
            test_gap[1]      <= 0;
            test_gap_chk [1] <= 1'b1;
        end else if ( (EnN[1] == 1'b0) && (EnP[1] == 1'b0) && (test_gap_chk [1]) ) begin
            test_gap[1] <= test_gap[1] + 1'b1;
        end else if ((EnP[1] == 1'b1) && (test_gap_chk [1])) begin

            if ((test_gap[1]/33) == tb_w_icons_top.gap_s[1]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 1,test_gap[1]/33,tb_w_icons_top.gap_s[1]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 1,test_gap[1]/33,tb_w_icons_top.gap_s[1]);
                tb_stim_err;
            end
            test_gap[1]      <= 0;
            test_gap_chk [1] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if (test_interval_en[1] && (test_num[1] < tb_w_icons_top.num_s[1]) ) begin
            if (test_num[1] < tb_w_icons_top.interval_s[1]) begin
                if (EnP[1] == 1'b1) begin
                    test_interval[1]      <= 0;
                    test_interval_chk [1] <= 1'b1;
                end else if ( (EnP[1] == 1'b0) && (EnN[1] == 1'b0) && (test_interval_chk[1]) ) begin
                    test_interval[1] <= test_interval[1] + 1'b1;
                end else if ((EnN[1] == 1'b1) && (test_interval_chk[1])) begin

                    if ((test_interval[1]/33) == tb_w_icons_top.interval_s[1]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 1,test_interval[1]/33,tb_w_icons_top.interval_s[1]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 1,test_interval[1]/33,tb_w_icons_top.interval_s[1]);
                        tb_stim_err;
                    end
                    test_interval[1]      <= 0;
                    test_interval_chk [1] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if ((EnN[1] == 1'b1) && (test_num[1] < tb_w_icons_top.num_s[1]) && (test_num_chk[1] == 1'b0)) begin
            test_num[1]         <= test_num[1] + 1'b1;
            test_num_chk[1]     <= 1'b1;
            test_interval_en[1] <= 1'b1;

        end else if ((EnP[1] == 1'b1) && (test_num[1] < tb_w_icons_top.num_s[1]) && (test_num_chk[1] == 1'b1)) begin
            test_num_chk[1]     <= 1'b0;


        end else if ( ((EnN[1] == 1'b0) && (EnP[1] == 1'b0) && (test_num[1] == tb_w_icons_top.num_s[1])) ) begin
            test_num[1]         <= 0;
            test_num_chk[1]     <= 1'b0;
            test_interval_en[1] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if ((EnN[1] == 1'b1) || (EnP[1] == 1'b1)) begin
            if ( (Bn2 == tb_w_icons_top.ic_s[1]) && (Bp2 == tb_w_icons_top.ic_s[1]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 1,Bn2,Bp2,tb_w_icons_top.ic_s[1]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        //ones_am[1] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",1 );
                tb_stim_err;
            end
        end
    end


    //Channel2
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REC_S)) begin
        if (EnN[2] == 1'b1) begin
            test_cathode_chk [2] <= 1'b1;
            test_cathode[2]      <= test_cathode[2] + 1'b1;

            if (!test_num_chk[2]) begin
                test_num[2]     <= test_num[2] + 1'b1;
                test_num_chk[2] <= 1'b1;
            end

        end else if ( (EnN[2] == 1'b0) && (test_cathode_chk[2]) ) begin
            test_cathode_chk [2] <= 1'b0;
            if ((test_cathode[2]/33) == tb_w_icons_top.wc_s[2]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 2,test_cathode[2]/33,tb_w_icons_top.wc_s[2]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 2,test_cathode[2]/33,tb_w_icons_top.wc_s[2]);
                tb_stim_err;
            end
            test_cathode[2] <= 0;
            test_num_chk[2] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REC_S)) begin
        if (EnP[2] == 1'b1) begin
            test_anode_chk [2] <= 1'b1;
            test_anode[2]      <= test_anode[2] + 1'b1;

        end else if ( (EnP[2] == 1'b0) && (test_anode_chk[2]) ) begin
            test_anode_chk [2] <= 1'b0;
            if ((test_anode[2]/33) == tb_w_icons_top.wc_s[2]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 2,test_anode[2]/33,tb_w_icons_top.wc_s[2]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 2,test_anode[2]/33,tb_w_icons_top.wc_s[2]);
                tb_stim_err;
            end
            test_anode[2] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if (EnN[2] == 1'b1) begin
            test_gap[2]      <= 0;
            test_gap_chk [2] <= 1'b1;
        end else if ( (EnN[2] == 1'b0) && (EnP[2] == 1'b0) && (test_gap_chk [2]) ) begin
            test_gap[2] <= test_gap[2] + 1'b1;
        end else if ((EnP[2] == 1'b1) && (test_gap_chk [2])) begin

            if ((test_gap[2]/33) == tb_w_icons_top.gap_s[2]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 2,test_gap[2]/33,tb_w_icons_top.gap_s[2]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 2,test_gap[2]/33,tb_w_icons_top.gap_s[2]);
                tb_stim_err;
            end
            test_gap[2]      <= 0;
            test_gap_chk [2] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if (test_interval_en[2] && (test_num[2] < tb_w_icons_top.num_s[2]) ) begin
            if (test_num[2] < tb_w_icons_top.interval_s[2]) begin
                if (EnP[2] == 1'b1) begin
                    test_interval[2]      <= 0;
                    test_interval_chk [2] <= 1'b1;
                end else if ( (EnP[2] == 1'b0) && (EnN[2] == 1'b0) && (test_interval_chk[2]) ) begin
                    test_interval[2] <= test_interval[2] + 1'b1;
                end else if ((EnN[2] == 1'b1) && (test_interval_chk[2])) begin

                    if ((test_interval[2]/33) == tb_w_icons_top.interval_s[2]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 2,test_interval[2]/33,tb_w_icons_top.interval_s[2]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 2,test_interval[2]/33,tb_w_icons_top.interval_s[2]);
                        tb_stim_err;
                    end
                    test_interval[2]      <= 0;
                    test_interval_chk [2] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if ((EnN[2] == 1'b1) && (test_num[2] < tb_w_icons_top.num_s[2]) && (test_num_chk[2] == 1'b0)) begin
            test_num[2]         <= test_num[2] + 1'b1;
            test_num_chk[2]     <= 1'b1;
            test_interval_en[2] <= 1'b1;

        end else if ((EnP[2] == 1'b1) && (test_num[2] < tb_w_icons_top.num_s[2]) && (test_num_chk[2] == 1'b1)) begin
            test_num_chk[2]     <= 1'b0;


        end else if ( ((EnN[2] == 1'b0) && (EnP[2] == 1'b0) && (test_num[2] == tb_w_icons_top.num_s[2])) ) begin
            test_num[2]         <= 0;
            test_num_chk[2]     <= 1'b0;
            test_interval_en[2] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if ((EnN[2] == 1'b1) || (EnP[2] == 1'b1)) begin
            if ( (Bn3 == tb_w_icons_top.ic_s[2]) && (Bp3 == tb_w_icons_top.ic_s[2]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 2,Bn3,Bp3,tb_w_icons_top.ic_s[2]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        //ones_am[2] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",2 );
                tb_stim_err;
            end
        end
    end


    //Channel3
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REC_S)) begin
        if (EnN[3] == 1'b1) begin
            test_cathode_chk [3] <= 1'b1;
            test_cathode[3]      <= test_cathode[3] + 1'b1;

            if (!test_num_chk[3]) begin
                test_num[3]     <= test_num[3] + 1'b1;
                test_num_chk[3] <= 1'b1;
            end

        end else if ( (EnN[3] == 1'b0) && (test_cathode_chk[3]) ) begin
            test_cathode_chk [3] <= 1'b0;
            if ((test_cathode[3]/33) == tb_w_icons_top.wc_s[3]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 3,test_cathode[3]/33,tb_w_icons_top.wc_s[3]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 3,test_cathode[3]/33,tb_w_icons_top.wc_s[3]);
                tb_stim_err;
            end
            test_cathode[3] <= 0;
            test_num_chk[3] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REC_S)) begin
        if (EnP[3] == 1'b1) begin
            test_anode_chk [3] <= 1'b1;
            test_anode[3]      <= test_anode[3] + 1'b1;

        end else if ( (EnP[3] == 1'b0) && (test_anode_chk[3]) ) begin
            test_anode_chk [3] <= 1'b0;
            if ((test_anode[3]/33) == tb_w_icons_top.wc_s[3]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 3,test_anode[3]/33,tb_w_icons_top.wc_s[3]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 3,test_anode[3]/33,tb_w_icons_top.wc_s[3]);
                tb_stim_err;
            end
            test_anode[3] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if (EnN[3] == 1'b1) begin
            test_gap[3]      <= 0;
            test_gap_chk [3] <= 1'b1;
        end else if ( (EnN[3] == 1'b0) && (EnP[3] == 1'b0) && (test_gap_chk [3]) ) begin
            test_gap[3] <= test_gap[3] + 1'b1;
        end else if ((EnP[3] == 1'b1) && (test_gap_chk [3])) begin

            if ((test_gap[3]/33) == tb_w_icons_top.gap_s[3]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 3,test_gap[3]/33,tb_w_icons_top.gap_s[3]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 3,test_gap[3]/33,tb_w_icons_top.gap_s[3]);
                tb_stim_err;
            end
            test_gap[3]      <= 0;
            test_gap_chk [3] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if (test_interval_en[3] && (test_num[3] < tb_w_icons_top.num_s[3]) ) begin
            if (test_num[3] < tb_w_icons_top.interval_s[3]) begin
                if (EnP[3] == 1'b1) begin
                    test_interval[3]      <= 0;
                    test_interval_chk [3] <= 1'b1;
                end else if ( (EnP[3] == 1'b0) && (EnN[3] == 1'b0) && (test_interval_chk[3]) ) begin
                    test_interval[3] <= test_interval[3] + 1'b1;
                end else if ((EnN[3] == 1'b1) && (test_interval_chk[3])) begin

                    if ((test_interval[3]/33) == tb_w_icons_top.interval_s[3]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 3,test_interval[3]/33,tb_w_icons_top.interval_s[3]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 3,test_interval[3]/33,tb_w_icons_top.interval_s[3]);
                        tb_stim_err;
                    end
                    test_interval[3]      <= 0;
                    test_interval_chk [3] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if ((EnN[3] == 1'b1) && (test_num[3] < tb_w_icons_top.num_s[3]) && (test_num_chk[3] == 1'b0)) begin
            test_num[3]         <= test_num[3] + 1'b1;
            test_num_chk[3]     <= 1'b1;
            test_interval_en[3] <= 1'b1;

        end else if ((EnP[3] == 1'b1) && (test_num[3] < tb_w_icons_top.num_s[3]) && (test_num_chk[3] == 1'b1)) begin
            test_num_chk[3]     <= 1'b0;


        end else if ( ((EnN[3] == 1'b0) && (EnP[3] == 1'b0) && (test_num[3] == tb_w_icons_top.num_s[3])) ) begin
            test_num[3]         <= 0;
            test_num_chk[3]     <= 1'b0;
            test_interval_en[3] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        if ((EnN[3] == 1'b1) || (EnP[3] == 1'b1)) begin
            if ( (Bn4 == tb_w_icons_top.ic_s[3]) && (Bp4 == tb_w_icons_top.ic_s[3]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 3,Bn4,Bp4,tb_w_icons_top.ic_s[3]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REC_S) ) begin
        //ones_am[3] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",3 );
                tb_stim_err;
            end
        end
    end


endmodule
