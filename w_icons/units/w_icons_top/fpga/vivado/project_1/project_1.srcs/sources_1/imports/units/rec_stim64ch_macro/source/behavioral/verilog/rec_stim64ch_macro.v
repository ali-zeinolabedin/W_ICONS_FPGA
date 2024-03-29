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
    
    
    reg              adc_res1;
    reg              adc_res2;
    reg              adc_res1_o;
    reg              adc_res2_o;
    reg [17:0] test_adc1_out     [31:0];
    reg [17:0] test_adc2_out     [31:0];
    reg [17:0] test_adc1_imp_out [31:0];
    reg [17:0] test_adc2_imp_out [31:0];
    reg [15:0]       i;
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

    always @(posedge clk_adc1_gated_i or negedge reset_n_i) begin
         if (reset_n_i == 1'b0) begin
            for ( i=0 ; i< 32; i = i +1) begin
                test_adc1_out[i]     = 18'h0720+ 2'b10*i;
                test_adc1_imp_out[i] = 18'h0320+ 2'b10*i;
            end

        end else begin
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
        end
    end

    always @(posedge clk_adc2_gated_i or negedge reset_n_i) begin
        if (reset_n_i == 1'b0) begin
            for ( i=0 ; i< 32; i = i +1) begin
                test_adc2_out[i]     = 18'h0920+ 2'b10*i;
                test_adc2_imp_out[i] = 18'h0220+ 2'b10*i;
            end

        end else begin
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
        end
    end

    always @(*) begin
        if (adc1_smp_ctrl_i == 1'b0) begin
            cnt_en1  = 1'b1;
        end else begin
            cnt_en1  = 1'b0;
        end
    end

    always @(*) begin
        if (adc2_smp_ctrl_i == 1'b0) begin
            cnt_en2  = 1'b1;
        end else begin
            cnt_en2  = 1'b0;
        end
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

    // synthesis translate_off

    initial begin
        for ( i=0 ; i< 64; i = i +1) begin
            test_cathode[i]  = 0;
            test_anode[i]    = 0;
            test_gap[i]      = 0;
            test_interval[i] = 0;
            test_num[i]      = 0;
            ones_am[i]       = 0;
        end
        for ( i=0 ; i< 64; i = i +1) begin
            test_cathode_chk[i]  = 0;
            test_anode_chk[i]    = 0;
            test_gap_chk[i]      = 0;
            test_interval_chk[i] = 0;
            test_num_chk[i]      = 0;
            test_interval_en[i]  = 0;
        end
    end

    reg start_chk ;
    // inital delay to avoid printing check messages due to un-initialized states..>
    //...> of the port during the netlist simulation at the beginning
    initial begin
        start_chk = 1'b0;
        #500;
        start_chk = 1'b1;
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
                $display("en_rec_ch32_i  is not valid ");
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




    always @(Bp5) begin
        if( (|Bp5  === 1'b1) || (|Bp5 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp5 is not valid: %h ",Bp5);
            end
        end
    end

    always @(Bn5) begin
        if( (|Bn5  === 1'b1) || (|Bn5 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn5 is not valid ");
            end
        end
    end




    always @(Bp6) begin
        if( (|Bp6  === 1'b1) || (|Bp6 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp6 is not valid: %h ",Bp6);
            end
        end
    end

    always @(Bn6) begin
        if( (|Bn6  === 1'b1) || (|Bn6 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn6 is not valid ");
            end
        end
    end




    always @(Bp7) begin
        if( (|Bp7  === 1'b1) || (|Bp7 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp7 is not valid: %h ",Bp7);
            end
        end
    end

    always @(Bn7) begin
        if( (|Bn7  === 1'b1) || (|Bn7 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn7 is not valid ");
            end
        end
    end




    always @(Bp8) begin
        if( (|Bp8  === 1'b1) || (|Bp8 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp8 is not valid: %h ",Bp8);
            end
        end
    end

    always @(Bn8) begin
        if( (|Bn8  === 1'b1) || (|Bn8 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn8 is not valid ");
            end
        end
    end




    always @(Bp9) begin
        if( (|Bp9  === 1'b1) || (|Bp9 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp9 is not valid: %h ",Bp9);
            end
        end
    end

    always @(Bn9) begin
        if( (|Bn9  === 1'b1) || (|Bn9 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn9 is not valid ");
            end
        end
    end




    always @(Bp10) begin
        if( (|Bp10  === 1'b1) || (|Bp10 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp10 is not valid: %h ",Bp10);
            end
        end
    end

    always @(Bn10) begin
        if( (|Bn10  === 1'b1) || (|Bn10 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn10 is not valid ");
            end
        end
    end




    always @(Bp11) begin
        if( (|Bp11  === 1'b1) || (|Bp11 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp11 is not valid: %h ",Bp11);
            end
        end
    end

    always @(Bn11) begin
        if( (|Bn11  === 1'b1) || (|Bn11 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn11 is not valid ");
            end
        end
    end




    always @(Bp12) begin
        if( (|Bp12  === 1'b1) || (|Bp12 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp12 is not valid: %h ",Bp12);
            end
        end
    end

    always @(Bn12) begin
        if( (|Bn12  === 1'b1) || (|Bn12 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn12 is not valid ");
            end
        end
    end




    always @(Bp13) begin
        if( (|Bp13  === 1'b1) || (|Bp13 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp13 is not valid: %h ",Bp13);
            end
        end
    end

    always @(Bn13) begin
        if( (|Bn13  === 1'b1) || (|Bn13 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn13 is not valid ");
            end
        end
    end




    always @(Bp14) begin
        if( (|Bp14  === 1'b1) || (|Bp14 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp14 is not valid: %h ",Bp14);
            end
        end
    end

    always @(Bn14) begin
        if( (|Bn14  === 1'b1) || (|Bn14 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn14 is not valid ");
            end
        end
    end




    always @(Bp15) begin
        if( (|Bp15  === 1'b1) || (|Bp15 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp15 is not valid: %h ",Bp15);
            end
        end
    end

    always @(Bn15) begin
        if( (|Bn15  === 1'b1) || (|Bn15 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn15 is not valid ");
            end
        end
    end




    always @(Bp16) begin
        if( (|Bp16  === 1'b1) || (|Bp16 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp16 is not valid: %h ",Bp16);
            end
        end
    end

    always @(Bn16) begin
        if( (|Bn16  === 1'b1) || (|Bn16 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn16 is not valid ");
            end
        end
    end




    always @(Bp17) begin
        if( (|Bp17  === 1'b1) || (|Bp17 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp17 is not valid: %h ",Bp17);
            end
        end
    end

    always @(Bn17) begin
        if( (|Bn17  === 1'b1) || (|Bn17 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn17 is not valid ");
            end
        end
    end




    always @(Bp18) begin
        if( (|Bp18  === 1'b1) || (|Bp18 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp18 is not valid: %h ",Bp18);
            end
        end
    end

    always @(Bn18) begin
        if( (|Bn18  === 1'b1) || (|Bn18 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn18 is not valid ");
            end
        end
    end




    always @(Bp19) begin
        if( (|Bp19  === 1'b1) || (|Bp19 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp19 is not valid: %h ",Bp19);
            end
        end
    end

    always @(Bn19) begin
        if( (|Bn19  === 1'b1) || (|Bn19 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn19 is not valid ");
            end
        end
    end




    always @(Bp20) begin
        if( (|Bp20  === 1'b1) || (|Bp20 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp20 is not valid: %h ",Bp20);
            end
        end
    end

    always @(Bn20) begin
        if( (|Bn20  === 1'b1) || (|Bn20 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn20 is not valid ");
            end
        end
    end




    always @(Bp21) begin
        if( (|Bp21  === 1'b1) || (|Bp21 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp21 is not valid: %h ",Bp21);
            end
        end
    end

    always @(Bn21) begin
        if( (|Bn21  === 1'b1) || (|Bn21 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn21 is not valid ");
            end
        end
    end




    always @(Bp22) begin
        if( (|Bp22  === 1'b1) || (|Bp22 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp22 is not valid: %h ",Bp22);
            end
        end
    end

    always @(Bn22) begin
        if( (|Bn22  === 1'b1) || (|Bn22 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn22 is not valid ");
            end
        end
    end




    always @(Bp23) begin
        if( (|Bp23  === 1'b1) || (|Bp23 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp23 is not valid: %h ",Bp23);
            end
        end
    end

    always @(Bn23) begin
        if( (|Bn23  === 1'b1) || (|Bn23 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn23 is not valid ");
            end
        end
    end




    always @(Bp24) begin
        if( (|Bp24  === 1'b1) || (|Bp24 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp24 is not valid: %h ",Bp24);
            end
        end
    end

    always @(Bn24) begin
        if( (|Bn24  === 1'b1) || (|Bn24 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn24 is not valid ");
            end
        end
    end




    always @(Bp25) begin
        if( (|Bp25  === 1'b1) || (|Bp25 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp25 is not valid: %h ",Bp25);
            end
        end
    end

    always @(Bn25) begin
        if( (|Bn25  === 1'b1) || (|Bn25 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn25 is not valid ");
            end
        end
    end




    always @(Bp26) begin
        if( (|Bp26  === 1'b1) || (|Bp26 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp26 is not valid: %h ",Bp26);
            end
        end
    end

    always @(Bn26) begin
        if( (|Bn26  === 1'b1) || (|Bn26 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn26 is not valid ");
            end
        end
    end




    always @(Bp27) begin
        if( (|Bp27  === 1'b1) || (|Bp27 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp27 is not valid: %h ",Bp27);
            end
        end
    end

    always @(Bn27) begin
        if( (|Bn27  === 1'b1) || (|Bn27 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn27 is not valid ");
            end
        end
    end




    always @(Bp28) begin
        if( (|Bp28  === 1'b1) || (|Bp28 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp28 is not valid: %h ",Bp28);
            end
        end
    end

    always @(Bn28) begin
        if( (|Bn28  === 1'b1) || (|Bn28 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn28 is not valid ");
            end
        end
    end




    always @(Bp29) begin
        if( (|Bp29  === 1'b1) || (|Bp29 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp29 is not valid: %h ",Bp29);
            end
        end
    end

    always @(Bn29) begin
        if( (|Bn29  === 1'b1) || (|Bn29 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn29 is not valid ");
            end
        end
    end




    always @(Bp30) begin
        if( (|Bp30  === 1'b1) || (|Bp30 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp30 is not valid: %h ",Bp30);
            end
        end
    end

    always @(Bn30) begin
        if( (|Bn30  === 1'b1) || (|Bn30 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn30 is not valid ");
            end
        end
    end




    always @(Bp31) begin
        if( (|Bp31  === 1'b1) || (|Bp31 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp31 is not valid: %h ",Bp31);
            end
        end
    end

    always @(Bn31) begin
        if( (|Bn31  === 1'b1) || (|Bn31 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn31 is not valid ");
            end
        end
    end




    always @(Bp32) begin
        if( (|Bp32  === 1'b1) || (|Bp32 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp32 is not valid: %h ",Bp32);
            end
        end
    end

    always @(Bn32) begin
        if( (|Bn32  === 1'b1) || (|Bn32 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn32 is not valid ");
            end
        end
    end




    always @(Bp33) begin
        if( (|Bp33  === 1'b1) || (|Bp33 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp33 is not valid: %h ",Bp33);
            end
        end
    end

    always @(Bn33) begin
        if( (|Bn33  === 1'b1) || (|Bn33 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn33 is not valid ");
            end
        end
    end




    always @(Bp34) begin
        if( (|Bp34  === 1'b1) || (|Bp34 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp34 is not valid: %h ",Bp34);
            end
        end
    end

    always @(Bn34) begin
        if( (|Bn34  === 1'b1) || (|Bn34 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn34 is not valid ");
            end
        end
    end




    always @(Bp35) begin
        if( (|Bp35  === 1'b1) || (|Bp35 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp35 is not valid: %h ",Bp35);
            end
        end
    end

    always @(Bn35) begin
        if( (|Bn35  === 1'b1) || (|Bn35 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn35 is not valid ");
            end
        end
    end




    always @(Bp36) begin
        if( (|Bp36  === 1'b1) || (|Bp36 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp36 is not valid: %h ",Bp36);
            end
        end
    end

    always @(Bn36) begin
        if( (|Bn36  === 1'b1) || (|Bn36 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn36 is not valid ");
            end
        end
    end




    always @(Bp37) begin
        if( (|Bp37  === 1'b1) || (|Bp37 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp37 is not valid: %h ",Bp37);
            end
        end
    end

    always @(Bn37) begin
        if( (|Bn37  === 1'b1) || (|Bn37 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn37 is not valid ");
            end
        end
    end




    always @(Bp38) begin
        if( (|Bp38  === 1'b1) || (|Bp38 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp38 is not valid: %h ",Bp38);
            end
        end
    end

    always @(Bn38) begin
        if( (|Bn38  === 1'b1) || (|Bn38 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn38 is not valid ");
            end
        end
    end




    always @(Bp39) begin
        if( (|Bp39  === 1'b1) || (|Bp39 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp39 is not valid: %h ",Bp39);
            end
        end
    end

    always @(Bn39) begin
        if( (|Bn39  === 1'b1) || (|Bn39 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn39 is not valid ");
            end
        end
    end




    always @(Bp40) begin
        if( (|Bp40  === 1'b1) || (|Bp40 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp40 is not valid: %h ",Bp40);
            end
        end
    end

    always @(Bn40) begin
        if( (|Bn40  === 1'b1) || (|Bn40 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn40 is not valid ");
            end
        end
    end




    always @(Bp41) begin
        if( (|Bp41  === 1'b1) || (|Bp41 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp41 is not valid: %h ",Bp41);
            end
        end
    end

    always @(Bn41) begin
        if( (|Bn41  === 1'b1) || (|Bn41 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn41 is not valid ");
            end
        end
    end




    always @(Bp42) begin
        if( (|Bp42  === 1'b1) || (|Bp42 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp42 is not valid: %h ",Bp42);
            end
        end
    end

    always @(Bn42) begin
        if( (|Bn42  === 1'b1) || (|Bn42 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn42 is not valid ");
            end
        end
    end




    always @(Bp43) begin
        if( (|Bp43  === 1'b1) || (|Bp43 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp43 is not valid: %h ",Bp43);
            end
        end
    end

    always @(Bn43) begin
        if( (|Bn43  === 1'b1) || (|Bn43 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn43 is not valid ");
            end
        end
    end




    always @(Bp44) begin
        if( (|Bp44  === 1'b1) || (|Bp44 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp44 is not valid: %h ",Bp44);
            end
        end
    end

    always @(Bn44) begin
        if( (|Bn44  === 1'b1) || (|Bn44 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn44 is not valid ");
            end
        end
    end




    always @(Bp45) begin
        if( (|Bp45  === 1'b1) || (|Bp45 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp45 is not valid: %h ",Bp45);
            end
        end
    end

    always @(Bn45) begin
        if( (|Bn45  === 1'b1) || (|Bn45 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn45 is not valid ");
            end
        end
    end




    always @(Bp46) begin
        if( (|Bp46  === 1'b1) || (|Bp46 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp46 is not valid: %h ",Bp46);
            end
        end
    end

    always @(Bn46) begin
        if( (|Bn46  === 1'b1) || (|Bn46 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn46 is not valid ");
            end
        end
    end




    always @(Bp47) begin
        if( (|Bp47  === 1'b1) || (|Bp47 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp47 is not valid: %h ",Bp47);
            end
        end
    end

    always @(Bn47) begin
        if( (|Bn47  === 1'b1) || (|Bn47 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn47 is not valid ");
            end
        end
    end




    always @(Bp48) begin
        if( (|Bp48  === 1'b1) || (|Bp48 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp48 is not valid: %h ",Bp48);
            end
        end
    end

    always @(Bn48) begin
        if( (|Bn48  === 1'b1) || (|Bn48 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn48 is not valid ");
            end
        end
    end




    always @(Bp49) begin
        if( (|Bp49  === 1'b1) || (|Bp49 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp49 is not valid: %h ",Bp49);
            end
        end
    end

    always @(Bn49) begin
        if( (|Bn49  === 1'b1) || (|Bn49 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn49 is not valid ");
            end
        end
    end




    always @(Bp50) begin
        if( (|Bp50  === 1'b1) || (|Bp50 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp50 is not valid: %h ",Bp50);
            end
        end
    end

    always @(Bn50) begin
        if( (|Bn50  === 1'b1) || (|Bn50 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn50 is not valid ");
            end
        end
    end




    always @(Bp51) begin
        if( (|Bp51  === 1'b1) || (|Bp51 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp51 is not valid: %h ",Bp51);
            end
        end
    end

    always @(Bn51) begin
        if( (|Bn51  === 1'b1) || (|Bn51 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn51 is not valid ");
            end
        end
    end




    always @(Bp52) begin
        if( (|Bp52  === 1'b1) || (|Bp52 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp52 is not valid: %h ",Bp52);
            end
        end
    end

    always @(Bn52) begin
        if( (|Bn52  === 1'b1) || (|Bn52 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn52 is not valid ");
            end
        end
    end




    always @(Bp53) begin
        if( (|Bp53  === 1'b1) || (|Bp53 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp53 is not valid: %h ",Bp53);
            end
        end
    end

    always @(Bn53) begin
        if( (|Bn53  === 1'b1) || (|Bn53 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn53 is not valid ");
            end
        end
    end




    always @(Bp54) begin
        if( (|Bp54  === 1'b1) || (|Bp54 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp54 is not valid: %h ",Bp54);
            end
        end
    end

    always @(Bn54) begin
        if( (|Bn54  === 1'b1) || (|Bn54 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn54 is not valid ");
            end
        end
    end




    always @(Bp55) begin
        if( (|Bp55  === 1'b1) || (|Bp55 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp55 is not valid: %h ",Bp55);
            end
        end
    end

    always @(Bn55) begin
        if( (|Bn55  === 1'b1) || (|Bn55 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn55 is not valid ");
            end
        end
    end




    always @(Bp56) begin
        if( (|Bp56  === 1'b1) || (|Bp56 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp56 is not valid: %h ",Bp56);
            end
        end
    end

    always @(Bn56) begin
        if( (|Bn56  === 1'b1) || (|Bn56 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn56 is not valid ");
            end
        end
    end




    always @(Bp57) begin
        if( (|Bp57  === 1'b1) || (|Bp57 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp57 is not valid: %h ",Bp57);
            end
        end
    end

    always @(Bn57) begin
        if( (|Bn57  === 1'b1) || (|Bn57 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn57 is not valid ");
            end
        end
    end




    always @(Bp58) begin
        if( (|Bp58  === 1'b1) || (|Bp58 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp58 is not valid: %h ",Bp58);
            end
        end
    end

    always @(Bn58) begin
        if( (|Bn58  === 1'b1) || (|Bn58 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn58 is not valid ");
            end
        end
    end




    always @(Bp59) begin
        if( (|Bp59  === 1'b1) || (|Bp59 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp59 is not valid: %h ",Bp59);
            end
        end
    end

    always @(Bn59) begin
        if( (|Bn59  === 1'b1) || (|Bn59 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn59 is not valid ");
            end
        end
    end




    always @(Bp60) begin
        if( (|Bp60  === 1'b1) || (|Bp60 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp60 is not valid: %h ",Bp60);
            end
        end
    end

    always @(Bn60) begin
        if( (|Bn60  === 1'b1) || (|Bn60 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn60 is not valid ");
            end
        end
    end




    always @(Bp61) begin
        if( (|Bp61  === 1'b1) || (|Bp61 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp61 is not valid: %h ",Bp61);
            end
        end
    end

    always @(Bn61) begin
        if( (|Bn61  === 1'b1) || (|Bn61 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn61 is not valid ");
            end
        end
    end




    always @(Bp62) begin
        if( (|Bp62  === 1'b1) || (|Bp62 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp62 is not valid: %h ",Bp62);
            end
        end
    end

    always @(Bn62) begin
        if( (|Bn62  === 1'b1) || (|Bn62 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn62 is not valid ");
            end
        end
    end




    always @(Bp63) begin
        if( (|Bp63  === 1'b1) || (|Bp63 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp63 is not valid: %h ",Bp63);
            end
        end
    end

    always @(Bn63) begin
        if( (|Bn63  === 1'b1) || (|Bn63 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn63 is not valid ");
            end
        end
    end




    always @(Bp64) begin
        if( (|Bp64  === 1'b1) || (|Bp64 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bp64 is not valid: %h ",Bp64);
            end
        end
    end

    always @(Bn64) begin
        if( (|Bn64  === 1'b1) || (|Bn64 === 1'b0) ) begin

        end else begin
            if (start_chk) begin
                $display("Bn64 is not valid ");
            end
        end
    end



    //Channel0
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
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




    //Channel4
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[4] == 1'b1) begin
            test_cathode_chk [4] <= 1'b1;
            test_cathode[4]      <= test_cathode[4] + 1'b1;

            if (!test_num_chk[4]) begin
                test_num[4]     <= test_num[4] + 1'b1;
                test_num_chk[4] <= 1'b1;
            end

        end else if ( (EnN[4] == 1'b0) && (test_cathode_chk[4]) ) begin
            test_cathode_chk [4] <= 1'b0;
            if ((test_cathode[4]/33) == tb_w_icons_top.wc_s[4]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 4,test_cathode[4]/33,tb_w_icons_top.wc_s[4]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 4,test_cathode[4]/33,tb_w_icons_top.wc_s[4]);
                tb_stim_err;
            end
            test_cathode[4] <= 0;
            test_num_chk[4] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[4] == 1'b1) begin
            test_anode_chk [4] <= 1'b1;
            test_anode[4]      <= test_anode[4] + 1'b1;

        end else if ( (EnP[4] == 1'b0) && (test_anode_chk[4]) ) begin
            test_anode_chk [4] <= 1'b0;
            if ((test_anode[4]/33) == tb_w_icons_top.wc_s[4]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 4,test_anode[4]/33,tb_w_icons_top.wc_s[4]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 4,test_anode[4]/33,tb_w_icons_top.wc_s[4]);
                tb_stim_err;
            end
            test_anode[4] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[4] == 1'b1) begin
            test_gap[4]      <= 0;
            test_gap_chk [4] <= 1'b1;
        end else if ( (EnN[4] == 1'b0) && (EnP[4] == 1'b0) && (test_gap_chk [4]) ) begin
            test_gap[4] <= test_gap[4] + 1'b1;
        end else if ((EnP[4] == 1'b1) && (test_gap_chk [4])) begin

            if ((test_gap[4]/33) == tb_w_icons_top.gap_s[4]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 4,test_gap[4]/33,tb_w_icons_top.gap_s[4]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 4,test_gap[4]/33,tb_w_icons_top.gap_s[4]);
                tb_stim_err;
            end
            test_gap[4]      <= 0;
            test_gap_chk [4] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[4] && (test_num[4] < tb_w_icons_top.num_s[4]) ) begin
            if (test_num[4] < tb_w_icons_top.interval_s[4]) begin
                if (EnP[4] == 1'b1) begin
                    test_interval[4]      <= 0;
                    test_interval_chk [4] <= 1'b1;
                end else if ( (EnP[4] == 1'b0) && (EnN[4] == 1'b0) && (test_interval_chk[4]) ) begin
                    test_interval[4] <= test_interval[4] + 1'b1;
                end else if ((EnN[4] == 1'b1) && (test_interval_chk[4])) begin

                    if ((test_interval[4]/33) == tb_w_icons_top.interval_s[4]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 4,test_interval[4]/33,tb_w_icons_top.interval_s[4]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 4,test_interval[4]/33,tb_w_icons_top.interval_s[4]);
                        tb_stim_err;
                    end
                    test_interval[4]      <= 0;
                    test_interval_chk [4] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[4] == 1'b1) && (test_num[4] < tb_w_icons_top.num_s[4]) && (test_num_chk[4] == 1'b0)) begin
            test_num[4]         <= test_num[4] + 1'b1;
            test_num_chk[4]     <= 1'b1;
            test_interval_en[4] <= 1'b1;

        end else if ((EnP[4] == 1'b1) && (test_num[4] < tb_w_icons_top.num_s[4]) && (test_num_chk[4] == 1'b1)) begin
            test_num_chk[4]     <= 1'b0;


        end else if ( ((EnN[4] == 1'b0) && (EnP[4] == 1'b0) && (test_num[4] == tb_w_icons_top.num_s[4])) ) begin
            test_num[4]         <= 0;
            test_num_chk[4]     <= 1'b0;
            test_interval_en[4] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[4] == 1'b1) || (EnP[4] == 1'b1)) begin
            if ( (Bn5 == tb_w_icons_top.ic_s[4]) && (Bp5 == tb_w_icons_top.ic_s[4]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 4,Bn5,Bp5,tb_w_icons_top.ic_s[4]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[4] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",4 );
                tb_stim_err;
            end
        end
    end




    //Channel5
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[5] == 1'b1) begin
            test_cathode_chk [5] <= 1'b1;
            test_cathode[5]      <= test_cathode[5] + 1'b1;

            if (!test_num_chk[5]) begin
                test_num[5]     <= test_num[5] + 1'b1;
                test_num_chk[5] <= 1'b1;
            end

        end else if ( (EnN[5] == 1'b0) && (test_cathode_chk[5]) ) begin
            test_cathode_chk [5] <= 1'b0;
            if ((test_cathode[5]/33) == tb_w_icons_top.wc_s[5]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 5,test_cathode[5]/33,tb_w_icons_top.wc_s[5]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 5,test_cathode[5]/33,tb_w_icons_top.wc_s[5]);
                tb_stim_err;
            end
            test_cathode[5] <= 0;
            test_num_chk[5] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[5] == 1'b1) begin
            test_anode_chk [5] <= 1'b1;
            test_anode[5]      <= test_anode[5] + 1'b1;

        end else if ( (EnP[5] == 1'b0) && (test_anode_chk[5]) ) begin
            test_anode_chk [5] <= 1'b0;
            if ((test_anode[5]/33) == tb_w_icons_top.wc_s[5]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 5,test_anode[5]/33,tb_w_icons_top.wc_s[5]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 5,test_anode[5]/33,tb_w_icons_top.wc_s[5]);
                tb_stim_err;
            end
            test_anode[5] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[5] == 1'b1) begin
            test_gap[5]      <= 0;
            test_gap_chk [5] <= 1'b1;
        end else if ( (EnN[5] == 1'b0) && (EnP[5] == 1'b0) && (test_gap_chk [5]) ) begin
            test_gap[5] <= test_gap[5] + 1'b1;
        end else if ((EnP[5] == 1'b1) && (test_gap_chk [5])) begin

            if ((test_gap[5]/33) == tb_w_icons_top.gap_s[5]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 5,test_gap[5]/33,tb_w_icons_top.gap_s[5]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 5,test_gap[5]/33,tb_w_icons_top.gap_s[5]);
                tb_stim_err;
            end
            test_gap[5]      <= 0;
            test_gap_chk [5] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[5] && (test_num[5] < tb_w_icons_top.num_s[5]) ) begin
            if (test_num[5] < tb_w_icons_top.interval_s[5]) begin
                if (EnP[5] == 1'b1) begin
                    test_interval[5]      <= 0;
                    test_interval_chk [5] <= 1'b1;
                end else if ( (EnP[5] == 1'b0) && (EnN[5] == 1'b0) && (test_interval_chk[5]) ) begin
                    test_interval[5] <= test_interval[5] + 1'b1;
                end else if ((EnN[5] == 1'b1) && (test_interval_chk[5])) begin

                    if ((test_interval[5]/33) == tb_w_icons_top.interval_s[5]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 5,test_interval[5]/33,tb_w_icons_top.interval_s[5]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 5,test_interval[5]/33,tb_w_icons_top.interval_s[5]);
                        tb_stim_err;
                    end
                    test_interval[5]      <= 0;
                    test_interval_chk [5] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[5] == 1'b1) && (test_num[5] < tb_w_icons_top.num_s[5]) && (test_num_chk[5] == 1'b0)) begin
            test_num[5]         <= test_num[5] + 1'b1;
            test_num_chk[5]     <= 1'b1;
            test_interval_en[5] <= 1'b1;

        end else if ((EnP[5] == 1'b1) && (test_num[5] < tb_w_icons_top.num_s[5]) && (test_num_chk[5] == 1'b1)) begin
            test_num_chk[5]     <= 1'b0;


        end else if ( ((EnN[5] == 1'b0) && (EnP[5] == 1'b0) && (test_num[5] == tb_w_icons_top.num_s[5])) ) begin
            test_num[5]         <= 0;
            test_num_chk[5]     <= 1'b0;
            test_interval_en[5] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[5] == 1'b1) || (EnP[5] == 1'b1)) begin
            if ( (Bn6 == tb_w_icons_top.ic_s[5]) && (Bp6 == tb_w_icons_top.ic_s[5]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 5,Bn6,Bp6,tb_w_icons_top.ic_s[5]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[5] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",5 );
                tb_stim_err;
            end
        end
    end




    //Channel6
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[6] == 1'b1) begin
            test_cathode_chk [6] <= 1'b1;
            test_cathode[6]      <= test_cathode[6] + 1'b1;

            if (!test_num_chk[6]) begin
                test_num[6]     <= test_num[6] + 1'b1;
                test_num_chk[6] <= 1'b1;
            end

        end else if ( (EnN[6] == 1'b0) && (test_cathode_chk[6]) ) begin
            test_cathode_chk [6] <= 1'b0;
            if ((test_cathode[6]/33) == tb_w_icons_top.wc_s[6]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 6,test_cathode[6]/33,tb_w_icons_top.wc_s[6]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 6,test_cathode[6]/33,tb_w_icons_top.wc_s[6]);
                tb_stim_err;
            end
            test_cathode[6] <= 0;
            test_num_chk[6] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[6] == 1'b1) begin
            test_anode_chk [6] <= 1'b1;
            test_anode[6]      <= test_anode[6] + 1'b1;

        end else if ( (EnP[6] == 1'b0) && (test_anode_chk[6]) ) begin
            test_anode_chk [6] <= 1'b0;
            if ((test_anode[6]/33) == tb_w_icons_top.wc_s[6]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 6,test_anode[6]/33,tb_w_icons_top.wc_s[6]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 6,test_anode[6]/33,tb_w_icons_top.wc_s[6]);
                tb_stim_err;
            end
            test_anode[6] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[6] == 1'b1) begin
            test_gap[6]      <= 0;
            test_gap_chk [6] <= 1'b1;
        end else if ( (EnN[6] == 1'b0) && (EnP[6] == 1'b0) && (test_gap_chk [6]) ) begin
            test_gap[6] <= test_gap[6] + 1'b1;
        end else if ((EnP[6] == 1'b1) && (test_gap_chk [6])) begin

            if ((test_gap[6]/33) == tb_w_icons_top.gap_s[6]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 6,test_gap[6]/33,tb_w_icons_top.gap_s[6]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 6,test_gap[6]/33,tb_w_icons_top.gap_s[6]);
                tb_stim_err;
            end
            test_gap[6]      <= 0;
            test_gap_chk [6] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[6] && (test_num[6] < tb_w_icons_top.num_s[6]) ) begin
            if (test_num[6] < tb_w_icons_top.interval_s[6]) begin
                if (EnP[6] == 1'b1) begin
                    test_interval[6]      <= 0;
                    test_interval_chk [6] <= 1'b1;
                end else if ( (EnP[6] == 1'b0) && (EnN[6] == 1'b0) && (test_interval_chk[6]) ) begin
                    test_interval[6] <= test_interval[6] + 1'b1;
                end else if ((EnN[6] == 1'b1) && (test_interval_chk[6])) begin

                    if ((test_interval[6]/33) == tb_w_icons_top.interval_s[6]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 6,test_interval[6]/33,tb_w_icons_top.interval_s[6]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 6,test_interval[6]/33,tb_w_icons_top.interval_s[6]);
                        tb_stim_err;
                    end
                    test_interval[6]      <= 0;
                    test_interval_chk [6] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[6] == 1'b1) && (test_num[6] < tb_w_icons_top.num_s[6]) && (test_num_chk[6] == 1'b0)) begin
            test_num[6]         <= test_num[6] + 1'b1;
            test_num_chk[6]     <= 1'b1;
            test_interval_en[6] <= 1'b1;

        end else if ((EnP[6] == 1'b1) && (test_num[6] < tb_w_icons_top.num_s[6]) && (test_num_chk[6] == 1'b1)) begin
            test_num_chk[6]     <= 1'b0;


        end else if ( ((EnN[6] == 1'b0) && (EnP[6] == 1'b0) && (test_num[6] == tb_w_icons_top.num_s[6])) ) begin
            test_num[6]         <= 0;
            test_num_chk[6]     <= 1'b0;
            test_interval_en[6] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[6] == 1'b1) || (EnP[6] == 1'b1)) begin
            if ( (Bn7 == tb_w_icons_top.ic_s[6]) && (Bp7 == tb_w_icons_top.ic_s[6]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 6,Bn7,Bp7,tb_w_icons_top.ic_s[6]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[6] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",6 );
                tb_stim_err;
            end
        end
    end




    //Channel7
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[7] == 1'b1) begin
            test_cathode_chk [7] <= 1'b1;
            test_cathode[7]      <= test_cathode[7] + 1'b1;

            if (!test_num_chk[7]) begin
                test_num[7]     <= test_num[7] + 1'b1;
                test_num_chk[7] <= 1'b1;
            end

        end else if ( (EnN[7] == 1'b0) && (test_cathode_chk[7]) ) begin
            test_cathode_chk [7] <= 1'b0;
            if ((test_cathode[7]/33) == tb_w_icons_top.wc_s[7]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 7,test_cathode[7]/33,tb_w_icons_top.wc_s[7]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 7,test_cathode[7]/33,tb_w_icons_top.wc_s[7]);
                tb_stim_err;
            end
            test_cathode[7] <= 0;
            test_num_chk[7] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[7] == 1'b1) begin
            test_anode_chk [7] <= 1'b1;
            test_anode[7]      <= test_anode[7] + 1'b1;

        end else if ( (EnP[7] == 1'b0) && (test_anode_chk[7]) ) begin
            test_anode_chk [7] <= 1'b0;
            if ((test_anode[7]/33) == tb_w_icons_top.wc_s[7]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 7,test_anode[7]/33,tb_w_icons_top.wc_s[7]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 7,test_anode[7]/33,tb_w_icons_top.wc_s[7]);
                tb_stim_err;
            end
            test_anode[7] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[7] == 1'b1) begin
            test_gap[7]      <= 0;
            test_gap_chk [7] <= 1'b1;
        end else if ( (EnN[7] == 1'b0) && (EnP[7] == 1'b0) && (test_gap_chk [7]) ) begin
            test_gap[7] <= test_gap[7] + 1'b1;
        end else if ((EnP[7] == 1'b1) && (test_gap_chk [7])) begin

            if ((test_gap[7]/33) == tb_w_icons_top.gap_s[7]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 7,test_gap[7]/33,tb_w_icons_top.gap_s[7]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 7,test_gap[7]/33,tb_w_icons_top.gap_s[7]);
                tb_stim_err;
            end
            test_gap[7]      <= 0;
            test_gap_chk [7] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[7] && (test_num[7] < tb_w_icons_top.num_s[7]) ) begin
            if (test_num[7] < tb_w_icons_top.interval_s[7]) begin
                if (EnP[7] == 1'b1) begin
                    test_interval[7]      <= 0;
                    test_interval_chk [7] <= 1'b1;
                end else if ( (EnP[7] == 1'b0) && (EnN[7] == 1'b0) && (test_interval_chk[7]) ) begin
                    test_interval[7] <= test_interval[7] + 1'b1;
                end else if ((EnN[7] == 1'b1) && (test_interval_chk[7])) begin

                    if ((test_interval[7]/33) == tb_w_icons_top.interval_s[7]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 7,test_interval[7]/33,tb_w_icons_top.interval_s[7]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 7,test_interval[7]/33,tb_w_icons_top.interval_s[7]);
                        tb_stim_err;
                    end
                    test_interval[7]      <= 0;
                    test_interval_chk [7] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[7] == 1'b1) && (test_num[7] < tb_w_icons_top.num_s[7]) && (test_num_chk[7] == 1'b0)) begin
            test_num[7]         <= test_num[7] + 1'b1;
            test_num_chk[7]     <= 1'b1;
            test_interval_en[7] <= 1'b1;

        end else if ((EnP[7] == 1'b1) && (test_num[7] < tb_w_icons_top.num_s[7]) && (test_num_chk[7] == 1'b1)) begin
            test_num_chk[7]     <= 1'b0;


        end else if ( ((EnN[7] == 1'b0) && (EnP[7] == 1'b0) && (test_num[7] == tb_w_icons_top.num_s[7])) ) begin
            test_num[7]         <= 0;
            test_num_chk[7]     <= 1'b0;
            test_interval_en[7] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[7] == 1'b1) || (EnP[7] == 1'b1)) begin
            if ( (Bn8 == tb_w_icons_top.ic_s[7]) && (Bp8 == tb_w_icons_top.ic_s[7]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 7,Bn8,Bp8,tb_w_icons_top.ic_s[7]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[7] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",7 );
                tb_stim_err;
            end
        end
    end




    //Channel8
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[8] == 1'b1) begin
            test_cathode_chk [8] <= 1'b1;
            test_cathode[8]      <= test_cathode[8] + 1'b1;

            if (!test_num_chk[8]) begin
                test_num[8]     <= test_num[8] + 1'b1;
                test_num_chk[8] <= 1'b1;
            end

        end else if ( (EnN[8] == 1'b0) && (test_cathode_chk[8]) ) begin
            test_cathode_chk [8] <= 1'b0;
            if ((test_cathode[8]/33) == tb_w_icons_top.wc_s[8]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 8,test_cathode[8]/33,tb_w_icons_top.wc_s[8]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 8,test_cathode[8]/33,tb_w_icons_top.wc_s[8]);
                tb_stim_err;
            end
            test_cathode[8] <= 0;
            test_num_chk[8] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[8] == 1'b1) begin
            test_anode_chk [8] <= 1'b1;
            test_anode[8]      <= test_anode[8] + 1'b1;

        end else if ( (EnP[8] == 1'b0) && (test_anode_chk[8]) ) begin
            test_anode_chk [8] <= 1'b0;
            if ((test_anode[8]/33) == tb_w_icons_top.wc_s[8]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 8,test_anode[8]/33,tb_w_icons_top.wc_s[8]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 8,test_anode[8]/33,tb_w_icons_top.wc_s[8]);
                tb_stim_err;
            end
            test_anode[8] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[8] == 1'b1) begin
            test_gap[8]      <= 0;
            test_gap_chk [8] <= 1'b1;
        end else if ( (EnN[8] == 1'b0) && (EnP[8] == 1'b0) && (test_gap_chk [8]) ) begin
            test_gap[8] <= test_gap[8] + 1'b1;
        end else if ((EnP[8] == 1'b1) && (test_gap_chk [8])) begin

            if ((test_gap[8]/33) == tb_w_icons_top.gap_s[8]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 8,test_gap[8]/33,tb_w_icons_top.gap_s[8]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 8,test_gap[8]/33,tb_w_icons_top.gap_s[8]);
                tb_stim_err;
            end
            test_gap[8]      <= 0;
            test_gap_chk [8] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[8] && (test_num[8] < tb_w_icons_top.num_s[8]) ) begin
            if (test_num[8] < tb_w_icons_top.interval_s[8]) begin
                if (EnP[8] == 1'b1) begin
                    test_interval[8]      <= 0;
                    test_interval_chk [8] <= 1'b1;
                end else if ( (EnP[8] == 1'b0) && (EnN[8] == 1'b0) && (test_interval_chk[8]) ) begin
                    test_interval[8] <= test_interval[8] + 1'b1;
                end else if ((EnN[8] == 1'b1) && (test_interval_chk[8])) begin

                    if ((test_interval[8]/33) == tb_w_icons_top.interval_s[8]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 8,test_interval[8]/33,tb_w_icons_top.interval_s[8]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 8,test_interval[8]/33,tb_w_icons_top.interval_s[8]);
                        tb_stim_err;
                    end
                    test_interval[8]      <= 0;
                    test_interval_chk [8] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[8] == 1'b1) && (test_num[8] < tb_w_icons_top.num_s[8]) && (test_num_chk[8] == 1'b0)) begin
            test_num[8]         <= test_num[8] + 1'b1;
            test_num_chk[8]     <= 1'b1;
            test_interval_en[8] <= 1'b1;

        end else if ((EnP[8] == 1'b1) && (test_num[8] < tb_w_icons_top.num_s[8]) && (test_num_chk[8] == 1'b1)) begin
            test_num_chk[8]     <= 1'b0;


        end else if ( ((EnN[8] == 1'b0) && (EnP[8] == 1'b0) && (test_num[8] == tb_w_icons_top.num_s[8])) ) begin
            test_num[8]         <= 0;
            test_num_chk[8]     <= 1'b0;
            test_interval_en[8] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[8] == 1'b1) || (EnP[8] == 1'b1)) begin
            if ( (Bn9 == tb_w_icons_top.ic_s[8]) && (Bp9 == tb_w_icons_top.ic_s[8]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 8,Bn9,Bp9,tb_w_icons_top.ic_s[8]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[8] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",8 );
                tb_stim_err;
            end
        end
    end




    //Channel9
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[9] == 1'b1) begin
            test_cathode_chk [9] <= 1'b1;
            test_cathode[9]      <= test_cathode[9] + 1'b1;

            if (!test_num_chk[9]) begin
                test_num[9]     <= test_num[9] + 1'b1;
                test_num_chk[9] <= 1'b1;
            end

        end else if ( (EnN[9] == 1'b0) && (test_cathode_chk[9]) ) begin
            test_cathode_chk [9] <= 1'b0;
            if ((test_cathode[9]/33) == tb_w_icons_top.wc_s[9]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 9,test_cathode[9]/33,tb_w_icons_top.wc_s[9]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 9,test_cathode[9]/33,tb_w_icons_top.wc_s[9]);
                tb_stim_err;
            end
            test_cathode[9] <= 0;
            test_num_chk[9] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[9] == 1'b1) begin
            test_anode_chk [9] <= 1'b1;
            test_anode[9]      <= test_anode[9] + 1'b1;

        end else if ( (EnP[9] == 1'b0) && (test_anode_chk[9]) ) begin
            test_anode_chk [9] <= 1'b0;
            if ((test_anode[9]/33) == tb_w_icons_top.wc_s[9]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 9,test_anode[9]/33,tb_w_icons_top.wc_s[9]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 9,test_anode[9]/33,tb_w_icons_top.wc_s[9]);
                tb_stim_err;
            end
            test_anode[9] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[9] == 1'b1) begin
            test_gap[9]      <= 0;
            test_gap_chk [9] <= 1'b1;
        end else if ( (EnN[9] == 1'b0) && (EnP[9] == 1'b0) && (test_gap_chk [9]) ) begin
            test_gap[9] <= test_gap[9] + 1'b1;
        end else if ((EnP[9] == 1'b1) && (test_gap_chk [9])) begin

            if ((test_gap[9]/33) == tb_w_icons_top.gap_s[9]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 9,test_gap[9]/33,tb_w_icons_top.gap_s[9]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 9,test_gap[9]/33,tb_w_icons_top.gap_s[9]);
                tb_stim_err;
            end
            test_gap[9]      <= 0;
            test_gap_chk [9] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[9] && (test_num[9] < tb_w_icons_top.num_s[9]) ) begin
            if (test_num[9] < tb_w_icons_top.interval_s[9]) begin
                if (EnP[9] == 1'b1) begin
                    test_interval[9]      <= 0;
                    test_interval_chk [9] <= 1'b1;
                end else if ( (EnP[9] == 1'b0) && (EnN[9] == 1'b0) && (test_interval_chk[9]) ) begin
                    test_interval[9] <= test_interval[9] + 1'b1;
                end else if ((EnN[9] == 1'b1) && (test_interval_chk[9])) begin

                    if ((test_interval[9]/33) == tb_w_icons_top.interval_s[9]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 9,test_interval[9]/33,tb_w_icons_top.interval_s[9]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 9,test_interval[9]/33,tb_w_icons_top.interval_s[9]);
                        tb_stim_err;
                    end
                    test_interval[9]      <= 0;
                    test_interval_chk [9] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[9] == 1'b1) && (test_num[9] < tb_w_icons_top.num_s[9]) && (test_num_chk[9] == 1'b0)) begin
            test_num[9]         <= test_num[9] + 1'b1;
            test_num_chk[9]     <= 1'b1;
            test_interval_en[9] <= 1'b1;

        end else if ((EnP[9] == 1'b1) && (test_num[9] < tb_w_icons_top.num_s[9]) && (test_num_chk[9] == 1'b1)) begin
            test_num_chk[9]     <= 1'b0;


        end else if ( ((EnN[9] == 1'b0) && (EnP[9] == 1'b0) && (test_num[9] == tb_w_icons_top.num_s[9])) ) begin
            test_num[9]         <= 0;
            test_num_chk[9]     <= 1'b0;
            test_interval_en[9] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[9] == 1'b1) || (EnP[9] == 1'b1)) begin
            if ( (Bn10 == tb_w_icons_top.ic_s[9]) && (Bp10 == tb_w_icons_top.ic_s[9]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 9,Bn10,Bp10,tb_w_icons_top.ic_s[9]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[9] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",9 );
                tb_stim_err;
            end
        end
    end




    //Channel10
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[10] == 1'b1) begin
            test_cathode_chk [10] <= 1'b1;
            test_cathode[10]      <= test_cathode[10] + 1'b1;

            if (!test_num_chk[10]) begin
                test_num[10]     <= test_num[10] + 1'b1;
                test_num_chk[10] <= 1'b1;
            end

        end else if ( (EnN[10] == 1'b0) && (test_cathode_chk[10]) ) begin
            test_cathode_chk [10] <= 1'b0;
            if ((test_cathode[10]/33) == tb_w_icons_top.wc_s[10]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 10,test_cathode[10]/33,tb_w_icons_top.wc_s[10]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 10,test_cathode[10]/33,tb_w_icons_top.wc_s[10]);
                tb_stim_err;
            end
            test_cathode[10] <= 0;
            test_num_chk[10] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[10] == 1'b1) begin
            test_anode_chk [10] <= 1'b1;
            test_anode[10]      <= test_anode[10] + 1'b1;

        end else if ( (EnP[10] == 1'b0) && (test_anode_chk[10]) ) begin
            test_anode_chk [10] <= 1'b0;
            if ((test_anode[10]/33) == tb_w_icons_top.wc_s[10]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 10,test_anode[10]/33,tb_w_icons_top.wc_s[10]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 10,test_anode[10]/33,tb_w_icons_top.wc_s[10]);
                tb_stim_err;
            end
            test_anode[10] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[10] == 1'b1) begin
            test_gap[10]      <= 0;
            test_gap_chk [10] <= 1'b1;
        end else if ( (EnN[10] == 1'b0) && (EnP[10] == 1'b0) && (test_gap_chk [10]) ) begin
            test_gap[10] <= test_gap[10] + 1'b1;
        end else if ((EnP[10] == 1'b1) && (test_gap_chk [10])) begin

            if ((test_gap[10]/33) == tb_w_icons_top.gap_s[10]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 10,test_gap[10]/33,tb_w_icons_top.gap_s[10]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 10,test_gap[10]/33,tb_w_icons_top.gap_s[10]);
                tb_stim_err;
            end
            test_gap[10]      <= 0;
            test_gap_chk [10] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[10] && (test_num[10] < tb_w_icons_top.num_s[10]) ) begin
            if (test_num[10] < tb_w_icons_top.interval_s[10]) begin
                if (EnP[10] == 1'b1) begin
                    test_interval[10]      <= 0;
                    test_interval_chk [10] <= 1'b1;
                end else if ( (EnP[10] == 1'b0) && (EnN[10] == 1'b0) && (test_interval_chk[10]) ) begin
                    test_interval[10] <= test_interval[10] + 1'b1;
                end else if ((EnN[10] == 1'b1) && (test_interval_chk[10])) begin

                    if ((test_interval[10]/33) == tb_w_icons_top.interval_s[10]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 10,test_interval[10]/33,tb_w_icons_top.interval_s[10]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 10,test_interval[10]/33,tb_w_icons_top.interval_s[10]);
                        tb_stim_err;
                    end
                    test_interval[10]      <= 0;
                    test_interval_chk [10] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[10] == 1'b1) && (test_num[10] < tb_w_icons_top.num_s[10]) && (test_num_chk[10] == 1'b0)) begin
            test_num[10]         <= test_num[10] + 1'b1;
            test_num_chk[10]     <= 1'b1;
            test_interval_en[10] <= 1'b1;

        end else if ((EnP[10] == 1'b1) && (test_num[10] < tb_w_icons_top.num_s[10]) && (test_num_chk[10] == 1'b1)) begin
            test_num_chk[10]     <= 1'b0;


        end else if ( ((EnN[10] == 1'b0) && (EnP[10] == 1'b0) && (test_num[10] == tb_w_icons_top.num_s[10])) ) begin
            test_num[10]         <= 0;
            test_num_chk[10]     <= 1'b0;
            test_interval_en[10] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[10] == 1'b1) || (EnP[10] == 1'b1)) begin
            if ( (Bn11 == tb_w_icons_top.ic_s[10]) && (Bp11 == tb_w_icons_top.ic_s[10]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 10,Bn11,Bp11,tb_w_icons_top.ic_s[10]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[10] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",10 );
                tb_stim_err;
            end
        end
    end




    //Channel11
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[11] == 1'b1) begin
            test_cathode_chk [11] <= 1'b1;
            test_cathode[11]      <= test_cathode[11] + 1'b1;

            if (!test_num_chk[11]) begin
                test_num[11]     <= test_num[11] + 1'b1;
                test_num_chk[11] <= 1'b1;
            end

        end else if ( (EnN[11] == 1'b0) && (test_cathode_chk[11]) ) begin
            test_cathode_chk [11] <= 1'b0;
            if ((test_cathode[11]/33) == tb_w_icons_top.wc_s[11]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 11,test_cathode[11]/33,tb_w_icons_top.wc_s[11]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 11,test_cathode[11]/33,tb_w_icons_top.wc_s[11]);
                tb_stim_err;
            end
            test_cathode[11] <= 0;
            test_num_chk[11] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[11] == 1'b1) begin
            test_anode_chk [11] <= 1'b1;
            test_anode[11]      <= test_anode[11] + 1'b1;

        end else if ( (EnP[11] == 1'b0) && (test_anode_chk[11]) ) begin
            test_anode_chk [11] <= 1'b0;
            if ((test_anode[11]/33) == tb_w_icons_top.wc_s[11]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 11,test_anode[11]/33,tb_w_icons_top.wc_s[11]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 11,test_anode[11]/33,tb_w_icons_top.wc_s[11]);
                tb_stim_err;
            end
            test_anode[11] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[11] == 1'b1) begin
            test_gap[11]      <= 0;
            test_gap_chk [11] <= 1'b1;
        end else if ( (EnN[11] == 1'b0) && (EnP[11] == 1'b0) && (test_gap_chk [11]) ) begin
            test_gap[11] <= test_gap[11] + 1'b1;
        end else if ((EnP[11] == 1'b1) && (test_gap_chk [11])) begin

            if ((test_gap[11]/33) == tb_w_icons_top.gap_s[11]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 11,test_gap[11]/33,tb_w_icons_top.gap_s[11]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 11,test_gap[11]/33,tb_w_icons_top.gap_s[11]);
                tb_stim_err;
            end
            test_gap[11]      <= 0;
            test_gap_chk [11] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[11] && (test_num[11] < tb_w_icons_top.num_s[11]) ) begin
            if (test_num[11] < tb_w_icons_top.interval_s[11]) begin
                if (EnP[11] == 1'b1) begin
                    test_interval[11]      <= 0;
                    test_interval_chk [11] <= 1'b1;
                end else if ( (EnP[11] == 1'b0) && (EnN[11] == 1'b0) && (test_interval_chk[11]) ) begin
                    test_interval[11] <= test_interval[11] + 1'b1;
                end else if ((EnN[11] == 1'b1) && (test_interval_chk[11])) begin

                    if ((test_interval[11]/33) == tb_w_icons_top.interval_s[11]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 11,test_interval[11]/33,tb_w_icons_top.interval_s[11]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 11,test_interval[11]/33,tb_w_icons_top.interval_s[11]);
                        tb_stim_err;
                    end
                    test_interval[11]      <= 0;
                    test_interval_chk [11] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[11] == 1'b1) && (test_num[11] < tb_w_icons_top.num_s[11]) && (test_num_chk[11] == 1'b0)) begin
            test_num[11]         <= test_num[11] + 1'b1;
            test_num_chk[11]     <= 1'b1;
            test_interval_en[11] <= 1'b1;

        end else if ((EnP[11] == 1'b1) && (test_num[11] < tb_w_icons_top.num_s[11]) && (test_num_chk[11] == 1'b1)) begin
            test_num_chk[11]     <= 1'b0;


        end else if ( ((EnN[11] == 1'b0) && (EnP[11] == 1'b0) && (test_num[11] == tb_w_icons_top.num_s[11])) ) begin
            test_num[11]         <= 0;
            test_num_chk[11]     <= 1'b0;
            test_interval_en[11] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[11] == 1'b1) || (EnP[11] == 1'b1)) begin
            if ( (Bn12 == tb_w_icons_top.ic_s[11]) && (Bp12 == tb_w_icons_top.ic_s[11]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 11,Bn12,Bp12,tb_w_icons_top.ic_s[11]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[11] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",11 );
                tb_stim_err;
            end
        end
    end




    //Channel12
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[12] == 1'b1) begin
            test_cathode_chk [12] <= 1'b1;
            test_cathode[12]      <= test_cathode[12] + 1'b1;

            if (!test_num_chk[12]) begin
                test_num[12]     <= test_num[12] + 1'b1;
                test_num_chk[12] <= 1'b1;
            end

        end else if ( (EnN[12] == 1'b0) && (test_cathode_chk[12]) ) begin
            test_cathode_chk [12] <= 1'b0;
            if ((test_cathode[12]/33) == tb_w_icons_top.wc_s[12]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 12,test_cathode[12]/33,tb_w_icons_top.wc_s[12]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 12,test_cathode[12]/33,tb_w_icons_top.wc_s[12]);
                tb_stim_err;
            end
            test_cathode[12] <= 0;
            test_num_chk[12] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[12] == 1'b1) begin
            test_anode_chk [12] <= 1'b1;
            test_anode[12]      <= test_anode[12] + 1'b1;

        end else if ( (EnP[12] == 1'b0) && (test_anode_chk[12]) ) begin
            test_anode_chk [12] <= 1'b0;
            if ((test_anode[12]/33) == tb_w_icons_top.wc_s[12]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 12,test_anode[12]/33,tb_w_icons_top.wc_s[12]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 12,test_anode[12]/33,tb_w_icons_top.wc_s[12]);
                tb_stim_err;
            end
            test_anode[12] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[12] == 1'b1) begin
            test_gap[12]      <= 0;
            test_gap_chk [12] <= 1'b1;
        end else if ( (EnN[12] == 1'b0) && (EnP[12] == 1'b0) && (test_gap_chk [12]) ) begin
            test_gap[12] <= test_gap[12] + 1'b1;
        end else if ((EnP[12] == 1'b1) && (test_gap_chk [12])) begin

            if ((test_gap[12]/33) == tb_w_icons_top.gap_s[12]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 12,test_gap[12]/33,tb_w_icons_top.gap_s[12]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 12,test_gap[12]/33,tb_w_icons_top.gap_s[12]);
                tb_stim_err;
            end
            test_gap[12]      <= 0;
            test_gap_chk [12] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[12] && (test_num[12] < tb_w_icons_top.num_s[12]) ) begin
            if (test_num[12] < tb_w_icons_top.interval_s[12]) begin
                if (EnP[12] == 1'b1) begin
                    test_interval[12]      <= 0;
                    test_interval_chk [12] <= 1'b1;
                end else if ( (EnP[12] == 1'b0) && (EnN[12] == 1'b0) && (test_interval_chk[12]) ) begin
                    test_interval[12] <= test_interval[12] + 1'b1;
                end else if ((EnN[12] == 1'b1) && (test_interval_chk[12])) begin

                    if ((test_interval[12]/33) == tb_w_icons_top.interval_s[12]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 12,test_interval[12]/33,tb_w_icons_top.interval_s[12]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 12,test_interval[12]/33,tb_w_icons_top.interval_s[12]);
                        tb_stim_err;
                    end
                    test_interval[12]      <= 0;
                    test_interval_chk [12] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[12] == 1'b1) && (test_num[12] < tb_w_icons_top.num_s[12]) && (test_num_chk[12] == 1'b0)) begin
            test_num[12]         <= test_num[12] + 1'b1;
            test_num_chk[12]     <= 1'b1;
            test_interval_en[12] <= 1'b1;

        end else if ((EnP[12] == 1'b1) && (test_num[12] < tb_w_icons_top.num_s[12]) && (test_num_chk[12] == 1'b1)) begin
            test_num_chk[12]     <= 1'b0;


        end else if ( ((EnN[12] == 1'b0) && (EnP[12] == 1'b0) && (test_num[12] == tb_w_icons_top.num_s[12])) ) begin
            test_num[12]         <= 0;
            test_num_chk[12]     <= 1'b0;
            test_interval_en[12] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[12] == 1'b1) || (EnP[12] == 1'b1)) begin
            if ( (Bn13 == tb_w_icons_top.ic_s[12]) && (Bp13 == tb_w_icons_top.ic_s[12]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 12,Bn13,Bp13,tb_w_icons_top.ic_s[12]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[12] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",12 );
                tb_stim_err;
            end
        end
    end




    //Channel13
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[13] == 1'b1) begin
            test_cathode_chk [13] <= 1'b1;
            test_cathode[13]      <= test_cathode[13] + 1'b1;

            if (!test_num_chk[13]) begin
                test_num[13]     <= test_num[13] + 1'b1;
                test_num_chk[13] <= 1'b1;
            end

        end else if ( (EnN[13] == 1'b0) && (test_cathode_chk[13]) ) begin
            test_cathode_chk [13] <= 1'b0;
            if ((test_cathode[13]/33) == tb_w_icons_top.wc_s[13]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 13,test_cathode[13]/33,tb_w_icons_top.wc_s[13]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 13,test_cathode[13]/33,tb_w_icons_top.wc_s[13]);
                tb_stim_err;
            end
            test_cathode[13] <= 0;
            test_num_chk[13] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[13] == 1'b1) begin
            test_anode_chk [13] <= 1'b1;
            test_anode[13]      <= test_anode[13] + 1'b1;

        end else if ( (EnP[13] == 1'b0) && (test_anode_chk[13]) ) begin
            test_anode_chk [13] <= 1'b0;
            if ((test_anode[13]/33) == tb_w_icons_top.wc_s[13]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 13,test_anode[13]/33,tb_w_icons_top.wc_s[13]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 13,test_anode[13]/33,tb_w_icons_top.wc_s[13]);
                tb_stim_err;
            end
            test_anode[13] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[13] == 1'b1) begin
            test_gap[13]      <= 0;
            test_gap_chk [13] <= 1'b1;
        end else if ( (EnN[13] == 1'b0) && (EnP[13] == 1'b0) && (test_gap_chk [13]) ) begin
            test_gap[13] <= test_gap[13] + 1'b1;
        end else if ((EnP[13] == 1'b1) && (test_gap_chk [13])) begin

            if ((test_gap[13]/33) == tb_w_icons_top.gap_s[13]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 13,test_gap[13]/33,tb_w_icons_top.gap_s[13]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 13,test_gap[13]/33,tb_w_icons_top.gap_s[13]);
                tb_stim_err;
            end
            test_gap[13]      <= 0;
            test_gap_chk [13] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[13] && (test_num[13] < tb_w_icons_top.num_s[13]) ) begin
            if (test_num[13] < tb_w_icons_top.interval_s[13]) begin
                if (EnP[13] == 1'b1) begin
                    test_interval[13]      <= 0;
                    test_interval_chk [13] <= 1'b1;
                end else if ( (EnP[13] == 1'b0) && (EnN[13] == 1'b0) && (test_interval_chk[13]) ) begin
                    test_interval[13] <= test_interval[13] + 1'b1;
                end else if ((EnN[13] == 1'b1) && (test_interval_chk[13])) begin

                    if ((test_interval[13]/33) == tb_w_icons_top.interval_s[13]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 13,test_interval[13]/33,tb_w_icons_top.interval_s[13]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 13,test_interval[13]/33,tb_w_icons_top.interval_s[13]);
                        tb_stim_err;
                    end
                    test_interval[13]      <= 0;
                    test_interval_chk [13] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[13] == 1'b1) && (test_num[13] < tb_w_icons_top.num_s[13]) && (test_num_chk[13] == 1'b0)) begin
            test_num[13]         <= test_num[13] + 1'b1;
            test_num_chk[13]     <= 1'b1;
            test_interval_en[13] <= 1'b1;

        end else if ((EnP[13] == 1'b1) && (test_num[13] < tb_w_icons_top.num_s[13]) && (test_num_chk[13] == 1'b1)) begin
            test_num_chk[13]     <= 1'b0;


        end else if ( ((EnN[13] == 1'b0) && (EnP[13] == 1'b0) && (test_num[13] == tb_w_icons_top.num_s[13])) ) begin
            test_num[13]         <= 0;
            test_num_chk[13]     <= 1'b0;
            test_interval_en[13] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[13] == 1'b1) || (EnP[13] == 1'b1)) begin
            if ( (Bn14 == tb_w_icons_top.ic_s[13]) && (Bp14 == tb_w_icons_top.ic_s[13]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 13,Bn14,Bp14,tb_w_icons_top.ic_s[13]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[13] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",13 );
                tb_stim_err;
            end
        end
    end




    //Channel14
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[14] == 1'b1) begin
            test_cathode_chk [14] <= 1'b1;
            test_cathode[14]      <= test_cathode[14] + 1'b1;

            if (!test_num_chk[14]) begin
                test_num[14]     <= test_num[14] + 1'b1;
                test_num_chk[14] <= 1'b1;
            end

        end else if ( (EnN[14] == 1'b0) && (test_cathode_chk[14]) ) begin
            test_cathode_chk [14] <= 1'b0;
            if ((test_cathode[14]/33) == tb_w_icons_top.wc_s[14]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 14,test_cathode[14]/33,tb_w_icons_top.wc_s[14]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 14,test_cathode[14]/33,tb_w_icons_top.wc_s[14]);
                tb_stim_err;
            end
            test_cathode[14] <= 0;
            test_num_chk[14] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[14] == 1'b1) begin
            test_anode_chk [14] <= 1'b1;
            test_anode[14]      <= test_anode[14] + 1'b1;

        end else if ( (EnP[14] == 1'b0) && (test_anode_chk[14]) ) begin
            test_anode_chk [14] <= 1'b0;
            if ((test_anode[14]/33) == tb_w_icons_top.wc_s[14]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 14,test_anode[14]/33,tb_w_icons_top.wc_s[14]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 14,test_anode[14]/33,tb_w_icons_top.wc_s[14]);
                tb_stim_err;
            end
            test_anode[14] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[14] == 1'b1) begin
            test_gap[14]      <= 0;
            test_gap_chk [14] <= 1'b1;
        end else if ( (EnN[14] == 1'b0) && (EnP[14] == 1'b0) && (test_gap_chk [14]) ) begin
            test_gap[14] <= test_gap[14] + 1'b1;
        end else if ((EnP[14] == 1'b1) && (test_gap_chk [14])) begin

            if ((test_gap[14]/33) == tb_w_icons_top.gap_s[14]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 14,test_gap[14]/33,tb_w_icons_top.gap_s[14]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 14,test_gap[14]/33,tb_w_icons_top.gap_s[14]);
                tb_stim_err;
            end
            test_gap[14]      <= 0;
            test_gap_chk [14] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[14] && (test_num[14] < tb_w_icons_top.num_s[14]) ) begin
            if (test_num[14] < tb_w_icons_top.interval_s[14]) begin
                if (EnP[14] == 1'b1) begin
                    test_interval[14]      <= 0;
                    test_interval_chk [14] <= 1'b1;
                end else if ( (EnP[14] == 1'b0) && (EnN[14] == 1'b0) && (test_interval_chk[14]) ) begin
                    test_interval[14] <= test_interval[14] + 1'b1;
                end else if ((EnN[14] == 1'b1) && (test_interval_chk[14])) begin

                    if ((test_interval[14]/33) == tb_w_icons_top.interval_s[14]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 14,test_interval[14]/33,tb_w_icons_top.interval_s[14]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 14,test_interval[14]/33,tb_w_icons_top.interval_s[14]);
                        tb_stim_err;
                    end
                    test_interval[14]      <= 0;
                    test_interval_chk [14] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[14] == 1'b1) && (test_num[14] < tb_w_icons_top.num_s[14]) && (test_num_chk[14] == 1'b0)) begin
            test_num[14]         <= test_num[14] + 1'b1;
            test_num_chk[14]     <= 1'b1;
            test_interval_en[14] <= 1'b1;

        end else if ((EnP[14] == 1'b1) && (test_num[14] < tb_w_icons_top.num_s[14]) && (test_num_chk[14] == 1'b1)) begin
            test_num_chk[14]     <= 1'b0;


        end else if ( ((EnN[14] == 1'b0) && (EnP[14] == 1'b0) && (test_num[14] == tb_w_icons_top.num_s[14])) ) begin
            test_num[14]         <= 0;
            test_num_chk[14]     <= 1'b0;
            test_interval_en[14] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[14] == 1'b1) || (EnP[14] == 1'b1)) begin
            if ( (Bn15 == tb_w_icons_top.ic_s[14]) && (Bp15 == tb_w_icons_top.ic_s[14]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 14,Bn15,Bp15,tb_w_icons_top.ic_s[14]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[14] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",14 );
                tb_stim_err;
            end
        end
    end




    //Channel15
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[15] == 1'b1) begin
            test_cathode_chk [15] <= 1'b1;
            test_cathode[15]      <= test_cathode[15] + 1'b1;

            if (!test_num_chk[15]) begin
                test_num[15]     <= test_num[15] + 1'b1;
                test_num_chk[15] <= 1'b1;
            end

        end else if ( (EnN[15] == 1'b0) && (test_cathode_chk[15]) ) begin
            test_cathode_chk [15] <= 1'b0;
            if ((test_cathode[15]/33) == tb_w_icons_top.wc_s[15]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 15,test_cathode[15]/33,tb_w_icons_top.wc_s[15]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 15,test_cathode[15]/33,tb_w_icons_top.wc_s[15]);
                tb_stim_err;
            end
            test_cathode[15] <= 0;
            test_num_chk[15] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[15] == 1'b1) begin
            test_anode_chk [15] <= 1'b1;
            test_anode[15]      <= test_anode[15] + 1'b1;

        end else if ( (EnP[15] == 1'b0) && (test_anode_chk[15]) ) begin
            test_anode_chk [15] <= 1'b0;
            if ((test_anode[15]/33) == tb_w_icons_top.wc_s[15]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 15,test_anode[15]/33,tb_w_icons_top.wc_s[15]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 15,test_anode[15]/33,tb_w_icons_top.wc_s[15]);
                tb_stim_err;
            end
            test_anode[15] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[15] == 1'b1) begin
            test_gap[15]      <= 0;
            test_gap_chk [15] <= 1'b1;
        end else if ( (EnN[15] == 1'b0) && (EnP[15] == 1'b0) && (test_gap_chk [15]) ) begin
            test_gap[15] <= test_gap[15] + 1'b1;
        end else if ((EnP[15] == 1'b1) && (test_gap_chk [15])) begin

            if ((test_gap[15]/33) == tb_w_icons_top.gap_s[15]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 15,test_gap[15]/33,tb_w_icons_top.gap_s[15]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 15,test_gap[15]/33,tb_w_icons_top.gap_s[15]);
                tb_stim_err;
            end
            test_gap[15]      <= 0;
            test_gap_chk [15] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[15] && (test_num[15] < tb_w_icons_top.num_s[15]) ) begin
            if (test_num[15] < tb_w_icons_top.interval_s[15]) begin
                if (EnP[15] == 1'b1) begin
                    test_interval[15]      <= 0;
                    test_interval_chk [15] <= 1'b1;
                end else if ( (EnP[15] == 1'b0) && (EnN[15] == 1'b0) && (test_interval_chk[15]) ) begin
                    test_interval[15] <= test_interval[15] + 1'b1;
                end else if ((EnN[15] == 1'b1) && (test_interval_chk[15])) begin

                    if ((test_interval[15]/33) == tb_w_icons_top.interval_s[15]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 15,test_interval[15]/33,tb_w_icons_top.interval_s[15]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 15,test_interval[15]/33,tb_w_icons_top.interval_s[15]);
                        tb_stim_err;
                    end
                    test_interval[15]      <= 0;
                    test_interval_chk [15] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[15] == 1'b1) && (test_num[15] < tb_w_icons_top.num_s[15]) && (test_num_chk[15] == 1'b0)) begin
            test_num[15]         <= test_num[15] + 1'b1;
            test_num_chk[15]     <= 1'b1;
            test_interval_en[15] <= 1'b1;

        end else if ((EnP[15] == 1'b1) && (test_num[15] < tb_w_icons_top.num_s[15]) && (test_num_chk[15] == 1'b1)) begin
            test_num_chk[15]     <= 1'b0;


        end else if ( ((EnN[15] == 1'b0) && (EnP[15] == 1'b0) && (test_num[15] == tb_w_icons_top.num_s[15])) ) begin
            test_num[15]         <= 0;
            test_num_chk[15]     <= 1'b0;
            test_interval_en[15] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[15] == 1'b1) || (EnP[15] == 1'b1)) begin
            if ( (Bn16 == tb_w_icons_top.ic_s[15]) && (Bp16 == tb_w_icons_top.ic_s[15]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 15,Bn16,Bp16,tb_w_icons_top.ic_s[15]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[15] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",15 );
                tb_stim_err;
            end
        end
    end




    //Channel16
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[16] == 1'b1) begin
            test_cathode_chk [16] <= 1'b1;
            test_cathode[16]      <= test_cathode[16] + 1'b1;

            if (!test_num_chk[16]) begin
                test_num[16]     <= test_num[16] + 1'b1;
                test_num_chk[16] <= 1'b1;
            end

        end else if ( (EnN[16] == 1'b0) && (test_cathode_chk[16]) ) begin
            test_cathode_chk [16] <= 1'b0;
            if ((test_cathode[16]/33) == tb_w_icons_top.wc_s[16]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 16,test_cathode[16]/33,tb_w_icons_top.wc_s[16]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 16,test_cathode[16]/33,tb_w_icons_top.wc_s[16]);
                tb_stim_err;
            end
            test_cathode[16] <= 0;
            test_num_chk[16] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[16] == 1'b1) begin
            test_anode_chk [16] <= 1'b1;
            test_anode[16]      <= test_anode[16] + 1'b1;

        end else if ( (EnP[16] == 1'b0) && (test_anode_chk[16]) ) begin
            test_anode_chk [16] <= 1'b0;
            if ((test_anode[16]/33) == tb_w_icons_top.wc_s[16]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 16,test_anode[16]/33,tb_w_icons_top.wc_s[16]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 16,test_anode[16]/33,tb_w_icons_top.wc_s[16]);
                tb_stim_err;
            end
            test_anode[16] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[16] == 1'b1) begin
            test_gap[16]      <= 0;
            test_gap_chk [16] <= 1'b1;
        end else if ( (EnN[16] == 1'b0) && (EnP[16] == 1'b0) && (test_gap_chk [16]) ) begin
            test_gap[16] <= test_gap[16] + 1'b1;
        end else if ((EnP[16] == 1'b1) && (test_gap_chk [16])) begin

            if ((test_gap[16]/33) == tb_w_icons_top.gap_s[16]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 16,test_gap[16]/33,tb_w_icons_top.gap_s[16]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 16,test_gap[16]/33,tb_w_icons_top.gap_s[16]);
                tb_stim_err;
            end
            test_gap[16]      <= 0;
            test_gap_chk [16] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[16] && (test_num[16] < tb_w_icons_top.num_s[16]) ) begin
            if (test_num[16] < tb_w_icons_top.interval_s[16]) begin
                if (EnP[16] == 1'b1) begin
                    test_interval[16]      <= 0;
                    test_interval_chk [16] <= 1'b1;
                end else if ( (EnP[16] == 1'b0) && (EnN[16] == 1'b0) && (test_interval_chk[16]) ) begin
                    test_interval[16] <= test_interval[16] + 1'b1;
                end else if ((EnN[16] == 1'b1) && (test_interval_chk[16])) begin

                    if ((test_interval[16]/33) == tb_w_icons_top.interval_s[16]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 16,test_interval[16]/33,tb_w_icons_top.interval_s[16]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 16,test_interval[16]/33,tb_w_icons_top.interval_s[16]);
                        tb_stim_err;
                    end
                    test_interval[16]      <= 0;
                    test_interval_chk [16] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[16] == 1'b1) && (test_num[16] < tb_w_icons_top.num_s[16]) && (test_num_chk[16] == 1'b0)) begin
            test_num[16]         <= test_num[16] + 1'b1;
            test_num_chk[16]     <= 1'b1;
            test_interval_en[16] <= 1'b1;

        end else if ((EnP[16] == 1'b1) && (test_num[16] < tb_w_icons_top.num_s[16]) && (test_num_chk[16] == 1'b1)) begin
            test_num_chk[16]     <= 1'b0;


        end else if ( ((EnN[16] == 1'b0) && (EnP[16] == 1'b0) && (test_num[16] == tb_w_icons_top.num_s[16])) ) begin
            test_num[16]         <= 0;
            test_num_chk[16]     <= 1'b0;
            test_interval_en[16] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[16] == 1'b1) || (EnP[16] == 1'b1)) begin
            if ( (Bn17 == tb_w_icons_top.ic_s[16]) && (Bp17 == tb_w_icons_top.ic_s[16]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 16,Bn17,Bp17,tb_w_icons_top.ic_s[16]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[16] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",16 );
                tb_stim_err;
            end
        end
    end




    //Channel17
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[17] == 1'b1) begin
            test_cathode_chk [17] <= 1'b1;
            test_cathode[17]      <= test_cathode[17] + 1'b1;

            if (!test_num_chk[17]) begin
                test_num[17]     <= test_num[17] + 1'b1;
                test_num_chk[17] <= 1'b1;
            end

        end else if ( (EnN[17] == 1'b0) && (test_cathode_chk[17]) ) begin
            test_cathode_chk [17] <= 1'b0;
            if ((test_cathode[17]/33) == tb_w_icons_top.wc_s[17]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 17,test_cathode[17]/33,tb_w_icons_top.wc_s[17]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 17,test_cathode[17]/33,tb_w_icons_top.wc_s[17]);
                tb_stim_err;
            end
            test_cathode[17] <= 0;
            test_num_chk[17] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[17] == 1'b1) begin
            test_anode_chk [17] <= 1'b1;
            test_anode[17]      <= test_anode[17] + 1'b1;

        end else if ( (EnP[17] == 1'b0) && (test_anode_chk[17]) ) begin
            test_anode_chk [17] <= 1'b0;
            if ((test_anode[17]/33) == tb_w_icons_top.wc_s[17]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 17,test_anode[17]/33,tb_w_icons_top.wc_s[17]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 17,test_anode[17]/33,tb_w_icons_top.wc_s[17]);
                tb_stim_err;
            end
            test_anode[17] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[17] == 1'b1) begin
            test_gap[17]      <= 0;
            test_gap_chk [17] <= 1'b1;
        end else if ( (EnN[17] == 1'b0) && (EnP[17] == 1'b0) && (test_gap_chk [17]) ) begin
            test_gap[17] <= test_gap[17] + 1'b1;
        end else if ((EnP[17] == 1'b1) && (test_gap_chk [17])) begin

            if ((test_gap[17]/33) == tb_w_icons_top.gap_s[17]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 17,test_gap[17]/33,tb_w_icons_top.gap_s[17]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 17,test_gap[17]/33,tb_w_icons_top.gap_s[17]);
                tb_stim_err;
            end
            test_gap[17]      <= 0;
            test_gap_chk [17] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[17] && (test_num[17] < tb_w_icons_top.num_s[17]) ) begin
            if (test_num[17] < tb_w_icons_top.interval_s[17]) begin
                if (EnP[17] == 1'b1) begin
                    test_interval[17]      <= 0;
                    test_interval_chk [17] <= 1'b1;
                end else if ( (EnP[17] == 1'b0) && (EnN[17] == 1'b0) && (test_interval_chk[17]) ) begin
                    test_interval[17] <= test_interval[17] + 1'b1;
                end else if ((EnN[17] == 1'b1) && (test_interval_chk[17])) begin

                    if ((test_interval[17]/33) == tb_w_icons_top.interval_s[17]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 17,test_interval[17]/33,tb_w_icons_top.interval_s[17]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 17,test_interval[17]/33,tb_w_icons_top.interval_s[17]);
                        tb_stim_err;
                    end
                    test_interval[17]      <= 0;
                    test_interval_chk [17] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[17] == 1'b1) && (test_num[17] < tb_w_icons_top.num_s[17]) && (test_num_chk[17] == 1'b0)) begin
            test_num[17]         <= test_num[17] + 1'b1;
            test_num_chk[17]     <= 1'b1;
            test_interval_en[17] <= 1'b1;

        end else if ((EnP[17] == 1'b1) && (test_num[17] < tb_w_icons_top.num_s[17]) && (test_num_chk[17] == 1'b1)) begin
            test_num_chk[17]     <= 1'b0;


        end else if ( ((EnN[17] == 1'b0) && (EnP[17] == 1'b0) && (test_num[17] == tb_w_icons_top.num_s[17])) ) begin
            test_num[17]         <= 0;
            test_num_chk[17]     <= 1'b0;
            test_interval_en[17] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[17] == 1'b1) || (EnP[17] == 1'b1)) begin
            if ( (Bn18 == tb_w_icons_top.ic_s[17]) && (Bp18 == tb_w_icons_top.ic_s[17]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 17,Bn18,Bp18,tb_w_icons_top.ic_s[17]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[17] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",17 );
                tb_stim_err;
            end
        end
    end




    //Channel18
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[18] == 1'b1) begin
            test_cathode_chk [18] <= 1'b1;
            test_cathode[18]      <= test_cathode[18] + 1'b1;

            if (!test_num_chk[18]) begin
                test_num[18]     <= test_num[18] + 1'b1;
                test_num_chk[18] <= 1'b1;
            end

        end else if ( (EnN[18] == 1'b0) && (test_cathode_chk[18]) ) begin
            test_cathode_chk [18] <= 1'b0;
            if ((test_cathode[18]/33) == tb_w_icons_top.wc_s[18]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 18,test_cathode[18]/33,tb_w_icons_top.wc_s[18]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 18,test_cathode[18]/33,tb_w_icons_top.wc_s[18]);
                tb_stim_err;
            end
            test_cathode[18] <= 0;
            test_num_chk[18] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[18] == 1'b1) begin
            test_anode_chk [18] <= 1'b1;
            test_anode[18]      <= test_anode[18] + 1'b1;

        end else if ( (EnP[18] == 1'b0) && (test_anode_chk[18]) ) begin
            test_anode_chk [18] <= 1'b0;
            if ((test_anode[18]/33) == tb_w_icons_top.wc_s[18]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 18,test_anode[18]/33,tb_w_icons_top.wc_s[18]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 18,test_anode[18]/33,tb_w_icons_top.wc_s[18]);
                tb_stim_err;
            end
            test_anode[18] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[18] == 1'b1) begin
            test_gap[18]      <= 0;
            test_gap_chk [18] <= 1'b1;
        end else if ( (EnN[18] == 1'b0) && (EnP[18] == 1'b0) && (test_gap_chk [18]) ) begin
            test_gap[18] <= test_gap[18] + 1'b1;
        end else if ((EnP[18] == 1'b1) && (test_gap_chk [18])) begin

            if ((test_gap[18]/33) == tb_w_icons_top.gap_s[18]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 18,test_gap[18]/33,tb_w_icons_top.gap_s[18]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 18,test_gap[18]/33,tb_w_icons_top.gap_s[18]);
                tb_stim_err;
            end
            test_gap[18]      <= 0;
            test_gap_chk [18] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[18] && (test_num[18] < tb_w_icons_top.num_s[18]) ) begin
            if (test_num[18] < tb_w_icons_top.interval_s[18]) begin
                if (EnP[18] == 1'b1) begin
                    test_interval[18]      <= 0;
                    test_interval_chk [18] <= 1'b1;
                end else if ( (EnP[18] == 1'b0) && (EnN[18] == 1'b0) && (test_interval_chk[18]) ) begin
                    test_interval[18] <= test_interval[18] + 1'b1;
                end else if ((EnN[18] == 1'b1) && (test_interval_chk[18])) begin

                    if ((test_interval[18]/33) == tb_w_icons_top.interval_s[18]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 18,test_interval[18]/33,tb_w_icons_top.interval_s[18]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 18,test_interval[18]/33,tb_w_icons_top.interval_s[18]);
                        tb_stim_err;
                    end
                    test_interval[18]      <= 0;
                    test_interval_chk [18] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[18] == 1'b1) && (test_num[18] < tb_w_icons_top.num_s[18]) && (test_num_chk[18] == 1'b0)) begin
            test_num[18]         <= test_num[18] + 1'b1;
            test_num_chk[18]     <= 1'b1;
            test_interval_en[18] <= 1'b1;

        end else if ((EnP[18] == 1'b1) && (test_num[18] < tb_w_icons_top.num_s[18]) && (test_num_chk[18] == 1'b1)) begin
            test_num_chk[18]     <= 1'b0;


        end else if ( ((EnN[18] == 1'b0) && (EnP[18] == 1'b0) && (test_num[18] == tb_w_icons_top.num_s[18])) ) begin
            test_num[18]         <= 0;
            test_num_chk[18]     <= 1'b0;
            test_interval_en[18] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[18] == 1'b1) || (EnP[18] == 1'b1)) begin
            if ( (Bn19 == tb_w_icons_top.ic_s[18]) && (Bp19 == tb_w_icons_top.ic_s[18]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 18,Bn19,Bp19,tb_w_icons_top.ic_s[18]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[18] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",18 );
                tb_stim_err;
            end
        end
    end




    //Channel19
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[19] == 1'b1) begin
            test_cathode_chk [19] <= 1'b1;
            test_cathode[19]      <= test_cathode[19] + 1'b1;

            if (!test_num_chk[19]) begin
                test_num[19]     <= test_num[19] + 1'b1;
                test_num_chk[19] <= 1'b1;
            end

        end else if ( (EnN[19] == 1'b0) && (test_cathode_chk[19]) ) begin
            test_cathode_chk [19] <= 1'b0;
            if ((test_cathode[19]/33) == tb_w_icons_top.wc_s[19]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 19,test_cathode[19]/33,tb_w_icons_top.wc_s[19]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 19,test_cathode[19]/33,tb_w_icons_top.wc_s[19]);
                tb_stim_err;
            end
            test_cathode[19] <= 0;
            test_num_chk[19] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[19] == 1'b1) begin
            test_anode_chk [19] <= 1'b1;
            test_anode[19]      <= test_anode[19] + 1'b1;

        end else if ( (EnP[19] == 1'b0) && (test_anode_chk[19]) ) begin
            test_anode_chk [19] <= 1'b0;
            if ((test_anode[19]/33) == tb_w_icons_top.wc_s[19]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 19,test_anode[19]/33,tb_w_icons_top.wc_s[19]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 19,test_anode[19]/33,tb_w_icons_top.wc_s[19]);
                tb_stim_err;
            end
            test_anode[19] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[19] == 1'b1) begin
            test_gap[19]      <= 0;
            test_gap_chk [19] <= 1'b1;
        end else if ( (EnN[19] == 1'b0) && (EnP[19] == 1'b0) && (test_gap_chk [19]) ) begin
            test_gap[19] <= test_gap[19] + 1'b1;
        end else if ((EnP[19] == 1'b1) && (test_gap_chk [19])) begin

            if ((test_gap[19]/33) == tb_w_icons_top.gap_s[19]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 19,test_gap[19]/33,tb_w_icons_top.gap_s[19]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 19,test_gap[19]/33,tb_w_icons_top.gap_s[19]);
                tb_stim_err;
            end
            test_gap[19]      <= 0;
            test_gap_chk [19] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[19] && (test_num[19] < tb_w_icons_top.num_s[19]) ) begin
            if (test_num[19] < tb_w_icons_top.interval_s[19]) begin
                if (EnP[19] == 1'b1) begin
                    test_interval[19]      <= 0;
                    test_interval_chk [19] <= 1'b1;
                end else if ( (EnP[19] == 1'b0) && (EnN[19] == 1'b0) && (test_interval_chk[19]) ) begin
                    test_interval[19] <= test_interval[19] + 1'b1;
                end else if ((EnN[19] == 1'b1) && (test_interval_chk[19])) begin

                    if ((test_interval[19]/33) == tb_w_icons_top.interval_s[19]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 19,test_interval[19]/33,tb_w_icons_top.interval_s[19]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 19,test_interval[19]/33,tb_w_icons_top.interval_s[19]);
                        tb_stim_err;
                    end
                    test_interval[19]      <= 0;
                    test_interval_chk [19] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[19] == 1'b1) && (test_num[19] < tb_w_icons_top.num_s[19]) && (test_num_chk[19] == 1'b0)) begin
            test_num[19]         <= test_num[19] + 1'b1;
            test_num_chk[19]     <= 1'b1;
            test_interval_en[19] <= 1'b1;

        end else if ((EnP[19] == 1'b1) && (test_num[19] < tb_w_icons_top.num_s[19]) && (test_num_chk[19] == 1'b1)) begin
            test_num_chk[19]     <= 1'b0;


        end else if ( ((EnN[19] == 1'b0) && (EnP[19] == 1'b0) && (test_num[19] == tb_w_icons_top.num_s[19])) ) begin
            test_num[19]         <= 0;
            test_num_chk[19]     <= 1'b0;
            test_interval_en[19] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[19] == 1'b1) || (EnP[19] == 1'b1)) begin
            if ( (Bn20 == tb_w_icons_top.ic_s[19]) && (Bp20 == tb_w_icons_top.ic_s[19]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 19,Bn20,Bp20,tb_w_icons_top.ic_s[19]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[19] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",19 );
                tb_stim_err;
            end
        end
    end




    //Channel20
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[20] == 1'b1) begin
            test_cathode_chk [20] <= 1'b1;
            test_cathode[20]      <= test_cathode[20] + 1'b1;

            if (!test_num_chk[20]) begin
                test_num[20]     <= test_num[20] + 1'b1;
                test_num_chk[20] <= 1'b1;
            end

        end else if ( (EnN[20] == 1'b0) && (test_cathode_chk[20]) ) begin
            test_cathode_chk [20] <= 1'b0;
            if ((test_cathode[20]/33) == tb_w_icons_top.wc_s[20]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 20,test_cathode[20]/33,tb_w_icons_top.wc_s[20]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 20,test_cathode[20]/33,tb_w_icons_top.wc_s[20]);
                tb_stim_err;
            end
            test_cathode[20] <= 0;
            test_num_chk[20] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[20] == 1'b1) begin
            test_anode_chk [20] <= 1'b1;
            test_anode[20]      <= test_anode[20] + 1'b1;

        end else if ( (EnP[20] == 1'b0) && (test_anode_chk[20]) ) begin
            test_anode_chk [20] <= 1'b0;
            if ((test_anode[20]/33) == tb_w_icons_top.wc_s[20]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 20,test_anode[20]/33,tb_w_icons_top.wc_s[20]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 20,test_anode[20]/33,tb_w_icons_top.wc_s[20]);
                tb_stim_err;
            end
            test_anode[20] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[20] == 1'b1) begin
            test_gap[20]      <= 0;
            test_gap_chk [20] <= 1'b1;
        end else if ( (EnN[20] == 1'b0) && (EnP[20] == 1'b0) && (test_gap_chk [20]) ) begin
            test_gap[20] <= test_gap[20] + 1'b1;
        end else if ((EnP[20] == 1'b1) && (test_gap_chk [20])) begin

            if ((test_gap[20]/33) == tb_w_icons_top.gap_s[20]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 20,test_gap[20]/33,tb_w_icons_top.gap_s[20]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 20,test_gap[20]/33,tb_w_icons_top.gap_s[20]);
                tb_stim_err;
            end
            test_gap[20]      <= 0;
            test_gap_chk [20] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[20] && (test_num[20] < tb_w_icons_top.num_s[20]) ) begin
            if (test_num[20] < tb_w_icons_top.interval_s[20]) begin
                if (EnP[20] == 1'b1) begin
                    test_interval[20]      <= 0;
                    test_interval_chk [20] <= 1'b1;
                end else if ( (EnP[20] == 1'b0) && (EnN[20] == 1'b0) && (test_interval_chk[20]) ) begin
                    test_interval[20] <= test_interval[20] + 1'b1;
                end else if ((EnN[20] == 1'b1) && (test_interval_chk[20])) begin

                    if ((test_interval[20]/33) == tb_w_icons_top.interval_s[20]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 20,test_interval[20]/33,tb_w_icons_top.interval_s[20]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 20,test_interval[20]/33,tb_w_icons_top.interval_s[20]);
                        tb_stim_err;
                    end
                    test_interval[20]      <= 0;
                    test_interval_chk [20] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[20] == 1'b1) && (test_num[20] < tb_w_icons_top.num_s[20]) && (test_num_chk[20] == 1'b0)) begin
            test_num[20]         <= test_num[20] + 1'b1;
            test_num_chk[20]     <= 1'b1;
            test_interval_en[20] <= 1'b1;

        end else if ((EnP[20] == 1'b1) && (test_num[20] < tb_w_icons_top.num_s[20]) && (test_num_chk[20] == 1'b1)) begin
            test_num_chk[20]     <= 1'b0;


        end else if ( ((EnN[20] == 1'b0) && (EnP[20] == 1'b0) && (test_num[20] == tb_w_icons_top.num_s[20])) ) begin
            test_num[20]         <= 0;
            test_num_chk[20]     <= 1'b0;
            test_interval_en[20] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[20] == 1'b1) || (EnP[20] == 1'b1)) begin
            if ( (Bn21 == tb_w_icons_top.ic_s[20]) && (Bp21 == tb_w_icons_top.ic_s[20]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 20,Bn21,Bp21,tb_w_icons_top.ic_s[20]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[20] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",20 );
                tb_stim_err;
            end
        end
    end




    //Channel21
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[21] == 1'b1) begin
            test_cathode_chk [21] <= 1'b1;
            test_cathode[21]      <= test_cathode[21] + 1'b1;

            if (!test_num_chk[21]) begin
                test_num[21]     <= test_num[21] + 1'b1;
                test_num_chk[21] <= 1'b1;
            end

        end else if ( (EnN[21] == 1'b0) && (test_cathode_chk[21]) ) begin
            test_cathode_chk [21] <= 1'b0;
            if ((test_cathode[21]/33) == tb_w_icons_top.wc_s[21]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 21,test_cathode[21]/33,tb_w_icons_top.wc_s[21]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 21,test_cathode[21]/33,tb_w_icons_top.wc_s[21]);
                tb_stim_err;
            end
            test_cathode[21] <= 0;
            test_num_chk[21] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[21] == 1'b1) begin
            test_anode_chk [21] <= 1'b1;
            test_anode[21]      <= test_anode[21] + 1'b1;

        end else if ( (EnP[21] == 1'b0) && (test_anode_chk[21]) ) begin
            test_anode_chk [21] <= 1'b0;
            if ((test_anode[21]/33) == tb_w_icons_top.wc_s[21]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 21,test_anode[21]/33,tb_w_icons_top.wc_s[21]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 21,test_anode[21]/33,tb_w_icons_top.wc_s[21]);
                tb_stim_err;
            end
            test_anode[21] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[21] == 1'b1) begin
            test_gap[21]      <= 0;
            test_gap_chk [21] <= 1'b1;
        end else if ( (EnN[21] == 1'b0) && (EnP[21] == 1'b0) && (test_gap_chk [21]) ) begin
            test_gap[21] <= test_gap[21] + 1'b1;
        end else if ((EnP[21] == 1'b1) && (test_gap_chk [21])) begin

            if ((test_gap[21]/33) == tb_w_icons_top.gap_s[21]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 21,test_gap[21]/33,tb_w_icons_top.gap_s[21]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 21,test_gap[21]/33,tb_w_icons_top.gap_s[21]);
                tb_stim_err;
            end
            test_gap[21]      <= 0;
            test_gap_chk [21] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[21] && (test_num[21] < tb_w_icons_top.num_s[21]) ) begin
            if (test_num[21] < tb_w_icons_top.interval_s[21]) begin
                if (EnP[21] == 1'b1) begin
                    test_interval[21]      <= 0;
                    test_interval_chk [21] <= 1'b1;
                end else if ( (EnP[21] == 1'b0) && (EnN[21] == 1'b0) && (test_interval_chk[21]) ) begin
                    test_interval[21] <= test_interval[21] + 1'b1;
                end else if ((EnN[21] == 1'b1) && (test_interval_chk[21])) begin

                    if ((test_interval[21]/33) == tb_w_icons_top.interval_s[21]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 21,test_interval[21]/33,tb_w_icons_top.interval_s[21]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 21,test_interval[21]/33,tb_w_icons_top.interval_s[21]);
                        tb_stim_err;
                    end
                    test_interval[21]      <= 0;
                    test_interval_chk [21] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[21] == 1'b1) && (test_num[21] < tb_w_icons_top.num_s[21]) && (test_num_chk[21] == 1'b0)) begin
            test_num[21]         <= test_num[21] + 1'b1;
            test_num_chk[21]     <= 1'b1;
            test_interval_en[21] <= 1'b1;

        end else if ((EnP[21] == 1'b1) && (test_num[21] < tb_w_icons_top.num_s[21]) && (test_num_chk[21] == 1'b1)) begin
            test_num_chk[21]     <= 1'b0;


        end else if ( ((EnN[21] == 1'b0) && (EnP[21] == 1'b0) && (test_num[21] == tb_w_icons_top.num_s[21])) ) begin
            test_num[21]         <= 0;
            test_num_chk[21]     <= 1'b0;
            test_interval_en[21] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[21] == 1'b1) || (EnP[21] == 1'b1)) begin
            if ( (Bn22 == tb_w_icons_top.ic_s[21]) && (Bp22 == tb_w_icons_top.ic_s[21]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 21,Bn22,Bp22,tb_w_icons_top.ic_s[21]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[21] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",21 );
                tb_stim_err;
            end
        end
    end




    //Channel22
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[22] == 1'b1) begin
            test_cathode_chk [22] <= 1'b1;
            test_cathode[22]      <= test_cathode[22] + 1'b1;

            if (!test_num_chk[22]) begin
                test_num[22]     <= test_num[22] + 1'b1;
                test_num_chk[22] <= 1'b1;
            end

        end else if ( (EnN[22] == 1'b0) && (test_cathode_chk[22]) ) begin
            test_cathode_chk [22] <= 1'b0;
            if ((test_cathode[22]/33) == tb_w_icons_top.wc_s[22]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 22,test_cathode[22]/33,tb_w_icons_top.wc_s[22]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 22,test_cathode[22]/33,tb_w_icons_top.wc_s[22]);
                tb_stim_err;
            end
            test_cathode[22] <= 0;
            test_num_chk[22] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[22] == 1'b1) begin
            test_anode_chk [22] <= 1'b1;
            test_anode[22]      <= test_anode[22] + 1'b1;

        end else if ( (EnP[22] == 1'b0) && (test_anode_chk[22]) ) begin
            test_anode_chk [22] <= 1'b0;
            if ((test_anode[22]/33) == tb_w_icons_top.wc_s[22]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 22,test_anode[22]/33,tb_w_icons_top.wc_s[22]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 22,test_anode[22]/33,tb_w_icons_top.wc_s[22]);
                tb_stim_err;
            end
            test_anode[22] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[22] == 1'b1) begin
            test_gap[22]      <= 0;
            test_gap_chk [22] <= 1'b1;
        end else if ( (EnN[22] == 1'b0) && (EnP[22] == 1'b0) && (test_gap_chk [22]) ) begin
            test_gap[22] <= test_gap[22] + 1'b1;
        end else if ((EnP[22] == 1'b1) && (test_gap_chk [22])) begin

            if ((test_gap[22]/33) == tb_w_icons_top.gap_s[22]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 22,test_gap[22]/33,tb_w_icons_top.gap_s[22]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 22,test_gap[22]/33,tb_w_icons_top.gap_s[22]);
                tb_stim_err;
            end
            test_gap[22]      <= 0;
            test_gap_chk [22] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[22] && (test_num[22] < tb_w_icons_top.num_s[22]) ) begin
            if (test_num[22] < tb_w_icons_top.interval_s[22]) begin
                if (EnP[22] == 1'b1) begin
                    test_interval[22]      <= 0;
                    test_interval_chk [22] <= 1'b1;
                end else if ( (EnP[22] == 1'b0) && (EnN[22] == 1'b0) && (test_interval_chk[22]) ) begin
                    test_interval[22] <= test_interval[22] + 1'b1;
                end else if ((EnN[22] == 1'b1) && (test_interval_chk[22])) begin

                    if ((test_interval[22]/33) == tb_w_icons_top.interval_s[22]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 22,test_interval[22]/33,tb_w_icons_top.interval_s[22]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 22,test_interval[22]/33,tb_w_icons_top.interval_s[22]);
                        tb_stim_err;
                    end
                    test_interval[22]      <= 0;
                    test_interval_chk [22] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[22] == 1'b1) && (test_num[22] < tb_w_icons_top.num_s[22]) && (test_num_chk[22] == 1'b0)) begin
            test_num[22]         <= test_num[22] + 1'b1;
            test_num_chk[22]     <= 1'b1;
            test_interval_en[22] <= 1'b1;

        end else if ((EnP[22] == 1'b1) && (test_num[22] < tb_w_icons_top.num_s[22]) && (test_num_chk[22] == 1'b1)) begin
            test_num_chk[22]     <= 1'b0;


        end else if ( ((EnN[22] == 1'b0) && (EnP[22] == 1'b0) && (test_num[22] == tb_w_icons_top.num_s[22])) ) begin
            test_num[22]         <= 0;
            test_num_chk[22]     <= 1'b0;
            test_interval_en[22] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[22] == 1'b1) || (EnP[22] == 1'b1)) begin
            if ( (Bn23 == tb_w_icons_top.ic_s[22]) && (Bp23 == tb_w_icons_top.ic_s[22]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 22,Bn23,Bp23,tb_w_icons_top.ic_s[22]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[22] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",22 );
                tb_stim_err;
            end
        end
    end




    //Channel23
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[23] == 1'b1) begin
            test_cathode_chk [23] <= 1'b1;
            test_cathode[23]      <= test_cathode[23] + 1'b1;

            if (!test_num_chk[23]) begin
                test_num[23]     <= test_num[23] + 1'b1;
                test_num_chk[23] <= 1'b1;
            end

        end else if ( (EnN[23] == 1'b0) && (test_cathode_chk[23]) ) begin
            test_cathode_chk [23] <= 1'b0;
            if ((test_cathode[23]/33) == tb_w_icons_top.wc_s[23]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 23,test_cathode[23]/33,tb_w_icons_top.wc_s[23]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 23,test_cathode[23]/33,tb_w_icons_top.wc_s[23]);
                tb_stim_err;
            end
            test_cathode[23] <= 0;
            test_num_chk[23] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[23] == 1'b1) begin
            test_anode_chk [23] <= 1'b1;
            test_anode[23]      <= test_anode[23] + 1'b1;

        end else if ( (EnP[23] == 1'b0) && (test_anode_chk[23]) ) begin
            test_anode_chk [23] <= 1'b0;
            if ((test_anode[23]/33) == tb_w_icons_top.wc_s[23]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 23,test_anode[23]/33,tb_w_icons_top.wc_s[23]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 23,test_anode[23]/33,tb_w_icons_top.wc_s[23]);
                tb_stim_err;
            end
            test_anode[23] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[23] == 1'b1) begin
            test_gap[23]      <= 0;
            test_gap_chk [23] <= 1'b1;
        end else if ( (EnN[23] == 1'b0) && (EnP[23] == 1'b0) && (test_gap_chk [23]) ) begin
            test_gap[23] <= test_gap[23] + 1'b1;
        end else if ((EnP[23] == 1'b1) && (test_gap_chk [23])) begin

            if ((test_gap[23]/33) == tb_w_icons_top.gap_s[23]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 23,test_gap[23]/33,tb_w_icons_top.gap_s[23]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 23,test_gap[23]/33,tb_w_icons_top.gap_s[23]);
                tb_stim_err;
            end
            test_gap[23]      <= 0;
            test_gap_chk [23] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[23] && (test_num[23] < tb_w_icons_top.num_s[23]) ) begin
            if (test_num[23] < tb_w_icons_top.interval_s[23]) begin
                if (EnP[23] == 1'b1) begin
                    test_interval[23]      <= 0;
                    test_interval_chk [23] <= 1'b1;
                end else if ( (EnP[23] == 1'b0) && (EnN[23] == 1'b0) && (test_interval_chk[23]) ) begin
                    test_interval[23] <= test_interval[23] + 1'b1;
                end else if ((EnN[23] == 1'b1) && (test_interval_chk[23])) begin

                    if ((test_interval[23]/33) == tb_w_icons_top.interval_s[23]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 23,test_interval[23]/33,tb_w_icons_top.interval_s[23]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 23,test_interval[23]/33,tb_w_icons_top.interval_s[23]);
                        tb_stim_err;
                    end
                    test_interval[23]      <= 0;
                    test_interval_chk [23] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[23] == 1'b1) && (test_num[23] < tb_w_icons_top.num_s[23]) && (test_num_chk[23] == 1'b0)) begin
            test_num[23]         <= test_num[23] + 1'b1;
            test_num_chk[23]     <= 1'b1;
            test_interval_en[23] <= 1'b1;

        end else if ((EnP[23] == 1'b1) && (test_num[23] < tb_w_icons_top.num_s[23]) && (test_num_chk[23] == 1'b1)) begin
            test_num_chk[23]     <= 1'b0;


        end else if ( ((EnN[23] == 1'b0) && (EnP[23] == 1'b0) && (test_num[23] == tb_w_icons_top.num_s[23])) ) begin
            test_num[23]         <= 0;
            test_num_chk[23]     <= 1'b0;
            test_interval_en[23] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[23] == 1'b1) || (EnP[23] == 1'b1)) begin
            if ( (Bn24 == tb_w_icons_top.ic_s[23]) && (Bp24 == tb_w_icons_top.ic_s[23]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 23,Bn24,Bp24,tb_w_icons_top.ic_s[23]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[23] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",23 );
                tb_stim_err;
            end
        end
    end




    //Channel24
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[24] == 1'b1) begin
            test_cathode_chk [24] <= 1'b1;
            test_cathode[24]      <= test_cathode[24] + 1'b1;

            if (!test_num_chk[24]) begin
                test_num[24]     <= test_num[24] + 1'b1;
                test_num_chk[24] <= 1'b1;
            end

        end else if ( (EnN[24] == 1'b0) && (test_cathode_chk[24]) ) begin
            test_cathode_chk [24] <= 1'b0;
            if ((test_cathode[24]/33) == tb_w_icons_top.wc_s[24]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 24,test_cathode[24]/33,tb_w_icons_top.wc_s[24]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 24,test_cathode[24]/33,tb_w_icons_top.wc_s[24]);
                tb_stim_err;
            end
            test_cathode[24] <= 0;
            test_num_chk[24] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[24] == 1'b1) begin
            test_anode_chk [24] <= 1'b1;
            test_anode[24]      <= test_anode[24] + 1'b1;

        end else if ( (EnP[24] == 1'b0) && (test_anode_chk[24]) ) begin
            test_anode_chk [24] <= 1'b0;
            if ((test_anode[24]/33) == tb_w_icons_top.wc_s[24]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 24,test_anode[24]/33,tb_w_icons_top.wc_s[24]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 24,test_anode[24]/33,tb_w_icons_top.wc_s[24]);
                tb_stim_err;
            end
            test_anode[24] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[24] == 1'b1) begin
            test_gap[24]      <= 0;
            test_gap_chk [24] <= 1'b1;
        end else if ( (EnN[24] == 1'b0) && (EnP[24] == 1'b0) && (test_gap_chk [24]) ) begin
            test_gap[24] <= test_gap[24] + 1'b1;
        end else if ((EnP[24] == 1'b1) && (test_gap_chk [24])) begin

            if ((test_gap[24]/33) == tb_w_icons_top.gap_s[24]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 24,test_gap[24]/33,tb_w_icons_top.gap_s[24]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 24,test_gap[24]/33,tb_w_icons_top.gap_s[24]);
                tb_stim_err;
            end
            test_gap[24]      <= 0;
            test_gap_chk [24] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[24] && (test_num[24] < tb_w_icons_top.num_s[24]) ) begin
            if (test_num[24] < tb_w_icons_top.interval_s[24]) begin
                if (EnP[24] == 1'b1) begin
                    test_interval[24]      <= 0;
                    test_interval_chk [24] <= 1'b1;
                end else if ( (EnP[24] == 1'b0) && (EnN[24] == 1'b0) && (test_interval_chk[24]) ) begin
                    test_interval[24] <= test_interval[24] + 1'b1;
                end else if ((EnN[24] == 1'b1) && (test_interval_chk[24])) begin

                    if ((test_interval[24]/33) == tb_w_icons_top.interval_s[24]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 24,test_interval[24]/33,tb_w_icons_top.interval_s[24]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 24,test_interval[24]/33,tb_w_icons_top.interval_s[24]);
                        tb_stim_err;
                    end
                    test_interval[24]      <= 0;
                    test_interval_chk [24] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[24] == 1'b1) && (test_num[24] < tb_w_icons_top.num_s[24]) && (test_num_chk[24] == 1'b0)) begin
            test_num[24]         <= test_num[24] + 1'b1;
            test_num_chk[24]     <= 1'b1;
            test_interval_en[24] <= 1'b1;

        end else if ((EnP[24] == 1'b1) && (test_num[24] < tb_w_icons_top.num_s[24]) && (test_num_chk[24] == 1'b1)) begin
            test_num_chk[24]     <= 1'b0;


        end else if ( ((EnN[24] == 1'b0) && (EnP[24] == 1'b0) && (test_num[24] == tb_w_icons_top.num_s[24])) ) begin
            test_num[24]         <= 0;
            test_num_chk[24]     <= 1'b0;
            test_interval_en[24] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[24] == 1'b1) || (EnP[24] == 1'b1)) begin
            if ( (Bn25 == tb_w_icons_top.ic_s[24]) && (Bp25 == tb_w_icons_top.ic_s[24]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 24,Bn25,Bp25,tb_w_icons_top.ic_s[24]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[24] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",24 );
                tb_stim_err;
            end
        end
    end




    //Channel25
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[25] == 1'b1) begin
            test_cathode_chk [25] <= 1'b1;
            test_cathode[25]      <= test_cathode[25] + 1'b1;

            if (!test_num_chk[25]) begin
                test_num[25]     <= test_num[25] + 1'b1;
                test_num_chk[25] <= 1'b1;
            end

        end else if ( (EnN[25] == 1'b0) && (test_cathode_chk[25]) ) begin
            test_cathode_chk [25] <= 1'b0;
            if ((test_cathode[25]/33) == tb_w_icons_top.wc_s[25]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 25,test_cathode[25]/33,tb_w_icons_top.wc_s[25]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 25,test_cathode[25]/33,tb_w_icons_top.wc_s[25]);
                tb_stim_err;
            end
            test_cathode[25] <= 0;
            test_num_chk[25] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[25] == 1'b1) begin
            test_anode_chk [25] <= 1'b1;
            test_anode[25]      <= test_anode[25] + 1'b1;

        end else if ( (EnP[25] == 1'b0) && (test_anode_chk[25]) ) begin
            test_anode_chk [25] <= 1'b0;
            if ((test_anode[25]/33) == tb_w_icons_top.wc_s[25]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 25,test_anode[25]/33,tb_w_icons_top.wc_s[25]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 25,test_anode[25]/33,tb_w_icons_top.wc_s[25]);
                tb_stim_err;
            end
            test_anode[25] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[25] == 1'b1) begin
            test_gap[25]      <= 0;
            test_gap_chk [25] <= 1'b1;
        end else if ( (EnN[25] == 1'b0) && (EnP[25] == 1'b0) && (test_gap_chk [25]) ) begin
            test_gap[25] <= test_gap[25] + 1'b1;
        end else if ((EnP[25] == 1'b1) && (test_gap_chk [25])) begin

            if ((test_gap[25]/33) == tb_w_icons_top.gap_s[25]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 25,test_gap[25]/33,tb_w_icons_top.gap_s[25]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 25,test_gap[25]/33,tb_w_icons_top.gap_s[25]);
                tb_stim_err;
            end
            test_gap[25]      <= 0;
            test_gap_chk [25] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[25] && (test_num[25] < tb_w_icons_top.num_s[25]) ) begin
            if (test_num[25] < tb_w_icons_top.interval_s[25]) begin
                if (EnP[25] == 1'b1) begin
                    test_interval[25]      <= 0;
                    test_interval_chk [25] <= 1'b1;
                end else if ( (EnP[25] == 1'b0) && (EnN[25] == 1'b0) && (test_interval_chk[25]) ) begin
                    test_interval[25] <= test_interval[25] + 1'b1;
                end else if ((EnN[25] == 1'b1) && (test_interval_chk[25])) begin

                    if ((test_interval[25]/33) == tb_w_icons_top.interval_s[25]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 25,test_interval[25]/33,tb_w_icons_top.interval_s[25]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 25,test_interval[25]/33,tb_w_icons_top.interval_s[25]);
                        tb_stim_err;
                    end
                    test_interval[25]      <= 0;
                    test_interval_chk [25] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[25] == 1'b1) && (test_num[25] < tb_w_icons_top.num_s[25]) && (test_num_chk[25] == 1'b0)) begin
            test_num[25]         <= test_num[25] + 1'b1;
            test_num_chk[25]     <= 1'b1;
            test_interval_en[25] <= 1'b1;

        end else if ((EnP[25] == 1'b1) && (test_num[25] < tb_w_icons_top.num_s[25]) && (test_num_chk[25] == 1'b1)) begin
            test_num_chk[25]     <= 1'b0;


        end else if ( ((EnN[25] == 1'b0) && (EnP[25] == 1'b0) && (test_num[25] == tb_w_icons_top.num_s[25])) ) begin
            test_num[25]         <= 0;
            test_num_chk[25]     <= 1'b0;
            test_interval_en[25] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[25] == 1'b1) || (EnP[25] == 1'b1)) begin
            if ( (Bn26 == tb_w_icons_top.ic_s[25]) && (Bp26 == tb_w_icons_top.ic_s[25]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 25,Bn26,Bp26,tb_w_icons_top.ic_s[25]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[25] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",25 );
                tb_stim_err;
            end
        end
    end




    //Channel26
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[26] == 1'b1) begin
            test_cathode_chk [26] <= 1'b1;
            test_cathode[26]      <= test_cathode[26] + 1'b1;

            if (!test_num_chk[26]) begin
                test_num[26]     <= test_num[26] + 1'b1;
                test_num_chk[26] <= 1'b1;
            end

        end else if ( (EnN[26] == 1'b0) && (test_cathode_chk[26]) ) begin
            test_cathode_chk [26] <= 1'b0;
            if ((test_cathode[26]/33) == tb_w_icons_top.wc_s[26]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 26,test_cathode[26]/33,tb_w_icons_top.wc_s[26]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 26,test_cathode[26]/33,tb_w_icons_top.wc_s[26]);
                tb_stim_err;
            end
            test_cathode[26] <= 0;
            test_num_chk[26] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[26] == 1'b1) begin
            test_anode_chk [26] <= 1'b1;
            test_anode[26]      <= test_anode[26] + 1'b1;

        end else if ( (EnP[26] == 1'b0) && (test_anode_chk[26]) ) begin
            test_anode_chk [26] <= 1'b0;
            if ((test_anode[26]/33) == tb_w_icons_top.wc_s[26]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 26,test_anode[26]/33,tb_w_icons_top.wc_s[26]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 26,test_anode[26]/33,tb_w_icons_top.wc_s[26]);
                tb_stim_err;
            end
            test_anode[26] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[26] == 1'b1) begin
            test_gap[26]      <= 0;
            test_gap_chk [26] <= 1'b1;
        end else if ( (EnN[26] == 1'b0) && (EnP[26] == 1'b0) && (test_gap_chk [26]) ) begin
            test_gap[26] <= test_gap[26] + 1'b1;
        end else if ((EnP[26] == 1'b1) && (test_gap_chk [26])) begin

            if ((test_gap[26]/33) == tb_w_icons_top.gap_s[26]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 26,test_gap[26]/33,tb_w_icons_top.gap_s[26]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 26,test_gap[26]/33,tb_w_icons_top.gap_s[26]);
                tb_stim_err;
            end
            test_gap[26]      <= 0;
            test_gap_chk [26] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[26] && (test_num[26] < tb_w_icons_top.num_s[26]) ) begin
            if (test_num[26] < tb_w_icons_top.interval_s[26]) begin
                if (EnP[26] == 1'b1) begin
                    test_interval[26]      <= 0;
                    test_interval_chk [26] <= 1'b1;
                end else if ( (EnP[26] == 1'b0) && (EnN[26] == 1'b0) && (test_interval_chk[26]) ) begin
                    test_interval[26] <= test_interval[26] + 1'b1;
                end else if ((EnN[26] == 1'b1) && (test_interval_chk[26])) begin

                    if ((test_interval[26]/33) == tb_w_icons_top.interval_s[26]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 26,test_interval[26]/33,tb_w_icons_top.interval_s[26]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 26,test_interval[26]/33,tb_w_icons_top.interval_s[26]);
                        tb_stim_err;
                    end
                    test_interval[26]      <= 0;
                    test_interval_chk [26] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[26] == 1'b1) && (test_num[26] < tb_w_icons_top.num_s[26]) && (test_num_chk[26] == 1'b0)) begin
            test_num[26]         <= test_num[26] + 1'b1;
            test_num_chk[26]     <= 1'b1;
            test_interval_en[26] <= 1'b1;

        end else if ((EnP[26] == 1'b1) && (test_num[26] < tb_w_icons_top.num_s[26]) && (test_num_chk[26] == 1'b1)) begin
            test_num_chk[26]     <= 1'b0;


        end else if ( ((EnN[26] == 1'b0) && (EnP[26] == 1'b0) && (test_num[26] == tb_w_icons_top.num_s[26])) ) begin
            test_num[26]         <= 0;
            test_num_chk[26]     <= 1'b0;
            test_interval_en[26] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[26] == 1'b1) || (EnP[26] == 1'b1)) begin
            if ( (Bn27 == tb_w_icons_top.ic_s[26]) && (Bp27 == tb_w_icons_top.ic_s[26]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 26,Bn27,Bp27,tb_w_icons_top.ic_s[26]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[26] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",26 );
                tb_stim_err;
            end
        end
    end




    //Channel27
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[27] == 1'b1) begin
            test_cathode_chk [27] <= 1'b1;
            test_cathode[27]      <= test_cathode[27] + 1'b1;

            if (!test_num_chk[27]) begin
                test_num[27]     <= test_num[27] + 1'b1;
                test_num_chk[27] <= 1'b1;
            end

        end else if ( (EnN[27] == 1'b0) && (test_cathode_chk[27]) ) begin
            test_cathode_chk [27] <= 1'b0;
            if ((test_cathode[27]/33) == tb_w_icons_top.wc_s[27]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 27,test_cathode[27]/33,tb_w_icons_top.wc_s[27]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 27,test_cathode[27]/33,tb_w_icons_top.wc_s[27]);
                tb_stim_err;
            end
            test_cathode[27] <= 0;
            test_num_chk[27] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[27] == 1'b1) begin
            test_anode_chk [27] <= 1'b1;
            test_anode[27]      <= test_anode[27] + 1'b1;

        end else if ( (EnP[27] == 1'b0) && (test_anode_chk[27]) ) begin
            test_anode_chk [27] <= 1'b0;
            if ((test_anode[27]/33) == tb_w_icons_top.wc_s[27]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 27,test_anode[27]/33,tb_w_icons_top.wc_s[27]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 27,test_anode[27]/33,tb_w_icons_top.wc_s[27]);
                tb_stim_err;
            end
            test_anode[27] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[27] == 1'b1) begin
            test_gap[27]      <= 0;
            test_gap_chk [27] <= 1'b1;
        end else if ( (EnN[27] == 1'b0) && (EnP[27] == 1'b0) && (test_gap_chk [27]) ) begin
            test_gap[27] <= test_gap[27] + 1'b1;
        end else if ((EnP[27] == 1'b1) && (test_gap_chk [27])) begin

            if ((test_gap[27]/33) == tb_w_icons_top.gap_s[27]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 27,test_gap[27]/33,tb_w_icons_top.gap_s[27]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 27,test_gap[27]/33,tb_w_icons_top.gap_s[27]);
                tb_stim_err;
            end
            test_gap[27]      <= 0;
            test_gap_chk [27] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[27] && (test_num[27] < tb_w_icons_top.num_s[27]) ) begin
            if (test_num[27] < tb_w_icons_top.interval_s[27]) begin
                if (EnP[27] == 1'b1) begin
                    test_interval[27]      <= 0;
                    test_interval_chk [27] <= 1'b1;
                end else if ( (EnP[27] == 1'b0) && (EnN[27] == 1'b0) && (test_interval_chk[27]) ) begin
                    test_interval[27] <= test_interval[27] + 1'b1;
                end else if ((EnN[27] == 1'b1) && (test_interval_chk[27])) begin

                    if ((test_interval[27]/33) == tb_w_icons_top.interval_s[27]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 27,test_interval[27]/33,tb_w_icons_top.interval_s[27]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 27,test_interval[27]/33,tb_w_icons_top.interval_s[27]);
                        tb_stim_err;
                    end
                    test_interval[27]      <= 0;
                    test_interval_chk [27] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[27] == 1'b1) && (test_num[27] < tb_w_icons_top.num_s[27]) && (test_num_chk[27] == 1'b0)) begin
            test_num[27]         <= test_num[27] + 1'b1;
            test_num_chk[27]     <= 1'b1;
            test_interval_en[27] <= 1'b1;

        end else if ((EnP[27] == 1'b1) && (test_num[27] < tb_w_icons_top.num_s[27]) && (test_num_chk[27] == 1'b1)) begin
            test_num_chk[27]     <= 1'b0;


        end else if ( ((EnN[27] == 1'b0) && (EnP[27] == 1'b0) && (test_num[27] == tb_w_icons_top.num_s[27])) ) begin
            test_num[27]         <= 0;
            test_num_chk[27]     <= 1'b0;
            test_interval_en[27] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[27] == 1'b1) || (EnP[27] == 1'b1)) begin
            if ( (Bn28 == tb_w_icons_top.ic_s[27]) && (Bp28 == tb_w_icons_top.ic_s[27]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 27,Bn28,Bp28,tb_w_icons_top.ic_s[27]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[27] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",27 );
                tb_stim_err;
            end
        end
    end




    //Channel28
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[28] == 1'b1) begin
            test_cathode_chk [28] <= 1'b1;
            test_cathode[28]      <= test_cathode[28] + 1'b1;

            if (!test_num_chk[28]) begin
                test_num[28]     <= test_num[28] + 1'b1;
                test_num_chk[28] <= 1'b1;
            end

        end else if ( (EnN[28] == 1'b0) && (test_cathode_chk[28]) ) begin
            test_cathode_chk [28] <= 1'b0;
            if ((test_cathode[28]/33) == tb_w_icons_top.wc_s[28]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 28,test_cathode[28]/33,tb_w_icons_top.wc_s[28]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 28,test_cathode[28]/33,tb_w_icons_top.wc_s[28]);
                tb_stim_err;
            end
            test_cathode[28] <= 0;
            test_num_chk[28] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[28] == 1'b1) begin
            test_anode_chk [28] <= 1'b1;
            test_anode[28]      <= test_anode[28] + 1'b1;

        end else if ( (EnP[28] == 1'b0) && (test_anode_chk[28]) ) begin
            test_anode_chk [28] <= 1'b0;
            if ((test_anode[28]/33) == tb_w_icons_top.wc_s[28]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 28,test_anode[28]/33,tb_w_icons_top.wc_s[28]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 28,test_anode[28]/33,tb_w_icons_top.wc_s[28]);
                tb_stim_err;
            end
            test_anode[28] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[28] == 1'b1) begin
            test_gap[28]      <= 0;
            test_gap_chk [28] <= 1'b1;
        end else if ( (EnN[28] == 1'b0) && (EnP[28] == 1'b0) && (test_gap_chk [28]) ) begin
            test_gap[28] <= test_gap[28] + 1'b1;
        end else if ((EnP[28] == 1'b1) && (test_gap_chk [28])) begin

            if ((test_gap[28]/33) == tb_w_icons_top.gap_s[28]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 28,test_gap[28]/33,tb_w_icons_top.gap_s[28]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 28,test_gap[28]/33,tb_w_icons_top.gap_s[28]);
                tb_stim_err;
            end
            test_gap[28]      <= 0;
            test_gap_chk [28] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[28] && (test_num[28] < tb_w_icons_top.num_s[28]) ) begin
            if (test_num[28] < tb_w_icons_top.interval_s[28]) begin
                if (EnP[28] == 1'b1) begin
                    test_interval[28]      <= 0;
                    test_interval_chk [28] <= 1'b1;
                end else if ( (EnP[28] == 1'b0) && (EnN[28] == 1'b0) && (test_interval_chk[28]) ) begin
                    test_interval[28] <= test_interval[28] + 1'b1;
                end else if ((EnN[28] == 1'b1) && (test_interval_chk[28])) begin

                    if ((test_interval[28]/33) == tb_w_icons_top.interval_s[28]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 28,test_interval[28]/33,tb_w_icons_top.interval_s[28]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 28,test_interval[28]/33,tb_w_icons_top.interval_s[28]);
                        tb_stim_err;
                    end
                    test_interval[28]      <= 0;
                    test_interval_chk [28] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[28] == 1'b1) && (test_num[28] < tb_w_icons_top.num_s[28]) && (test_num_chk[28] == 1'b0)) begin
            test_num[28]         <= test_num[28] + 1'b1;
            test_num_chk[28]     <= 1'b1;
            test_interval_en[28] <= 1'b1;

        end else if ((EnP[28] == 1'b1) && (test_num[28] < tb_w_icons_top.num_s[28]) && (test_num_chk[28] == 1'b1)) begin
            test_num_chk[28]     <= 1'b0;


        end else if ( ((EnN[28] == 1'b0) && (EnP[28] == 1'b0) && (test_num[28] == tb_w_icons_top.num_s[28])) ) begin
            test_num[28]         <= 0;
            test_num_chk[28]     <= 1'b0;
            test_interval_en[28] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[28] == 1'b1) || (EnP[28] == 1'b1)) begin
            if ( (Bn29 == tb_w_icons_top.ic_s[28]) && (Bp29 == tb_w_icons_top.ic_s[28]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 28,Bn29,Bp29,tb_w_icons_top.ic_s[28]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[28] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",28 );
                tb_stim_err;
            end
        end
    end




    //Channel29
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[29] == 1'b1) begin
            test_cathode_chk [29] <= 1'b1;
            test_cathode[29]      <= test_cathode[29] + 1'b1;

            if (!test_num_chk[29]) begin
                test_num[29]     <= test_num[29] + 1'b1;
                test_num_chk[29] <= 1'b1;
            end

        end else if ( (EnN[29] == 1'b0) && (test_cathode_chk[29]) ) begin
            test_cathode_chk [29] <= 1'b0;
            if ((test_cathode[29]/33) == tb_w_icons_top.wc_s[29]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 29,test_cathode[29]/33,tb_w_icons_top.wc_s[29]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 29,test_cathode[29]/33,tb_w_icons_top.wc_s[29]);
                tb_stim_err;
            end
            test_cathode[29] <= 0;
            test_num_chk[29] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[29] == 1'b1) begin
            test_anode_chk [29] <= 1'b1;
            test_anode[29]      <= test_anode[29] + 1'b1;

        end else if ( (EnP[29] == 1'b0) && (test_anode_chk[29]) ) begin
            test_anode_chk [29] <= 1'b0;
            if ((test_anode[29]/33) == tb_w_icons_top.wc_s[29]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 29,test_anode[29]/33,tb_w_icons_top.wc_s[29]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 29,test_anode[29]/33,tb_w_icons_top.wc_s[29]);
                tb_stim_err;
            end
            test_anode[29] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[29] == 1'b1) begin
            test_gap[29]      <= 0;
            test_gap_chk [29] <= 1'b1;
        end else if ( (EnN[29] == 1'b0) && (EnP[29] == 1'b0) && (test_gap_chk [29]) ) begin
            test_gap[29] <= test_gap[29] + 1'b1;
        end else if ((EnP[29] == 1'b1) && (test_gap_chk [29])) begin

            if ((test_gap[29]/33) == tb_w_icons_top.gap_s[29]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 29,test_gap[29]/33,tb_w_icons_top.gap_s[29]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 29,test_gap[29]/33,tb_w_icons_top.gap_s[29]);
                tb_stim_err;
            end
            test_gap[29]      <= 0;
            test_gap_chk [29] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[29] && (test_num[29] < tb_w_icons_top.num_s[29]) ) begin
            if (test_num[29] < tb_w_icons_top.interval_s[29]) begin
                if (EnP[29] == 1'b1) begin
                    test_interval[29]      <= 0;
                    test_interval_chk [29] <= 1'b1;
                end else if ( (EnP[29] == 1'b0) && (EnN[29] == 1'b0) && (test_interval_chk[29]) ) begin
                    test_interval[29] <= test_interval[29] + 1'b1;
                end else if ((EnN[29] == 1'b1) && (test_interval_chk[29])) begin

                    if ((test_interval[29]/33) == tb_w_icons_top.interval_s[29]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 29,test_interval[29]/33,tb_w_icons_top.interval_s[29]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 29,test_interval[29]/33,tb_w_icons_top.interval_s[29]);
                        tb_stim_err;
                    end
                    test_interval[29]      <= 0;
                    test_interval_chk [29] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[29] == 1'b1) && (test_num[29] < tb_w_icons_top.num_s[29]) && (test_num_chk[29] == 1'b0)) begin
            test_num[29]         <= test_num[29] + 1'b1;
            test_num_chk[29]     <= 1'b1;
            test_interval_en[29] <= 1'b1;

        end else if ((EnP[29] == 1'b1) && (test_num[29] < tb_w_icons_top.num_s[29]) && (test_num_chk[29] == 1'b1)) begin
            test_num_chk[29]     <= 1'b0;


        end else if ( ((EnN[29] == 1'b0) && (EnP[29] == 1'b0) && (test_num[29] == tb_w_icons_top.num_s[29])) ) begin
            test_num[29]         <= 0;
            test_num_chk[29]     <= 1'b0;
            test_interval_en[29] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[29] == 1'b1) || (EnP[29] == 1'b1)) begin
            if ( (Bn30 == tb_w_icons_top.ic_s[29]) && (Bp30 == tb_w_icons_top.ic_s[29]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 29,Bn30,Bp30,tb_w_icons_top.ic_s[29]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[29] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",29 );
                tb_stim_err;
            end
        end
    end




    //Channel30
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[30] == 1'b1) begin
            test_cathode_chk [30] <= 1'b1;
            test_cathode[30]      <= test_cathode[30] + 1'b1;

            if (!test_num_chk[30]) begin
                test_num[30]     <= test_num[30] + 1'b1;
                test_num_chk[30] <= 1'b1;
            end

        end else if ( (EnN[30] == 1'b0) && (test_cathode_chk[30]) ) begin
            test_cathode_chk [30] <= 1'b0;
            if ((test_cathode[30]/33) == tb_w_icons_top.wc_s[30]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 30,test_cathode[30]/33,tb_w_icons_top.wc_s[30]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 30,test_cathode[30]/33,tb_w_icons_top.wc_s[30]);
                tb_stim_err;
            end
            test_cathode[30] <= 0;
            test_num_chk[30] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[30] == 1'b1) begin
            test_anode_chk [30] <= 1'b1;
            test_anode[30]      <= test_anode[30] + 1'b1;

        end else if ( (EnP[30] == 1'b0) && (test_anode_chk[30]) ) begin
            test_anode_chk [30] <= 1'b0;
            if ((test_anode[30]/33) == tb_w_icons_top.wc_s[30]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 30,test_anode[30]/33,tb_w_icons_top.wc_s[30]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 30,test_anode[30]/33,tb_w_icons_top.wc_s[30]);
                tb_stim_err;
            end
            test_anode[30] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[30] == 1'b1) begin
            test_gap[30]      <= 0;
            test_gap_chk [30] <= 1'b1;
        end else if ( (EnN[30] == 1'b0) && (EnP[30] == 1'b0) && (test_gap_chk [30]) ) begin
            test_gap[30] <= test_gap[30] + 1'b1;
        end else if ((EnP[30] == 1'b1) && (test_gap_chk [30])) begin

            if ((test_gap[30]/33) == tb_w_icons_top.gap_s[30]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 30,test_gap[30]/33,tb_w_icons_top.gap_s[30]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 30,test_gap[30]/33,tb_w_icons_top.gap_s[30]);
                tb_stim_err;
            end
            test_gap[30]      <= 0;
            test_gap_chk [30] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[30] && (test_num[30] < tb_w_icons_top.num_s[30]) ) begin
            if (test_num[30] < tb_w_icons_top.interval_s[30]) begin
                if (EnP[30] == 1'b1) begin
                    test_interval[30]      <= 0;
                    test_interval_chk [30] <= 1'b1;
                end else if ( (EnP[30] == 1'b0) && (EnN[30] == 1'b0) && (test_interval_chk[30]) ) begin
                    test_interval[30] <= test_interval[30] + 1'b1;
                end else if ((EnN[30] == 1'b1) && (test_interval_chk[30])) begin

                    if ((test_interval[30]/33) == tb_w_icons_top.interval_s[30]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 30,test_interval[30]/33,tb_w_icons_top.interval_s[30]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 30,test_interval[30]/33,tb_w_icons_top.interval_s[30]);
                        tb_stim_err;
                    end
                    test_interval[30]      <= 0;
                    test_interval_chk [30] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[30] == 1'b1) && (test_num[30] < tb_w_icons_top.num_s[30]) && (test_num_chk[30] == 1'b0)) begin
            test_num[30]         <= test_num[30] + 1'b1;
            test_num_chk[30]     <= 1'b1;
            test_interval_en[30] <= 1'b1;

        end else if ((EnP[30] == 1'b1) && (test_num[30] < tb_w_icons_top.num_s[30]) && (test_num_chk[30] == 1'b1)) begin
            test_num_chk[30]     <= 1'b0;


        end else if ( ((EnN[30] == 1'b0) && (EnP[30] == 1'b0) && (test_num[30] == tb_w_icons_top.num_s[30])) ) begin
            test_num[30]         <= 0;
            test_num_chk[30]     <= 1'b0;
            test_interval_en[30] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[30] == 1'b1) || (EnP[30] == 1'b1)) begin
            if ( (Bn31 == tb_w_icons_top.ic_s[30]) && (Bp31 == tb_w_icons_top.ic_s[30]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 30,Bn31,Bp31,tb_w_icons_top.ic_s[30]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[30] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",30 );
                tb_stim_err;
            end
        end
    end




    //Channel31
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[31] == 1'b1) begin
            test_cathode_chk [31] <= 1'b1;
            test_cathode[31]      <= test_cathode[31] + 1'b1;

            if (!test_num_chk[31]) begin
                test_num[31]     <= test_num[31] + 1'b1;
                test_num_chk[31] <= 1'b1;
            end

        end else if ( (EnN[31] == 1'b0) && (test_cathode_chk[31]) ) begin
            test_cathode_chk [31] <= 1'b0;
            if ((test_cathode[31]/33) == tb_w_icons_top.wc_s[31]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 31,test_cathode[31]/33,tb_w_icons_top.wc_s[31]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 31,test_cathode[31]/33,tb_w_icons_top.wc_s[31]);
                tb_stim_err;
            end
            test_cathode[31] <= 0;
            test_num_chk[31] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[31] == 1'b1) begin
            test_anode_chk [31] <= 1'b1;
            test_anode[31]      <= test_anode[31] + 1'b1;

        end else if ( (EnP[31] == 1'b0) && (test_anode_chk[31]) ) begin
            test_anode_chk [31] <= 1'b0;
            if ((test_anode[31]/33) == tb_w_icons_top.wc_s[31]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 31,test_anode[31]/33,tb_w_icons_top.wc_s[31]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 31,test_anode[31]/33,tb_w_icons_top.wc_s[31]);
                tb_stim_err;
            end
            test_anode[31] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[31] == 1'b1) begin
            test_gap[31]      <= 0;
            test_gap_chk [31] <= 1'b1;
        end else if ( (EnN[31] == 1'b0) && (EnP[31] == 1'b0) && (test_gap_chk [31]) ) begin
            test_gap[31] <= test_gap[31] + 1'b1;
        end else if ((EnP[31] == 1'b1) && (test_gap_chk [31])) begin

            if ((test_gap[31]/33) == tb_w_icons_top.gap_s[31]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 31,test_gap[31]/33,tb_w_icons_top.gap_s[31]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 31,test_gap[31]/33,tb_w_icons_top.gap_s[31]);
                tb_stim_err;
            end
            test_gap[31]      <= 0;
            test_gap_chk [31] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[31] && (test_num[31] < tb_w_icons_top.num_s[31]) ) begin
            if (test_num[31] < tb_w_icons_top.interval_s[31]) begin
                if (EnP[31] == 1'b1) begin
                    test_interval[31]      <= 0;
                    test_interval_chk [31] <= 1'b1;
                end else if ( (EnP[31] == 1'b0) && (EnN[31] == 1'b0) && (test_interval_chk[31]) ) begin
                    test_interval[31] <= test_interval[31] + 1'b1;
                end else if ((EnN[31] == 1'b1) && (test_interval_chk[31])) begin

                    if ((test_interval[31]/33) == tb_w_icons_top.interval_s[31]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 31,test_interval[31]/33,tb_w_icons_top.interval_s[31]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 31,test_interval[31]/33,tb_w_icons_top.interval_s[31]);
                        tb_stim_err;
                    end
                    test_interval[31]      <= 0;
                    test_interval_chk [31] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[31] == 1'b1) && (test_num[31] < tb_w_icons_top.num_s[31]) && (test_num_chk[31] == 1'b0)) begin
            test_num[31]         <= test_num[31] + 1'b1;
            test_num_chk[31]     <= 1'b1;
            test_interval_en[31] <= 1'b1;

        end else if ((EnP[31] == 1'b1) && (test_num[31] < tb_w_icons_top.num_s[31]) && (test_num_chk[31] == 1'b1)) begin
            test_num_chk[31]     <= 1'b0;


        end else if ( ((EnN[31] == 1'b0) && (EnP[31] == 1'b0) && (test_num[31] == tb_w_icons_top.num_s[31])) ) begin
            test_num[31]         <= 0;
            test_num_chk[31]     <= 1'b0;
            test_interval_en[31] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[31] == 1'b1) || (EnP[31] == 1'b1)) begin
            if ( (Bn32 == tb_w_icons_top.ic_s[31]) && (Bp32 == tb_w_icons_top.ic_s[31]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 31,Bn32,Bp32,tb_w_icons_top.ic_s[31]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[31] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",31 );
                tb_stim_err;
            end
        end
    end




    //Channel32
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[32] == 1'b1) begin
            test_cathode_chk [32] <= 1'b1;
            test_cathode[32]      <= test_cathode[32] + 1'b1;

            if (!test_num_chk[32]) begin
                test_num[32]     <= test_num[32] + 1'b1;
                test_num_chk[32] <= 1'b1;
            end

        end else if ( (EnN[32] == 1'b0) && (test_cathode_chk[32]) ) begin
            test_cathode_chk [32] <= 1'b0;
            if ((test_cathode[32]/33) == tb_w_icons_top.wc_s[32]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 32,test_cathode[32]/33,tb_w_icons_top.wc_s[32]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 32,test_cathode[32]/33,tb_w_icons_top.wc_s[32]);
                tb_stim_err;
            end
            test_cathode[32] <= 0;
            test_num_chk[32] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[32] == 1'b1) begin
            test_anode_chk [32] <= 1'b1;
            test_anode[32]      <= test_anode[32] + 1'b1;

        end else if ( (EnP[32] == 1'b0) && (test_anode_chk[32]) ) begin
            test_anode_chk [32] <= 1'b0;
            if ((test_anode[32]/33) == tb_w_icons_top.wc_s[32]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 32,test_anode[32]/33,tb_w_icons_top.wc_s[32]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 32,test_anode[32]/33,tb_w_icons_top.wc_s[32]);
                tb_stim_err;
            end
            test_anode[32] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[32] == 1'b1) begin
            test_gap[32]      <= 0;
            test_gap_chk [32] <= 1'b1;
        end else if ( (EnN[32] == 1'b0) && (EnP[32] == 1'b0) && (test_gap_chk [32]) ) begin
            test_gap[32] <= test_gap[32] + 1'b1;
        end else if ((EnP[32] == 1'b1) && (test_gap_chk [32])) begin

            if ((test_gap[32]/33) == tb_w_icons_top.gap_s[32]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 32,test_gap[32]/33,tb_w_icons_top.gap_s[32]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 32,test_gap[32]/33,tb_w_icons_top.gap_s[32]);
                tb_stim_err;
            end
            test_gap[32]      <= 0;
            test_gap_chk [32] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[32] && (test_num[32] < tb_w_icons_top.num_s[32]) ) begin
            if (test_num[32] < tb_w_icons_top.interval_s[32]) begin
                if (EnP[32] == 1'b1) begin
                    test_interval[32]      <= 0;
                    test_interval_chk [32] <= 1'b1;
                end else if ( (EnP[32] == 1'b0) && (EnN[32] == 1'b0) && (test_interval_chk[32]) ) begin
                    test_interval[32] <= test_interval[32] + 1'b1;
                end else if ((EnN[32] == 1'b1) && (test_interval_chk[32])) begin

                    if ((test_interval[32]/33) == tb_w_icons_top.interval_s[32]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 32,test_interval[32]/33,tb_w_icons_top.interval_s[32]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 32,test_interval[32]/33,tb_w_icons_top.interval_s[32]);
                        tb_stim_err;
                    end
                    test_interval[32]      <= 0;
                    test_interval_chk [32] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[32] == 1'b1) && (test_num[32] < tb_w_icons_top.num_s[32]) && (test_num_chk[32] == 1'b0)) begin
            test_num[32]         <= test_num[32] + 1'b1;
            test_num_chk[32]     <= 1'b1;
            test_interval_en[32] <= 1'b1;

        end else if ((EnP[32] == 1'b1) && (test_num[32] < tb_w_icons_top.num_s[32]) && (test_num_chk[32] == 1'b1)) begin
            test_num_chk[32]     <= 1'b0;


        end else if ( ((EnN[32] == 1'b0) && (EnP[32] == 1'b0) && (test_num[32] == tb_w_icons_top.num_s[32])) ) begin
            test_num[32]         <= 0;
            test_num_chk[32]     <= 1'b0;
            test_interval_en[32] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[32] == 1'b1) || (EnP[32] == 1'b1)) begin
            if ( (Bn33 == tb_w_icons_top.ic_s[32]) && (Bp33 == tb_w_icons_top.ic_s[32]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 32,Bn33,Bp33,tb_w_icons_top.ic_s[32]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[32] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",32 );
                tb_stim_err;
            end
        end
    end




    //Channel33
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[33] == 1'b1) begin
            test_cathode_chk [33] <= 1'b1;
            test_cathode[33]      <= test_cathode[33] + 1'b1;

            if (!test_num_chk[33]) begin
                test_num[33]     <= test_num[33] + 1'b1;
                test_num_chk[33] <= 1'b1;
            end

        end else if ( (EnN[33] == 1'b0) && (test_cathode_chk[33]) ) begin
            test_cathode_chk [33] <= 1'b0;
            if ((test_cathode[33]/33) == tb_w_icons_top.wc_s[33]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 33,test_cathode[33]/33,tb_w_icons_top.wc_s[33]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 33,test_cathode[33]/33,tb_w_icons_top.wc_s[33]);
                tb_stim_err;
            end
            test_cathode[33] <= 0;
            test_num_chk[33] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[33] == 1'b1) begin
            test_anode_chk [33] <= 1'b1;
            test_anode[33]      <= test_anode[33] + 1'b1;

        end else if ( (EnP[33] == 1'b0) && (test_anode_chk[33]) ) begin
            test_anode_chk [33] <= 1'b0;
            if ((test_anode[33]/33) == tb_w_icons_top.wc_s[33]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 33,test_anode[33]/33,tb_w_icons_top.wc_s[33]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 33,test_anode[33]/33,tb_w_icons_top.wc_s[33]);
                tb_stim_err;
            end
            test_anode[33] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[33] == 1'b1) begin
            test_gap[33]      <= 0;
            test_gap_chk [33] <= 1'b1;
        end else if ( (EnN[33] == 1'b0) && (EnP[33] == 1'b0) && (test_gap_chk [33]) ) begin
            test_gap[33] <= test_gap[33] + 1'b1;
        end else if ((EnP[33] == 1'b1) && (test_gap_chk [33])) begin

            if ((test_gap[33]/33) == tb_w_icons_top.gap_s[33]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 33,test_gap[33]/33,tb_w_icons_top.gap_s[33]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 33,test_gap[33]/33,tb_w_icons_top.gap_s[33]);
                tb_stim_err;
            end
            test_gap[33]      <= 0;
            test_gap_chk [33] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[33] && (test_num[33] < tb_w_icons_top.num_s[33]) ) begin
            if (test_num[33] < tb_w_icons_top.interval_s[33]) begin
                if (EnP[33] == 1'b1) begin
                    test_interval[33]      <= 0;
                    test_interval_chk [33] <= 1'b1;
                end else if ( (EnP[33] == 1'b0) && (EnN[33] == 1'b0) && (test_interval_chk[33]) ) begin
                    test_interval[33] <= test_interval[33] + 1'b1;
                end else if ((EnN[33] == 1'b1) && (test_interval_chk[33])) begin

                    if ((test_interval[33]/33) == tb_w_icons_top.interval_s[33]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 33,test_interval[33]/33,tb_w_icons_top.interval_s[33]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 33,test_interval[33]/33,tb_w_icons_top.interval_s[33]);
                        tb_stim_err;
                    end
                    test_interval[33]      <= 0;
                    test_interval_chk [33] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[33] == 1'b1) && (test_num[33] < tb_w_icons_top.num_s[33]) && (test_num_chk[33] == 1'b0)) begin
            test_num[33]         <= test_num[33] + 1'b1;
            test_num_chk[33]     <= 1'b1;
            test_interval_en[33] <= 1'b1;

        end else if ((EnP[33] == 1'b1) && (test_num[33] < tb_w_icons_top.num_s[33]) && (test_num_chk[33] == 1'b1)) begin
            test_num_chk[33]     <= 1'b0;


        end else if ( ((EnN[33] == 1'b0) && (EnP[33] == 1'b0) && (test_num[33] == tb_w_icons_top.num_s[33])) ) begin
            test_num[33]         <= 0;
            test_num_chk[33]     <= 1'b0;
            test_interval_en[33] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[33] == 1'b1) || (EnP[33] == 1'b1)) begin
            if ( (Bn34 == tb_w_icons_top.ic_s[33]) && (Bp34 == tb_w_icons_top.ic_s[33]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 33,Bn34,Bp34,tb_w_icons_top.ic_s[33]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[33] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",33 );
                tb_stim_err;
            end
        end
    end




    //Channel34
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[34] == 1'b1) begin
            test_cathode_chk [34] <= 1'b1;
            test_cathode[34]      <= test_cathode[34] + 1'b1;

            if (!test_num_chk[34]) begin
                test_num[34]     <= test_num[34] + 1'b1;
                test_num_chk[34] <= 1'b1;
            end

        end else if ( (EnN[34] == 1'b0) && (test_cathode_chk[34]) ) begin
            test_cathode_chk [34] <= 1'b0;
            if ((test_cathode[34]/33) == tb_w_icons_top.wc_s[34]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 34,test_cathode[34]/33,tb_w_icons_top.wc_s[34]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 34,test_cathode[34]/33,tb_w_icons_top.wc_s[34]);
                tb_stim_err;
            end
            test_cathode[34] <= 0;
            test_num_chk[34] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[34] == 1'b1) begin
            test_anode_chk [34] <= 1'b1;
            test_anode[34]      <= test_anode[34] + 1'b1;

        end else if ( (EnP[34] == 1'b0) && (test_anode_chk[34]) ) begin
            test_anode_chk [34] <= 1'b0;
            if ((test_anode[34]/33) == tb_w_icons_top.wc_s[34]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 34,test_anode[34]/33,tb_w_icons_top.wc_s[34]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 34,test_anode[34]/33,tb_w_icons_top.wc_s[34]);
                tb_stim_err;
            end
            test_anode[34] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[34] == 1'b1) begin
            test_gap[34]      <= 0;
            test_gap_chk [34] <= 1'b1;
        end else if ( (EnN[34] == 1'b0) && (EnP[34] == 1'b0) && (test_gap_chk [34]) ) begin
            test_gap[34] <= test_gap[34] + 1'b1;
        end else if ((EnP[34] == 1'b1) && (test_gap_chk [34])) begin

            if ((test_gap[34]/33) == tb_w_icons_top.gap_s[34]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 34,test_gap[34]/33,tb_w_icons_top.gap_s[34]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 34,test_gap[34]/33,tb_w_icons_top.gap_s[34]);
                tb_stim_err;
            end
            test_gap[34]      <= 0;
            test_gap_chk [34] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[34] && (test_num[34] < tb_w_icons_top.num_s[34]) ) begin
            if (test_num[34] < tb_w_icons_top.interval_s[34]) begin
                if (EnP[34] == 1'b1) begin
                    test_interval[34]      <= 0;
                    test_interval_chk [34] <= 1'b1;
                end else if ( (EnP[34] == 1'b0) && (EnN[34] == 1'b0) && (test_interval_chk[34]) ) begin
                    test_interval[34] <= test_interval[34] + 1'b1;
                end else if ((EnN[34] == 1'b1) && (test_interval_chk[34])) begin

                    if ((test_interval[34]/33) == tb_w_icons_top.interval_s[34]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 34,test_interval[34]/33,tb_w_icons_top.interval_s[34]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 34,test_interval[34]/33,tb_w_icons_top.interval_s[34]);
                        tb_stim_err;
                    end
                    test_interval[34]      <= 0;
                    test_interval_chk [34] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[34] == 1'b1) && (test_num[34] < tb_w_icons_top.num_s[34]) && (test_num_chk[34] == 1'b0)) begin
            test_num[34]         <= test_num[34] + 1'b1;
            test_num_chk[34]     <= 1'b1;
            test_interval_en[34] <= 1'b1;

        end else if ((EnP[34] == 1'b1) && (test_num[34] < tb_w_icons_top.num_s[34]) && (test_num_chk[34] == 1'b1)) begin
            test_num_chk[34]     <= 1'b0;


        end else if ( ((EnN[34] == 1'b0) && (EnP[34] == 1'b0) && (test_num[34] == tb_w_icons_top.num_s[34])) ) begin
            test_num[34]         <= 0;
            test_num_chk[34]     <= 1'b0;
            test_interval_en[34] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[34] == 1'b1) || (EnP[34] == 1'b1)) begin
            if ( (Bn35 == tb_w_icons_top.ic_s[34]) && (Bp35 == tb_w_icons_top.ic_s[34]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 34,Bn35,Bp35,tb_w_icons_top.ic_s[34]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[34] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",34 );
                tb_stim_err;
            end
        end
    end




    //Channel35
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[35] == 1'b1) begin
            test_cathode_chk [35] <= 1'b1;
            test_cathode[35]      <= test_cathode[35] + 1'b1;

            if (!test_num_chk[35]) begin
                test_num[35]     <= test_num[35] + 1'b1;
                test_num_chk[35] <= 1'b1;
            end

        end else if ( (EnN[35] == 1'b0) && (test_cathode_chk[35]) ) begin
            test_cathode_chk [35] <= 1'b0;
            if ((test_cathode[35]/33) == tb_w_icons_top.wc_s[35]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 35,test_cathode[35]/33,tb_w_icons_top.wc_s[35]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 35,test_cathode[35]/33,tb_w_icons_top.wc_s[35]);
                tb_stim_err;
            end
            test_cathode[35] <= 0;
            test_num_chk[35] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[35] == 1'b1) begin
            test_anode_chk [35] <= 1'b1;
            test_anode[35]      <= test_anode[35] + 1'b1;

        end else if ( (EnP[35] == 1'b0) && (test_anode_chk[35]) ) begin
            test_anode_chk [35] <= 1'b0;
            if ((test_anode[35]/33) == tb_w_icons_top.wc_s[35]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 35,test_anode[35]/33,tb_w_icons_top.wc_s[35]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 35,test_anode[35]/33,tb_w_icons_top.wc_s[35]);
                tb_stim_err;
            end
            test_anode[35] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[35] == 1'b1) begin
            test_gap[35]      <= 0;
            test_gap_chk [35] <= 1'b1;
        end else if ( (EnN[35] == 1'b0) && (EnP[35] == 1'b0) && (test_gap_chk [35]) ) begin
            test_gap[35] <= test_gap[35] + 1'b1;
        end else if ((EnP[35] == 1'b1) && (test_gap_chk [35])) begin

            if ((test_gap[35]/33) == tb_w_icons_top.gap_s[35]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 35,test_gap[35]/33,tb_w_icons_top.gap_s[35]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 35,test_gap[35]/33,tb_w_icons_top.gap_s[35]);
                tb_stim_err;
            end
            test_gap[35]      <= 0;
            test_gap_chk [35] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[35] && (test_num[35] < tb_w_icons_top.num_s[35]) ) begin
            if (test_num[35] < tb_w_icons_top.interval_s[35]) begin
                if (EnP[35] == 1'b1) begin
                    test_interval[35]      <= 0;
                    test_interval_chk [35] <= 1'b1;
                end else if ( (EnP[35] == 1'b0) && (EnN[35] == 1'b0) && (test_interval_chk[35]) ) begin
                    test_interval[35] <= test_interval[35] + 1'b1;
                end else if ((EnN[35] == 1'b1) && (test_interval_chk[35])) begin

                    if ((test_interval[35]/33) == tb_w_icons_top.interval_s[35]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 35,test_interval[35]/33,tb_w_icons_top.interval_s[35]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 35,test_interval[35]/33,tb_w_icons_top.interval_s[35]);
                        tb_stim_err;
                    end
                    test_interval[35]      <= 0;
                    test_interval_chk [35] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[35] == 1'b1) && (test_num[35] < tb_w_icons_top.num_s[35]) && (test_num_chk[35] == 1'b0)) begin
            test_num[35]         <= test_num[35] + 1'b1;
            test_num_chk[35]     <= 1'b1;
            test_interval_en[35] <= 1'b1;

        end else if ((EnP[35] == 1'b1) && (test_num[35] < tb_w_icons_top.num_s[35]) && (test_num_chk[35] == 1'b1)) begin
            test_num_chk[35]     <= 1'b0;


        end else if ( ((EnN[35] == 1'b0) && (EnP[35] == 1'b0) && (test_num[35] == tb_w_icons_top.num_s[35])) ) begin
            test_num[35]         <= 0;
            test_num_chk[35]     <= 1'b0;
            test_interval_en[35] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[35] == 1'b1) || (EnP[35] == 1'b1)) begin
            if ( (Bn36 == tb_w_icons_top.ic_s[35]) && (Bp36 == tb_w_icons_top.ic_s[35]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 35,Bn36,Bp36,tb_w_icons_top.ic_s[35]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[35] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",35 );
                tb_stim_err;
            end
        end
    end




    //Channel36
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[36] == 1'b1) begin
            test_cathode_chk [36] <= 1'b1;
            test_cathode[36]      <= test_cathode[36] + 1'b1;

            if (!test_num_chk[36]) begin
                test_num[36]     <= test_num[36] + 1'b1;
                test_num_chk[36] <= 1'b1;
            end

        end else if ( (EnN[36] == 1'b0) && (test_cathode_chk[36]) ) begin
            test_cathode_chk [36] <= 1'b0;
            if ((test_cathode[36]/33) == tb_w_icons_top.wc_s[36]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 36,test_cathode[36]/33,tb_w_icons_top.wc_s[36]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 36,test_cathode[36]/33,tb_w_icons_top.wc_s[36]);
                tb_stim_err;
            end
            test_cathode[36] <= 0;
            test_num_chk[36] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[36] == 1'b1) begin
            test_anode_chk [36] <= 1'b1;
            test_anode[36]      <= test_anode[36] + 1'b1;

        end else if ( (EnP[36] == 1'b0) && (test_anode_chk[36]) ) begin
            test_anode_chk [36] <= 1'b0;
            if ((test_anode[36]/33) == tb_w_icons_top.wc_s[36]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 36,test_anode[36]/33,tb_w_icons_top.wc_s[36]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 36,test_anode[36]/33,tb_w_icons_top.wc_s[36]);
                tb_stim_err;
            end
            test_anode[36] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[36] == 1'b1) begin
            test_gap[36]      <= 0;
            test_gap_chk [36] <= 1'b1;
        end else if ( (EnN[36] == 1'b0) && (EnP[36] == 1'b0) && (test_gap_chk [36]) ) begin
            test_gap[36] <= test_gap[36] + 1'b1;
        end else if ((EnP[36] == 1'b1) && (test_gap_chk [36])) begin

            if ((test_gap[36]/33) == tb_w_icons_top.gap_s[36]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 36,test_gap[36]/33,tb_w_icons_top.gap_s[36]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 36,test_gap[36]/33,tb_w_icons_top.gap_s[36]);
                tb_stim_err;
            end
            test_gap[36]      <= 0;
            test_gap_chk [36] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[36] && (test_num[36] < tb_w_icons_top.num_s[36]) ) begin
            if (test_num[36] < tb_w_icons_top.interval_s[36]) begin
                if (EnP[36] == 1'b1) begin
                    test_interval[36]      <= 0;
                    test_interval_chk [36] <= 1'b1;
                end else if ( (EnP[36] == 1'b0) && (EnN[36] == 1'b0) && (test_interval_chk[36]) ) begin
                    test_interval[36] <= test_interval[36] + 1'b1;
                end else if ((EnN[36] == 1'b1) && (test_interval_chk[36])) begin

                    if ((test_interval[36]/33) == tb_w_icons_top.interval_s[36]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 36,test_interval[36]/33,tb_w_icons_top.interval_s[36]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 36,test_interval[36]/33,tb_w_icons_top.interval_s[36]);
                        tb_stim_err;
                    end
                    test_interval[36]      <= 0;
                    test_interval_chk [36] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[36] == 1'b1) && (test_num[36] < tb_w_icons_top.num_s[36]) && (test_num_chk[36] == 1'b0)) begin
            test_num[36]         <= test_num[36] + 1'b1;
            test_num_chk[36]     <= 1'b1;
            test_interval_en[36] <= 1'b1;

        end else if ((EnP[36] == 1'b1) && (test_num[36] < tb_w_icons_top.num_s[36]) && (test_num_chk[36] == 1'b1)) begin
            test_num_chk[36]     <= 1'b0;


        end else if ( ((EnN[36] == 1'b0) && (EnP[36] == 1'b0) && (test_num[36] == tb_w_icons_top.num_s[36])) ) begin
            test_num[36]         <= 0;
            test_num_chk[36]     <= 1'b0;
            test_interval_en[36] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[36] == 1'b1) || (EnP[36] == 1'b1)) begin
            if ( (Bn37 == tb_w_icons_top.ic_s[36]) && (Bp37 == tb_w_icons_top.ic_s[36]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 36,Bn37,Bp37,tb_w_icons_top.ic_s[36]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[36] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",36 );
                tb_stim_err;
            end
        end
    end




    //Channel37
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[37] == 1'b1) begin
            test_cathode_chk [37] <= 1'b1;
            test_cathode[37]      <= test_cathode[37] + 1'b1;

            if (!test_num_chk[37]) begin
                test_num[37]     <= test_num[37] + 1'b1;
                test_num_chk[37] <= 1'b1;
            end

        end else if ( (EnN[37] == 1'b0) && (test_cathode_chk[37]) ) begin
            test_cathode_chk [37] <= 1'b0;
            if ((test_cathode[37]/33) == tb_w_icons_top.wc_s[37]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 37,test_cathode[37]/33,tb_w_icons_top.wc_s[37]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 37,test_cathode[37]/33,tb_w_icons_top.wc_s[37]);
                tb_stim_err;
            end
            test_cathode[37] <= 0;
            test_num_chk[37] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[37] == 1'b1) begin
            test_anode_chk [37] <= 1'b1;
            test_anode[37]      <= test_anode[37] + 1'b1;

        end else if ( (EnP[37] == 1'b0) && (test_anode_chk[37]) ) begin
            test_anode_chk [37] <= 1'b0;
            if ((test_anode[37]/33) == tb_w_icons_top.wc_s[37]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 37,test_anode[37]/33,tb_w_icons_top.wc_s[37]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 37,test_anode[37]/33,tb_w_icons_top.wc_s[37]);
                tb_stim_err;
            end
            test_anode[37] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[37] == 1'b1) begin
            test_gap[37]      <= 0;
            test_gap_chk [37] <= 1'b1;
        end else if ( (EnN[37] == 1'b0) && (EnP[37] == 1'b0) && (test_gap_chk [37]) ) begin
            test_gap[37] <= test_gap[37] + 1'b1;
        end else if ((EnP[37] == 1'b1) && (test_gap_chk [37])) begin

            if ((test_gap[37]/33) == tb_w_icons_top.gap_s[37]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 37,test_gap[37]/33,tb_w_icons_top.gap_s[37]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 37,test_gap[37]/33,tb_w_icons_top.gap_s[37]);
                tb_stim_err;
            end
            test_gap[37]      <= 0;
            test_gap_chk [37] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[37] && (test_num[37] < tb_w_icons_top.num_s[37]) ) begin
            if (test_num[37] < tb_w_icons_top.interval_s[37]) begin
                if (EnP[37] == 1'b1) begin
                    test_interval[37]      <= 0;
                    test_interval_chk [37] <= 1'b1;
                end else if ( (EnP[37] == 1'b0) && (EnN[37] == 1'b0) && (test_interval_chk[37]) ) begin
                    test_interval[37] <= test_interval[37] + 1'b1;
                end else if ((EnN[37] == 1'b1) && (test_interval_chk[37])) begin

                    if ((test_interval[37]/33) == tb_w_icons_top.interval_s[37]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 37,test_interval[37]/33,tb_w_icons_top.interval_s[37]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 37,test_interval[37]/33,tb_w_icons_top.interval_s[37]);
                        tb_stim_err;
                    end
                    test_interval[37]      <= 0;
                    test_interval_chk [37] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[37] == 1'b1) && (test_num[37] < tb_w_icons_top.num_s[37]) && (test_num_chk[37] == 1'b0)) begin
            test_num[37]         <= test_num[37] + 1'b1;
            test_num_chk[37]     <= 1'b1;
            test_interval_en[37] <= 1'b1;

        end else if ((EnP[37] == 1'b1) && (test_num[37] < tb_w_icons_top.num_s[37]) && (test_num_chk[37] == 1'b1)) begin
            test_num_chk[37]     <= 1'b0;


        end else if ( ((EnN[37] == 1'b0) && (EnP[37] == 1'b0) && (test_num[37] == tb_w_icons_top.num_s[37])) ) begin
            test_num[37]         <= 0;
            test_num_chk[37]     <= 1'b0;
            test_interval_en[37] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[37] == 1'b1) || (EnP[37] == 1'b1)) begin
            if ( (Bn38 == tb_w_icons_top.ic_s[37]) && (Bp38 == tb_w_icons_top.ic_s[37]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 37,Bn38,Bp38,tb_w_icons_top.ic_s[37]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[37] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",37 );
                tb_stim_err;
            end
        end
    end




    //Channel38
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[38] == 1'b1) begin
            test_cathode_chk [38] <= 1'b1;
            test_cathode[38]      <= test_cathode[38] + 1'b1;

            if (!test_num_chk[38]) begin
                test_num[38]     <= test_num[38] + 1'b1;
                test_num_chk[38] <= 1'b1;
            end

        end else if ( (EnN[38] == 1'b0) && (test_cathode_chk[38]) ) begin
            test_cathode_chk [38] <= 1'b0;
            if ((test_cathode[38]/33) == tb_w_icons_top.wc_s[38]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 38,test_cathode[38]/33,tb_w_icons_top.wc_s[38]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 38,test_cathode[38]/33,tb_w_icons_top.wc_s[38]);
                tb_stim_err;
            end
            test_cathode[38] <= 0;
            test_num_chk[38] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[38] == 1'b1) begin
            test_anode_chk [38] <= 1'b1;
            test_anode[38]      <= test_anode[38] + 1'b1;

        end else if ( (EnP[38] == 1'b0) && (test_anode_chk[38]) ) begin
            test_anode_chk [38] <= 1'b0;
            if ((test_anode[38]/33) == tb_w_icons_top.wc_s[38]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 38,test_anode[38]/33,tb_w_icons_top.wc_s[38]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 38,test_anode[38]/33,tb_w_icons_top.wc_s[38]);
                tb_stim_err;
            end
            test_anode[38] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[38] == 1'b1) begin
            test_gap[38]      <= 0;
            test_gap_chk [38] <= 1'b1;
        end else if ( (EnN[38] == 1'b0) && (EnP[38] == 1'b0) && (test_gap_chk [38]) ) begin
            test_gap[38] <= test_gap[38] + 1'b1;
        end else if ((EnP[38] == 1'b1) && (test_gap_chk [38])) begin

            if ((test_gap[38]/33) == tb_w_icons_top.gap_s[38]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 38,test_gap[38]/33,tb_w_icons_top.gap_s[38]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 38,test_gap[38]/33,tb_w_icons_top.gap_s[38]);
                tb_stim_err;
            end
            test_gap[38]      <= 0;
            test_gap_chk [38] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[38] && (test_num[38] < tb_w_icons_top.num_s[38]) ) begin
            if (test_num[38] < tb_w_icons_top.interval_s[38]) begin
                if (EnP[38] == 1'b1) begin
                    test_interval[38]      <= 0;
                    test_interval_chk [38] <= 1'b1;
                end else if ( (EnP[38] == 1'b0) && (EnN[38] == 1'b0) && (test_interval_chk[38]) ) begin
                    test_interval[38] <= test_interval[38] + 1'b1;
                end else if ((EnN[38] == 1'b1) && (test_interval_chk[38])) begin

                    if ((test_interval[38]/33) == tb_w_icons_top.interval_s[38]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 38,test_interval[38]/33,tb_w_icons_top.interval_s[38]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 38,test_interval[38]/33,tb_w_icons_top.interval_s[38]);
                        tb_stim_err;
                    end
                    test_interval[38]      <= 0;
                    test_interval_chk [38] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[38] == 1'b1) && (test_num[38] < tb_w_icons_top.num_s[38]) && (test_num_chk[38] == 1'b0)) begin
            test_num[38]         <= test_num[38] + 1'b1;
            test_num_chk[38]     <= 1'b1;
            test_interval_en[38] <= 1'b1;

        end else if ((EnP[38] == 1'b1) && (test_num[38] < tb_w_icons_top.num_s[38]) && (test_num_chk[38] == 1'b1)) begin
            test_num_chk[38]     <= 1'b0;


        end else if ( ((EnN[38] == 1'b0) && (EnP[38] == 1'b0) && (test_num[38] == tb_w_icons_top.num_s[38])) ) begin
            test_num[38]         <= 0;
            test_num_chk[38]     <= 1'b0;
            test_interval_en[38] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[38] == 1'b1) || (EnP[38] == 1'b1)) begin
            if ( (Bn39 == tb_w_icons_top.ic_s[38]) && (Bp39 == tb_w_icons_top.ic_s[38]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 38,Bn39,Bp39,tb_w_icons_top.ic_s[38]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[38] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",38 );
                tb_stim_err;
            end
        end
    end




    //Channel39
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[39] == 1'b1) begin
            test_cathode_chk [39] <= 1'b1;
            test_cathode[39]      <= test_cathode[39] + 1'b1;

            if (!test_num_chk[39]) begin
                test_num[39]     <= test_num[39] + 1'b1;
                test_num_chk[39] <= 1'b1;
            end

        end else if ( (EnN[39] == 1'b0) && (test_cathode_chk[39]) ) begin
            test_cathode_chk [39] <= 1'b0;
            if ((test_cathode[39]/33) == tb_w_icons_top.wc_s[39]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 39,test_cathode[39]/33,tb_w_icons_top.wc_s[39]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 39,test_cathode[39]/33,tb_w_icons_top.wc_s[39]);
                tb_stim_err;
            end
            test_cathode[39] <= 0;
            test_num_chk[39] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[39] == 1'b1) begin
            test_anode_chk [39] <= 1'b1;
            test_anode[39]      <= test_anode[39] + 1'b1;

        end else if ( (EnP[39] == 1'b0) && (test_anode_chk[39]) ) begin
            test_anode_chk [39] <= 1'b0;
            if ((test_anode[39]/33) == tb_w_icons_top.wc_s[39]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 39,test_anode[39]/33,tb_w_icons_top.wc_s[39]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 39,test_anode[39]/33,tb_w_icons_top.wc_s[39]);
                tb_stim_err;
            end
            test_anode[39] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[39] == 1'b1) begin
            test_gap[39]      <= 0;
            test_gap_chk [39] <= 1'b1;
        end else if ( (EnN[39] == 1'b0) && (EnP[39] == 1'b0) && (test_gap_chk [39]) ) begin
            test_gap[39] <= test_gap[39] + 1'b1;
        end else if ((EnP[39] == 1'b1) && (test_gap_chk [39])) begin

            if ((test_gap[39]/33) == tb_w_icons_top.gap_s[39]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 39,test_gap[39]/33,tb_w_icons_top.gap_s[39]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 39,test_gap[39]/33,tb_w_icons_top.gap_s[39]);
                tb_stim_err;
            end
            test_gap[39]      <= 0;
            test_gap_chk [39] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[39] && (test_num[39] < tb_w_icons_top.num_s[39]) ) begin
            if (test_num[39] < tb_w_icons_top.interval_s[39]) begin
                if (EnP[39] == 1'b1) begin
                    test_interval[39]      <= 0;
                    test_interval_chk [39] <= 1'b1;
                end else if ( (EnP[39] == 1'b0) && (EnN[39] == 1'b0) && (test_interval_chk[39]) ) begin
                    test_interval[39] <= test_interval[39] + 1'b1;
                end else if ((EnN[39] == 1'b1) && (test_interval_chk[39])) begin

                    if ((test_interval[39]/33) == tb_w_icons_top.interval_s[39]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 39,test_interval[39]/33,tb_w_icons_top.interval_s[39]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 39,test_interval[39]/33,tb_w_icons_top.interval_s[39]);
                        tb_stim_err;
                    end
                    test_interval[39]      <= 0;
                    test_interval_chk [39] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[39] == 1'b1) && (test_num[39] < tb_w_icons_top.num_s[39]) && (test_num_chk[39] == 1'b0)) begin
            test_num[39]         <= test_num[39] + 1'b1;
            test_num_chk[39]     <= 1'b1;
            test_interval_en[39] <= 1'b1;

        end else if ((EnP[39] == 1'b1) && (test_num[39] < tb_w_icons_top.num_s[39]) && (test_num_chk[39] == 1'b1)) begin
            test_num_chk[39]     <= 1'b0;


        end else if ( ((EnN[39] == 1'b0) && (EnP[39] == 1'b0) && (test_num[39] == tb_w_icons_top.num_s[39])) ) begin
            test_num[39]         <= 0;
            test_num_chk[39]     <= 1'b0;
            test_interval_en[39] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[39] == 1'b1) || (EnP[39] == 1'b1)) begin
            if ( (Bn40 == tb_w_icons_top.ic_s[39]) && (Bp40 == tb_w_icons_top.ic_s[39]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 39,Bn40,Bp40,tb_w_icons_top.ic_s[39]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[39] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",39 );
                tb_stim_err;
            end
        end
    end




    //Channel40
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[40] == 1'b1) begin
            test_cathode_chk [40] <= 1'b1;
            test_cathode[40]      <= test_cathode[40] + 1'b1;

            if (!test_num_chk[40]) begin
                test_num[40]     <= test_num[40] + 1'b1;
                test_num_chk[40] <= 1'b1;
            end

        end else if ( (EnN[40] == 1'b0) && (test_cathode_chk[40]) ) begin
            test_cathode_chk [40] <= 1'b0;
            if ((test_cathode[40]/33) == tb_w_icons_top.wc_s[40]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 40,test_cathode[40]/33,tb_w_icons_top.wc_s[40]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 40,test_cathode[40]/33,tb_w_icons_top.wc_s[40]);
                tb_stim_err;
            end
            test_cathode[40] <= 0;
            test_num_chk[40] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[40] == 1'b1) begin
            test_anode_chk [40] <= 1'b1;
            test_anode[40]      <= test_anode[40] + 1'b1;

        end else if ( (EnP[40] == 1'b0) && (test_anode_chk[40]) ) begin
            test_anode_chk [40] <= 1'b0;
            if ((test_anode[40]/33) == tb_w_icons_top.wc_s[40]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 40,test_anode[40]/33,tb_w_icons_top.wc_s[40]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 40,test_anode[40]/33,tb_w_icons_top.wc_s[40]);
                tb_stim_err;
            end
            test_anode[40] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[40] == 1'b1) begin
            test_gap[40]      <= 0;
            test_gap_chk [40] <= 1'b1;
        end else if ( (EnN[40] == 1'b0) && (EnP[40] == 1'b0) && (test_gap_chk [40]) ) begin
            test_gap[40] <= test_gap[40] + 1'b1;
        end else if ((EnP[40] == 1'b1) && (test_gap_chk [40])) begin

            if ((test_gap[40]/33) == tb_w_icons_top.gap_s[40]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 40,test_gap[40]/33,tb_w_icons_top.gap_s[40]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 40,test_gap[40]/33,tb_w_icons_top.gap_s[40]);
                tb_stim_err;
            end
            test_gap[40]      <= 0;
            test_gap_chk [40] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[40] && (test_num[40] < tb_w_icons_top.num_s[40]) ) begin
            if (test_num[40] < tb_w_icons_top.interval_s[40]) begin
                if (EnP[40] == 1'b1) begin
                    test_interval[40]      <= 0;
                    test_interval_chk [40] <= 1'b1;
                end else if ( (EnP[40] == 1'b0) && (EnN[40] == 1'b0) && (test_interval_chk[40]) ) begin
                    test_interval[40] <= test_interval[40] + 1'b1;
                end else if ((EnN[40] == 1'b1) && (test_interval_chk[40])) begin

                    if ((test_interval[40]/33) == tb_w_icons_top.interval_s[40]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 40,test_interval[40]/33,tb_w_icons_top.interval_s[40]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 40,test_interval[40]/33,tb_w_icons_top.interval_s[40]);
                        tb_stim_err;
                    end
                    test_interval[40]      <= 0;
                    test_interval_chk [40] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[40] == 1'b1) && (test_num[40] < tb_w_icons_top.num_s[40]) && (test_num_chk[40] == 1'b0)) begin
            test_num[40]         <= test_num[40] + 1'b1;
            test_num_chk[40]     <= 1'b1;
            test_interval_en[40] <= 1'b1;

        end else if ((EnP[40] == 1'b1) && (test_num[40] < tb_w_icons_top.num_s[40]) && (test_num_chk[40] == 1'b1)) begin
            test_num_chk[40]     <= 1'b0;


        end else if ( ((EnN[40] == 1'b0) && (EnP[40] == 1'b0) && (test_num[40] == tb_w_icons_top.num_s[40])) ) begin
            test_num[40]         <= 0;
            test_num_chk[40]     <= 1'b0;
            test_interval_en[40] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[40] == 1'b1) || (EnP[40] == 1'b1)) begin
            if ( (Bn41 == tb_w_icons_top.ic_s[40]) && (Bp41 == tb_w_icons_top.ic_s[40]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 40,Bn41,Bp41,tb_w_icons_top.ic_s[40]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[40] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",40 );
                tb_stim_err;
            end
        end
    end




    //Channel41
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[41] == 1'b1) begin
            test_cathode_chk [41] <= 1'b1;
            test_cathode[41]      <= test_cathode[41] + 1'b1;

            if (!test_num_chk[41]) begin
                test_num[41]     <= test_num[41] + 1'b1;
                test_num_chk[41] <= 1'b1;
            end

        end else if ( (EnN[41] == 1'b0) && (test_cathode_chk[41]) ) begin
            test_cathode_chk [41] <= 1'b0;
            if ((test_cathode[41]/33) == tb_w_icons_top.wc_s[41]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 41,test_cathode[41]/33,tb_w_icons_top.wc_s[41]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 41,test_cathode[41]/33,tb_w_icons_top.wc_s[41]);
                tb_stim_err;
            end
            test_cathode[41] <= 0;
            test_num_chk[41] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[41] == 1'b1) begin
            test_anode_chk [41] <= 1'b1;
            test_anode[41]      <= test_anode[41] + 1'b1;

        end else if ( (EnP[41] == 1'b0) && (test_anode_chk[41]) ) begin
            test_anode_chk [41] <= 1'b0;
            if ((test_anode[41]/33) == tb_w_icons_top.wc_s[41]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 41,test_anode[41]/33,tb_w_icons_top.wc_s[41]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 41,test_anode[41]/33,tb_w_icons_top.wc_s[41]);
                tb_stim_err;
            end
            test_anode[41] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[41] == 1'b1) begin
            test_gap[41]      <= 0;
            test_gap_chk [41] <= 1'b1;
        end else if ( (EnN[41] == 1'b0) && (EnP[41] == 1'b0) && (test_gap_chk [41]) ) begin
            test_gap[41] <= test_gap[41] + 1'b1;
        end else if ((EnP[41] == 1'b1) && (test_gap_chk [41])) begin

            if ((test_gap[41]/33) == tb_w_icons_top.gap_s[41]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 41,test_gap[41]/33,tb_w_icons_top.gap_s[41]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 41,test_gap[41]/33,tb_w_icons_top.gap_s[41]);
                tb_stim_err;
            end
            test_gap[41]      <= 0;
            test_gap_chk [41] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[41] && (test_num[41] < tb_w_icons_top.num_s[41]) ) begin
            if (test_num[41] < tb_w_icons_top.interval_s[41]) begin
                if (EnP[41] == 1'b1) begin
                    test_interval[41]      <= 0;
                    test_interval_chk [41] <= 1'b1;
                end else if ( (EnP[41] == 1'b0) && (EnN[41] == 1'b0) && (test_interval_chk[41]) ) begin
                    test_interval[41] <= test_interval[41] + 1'b1;
                end else if ((EnN[41] == 1'b1) && (test_interval_chk[41])) begin

                    if ((test_interval[41]/33) == tb_w_icons_top.interval_s[41]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 41,test_interval[41]/33,tb_w_icons_top.interval_s[41]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 41,test_interval[41]/33,tb_w_icons_top.interval_s[41]);
                        tb_stim_err;
                    end
                    test_interval[41]      <= 0;
                    test_interval_chk [41] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[41] == 1'b1) && (test_num[41] < tb_w_icons_top.num_s[41]) && (test_num_chk[41] == 1'b0)) begin
            test_num[41]         <= test_num[41] + 1'b1;
            test_num_chk[41]     <= 1'b1;
            test_interval_en[41] <= 1'b1;

        end else if ((EnP[41] == 1'b1) && (test_num[41] < tb_w_icons_top.num_s[41]) && (test_num_chk[41] == 1'b1)) begin
            test_num_chk[41]     <= 1'b0;


        end else if ( ((EnN[41] == 1'b0) && (EnP[41] == 1'b0) && (test_num[41] == tb_w_icons_top.num_s[41])) ) begin
            test_num[41]         <= 0;
            test_num_chk[41]     <= 1'b0;
            test_interval_en[41] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[41] == 1'b1) || (EnP[41] == 1'b1)) begin
            if ( (Bn42 == tb_w_icons_top.ic_s[41]) && (Bp42 == tb_w_icons_top.ic_s[41]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 41,Bn42,Bp42,tb_w_icons_top.ic_s[41]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[41] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",41 );
                tb_stim_err;
            end
        end
    end




    //Channel42
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[42] == 1'b1) begin
            test_cathode_chk [42] <= 1'b1;
            test_cathode[42]      <= test_cathode[42] + 1'b1;

            if (!test_num_chk[42]) begin
                test_num[42]     <= test_num[42] + 1'b1;
                test_num_chk[42] <= 1'b1;
            end

        end else if ( (EnN[42] == 1'b0) && (test_cathode_chk[42]) ) begin
            test_cathode_chk [42] <= 1'b0;
            if ((test_cathode[42]/33) == tb_w_icons_top.wc_s[42]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 42,test_cathode[42]/33,tb_w_icons_top.wc_s[42]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 42,test_cathode[42]/33,tb_w_icons_top.wc_s[42]);
                tb_stim_err;
            end
            test_cathode[42] <= 0;
            test_num_chk[42] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[42] == 1'b1) begin
            test_anode_chk [42] <= 1'b1;
            test_anode[42]      <= test_anode[42] + 1'b1;

        end else if ( (EnP[42] == 1'b0) && (test_anode_chk[42]) ) begin
            test_anode_chk [42] <= 1'b0;
            if ((test_anode[42]/33) == tb_w_icons_top.wc_s[42]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 42,test_anode[42]/33,tb_w_icons_top.wc_s[42]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 42,test_anode[42]/33,tb_w_icons_top.wc_s[42]);
                tb_stim_err;
            end
            test_anode[42] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[42] == 1'b1) begin
            test_gap[42]      <= 0;
            test_gap_chk [42] <= 1'b1;
        end else if ( (EnN[42] == 1'b0) && (EnP[42] == 1'b0) && (test_gap_chk [42]) ) begin
            test_gap[42] <= test_gap[42] + 1'b1;
        end else if ((EnP[42] == 1'b1) && (test_gap_chk [42])) begin

            if ((test_gap[42]/33) == tb_w_icons_top.gap_s[42]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 42,test_gap[42]/33,tb_w_icons_top.gap_s[42]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 42,test_gap[42]/33,tb_w_icons_top.gap_s[42]);
                tb_stim_err;
            end
            test_gap[42]      <= 0;
            test_gap_chk [42] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[42] && (test_num[42] < tb_w_icons_top.num_s[42]) ) begin
            if (test_num[42] < tb_w_icons_top.interval_s[42]) begin
                if (EnP[42] == 1'b1) begin
                    test_interval[42]      <= 0;
                    test_interval_chk [42] <= 1'b1;
                end else if ( (EnP[42] == 1'b0) && (EnN[42] == 1'b0) && (test_interval_chk[42]) ) begin
                    test_interval[42] <= test_interval[42] + 1'b1;
                end else if ((EnN[42] == 1'b1) && (test_interval_chk[42])) begin

                    if ((test_interval[42]/33) == tb_w_icons_top.interval_s[42]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 42,test_interval[42]/33,tb_w_icons_top.interval_s[42]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 42,test_interval[42]/33,tb_w_icons_top.interval_s[42]);
                        tb_stim_err;
                    end
                    test_interval[42]      <= 0;
                    test_interval_chk [42] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[42] == 1'b1) && (test_num[42] < tb_w_icons_top.num_s[42]) && (test_num_chk[42] == 1'b0)) begin
            test_num[42]         <= test_num[42] + 1'b1;
            test_num_chk[42]     <= 1'b1;
            test_interval_en[42] <= 1'b1;

        end else if ((EnP[42] == 1'b1) && (test_num[42] < tb_w_icons_top.num_s[42]) && (test_num_chk[42] == 1'b1)) begin
            test_num_chk[42]     <= 1'b0;


        end else if ( ((EnN[42] == 1'b0) && (EnP[42] == 1'b0) && (test_num[42] == tb_w_icons_top.num_s[42])) ) begin
            test_num[42]         <= 0;
            test_num_chk[42]     <= 1'b0;
            test_interval_en[42] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[42] == 1'b1) || (EnP[42] == 1'b1)) begin
            if ( (Bn43 == tb_w_icons_top.ic_s[42]) && (Bp43 == tb_w_icons_top.ic_s[42]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 42,Bn43,Bp43,tb_w_icons_top.ic_s[42]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[42] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",42 );
                tb_stim_err;
            end
        end
    end




    //Channel43
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[43] == 1'b1) begin
            test_cathode_chk [43] <= 1'b1;
            test_cathode[43]      <= test_cathode[43] + 1'b1;

            if (!test_num_chk[43]) begin
                test_num[43]     <= test_num[43] + 1'b1;
                test_num_chk[43] <= 1'b1;
            end

        end else if ( (EnN[43] == 1'b0) && (test_cathode_chk[43]) ) begin
            test_cathode_chk [43] <= 1'b0;
            if ((test_cathode[43]/33) == tb_w_icons_top.wc_s[43]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 43,test_cathode[43]/33,tb_w_icons_top.wc_s[43]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 43,test_cathode[43]/33,tb_w_icons_top.wc_s[43]);
                tb_stim_err;
            end
            test_cathode[43] <= 0;
            test_num_chk[43] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[43] == 1'b1) begin
            test_anode_chk [43] <= 1'b1;
            test_anode[43]      <= test_anode[43] + 1'b1;

        end else if ( (EnP[43] == 1'b0) && (test_anode_chk[43]) ) begin
            test_anode_chk [43] <= 1'b0;
            if ((test_anode[43]/33) == tb_w_icons_top.wc_s[43]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 43,test_anode[43]/33,tb_w_icons_top.wc_s[43]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 43,test_anode[43]/33,tb_w_icons_top.wc_s[43]);
                tb_stim_err;
            end
            test_anode[43] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[43] == 1'b1) begin
            test_gap[43]      <= 0;
            test_gap_chk [43] <= 1'b1;
        end else if ( (EnN[43] == 1'b0) && (EnP[43] == 1'b0) && (test_gap_chk [43]) ) begin
            test_gap[43] <= test_gap[43] + 1'b1;
        end else if ((EnP[43] == 1'b1) && (test_gap_chk [43])) begin

            if ((test_gap[43]/33) == tb_w_icons_top.gap_s[43]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 43,test_gap[43]/33,tb_w_icons_top.gap_s[43]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 43,test_gap[43]/33,tb_w_icons_top.gap_s[43]);
                tb_stim_err;
            end
            test_gap[43]      <= 0;
            test_gap_chk [43] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[43] && (test_num[43] < tb_w_icons_top.num_s[43]) ) begin
            if (test_num[43] < tb_w_icons_top.interval_s[43]) begin
                if (EnP[43] == 1'b1) begin
                    test_interval[43]      <= 0;
                    test_interval_chk [43] <= 1'b1;
                end else if ( (EnP[43] == 1'b0) && (EnN[43] == 1'b0) && (test_interval_chk[43]) ) begin
                    test_interval[43] <= test_interval[43] + 1'b1;
                end else if ((EnN[43] == 1'b1) && (test_interval_chk[43])) begin

                    if ((test_interval[43]/33) == tb_w_icons_top.interval_s[43]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 43,test_interval[43]/33,tb_w_icons_top.interval_s[43]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 43,test_interval[43]/33,tb_w_icons_top.interval_s[43]);
                        tb_stim_err;
                    end
                    test_interval[43]      <= 0;
                    test_interval_chk [43] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[43] == 1'b1) && (test_num[43] < tb_w_icons_top.num_s[43]) && (test_num_chk[43] == 1'b0)) begin
            test_num[43]         <= test_num[43] + 1'b1;
            test_num_chk[43]     <= 1'b1;
            test_interval_en[43] <= 1'b1;

        end else if ((EnP[43] == 1'b1) && (test_num[43] < tb_w_icons_top.num_s[43]) && (test_num_chk[43] == 1'b1)) begin
            test_num_chk[43]     <= 1'b0;


        end else if ( ((EnN[43] == 1'b0) && (EnP[43] == 1'b0) && (test_num[43] == tb_w_icons_top.num_s[43])) ) begin
            test_num[43]         <= 0;
            test_num_chk[43]     <= 1'b0;
            test_interval_en[43] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[43] == 1'b1) || (EnP[43] == 1'b1)) begin
            if ( (Bn44 == tb_w_icons_top.ic_s[43]) && (Bp44 == tb_w_icons_top.ic_s[43]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 43,Bn44,Bp44,tb_w_icons_top.ic_s[43]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[43] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",43 );
                tb_stim_err;
            end
        end
    end




    //Channel44
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[44] == 1'b1) begin
            test_cathode_chk [44] <= 1'b1;
            test_cathode[44]      <= test_cathode[44] + 1'b1;

            if (!test_num_chk[44]) begin
                test_num[44]     <= test_num[44] + 1'b1;
                test_num_chk[44] <= 1'b1;
            end

        end else if ( (EnN[44] == 1'b0) && (test_cathode_chk[44]) ) begin
            test_cathode_chk [44] <= 1'b0;
            if ((test_cathode[44]/33) == tb_w_icons_top.wc_s[44]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 44,test_cathode[44]/33,tb_w_icons_top.wc_s[44]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 44,test_cathode[44]/33,tb_w_icons_top.wc_s[44]);
                tb_stim_err;
            end
            test_cathode[44] <= 0;
            test_num_chk[44] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[44] == 1'b1) begin
            test_anode_chk [44] <= 1'b1;
            test_anode[44]      <= test_anode[44] + 1'b1;

        end else if ( (EnP[44] == 1'b0) && (test_anode_chk[44]) ) begin
            test_anode_chk [44] <= 1'b0;
            if ((test_anode[44]/33) == tb_w_icons_top.wc_s[44]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 44,test_anode[44]/33,tb_w_icons_top.wc_s[44]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 44,test_anode[44]/33,tb_w_icons_top.wc_s[44]);
                tb_stim_err;
            end
            test_anode[44] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[44] == 1'b1) begin
            test_gap[44]      <= 0;
            test_gap_chk [44] <= 1'b1;
        end else if ( (EnN[44] == 1'b0) && (EnP[44] == 1'b0) && (test_gap_chk [44]) ) begin
            test_gap[44] <= test_gap[44] + 1'b1;
        end else if ((EnP[44] == 1'b1) && (test_gap_chk [44])) begin

            if ((test_gap[44]/33) == tb_w_icons_top.gap_s[44]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 44,test_gap[44]/33,tb_w_icons_top.gap_s[44]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 44,test_gap[44]/33,tb_w_icons_top.gap_s[44]);
                tb_stim_err;
            end
            test_gap[44]      <= 0;
            test_gap_chk [44] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[44] && (test_num[44] < tb_w_icons_top.num_s[44]) ) begin
            if (test_num[44] < tb_w_icons_top.interval_s[44]) begin
                if (EnP[44] == 1'b1) begin
                    test_interval[44]      <= 0;
                    test_interval_chk [44] <= 1'b1;
                end else if ( (EnP[44] == 1'b0) && (EnN[44] == 1'b0) && (test_interval_chk[44]) ) begin
                    test_interval[44] <= test_interval[44] + 1'b1;
                end else if ((EnN[44] == 1'b1) && (test_interval_chk[44])) begin

                    if ((test_interval[44]/33) == tb_w_icons_top.interval_s[44]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 44,test_interval[44]/33,tb_w_icons_top.interval_s[44]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 44,test_interval[44]/33,tb_w_icons_top.interval_s[44]);
                        tb_stim_err;
                    end
                    test_interval[44]      <= 0;
                    test_interval_chk [44] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[44] == 1'b1) && (test_num[44] < tb_w_icons_top.num_s[44]) && (test_num_chk[44] == 1'b0)) begin
            test_num[44]         <= test_num[44] + 1'b1;
            test_num_chk[44]     <= 1'b1;
            test_interval_en[44] <= 1'b1;

        end else if ((EnP[44] == 1'b1) && (test_num[44] < tb_w_icons_top.num_s[44]) && (test_num_chk[44] == 1'b1)) begin
            test_num_chk[44]     <= 1'b0;


        end else if ( ((EnN[44] == 1'b0) && (EnP[44] == 1'b0) && (test_num[44] == tb_w_icons_top.num_s[44])) ) begin
            test_num[44]         <= 0;
            test_num_chk[44]     <= 1'b0;
            test_interval_en[44] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[44] == 1'b1) || (EnP[44] == 1'b1)) begin
            if ( (Bn45 == tb_w_icons_top.ic_s[44]) && (Bp45 == tb_w_icons_top.ic_s[44]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 44,Bn45,Bp45,tb_w_icons_top.ic_s[44]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[44] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",44 );
                tb_stim_err;
            end
        end
    end




    //Channel45
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[45] == 1'b1) begin
            test_cathode_chk [45] <= 1'b1;
            test_cathode[45]      <= test_cathode[45] + 1'b1;

            if (!test_num_chk[45]) begin
                test_num[45]     <= test_num[45] + 1'b1;
                test_num_chk[45] <= 1'b1;
            end

        end else if ( (EnN[45] == 1'b0) && (test_cathode_chk[45]) ) begin
            test_cathode_chk [45] <= 1'b0;
            if ((test_cathode[45]/33) == tb_w_icons_top.wc_s[45]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 45,test_cathode[45]/33,tb_w_icons_top.wc_s[45]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 45,test_cathode[45]/33,tb_w_icons_top.wc_s[45]);
                tb_stim_err;
            end
            test_cathode[45] <= 0;
            test_num_chk[45] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[45] == 1'b1) begin
            test_anode_chk [45] <= 1'b1;
            test_anode[45]      <= test_anode[45] + 1'b1;

        end else if ( (EnP[45] == 1'b0) && (test_anode_chk[45]) ) begin
            test_anode_chk [45] <= 1'b0;
            if ((test_anode[45]/33) == tb_w_icons_top.wc_s[45]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 45,test_anode[45]/33,tb_w_icons_top.wc_s[45]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 45,test_anode[45]/33,tb_w_icons_top.wc_s[45]);
                tb_stim_err;
            end
            test_anode[45] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[45] == 1'b1) begin
            test_gap[45]      <= 0;
            test_gap_chk [45] <= 1'b1;
        end else if ( (EnN[45] == 1'b0) && (EnP[45] == 1'b0) && (test_gap_chk [45]) ) begin
            test_gap[45] <= test_gap[45] + 1'b1;
        end else if ((EnP[45] == 1'b1) && (test_gap_chk [45])) begin

            if ((test_gap[45]/33) == tb_w_icons_top.gap_s[45]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 45,test_gap[45]/33,tb_w_icons_top.gap_s[45]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 45,test_gap[45]/33,tb_w_icons_top.gap_s[45]);
                tb_stim_err;
            end
            test_gap[45]      <= 0;
            test_gap_chk [45] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[45] && (test_num[45] < tb_w_icons_top.num_s[45]) ) begin
            if (test_num[45] < tb_w_icons_top.interval_s[45]) begin
                if (EnP[45] == 1'b1) begin
                    test_interval[45]      <= 0;
                    test_interval_chk [45] <= 1'b1;
                end else if ( (EnP[45] == 1'b0) && (EnN[45] == 1'b0) && (test_interval_chk[45]) ) begin
                    test_interval[45] <= test_interval[45] + 1'b1;
                end else if ((EnN[45] == 1'b1) && (test_interval_chk[45])) begin

                    if ((test_interval[45]/33) == tb_w_icons_top.interval_s[45]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 45,test_interval[45]/33,tb_w_icons_top.interval_s[45]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 45,test_interval[45]/33,tb_w_icons_top.interval_s[45]);
                        tb_stim_err;
                    end
                    test_interval[45]      <= 0;
                    test_interval_chk [45] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[45] == 1'b1) && (test_num[45] < tb_w_icons_top.num_s[45]) && (test_num_chk[45] == 1'b0)) begin
            test_num[45]         <= test_num[45] + 1'b1;
            test_num_chk[45]     <= 1'b1;
            test_interval_en[45] <= 1'b1;

        end else if ((EnP[45] == 1'b1) && (test_num[45] < tb_w_icons_top.num_s[45]) && (test_num_chk[45] == 1'b1)) begin
            test_num_chk[45]     <= 1'b0;


        end else if ( ((EnN[45] == 1'b0) && (EnP[45] == 1'b0) && (test_num[45] == tb_w_icons_top.num_s[45])) ) begin
            test_num[45]         <= 0;
            test_num_chk[45]     <= 1'b0;
            test_interval_en[45] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[45] == 1'b1) || (EnP[45] == 1'b1)) begin
            if ( (Bn46 == tb_w_icons_top.ic_s[45]) && (Bp46 == tb_w_icons_top.ic_s[45]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 45,Bn46,Bp46,tb_w_icons_top.ic_s[45]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[45] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",45 );
                tb_stim_err;
            end
        end
    end




    //Channel46
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[46] == 1'b1) begin
            test_cathode_chk [46] <= 1'b1;
            test_cathode[46]      <= test_cathode[46] + 1'b1;

            if (!test_num_chk[46]) begin
                test_num[46]     <= test_num[46] + 1'b1;
                test_num_chk[46] <= 1'b1;
            end

        end else if ( (EnN[46] == 1'b0) && (test_cathode_chk[46]) ) begin
            test_cathode_chk [46] <= 1'b0;
            if ((test_cathode[46]/33) == tb_w_icons_top.wc_s[46]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 46,test_cathode[46]/33,tb_w_icons_top.wc_s[46]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 46,test_cathode[46]/33,tb_w_icons_top.wc_s[46]);
                tb_stim_err;
            end
            test_cathode[46] <= 0;
            test_num_chk[46] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[46] == 1'b1) begin
            test_anode_chk [46] <= 1'b1;
            test_anode[46]      <= test_anode[46] + 1'b1;

        end else if ( (EnP[46] == 1'b0) && (test_anode_chk[46]) ) begin
            test_anode_chk [46] <= 1'b0;
            if ((test_anode[46]/33) == tb_w_icons_top.wc_s[46]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 46,test_anode[46]/33,tb_w_icons_top.wc_s[46]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 46,test_anode[46]/33,tb_w_icons_top.wc_s[46]);
                tb_stim_err;
            end
            test_anode[46] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[46] == 1'b1) begin
            test_gap[46]      <= 0;
            test_gap_chk [46] <= 1'b1;
        end else if ( (EnN[46] == 1'b0) && (EnP[46] == 1'b0) && (test_gap_chk [46]) ) begin
            test_gap[46] <= test_gap[46] + 1'b1;
        end else if ((EnP[46] == 1'b1) && (test_gap_chk [46])) begin

            if ((test_gap[46]/33) == tb_w_icons_top.gap_s[46]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 46,test_gap[46]/33,tb_w_icons_top.gap_s[46]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 46,test_gap[46]/33,tb_w_icons_top.gap_s[46]);
                tb_stim_err;
            end
            test_gap[46]      <= 0;
            test_gap_chk [46] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[46] && (test_num[46] < tb_w_icons_top.num_s[46]) ) begin
            if (test_num[46] < tb_w_icons_top.interval_s[46]) begin
                if (EnP[46] == 1'b1) begin
                    test_interval[46]      <= 0;
                    test_interval_chk [46] <= 1'b1;
                end else if ( (EnP[46] == 1'b0) && (EnN[46] == 1'b0) && (test_interval_chk[46]) ) begin
                    test_interval[46] <= test_interval[46] + 1'b1;
                end else if ((EnN[46] == 1'b1) && (test_interval_chk[46])) begin

                    if ((test_interval[46]/33) == tb_w_icons_top.interval_s[46]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 46,test_interval[46]/33,tb_w_icons_top.interval_s[46]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 46,test_interval[46]/33,tb_w_icons_top.interval_s[46]);
                        tb_stim_err;
                    end
                    test_interval[46]      <= 0;
                    test_interval_chk [46] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[46] == 1'b1) && (test_num[46] < tb_w_icons_top.num_s[46]) && (test_num_chk[46] == 1'b0)) begin
            test_num[46]         <= test_num[46] + 1'b1;
            test_num_chk[46]     <= 1'b1;
            test_interval_en[46] <= 1'b1;

        end else if ((EnP[46] == 1'b1) && (test_num[46] < tb_w_icons_top.num_s[46]) && (test_num_chk[46] == 1'b1)) begin
            test_num_chk[46]     <= 1'b0;


        end else if ( ((EnN[46] == 1'b0) && (EnP[46] == 1'b0) && (test_num[46] == tb_w_icons_top.num_s[46])) ) begin
            test_num[46]         <= 0;
            test_num_chk[46]     <= 1'b0;
            test_interval_en[46] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[46] == 1'b1) || (EnP[46] == 1'b1)) begin
            if ( (Bn47 == tb_w_icons_top.ic_s[46]) && (Bp47 == tb_w_icons_top.ic_s[46]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 46,Bn47,Bp47,tb_w_icons_top.ic_s[46]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[46] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",46 );
                tb_stim_err;
            end
        end
    end




    //Channel47
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[47] == 1'b1) begin
            test_cathode_chk [47] <= 1'b1;
            test_cathode[47]      <= test_cathode[47] + 1'b1;

            if (!test_num_chk[47]) begin
                test_num[47]     <= test_num[47] + 1'b1;
                test_num_chk[47] <= 1'b1;
            end

        end else if ( (EnN[47] == 1'b0) && (test_cathode_chk[47]) ) begin
            test_cathode_chk [47] <= 1'b0;
            if ((test_cathode[47]/33) == tb_w_icons_top.wc_s[47]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 47,test_cathode[47]/33,tb_w_icons_top.wc_s[47]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 47,test_cathode[47]/33,tb_w_icons_top.wc_s[47]);
                tb_stim_err;
            end
            test_cathode[47] <= 0;
            test_num_chk[47] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[47] == 1'b1) begin
            test_anode_chk [47] <= 1'b1;
            test_anode[47]      <= test_anode[47] + 1'b1;

        end else if ( (EnP[47] == 1'b0) && (test_anode_chk[47]) ) begin
            test_anode_chk [47] <= 1'b0;
            if ((test_anode[47]/33) == tb_w_icons_top.wc_s[47]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 47,test_anode[47]/33,tb_w_icons_top.wc_s[47]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 47,test_anode[47]/33,tb_w_icons_top.wc_s[47]);
                tb_stim_err;
            end
            test_anode[47] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[47] == 1'b1) begin
            test_gap[47]      <= 0;
            test_gap_chk [47] <= 1'b1;
        end else if ( (EnN[47] == 1'b0) && (EnP[47] == 1'b0) && (test_gap_chk [47]) ) begin
            test_gap[47] <= test_gap[47] + 1'b1;
        end else if ((EnP[47] == 1'b1) && (test_gap_chk [47])) begin

            if ((test_gap[47]/33) == tb_w_icons_top.gap_s[47]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 47,test_gap[47]/33,tb_w_icons_top.gap_s[47]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 47,test_gap[47]/33,tb_w_icons_top.gap_s[47]);
                tb_stim_err;
            end
            test_gap[47]      <= 0;
            test_gap_chk [47] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[47] && (test_num[47] < tb_w_icons_top.num_s[47]) ) begin
            if (test_num[47] < tb_w_icons_top.interval_s[47]) begin
                if (EnP[47] == 1'b1) begin
                    test_interval[47]      <= 0;
                    test_interval_chk [47] <= 1'b1;
                end else if ( (EnP[47] == 1'b0) && (EnN[47] == 1'b0) && (test_interval_chk[47]) ) begin
                    test_interval[47] <= test_interval[47] + 1'b1;
                end else if ((EnN[47] == 1'b1) && (test_interval_chk[47])) begin

                    if ((test_interval[47]/33) == tb_w_icons_top.interval_s[47]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 47,test_interval[47]/33,tb_w_icons_top.interval_s[47]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 47,test_interval[47]/33,tb_w_icons_top.interval_s[47]);
                        tb_stim_err;
                    end
                    test_interval[47]      <= 0;
                    test_interval_chk [47] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[47] == 1'b1) && (test_num[47] < tb_w_icons_top.num_s[47]) && (test_num_chk[47] == 1'b0)) begin
            test_num[47]         <= test_num[47] + 1'b1;
            test_num_chk[47]     <= 1'b1;
            test_interval_en[47] <= 1'b1;

        end else if ((EnP[47] == 1'b1) && (test_num[47] < tb_w_icons_top.num_s[47]) && (test_num_chk[47] == 1'b1)) begin
            test_num_chk[47]     <= 1'b0;


        end else if ( ((EnN[47] == 1'b0) && (EnP[47] == 1'b0) && (test_num[47] == tb_w_icons_top.num_s[47])) ) begin
            test_num[47]         <= 0;
            test_num_chk[47]     <= 1'b0;
            test_interval_en[47] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[47] == 1'b1) || (EnP[47] == 1'b1)) begin
            if ( (Bn48 == tb_w_icons_top.ic_s[47]) && (Bp48 == tb_w_icons_top.ic_s[47]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 47,Bn48,Bp48,tb_w_icons_top.ic_s[47]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[47] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",47 );
                tb_stim_err;
            end
        end
    end




    //Channel48
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[48] == 1'b1) begin
            test_cathode_chk [48] <= 1'b1;
            test_cathode[48]      <= test_cathode[48] + 1'b1;

            if (!test_num_chk[48]) begin
                test_num[48]     <= test_num[48] + 1'b1;
                test_num_chk[48] <= 1'b1;
            end

        end else if ( (EnN[48] == 1'b0) && (test_cathode_chk[48]) ) begin
            test_cathode_chk [48] <= 1'b0;
            if ((test_cathode[48]/33) == tb_w_icons_top.wc_s[48]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 48,test_cathode[48]/33,tb_w_icons_top.wc_s[48]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 48,test_cathode[48]/33,tb_w_icons_top.wc_s[48]);
                tb_stim_err;
            end
            test_cathode[48] <= 0;
            test_num_chk[48] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[48] == 1'b1) begin
            test_anode_chk [48] <= 1'b1;
            test_anode[48]      <= test_anode[48] + 1'b1;

        end else if ( (EnP[48] == 1'b0) && (test_anode_chk[48]) ) begin
            test_anode_chk [48] <= 1'b0;
            if ((test_anode[48]/33) == tb_w_icons_top.wc_s[48]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 48,test_anode[48]/33,tb_w_icons_top.wc_s[48]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 48,test_anode[48]/33,tb_w_icons_top.wc_s[48]);
                tb_stim_err;
            end
            test_anode[48] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[48] == 1'b1) begin
            test_gap[48]      <= 0;
            test_gap_chk [48] <= 1'b1;
        end else if ( (EnN[48] == 1'b0) && (EnP[48] == 1'b0) && (test_gap_chk [48]) ) begin
            test_gap[48] <= test_gap[48] + 1'b1;
        end else if ((EnP[48] == 1'b1) && (test_gap_chk [48])) begin

            if ((test_gap[48]/33) == tb_w_icons_top.gap_s[48]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 48,test_gap[48]/33,tb_w_icons_top.gap_s[48]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 48,test_gap[48]/33,tb_w_icons_top.gap_s[48]);
                tb_stim_err;
            end
            test_gap[48]      <= 0;
            test_gap_chk [48] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[48] && (test_num[48] < tb_w_icons_top.num_s[48]) ) begin
            if (test_num[48] < tb_w_icons_top.interval_s[48]) begin
                if (EnP[48] == 1'b1) begin
                    test_interval[48]      <= 0;
                    test_interval_chk [48] <= 1'b1;
                end else if ( (EnP[48] == 1'b0) && (EnN[48] == 1'b0) && (test_interval_chk[48]) ) begin
                    test_interval[48] <= test_interval[48] + 1'b1;
                end else if ((EnN[48] == 1'b1) && (test_interval_chk[48])) begin

                    if ((test_interval[48]/33) == tb_w_icons_top.interval_s[48]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 48,test_interval[48]/33,tb_w_icons_top.interval_s[48]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 48,test_interval[48]/33,tb_w_icons_top.interval_s[48]);
                        tb_stim_err;
                    end
                    test_interval[48]      <= 0;
                    test_interval_chk [48] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[48] == 1'b1) && (test_num[48] < tb_w_icons_top.num_s[48]) && (test_num_chk[48] == 1'b0)) begin
            test_num[48]         <= test_num[48] + 1'b1;
            test_num_chk[48]     <= 1'b1;
            test_interval_en[48] <= 1'b1;

        end else if ((EnP[48] == 1'b1) && (test_num[48] < tb_w_icons_top.num_s[48]) && (test_num_chk[48] == 1'b1)) begin
            test_num_chk[48]     <= 1'b0;


        end else if ( ((EnN[48] == 1'b0) && (EnP[48] == 1'b0) && (test_num[48] == tb_w_icons_top.num_s[48])) ) begin
            test_num[48]         <= 0;
            test_num_chk[48]     <= 1'b0;
            test_interval_en[48] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[48] == 1'b1) || (EnP[48] == 1'b1)) begin
            if ( (Bn49 == tb_w_icons_top.ic_s[48]) && (Bp49 == tb_w_icons_top.ic_s[48]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 48,Bn49,Bp49,tb_w_icons_top.ic_s[48]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[48] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",48 );
                tb_stim_err;
            end
        end
    end




    //Channel49
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[49] == 1'b1) begin
            test_cathode_chk [49] <= 1'b1;
            test_cathode[49]      <= test_cathode[49] + 1'b1;

            if (!test_num_chk[49]) begin
                test_num[49]     <= test_num[49] + 1'b1;
                test_num_chk[49] <= 1'b1;
            end

        end else if ( (EnN[49] == 1'b0) && (test_cathode_chk[49]) ) begin
            test_cathode_chk [49] <= 1'b0;
            if ((test_cathode[49]/33) == tb_w_icons_top.wc_s[49]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 49,test_cathode[49]/33,tb_w_icons_top.wc_s[49]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 49,test_cathode[49]/33,tb_w_icons_top.wc_s[49]);
                tb_stim_err;
            end
            test_cathode[49] <= 0;
            test_num_chk[49] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[49] == 1'b1) begin
            test_anode_chk [49] <= 1'b1;
            test_anode[49]      <= test_anode[49] + 1'b1;

        end else if ( (EnP[49] == 1'b0) && (test_anode_chk[49]) ) begin
            test_anode_chk [49] <= 1'b0;
            if ((test_anode[49]/33) == tb_w_icons_top.wc_s[49]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 49,test_anode[49]/33,tb_w_icons_top.wc_s[49]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 49,test_anode[49]/33,tb_w_icons_top.wc_s[49]);
                tb_stim_err;
            end
            test_anode[49] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[49] == 1'b1) begin
            test_gap[49]      <= 0;
            test_gap_chk [49] <= 1'b1;
        end else if ( (EnN[49] == 1'b0) && (EnP[49] == 1'b0) && (test_gap_chk [49]) ) begin
            test_gap[49] <= test_gap[49] + 1'b1;
        end else if ((EnP[49] == 1'b1) && (test_gap_chk [49])) begin

            if ((test_gap[49]/33) == tb_w_icons_top.gap_s[49]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 49,test_gap[49]/33,tb_w_icons_top.gap_s[49]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 49,test_gap[49]/33,tb_w_icons_top.gap_s[49]);
                tb_stim_err;
            end
            test_gap[49]      <= 0;
            test_gap_chk [49] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[49] && (test_num[49] < tb_w_icons_top.num_s[49]) ) begin
            if (test_num[49] < tb_w_icons_top.interval_s[49]) begin
                if (EnP[49] == 1'b1) begin
                    test_interval[49]      <= 0;
                    test_interval_chk [49] <= 1'b1;
                end else if ( (EnP[49] == 1'b0) && (EnN[49] == 1'b0) && (test_interval_chk[49]) ) begin
                    test_interval[49] <= test_interval[49] + 1'b1;
                end else if ((EnN[49] == 1'b1) && (test_interval_chk[49])) begin

                    if ((test_interval[49]/33) == tb_w_icons_top.interval_s[49]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 49,test_interval[49]/33,tb_w_icons_top.interval_s[49]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 49,test_interval[49]/33,tb_w_icons_top.interval_s[49]);
                        tb_stim_err;
                    end
                    test_interval[49]      <= 0;
                    test_interval_chk [49] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[49] == 1'b1) && (test_num[49] < tb_w_icons_top.num_s[49]) && (test_num_chk[49] == 1'b0)) begin
            test_num[49]         <= test_num[49] + 1'b1;
            test_num_chk[49]     <= 1'b1;
            test_interval_en[49] <= 1'b1;

        end else if ((EnP[49] == 1'b1) && (test_num[49] < tb_w_icons_top.num_s[49]) && (test_num_chk[49] == 1'b1)) begin
            test_num_chk[49]     <= 1'b0;


        end else if ( ((EnN[49] == 1'b0) && (EnP[49] == 1'b0) && (test_num[49] == tb_w_icons_top.num_s[49])) ) begin
            test_num[49]         <= 0;
            test_num_chk[49]     <= 1'b0;
            test_interval_en[49] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[49] == 1'b1) || (EnP[49] == 1'b1)) begin
            if ( (Bn50 == tb_w_icons_top.ic_s[49]) && (Bp50 == tb_w_icons_top.ic_s[49]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 49,Bn50,Bp50,tb_w_icons_top.ic_s[49]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[49] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",49 );
                tb_stim_err;
            end
        end
    end




    //Channel50
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[50] == 1'b1) begin
            test_cathode_chk [50] <= 1'b1;
            test_cathode[50]      <= test_cathode[50] + 1'b1;

            if (!test_num_chk[50]) begin
                test_num[50]     <= test_num[50] + 1'b1;
                test_num_chk[50] <= 1'b1;
            end

        end else if ( (EnN[50] == 1'b0) && (test_cathode_chk[50]) ) begin
            test_cathode_chk [50] <= 1'b0;
            if ((test_cathode[50]/33) == tb_w_icons_top.wc_s[50]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 50,test_cathode[50]/33,tb_w_icons_top.wc_s[50]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 50,test_cathode[50]/33,tb_w_icons_top.wc_s[50]);
                tb_stim_err;
            end
            test_cathode[50] <= 0;
            test_num_chk[50] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[50] == 1'b1) begin
            test_anode_chk [50] <= 1'b1;
            test_anode[50]      <= test_anode[50] + 1'b1;

        end else if ( (EnP[50] == 1'b0) && (test_anode_chk[50]) ) begin
            test_anode_chk [50] <= 1'b0;
            if ((test_anode[50]/33) == tb_w_icons_top.wc_s[50]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 50,test_anode[50]/33,tb_w_icons_top.wc_s[50]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 50,test_anode[50]/33,tb_w_icons_top.wc_s[50]);
                tb_stim_err;
            end
            test_anode[50] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[50] == 1'b1) begin
            test_gap[50]      <= 0;
            test_gap_chk [50] <= 1'b1;
        end else if ( (EnN[50] == 1'b0) && (EnP[50] == 1'b0) && (test_gap_chk [50]) ) begin
            test_gap[50] <= test_gap[50] + 1'b1;
        end else if ((EnP[50] == 1'b1) && (test_gap_chk [50])) begin

            if ((test_gap[50]/33) == tb_w_icons_top.gap_s[50]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 50,test_gap[50]/33,tb_w_icons_top.gap_s[50]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 50,test_gap[50]/33,tb_w_icons_top.gap_s[50]);
                tb_stim_err;
            end
            test_gap[50]      <= 0;
            test_gap_chk [50] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[50] && (test_num[50] < tb_w_icons_top.num_s[50]) ) begin
            if (test_num[50] < tb_w_icons_top.interval_s[50]) begin
                if (EnP[50] == 1'b1) begin
                    test_interval[50]      <= 0;
                    test_interval_chk [50] <= 1'b1;
                end else if ( (EnP[50] == 1'b0) && (EnN[50] == 1'b0) && (test_interval_chk[50]) ) begin
                    test_interval[50] <= test_interval[50] + 1'b1;
                end else if ((EnN[50] == 1'b1) && (test_interval_chk[50])) begin

                    if ((test_interval[50]/33) == tb_w_icons_top.interval_s[50]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 50,test_interval[50]/33,tb_w_icons_top.interval_s[50]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 50,test_interval[50]/33,tb_w_icons_top.interval_s[50]);
                        tb_stim_err;
                    end
                    test_interval[50]      <= 0;
                    test_interval_chk [50] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[50] == 1'b1) && (test_num[50] < tb_w_icons_top.num_s[50]) && (test_num_chk[50] == 1'b0)) begin
            test_num[50]         <= test_num[50] + 1'b1;
            test_num_chk[50]     <= 1'b1;
            test_interval_en[50] <= 1'b1;

        end else if ((EnP[50] == 1'b1) && (test_num[50] < tb_w_icons_top.num_s[50]) && (test_num_chk[50] == 1'b1)) begin
            test_num_chk[50]     <= 1'b0;


        end else if ( ((EnN[50] == 1'b0) && (EnP[50] == 1'b0) && (test_num[50] == tb_w_icons_top.num_s[50])) ) begin
            test_num[50]         <= 0;
            test_num_chk[50]     <= 1'b0;
            test_interval_en[50] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[50] == 1'b1) || (EnP[50] == 1'b1)) begin
            if ( (Bn51 == tb_w_icons_top.ic_s[50]) && (Bp51 == tb_w_icons_top.ic_s[50]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 50,Bn51,Bp51,tb_w_icons_top.ic_s[50]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[50] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",50 );
                tb_stim_err;
            end
        end
    end




    //Channel51
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[51] == 1'b1) begin
            test_cathode_chk [51] <= 1'b1;
            test_cathode[51]      <= test_cathode[51] + 1'b1;

            if (!test_num_chk[51]) begin
                test_num[51]     <= test_num[51] + 1'b1;
                test_num_chk[51] <= 1'b1;
            end

        end else if ( (EnN[51] == 1'b0) && (test_cathode_chk[51]) ) begin
            test_cathode_chk [51] <= 1'b0;
            if ((test_cathode[51]/33) == tb_w_icons_top.wc_s[51]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 51,test_cathode[51]/33,tb_w_icons_top.wc_s[51]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 51,test_cathode[51]/33,tb_w_icons_top.wc_s[51]);
                tb_stim_err;
            end
            test_cathode[51] <= 0;
            test_num_chk[51] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[51] == 1'b1) begin
            test_anode_chk [51] <= 1'b1;
            test_anode[51]      <= test_anode[51] + 1'b1;

        end else if ( (EnP[51] == 1'b0) && (test_anode_chk[51]) ) begin
            test_anode_chk [51] <= 1'b0;
            if ((test_anode[51]/33) == tb_w_icons_top.wc_s[51]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 51,test_anode[51]/33,tb_w_icons_top.wc_s[51]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 51,test_anode[51]/33,tb_w_icons_top.wc_s[51]);
                tb_stim_err;
            end
            test_anode[51] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[51] == 1'b1) begin
            test_gap[51]      <= 0;
            test_gap_chk [51] <= 1'b1;
        end else if ( (EnN[51] == 1'b0) && (EnP[51] == 1'b0) && (test_gap_chk [51]) ) begin
            test_gap[51] <= test_gap[51] + 1'b1;
        end else if ((EnP[51] == 1'b1) && (test_gap_chk [51])) begin

            if ((test_gap[51]/33) == tb_w_icons_top.gap_s[51]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 51,test_gap[51]/33,tb_w_icons_top.gap_s[51]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 51,test_gap[51]/33,tb_w_icons_top.gap_s[51]);
                tb_stim_err;
            end
            test_gap[51]      <= 0;
            test_gap_chk [51] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[51] && (test_num[51] < tb_w_icons_top.num_s[51]) ) begin
            if (test_num[51] < tb_w_icons_top.interval_s[51]) begin
                if (EnP[51] == 1'b1) begin
                    test_interval[51]      <= 0;
                    test_interval_chk [51] <= 1'b1;
                end else if ( (EnP[51] == 1'b0) && (EnN[51] == 1'b0) && (test_interval_chk[51]) ) begin
                    test_interval[51] <= test_interval[51] + 1'b1;
                end else if ((EnN[51] == 1'b1) && (test_interval_chk[51])) begin

                    if ((test_interval[51]/33) == tb_w_icons_top.interval_s[51]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 51,test_interval[51]/33,tb_w_icons_top.interval_s[51]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 51,test_interval[51]/33,tb_w_icons_top.interval_s[51]);
                        tb_stim_err;
                    end
                    test_interval[51]      <= 0;
                    test_interval_chk [51] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[51] == 1'b1) && (test_num[51] < tb_w_icons_top.num_s[51]) && (test_num_chk[51] == 1'b0)) begin
            test_num[51]         <= test_num[51] + 1'b1;
            test_num_chk[51]     <= 1'b1;
            test_interval_en[51] <= 1'b1;

        end else if ((EnP[51] == 1'b1) && (test_num[51] < tb_w_icons_top.num_s[51]) && (test_num_chk[51] == 1'b1)) begin
            test_num_chk[51]     <= 1'b0;


        end else if ( ((EnN[51] == 1'b0) && (EnP[51] == 1'b0) && (test_num[51] == tb_w_icons_top.num_s[51])) ) begin
            test_num[51]         <= 0;
            test_num_chk[51]     <= 1'b0;
            test_interval_en[51] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[51] == 1'b1) || (EnP[51] == 1'b1)) begin
            if ( (Bn52 == tb_w_icons_top.ic_s[51]) && (Bp52 == tb_w_icons_top.ic_s[51]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 51,Bn52,Bp52,tb_w_icons_top.ic_s[51]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[51] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",51 );
                tb_stim_err;
            end
        end
    end




    //Channel52
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[52] == 1'b1) begin
            test_cathode_chk [52] <= 1'b1;
            test_cathode[52]      <= test_cathode[52] + 1'b1;

            if (!test_num_chk[52]) begin
                test_num[52]     <= test_num[52] + 1'b1;
                test_num_chk[52] <= 1'b1;
            end

        end else if ( (EnN[52] == 1'b0) && (test_cathode_chk[52]) ) begin
            test_cathode_chk [52] <= 1'b0;
            if ((test_cathode[52]/33) == tb_w_icons_top.wc_s[52]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 52,test_cathode[52]/33,tb_w_icons_top.wc_s[52]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 52,test_cathode[52]/33,tb_w_icons_top.wc_s[52]);
                tb_stim_err;
            end
            test_cathode[52] <= 0;
            test_num_chk[52] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[52] == 1'b1) begin
            test_anode_chk [52] <= 1'b1;
            test_anode[52]      <= test_anode[52] + 1'b1;

        end else if ( (EnP[52] == 1'b0) && (test_anode_chk[52]) ) begin
            test_anode_chk [52] <= 1'b0;
            if ((test_anode[52]/33) == tb_w_icons_top.wc_s[52]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 52,test_anode[52]/33,tb_w_icons_top.wc_s[52]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 52,test_anode[52]/33,tb_w_icons_top.wc_s[52]);
                tb_stim_err;
            end
            test_anode[52] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[52] == 1'b1) begin
            test_gap[52]      <= 0;
            test_gap_chk [52] <= 1'b1;
        end else if ( (EnN[52] == 1'b0) && (EnP[52] == 1'b0) && (test_gap_chk [52]) ) begin
            test_gap[52] <= test_gap[52] + 1'b1;
        end else if ((EnP[52] == 1'b1) && (test_gap_chk [52])) begin

            if ((test_gap[52]/33) == tb_w_icons_top.gap_s[52]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 52,test_gap[52]/33,tb_w_icons_top.gap_s[52]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 52,test_gap[52]/33,tb_w_icons_top.gap_s[52]);
                tb_stim_err;
            end
            test_gap[52]      <= 0;
            test_gap_chk [52] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[52] && (test_num[52] < tb_w_icons_top.num_s[52]) ) begin
            if (test_num[52] < tb_w_icons_top.interval_s[52]) begin
                if (EnP[52] == 1'b1) begin
                    test_interval[52]      <= 0;
                    test_interval_chk [52] <= 1'b1;
                end else if ( (EnP[52] == 1'b0) && (EnN[52] == 1'b0) && (test_interval_chk[52]) ) begin
                    test_interval[52] <= test_interval[52] + 1'b1;
                end else if ((EnN[52] == 1'b1) && (test_interval_chk[52])) begin

                    if ((test_interval[52]/33) == tb_w_icons_top.interval_s[52]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 52,test_interval[52]/33,tb_w_icons_top.interval_s[52]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 52,test_interval[52]/33,tb_w_icons_top.interval_s[52]);
                        tb_stim_err;
                    end
                    test_interval[52]      <= 0;
                    test_interval_chk [52] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[52] == 1'b1) && (test_num[52] < tb_w_icons_top.num_s[52]) && (test_num_chk[52] == 1'b0)) begin
            test_num[52]         <= test_num[52] + 1'b1;
            test_num_chk[52]     <= 1'b1;
            test_interval_en[52] <= 1'b1;

        end else if ((EnP[52] == 1'b1) && (test_num[52] < tb_w_icons_top.num_s[52]) && (test_num_chk[52] == 1'b1)) begin
            test_num_chk[52]     <= 1'b0;


        end else if ( ((EnN[52] == 1'b0) && (EnP[52] == 1'b0) && (test_num[52] == tb_w_icons_top.num_s[52])) ) begin
            test_num[52]         <= 0;
            test_num_chk[52]     <= 1'b0;
            test_interval_en[52] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[52] == 1'b1) || (EnP[52] == 1'b1)) begin
            if ( (Bn53 == tb_w_icons_top.ic_s[52]) && (Bp53 == tb_w_icons_top.ic_s[52]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 52,Bn53,Bp53,tb_w_icons_top.ic_s[52]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[52] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",52 );
                tb_stim_err;
            end
        end
    end




    //Channel53
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[53] == 1'b1) begin
            test_cathode_chk [53] <= 1'b1;
            test_cathode[53]      <= test_cathode[53] + 1'b1;

            if (!test_num_chk[53]) begin
                test_num[53]     <= test_num[53] + 1'b1;
                test_num_chk[53] <= 1'b1;
            end

        end else if ( (EnN[53] == 1'b0) && (test_cathode_chk[53]) ) begin
            test_cathode_chk [53] <= 1'b0;
            if ((test_cathode[53]/33) == tb_w_icons_top.wc_s[53]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 53,test_cathode[53]/33,tb_w_icons_top.wc_s[53]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 53,test_cathode[53]/33,tb_w_icons_top.wc_s[53]);
                tb_stim_err;
            end
            test_cathode[53] <= 0;
            test_num_chk[53] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[53] == 1'b1) begin
            test_anode_chk [53] <= 1'b1;
            test_anode[53]      <= test_anode[53] + 1'b1;

        end else if ( (EnP[53] == 1'b0) && (test_anode_chk[53]) ) begin
            test_anode_chk [53] <= 1'b0;
            if ((test_anode[53]/33) == tb_w_icons_top.wc_s[53]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 53,test_anode[53]/33,tb_w_icons_top.wc_s[53]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 53,test_anode[53]/33,tb_w_icons_top.wc_s[53]);
                tb_stim_err;
            end
            test_anode[53] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[53] == 1'b1) begin
            test_gap[53]      <= 0;
            test_gap_chk [53] <= 1'b1;
        end else if ( (EnN[53] == 1'b0) && (EnP[53] == 1'b0) && (test_gap_chk [53]) ) begin
            test_gap[53] <= test_gap[53] + 1'b1;
        end else if ((EnP[53] == 1'b1) && (test_gap_chk [53])) begin

            if ((test_gap[53]/33) == tb_w_icons_top.gap_s[53]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 53,test_gap[53]/33,tb_w_icons_top.gap_s[53]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 53,test_gap[53]/33,tb_w_icons_top.gap_s[53]);
                tb_stim_err;
            end
            test_gap[53]      <= 0;
            test_gap_chk [53] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[53] && (test_num[53] < tb_w_icons_top.num_s[53]) ) begin
            if (test_num[53] < tb_w_icons_top.interval_s[53]) begin
                if (EnP[53] == 1'b1) begin
                    test_interval[53]      <= 0;
                    test_interval_chk [53] <= 1'b1;
                end else if ( (EnP[53] == 1'b0) && (EnN[53] == 1'b0) && (test_interval_chk[53]) ) begin
                    test_interval[53] <= test_interval[53] + 1'b1;
                end else if ((EnN[53] == 1'b1) && (test_interval_chk[53])) begin

                    if ((test_interval[53]/33) == tb_w_icons_top.interval_s[53]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 53,test_interval[53]/33,tb_w_icons_top.interval_s[53]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 53,test_interval[53]/33,tb_w_icons_top.interval_s[53]);
                        tb_stim_err;
                    end
                    test_interval[53]      <= 0;
                    test_interval_chk [53] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[53] == 1'b1) && (test_num[53] < tb_w_icons_top.num_s[53]) && (test_num_chk[53] == 1'b0)) begin
            test_num[53]         <= test_num[53] + 1'b1;
            test_num_chk[53]     <= 1'b1;
            test_interval_en[53] <= 1'b1;

        end else if ((EnP[53] == 1'b1) && (test_num[53] < tb_w_icons_top.num_s[53]) && (test_num_chk[53] == 1'b1)) begin
            test_num_chk[53]     <= 1'b0;


        end else if ( ((EnN[53] == 1'b0) && (EnP[53] == 1'b0) && (test_num[53] == tb_w_icons_top.num_s[53])) ) begin
            test_num[53]         <= 0;
            test_num_chk[53]     <= 1'b0;
            test_interval_en[53] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[53] == 1'b1) || (EnP[53] == 1'b1)) begin
            if ( (Bn54 == tb_w_icons_top.ic_s[53]) && (Bp54 == tb_w_icons_top.ic_s[53]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 53,Bn54,Bp54,tb_w_icons_top.ic_s[53]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[53] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",53 );
                tb_stim_err;
            end
        end
    end




    //Channel54
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[54] == 1'b1) begin
            test_cathode_chk [54] <= 1'b1;
            test_cathode[54]      <= test_cathode[54] + 1'b1;

            if (!test_num_chk[54]) begin
                test_num[54]     <= test_num[54] + 1'b1;
                test_num_chk[54] <= 1'b1;
            end

        end else if ( (EnN[54] == 1'b0) && (test_cathode_chk[54]) ) begin
            test_cathode_chk [54] <= 1'b0;
            if ((test_cathode[54]/33) == tb_w_icons_top.wc_s[54]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 54,test_cathode[54]/33,tb_w_icons_top.wc_s[54]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 54,test_cathode[54]/33,tb_w_icons_top.wc_s[54]);
                tb_stim_err;
            end
            test_cathode[54] <= 0;
            test_num_chk[54] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[54] == 1'b1) begin
            test_anode_chk [54] <= 1'b1;
            test_anode[54]      <= test_anode[54] + 1'b1;

        end else if ( (EnP[54] == 1'b0) && (test_anode_chk[54]) ) begin
            test_anode_chk [54] <= 1'b0;
            if ((test_anode[54]/33) == tb_w_icons_top.wc_s[54]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 54,test_anode[54]/33,tb_w_icons_top.wc_s[54]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 54,test_anode[54]/33,tb_w_icons_top.wc_s[54]);
                tb_stim_err;
            end
            test_anode[54] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[54] == 1'b1) begin
            test_gap[54]      <= 0;
            test_gap_chk [54] <= 1'b1;
        end else if ( (EnN[54] == 1'b0) && (EnP[54] == 1'b0) && (test_gap_chk [54]) ) begin
            test_gap[54] <= test_gap[54] + 1'b1;
        end else if ((EnP[54] == 1'b1) && (test_gap_chk [54])) begin

            if ((test_gap[54]/33) == tb_w_icons_top.gap_s[54]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 54,test_gap[54]/33,tb_w_icons_top.gap_s[54]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 54,test_gap[54]/33,tb_w_icons_top.gap_s[54]);
                tb_stim_err;
            end
            test_gap[54]      <= 0;
            test_gap_chk [54] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[54] && (test_num[54] < tb_w_icons_top.num_s[54]) ) begin
            if (test_num[54] < tb_w_icons_top.interval_s[54]) begin
                if (EnP[54] == 1'b1) begin
                    test_interval[54]      <= 0;
                    test_interval_chk [54] <= 1'b1;
                end else if ( (EnP[54] == 1'b0) && (EnN[54] == 1'b0) && (test_interval_chk[54]) ) begin
                    test_interval[54] <= test_interval[54] + 1'b1;
                end else if ((EnN[54] == 1'b1) && (test_interval_chk[54])) begin

                    if ((test_interval[54]/33) == tb_w_icons_top.interval_s[54]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 54,test_interval[54]/33,tb_w_icons_top.interval_s[54]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 54,test_interval[54]/33,tb_w_icons_top.interval_s[54]);
                        tb_stim_err;
                    end
                    test_interval[54]      <= 0;
                    test_interval_chk [54] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[54] == 1'b1) && (test_num[54] < tb_w_icons_top.num_s[54]) && (test_num_chk[54] == 1'b0)) begin
            test_num[54]         <= test_num[54] + 1'b1;
            test_num_chk[54]     <= 1'b1;
            test_interval_en[54] <= 1'b1;

        end else if ((EnP[54] == 1'b1) && (test_num[54] < tb_w_icons_top.num_s[54]) && (test_num_chk[54] == 1'b1)) begin
            test_num_chk[54]     <= 1'b0;


        end else if ( ((EnN[54] == 1'b0) && (EnP[54] == 1'b0) && (test_num[54] == tb_w_icons_top.num_s[54])) ) begin
            test_num[54]         <= 0;
            test_num_chk[54]     <= 1'b0;
            test_interval_en[54] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[54] == 1'b1) || (EnP[54] == 1'b1)) begin
            if ( (Bn55 == tb_w_icons_top.ic_s[54]) && (Bp55 == tb_w_icons_top.ic_s[54]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 54,Bn55,Bp55,tb_w_icons_top.ic_s[54]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[54] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",54 );
                tb_stim_err;
            end
        end
    end




    //Channel55
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[55] == 1'b1) begin
            test_cathode_chk [55] <= 1'b1;
            test_cathode[55]      <= test_cathode[55] + 1'b1;

            if (!test_num_chk[55]) begin
                test_num[55]     <= test_num[55] + 1'b1;
                test_num_chk[55] <= 1'b1;
            end

        end else if ( (EnN[55] == 1'b0) && (test_cathode_chk[55]) ) begin
            test_cathode_chk [55] <= 1'b0;
            if ((test_cathode[55]/33) == tb_w_icons_top.wc_s[55]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 55,test_cathode[55]/33,tb_w_icons_top.wc_s[55]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 55,test_cathode[55]/33,tb_w_icons_top.wc_s[55]);
                tb_stim_err;
            end
            test_cathode[55] <= 0;
            test_num_chk[55] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[55] == 1'b1) begin
            test_anode_chk [55] <= 1'b1;
            test_anode[55]      <= test_anode[55] + 1'b1;

        end else if ( (EnP[55] == 1'b0) && (test_anode_chk[55]) ) begin
            test_anode_chk [55] <= 1'b0;
            if ((test_anode[55]/33) == tb_w_icons_top.wc_s[55]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 55,test_anode[55]/33,tb_w_icons_top.wc_s[55]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 55,test_anode[55]/33,tb_w_icons_top.wc_s[55]);
                tb_stim_err;
            end
            test_anode[55] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[55] == 1'b1) begin
            test_gap[55]      <= 0;
            test_gap_chk [55] <= 1'b1;
        end else if ( (EnN[55] == 1'b0) && (EnP[55] == 1'b0) && (test_gap_chk [55]) ) begin
            test_gap[55] <= test_gap[55] + 1'b1;
        end else if ((EnP[55] == 1'b1) && (test_gap_chk [55])) begin

            if ((test_gap[55]/33) == tb_w_icons_top.gap_s[55]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 55,test_gap[55]/33,tb_w_icons_top.gap_s[55]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 55,test_gap[55]/33,tb_w_icons_top.gap_s[55]);
                tb_stim_err;
            end
            test_gap[55]      <= 0;
            test_gap_chk [55] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[55] && (test_num[55] < tb_w_icons_top.num_s[55]) ) begin
            if (test_num[55] < tb_w_icons_top.interval_s[55]) begin
                if (EnP[55] == 1'b1) begin
                    test_interval[55]      <= 0;
                    test_interval_chk [55] <= 1'b1;
                end else if ( (EnP[55] == 1'b0) && (EnN[55] == 1'b0) && (test_interval_chk[55]) ) begin
                    test_interval[55] <= test_interval[55] + 1'b1;
                end else if ((EnN[55] == 1'b1) && (test_interval_chk[55])) begin

                    if ((test_interval[55]/33) == tb_w_icons_top.interval_s[55]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 55,test_interval[55]/33,tb_w_icons_top.interval_s[55]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 55,test_interval[55]/33,tb_w_icons_top.interval_s[55]);
                        tb_stim_err;
                    end
                    test_interval[55]      <= 0;
                    test_interval_chk [55] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[55] == 1'b1) && (test_num[55] < tb_w_icons_top.num_s[55]) && (test_num_chk[55] == 1'b0)) begin
            test_num[55]         <= test_num[55] + 1'b1;
            test_num_chk[55]     <= 1'b1;
            test_interval_en[55] <= 1'b1;

        end else if ((EnP[55] == 1'b1) && (test_num[55] < tb_w_icons_top.num_s[55]) && (test_num_chk[55] == 1'b1)) begin
            test_num_chk[55]     <= 1'b0;


        end else if ( ((EnN[55] == 1'b0) && (EnP[55] == 1'b0) && (test_num[55] == tb_w_icons_top.num_s[55])) ) begin
            test_num[55]         <= 0;
            test_num_chk[55]     <= 1'b0;
            test_interval_en[55] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[55] == 1'b1) || (EnP[55] == 1'b1)) begin
            if ( (Bn56 == tb_w_icons_top.ic_s[55]) && (Bp56 == tb_w_icons_top.ic_s[55]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 55,Bn56,Bp56,tb_w_icons_top.ic_s[55]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[55] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",55 );
                tb_stim_err;
            end
        end
    end




    //Channel56
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[56] == 1'b1) begin
            test_cathode_chk [56] <= 1'b1;
            test_cathode[56]      <= test_cathode[56] + 1'b1;

            if (!test_num_chk[56]) begin
                test_num[56]     <= test_num[56] + 1'b1;
                test_num_chk[56] <= 1'b1;
            end

        end else if ( (EnN[56] == 1'b0) && (test_cathode_chk[56]) ) begin
            test_cathode_chk [56] <= 1'b0;
            if ((test_cathode[56]/33) == tb_w_icons_top.wc_s[56]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 56,test_cathode[56]/33,tb_w_icons_top.wc_s[56]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 56,test_cathode[56]/33,tb_w_icons_top.wc_s[56]);
                tb_stim_err;
            end
            test_cathode[56] <= 0;
            test_num_chk[56] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[56] == 1'b1) begin
            test_anode_chk [56] <= 1'b1;
            test_anode[56]      <= test_anode[56] + 1'b1;

        end else if ( (EnP[56] == 1'b0) && (test_anode_chk[56]) ) begin
            test_anode_chk [56] <= 1'b0;
            if ((test_anode[56]/33) == tb_w_icons_top.wc_s[56]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 56,test_anode[56]/33,tb_w_icons_top.wc_s[56]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 56,test_anode[56]/33,tb_w_icons_top.wc_s[56]);
                tb_stim_err;
            end
            test_anode[56] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[56] == 1'b1) begin
            test_gap[56]      <= 0;
            test_gap_chk [56] <= 1'b1;
        end else if ( (EnN[56] == 1'b0) && (EnP[56] == 1'b0) && (test_gap_chk [56]) ) begin
            test_gap[56] <= test_gap[56] + 1'b1;
        end else if ((EnP[56] == 1'b1) && (test_gap_chk [56])) begin

            if ((test_gap[56]/33) == tb_w_icons_top.gap_s[56]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 56,test_gap[56]/33,tb_w_icons_top.gap_s[56]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 56,test_gap[56]/33,tb_w_icons_top.gap_s[56]);
                tb_stim_err;
            end
            test_gap[56]      <= 0;
            test_gap_chk [56] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[56] && (test_num[56] < tb_w_icons_top.num_s[56]) ) begin
            if (test_num[56] < tb_w_icons_top.interval_s[56]) begin
                if (EnP[56] == 1'b1) begin
                    test_interval[56]      <= 0;
                    test_interval_chk [56] <= 1'b1;
                end else if ( (EnP[56] == 1'b0) && (EnN[56] == 1'b0) && (test_interval_chk[56]) ) begin
                    test_interval[56] <= test_interval[56] + 1'b1;
                end else if ((EnN[56] == 1'b1) && (test_interval_chk[56])) begin

                    if ((test_interval[56]/33) == tb_w_icons_top.interval_s[56]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 56,test_interval[56]/33,tb_w_icons_top.interval_s[56]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 56,test_interval[56]/33,tb_w_icons_top.interval_s[56]);
                        tb_stim_err;
                    end
                    test_interval[56]      <= 0;
                    test_interval_chk [56] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[56] == 1'b1) && (test_num[56] < tb_w_icons_top.num_s[56]) && (test_num_chk[56] == 1'b0)) begin
            test_num[56]         <= test_num[56] + 1'b1;
            test_num_chk[56]     <= 1'b1;
            test_interval_en[56] <= 1'b1;

        end else if ((EnP[56] == 1'b1) && (test_num[56] < tb_w_icons_top.num_s[56]) && (test_num_chk[56] == 1'b1)) begin
            test_num_chk[56]     <= 1'b0;


        end else if ( ((EnN[56] == 1'b0) && (EnP[56] == 1'b0) && (test_num[56] == tb_w_icons_top.num_s[56])) ) begin
            test_num[56]         <= 0;
            test_num_chk[56]     <= 1'b0;
            test_interval_en[56] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[56] == 1'b1) || (EnP[56] == 1'b1)) begin
            if ( (Bn57 == tb_w_icons_top.ic_s[56]) && (Bp57 == tb_w_icons_top.ic_s[56]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 56,Bn57,Bp57,tb_w_icons_top.ic_s[56]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[56] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",56 );
                tb_stim_err;
            end
        end
    end




    //Channel57
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[57] == 1'b1) begin
            test_cathode_chk [57] <= 1'b1;
            test_cathode[57]      <= test_cathode[57] + 1'b1;

            if (!test_num_chk[57]) begin
                test_num[57]     <= test_num[57] + 1'b1;
                test_num_chk[57] <= 1'b1;
            end

        end else if ( (EnN[57] == 1'b0) && (test_cathode_chk[57]) ) begin
            test_cathode_chk [57] <= 1'b0;
            if ((test_cathode[57]/33) == tb_w_icons_top.wc_s[57]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 57,test_cathode[57]/33,tb_w_icons_top.wc_s[57]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 57,test_cathode[57]/33,tb_w_icons_top.wc_s[57]);
                tb_stim_err;
            end
            test_cathode[57] <= 0;
            test_num_chk[57] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[57] == 1'b1) begin
            test_anode_chk [57] <= 1'b1;
            test_anode[57]      <= test_anode[57] + 1'b1;

        end else if ( (EnP[57] == 1'b0) && (test_anode_chk[57]) ) begin
            test_anode_chk [57] <= 1'b0;
            if ((test_anode[57]/33) == tb_w_icons_top.wc_s[57]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 57,test_anode[57]/33,tb_w_icons_top.wc_s[57]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 57,test_anode[57]/33,tb_w_icons_top.wc_s[57]);
                tb_stim_err;
            end
            test_anode[57] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[57] == 1'b1) begin
            test_gap[57]      <= 0;
            test_gap_chk [57] <= 1'b1;
        end else if ( (EnN[57] == 1'b0) && (EnP[57] == 1'b0) && (test_gap_chk [57]) ) begin
            test_gap[57] <= test_gap[57] + 1'b1;
        end else if ((EnP[57] == 1'b1) && (test_gap_chk [57])) begin

            if ((test_gap[57]/33) == tb_w_icons_top.gap_s[57]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 57,test_gap[57]/33,tb_w_icons_top.gap_s[57]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 57,test_gap[57]/33,tb_w_icons_top.gap_s[57]);
                tb_stim_err;
            end
            test_gap[57]      <= 0;
            test_gap_chk [57] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[57] && (test_num[57] < tb_w_icons_top.num_s[57]) ) begin
            if (test_num[57] < tb_w_icons_top.interval_s[57]) begin
                if (EnP[57] == 1'b1) begin
                    test_interval[57]      <= 0;
                    test_interval_chk [57] <= 1'b1;
                end else if ( (EnP[57] == 1'b0) && (EnN[57] == 1'b0) && (test_interval_chk[57]) ) begin
                    test_interval[57] <= test_interval[57] + 1'b1;
                end else if ((EnN[57] == 1'b1) && (test_interval_chk[57])) begin

                    if ((test_interval[57]/33) == tb_w_icons_top.interval_s[57]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 57,test_interval[57]/33,tb_w_icons_top.interval_s[57]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 57,test_interval[57]/33,tb_w_icons_top.interval_s[57]);
                        tb_stim_err;
                    end
                    test_interval[57]      <= 0;
                    test_interval_chk [57] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[57] == 1'b1) && (test_num[57] < tb_w_icons_top.num_s[57]) && (test_num_chk[57] == 1'b0)) begin
            test_num[57]         <= test_num[57] + 1'b1;
            test_num_chk[57]     <= 1'b1;
            test_interval_en[57] <= 1'b1;

        end else if ((EnP[57] == 1'b1) && (test_num[57] < tb_w_icons_top.num_s[57]) && (test_num_chk[57] == 1'b1)) begin
            test_num_chk[57]     <= 1'b0;


        end else if ( ((EnN[57] == 1'b0) && (EnP[57] == 1'b0) && (test_num[57] == tb_w_icons_top.num_s[57])) ) begin
            test_num[57]         <= 0;
            test_num_chk[57]     <= 1'b0;
            test_interval_en[57] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[57] == 1'b1) || (EnP[57] == 1'b1)) begin
            if ( (Bn58 == tb_w_icons_top.ic_s[57]) && (Bp58 == tb_w_icons_top.ic_s[57]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 57,Bn58,Bp58,tb_w_icons_top.ic_s[57]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[57] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",57 );
                tb_stim_err;
            end
        end
    end




    //Channel58
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[58] == 1'b1) begin
            test_cathode_chk [58] <= 1'b1;
            test_cathode[58]      <= test_cathode[58] + 1'b1;

            if (!test_num_chk[58]) begin
                test_num[58]     <= test_num[58] + 1'b1;
                test_num_chk[58] <= 1'b1;
            end

        end else if ( (EnN[58] == 1'b0) && (test_cathode_chk[58]) ) begin
            test_cathode_chk [58] <= 1'b0;
            if ((test_cathode[58]/33) == tb_w_icons_top.wc_s[58]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 58,test_cathode[58]/33,tb_w_icons_top.wc_s[58]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 58,test_cathode[58]/33,tb_w_icons_top.wc_s[58]);
                tb_stim_err;
            end
            test_cathode[58] <= 0;
            test_num_chk[58] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[58] == 1'b1) begin
            test_anode_chk [58] <= 1'b1;
            test_anode[58]      <= test_anode[58] + 1'b1;

        end else if ( (EnP[58] == 1'b0) && (test_anode_chk[58]) ) begin
            test_anode_chk [58] <= 1'b0;
            if ((test_anode[58]/33) == tb_w_icons_top.wc_s[58]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 58,test_anode[58]/33,tb_w_icons_top.wc_s[58]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 58,test_anode[58]/33,tb_w_icons_top.wc_s[58]);
                tb_stim_err;
            end
            test_anode[58] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[58] == 1'b1) begin
            test_gap[58]      <= 0;
            test_gap_chk [58] <= 1'b1;
        end else if ( (EnN[58] == 1'b0) && (EnP[58] == 1'b0) && (test_gap_chk [58]) ) begin
            test_gap[58] <= test_gap[58] + 1'b1;
        end else if ((EnP[58] == 1'b1) && (test_gap_chk [58])) begin

            if ((test_gap[58]/33) == tb_w_icons_top.gap_s[58]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 58,test_gap[58]/33,tb_w_icons_top.gap_s[58]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 58,test_gap[58]/33,tb_w_icons_top.gap_s[58]);
                tb_stim_err;
            end
            test_gap[58]      <= 0;
            test_gap_chk [58] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[58] && (test_num[58] < tb_w_icons_top.num_s[58]) ) begin
            if (test_num[58] < tb_w_icons_top.interval_s[58]) begin
                if (EnP[58] == 1'b1) begin
                    test_interval[58]      <= 0;
                    test_interval_chk [58] <= 1'b1;
                end else if ( (EnP[58] == 1'b0) && (EnN[58] == 1'b0) && (test_interval_chk[58]) ) begin
                    test_interval[58] <= test_interval[58] + 1'b1;
                end else if ((EnN[58] == 1'b1) && (test_interval_chk[58])) begin

                    if ((test_interval[58]/33) == tb_w_icons_top.interval_s[58]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 58,test_interval[58]/33,tb_w_icons_top.interval_s[58]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 58,test_interval[58]/33,tb_w_icons_top.interval_s[58]);
                        tb_stim_err;
                    end
                    test_interval[58]      <= 0;
                    test_interval_chk [58] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[58] == 1'b1) && (test_num[58] < tb_w_icons_top.num_s[58]) && (test_num_chk[58] == 1'b0)) begin
            test_num[58]         <= test_num[58] + 1'b1;
            test_num_chk[58]     <= 1'b1;
            test_interval_en[58] <= 1'b1;

        end else if ((EnP[58] == 1'b1) && (test_num[58] < tb_w_icons_top.num_s[58]) && (test_num_chk[58] == 1'b1)) begin
            test_num_chk[58]     <= 1'b0;


        end else if ( ((EnN[58] == 1'b0) && (EnP[58] == 1'b0) && (test_num[58] == tb_w_icons_top.num_s[58])) ) begin
            test_num[58]         <= 0;
            test_num_chk[58]     <= 1'b0;
            test_interval_en[58] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[58] == 1'b1) || (EnP[58] == 1'b1)) begin
            if ( (Bn59 == tb_w_icons_top.ic_s[58]) && (Bp59 == tb_w_icons_top.ic_s[58]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 58,Bn59,Bp59,tb_w_icons_top.ic_s[58]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[58] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",58 );
                tb_stim_err;
            end
        end
    end




    //Channel59
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[59] == 1'b1) begin
            test_cathode_chk [59] <= 1'b1;
            test_cathode[59]      <= test_cathode[59] + 1'b1;

            if (!test_num_chk[59]) begin
                test_num[59]     <= test_num[59] + 1'b1;
                test_num_chk[59] <= 1'b1;
            end

        end else if ( (EnN[59] == 1'b0) && (test_cathode_chk[59]) ) begin
            test_cathode_chk [59] <= 1'b0;
            if ((test_cathode[59]/33) == tb_w_icons_top.wc_s[59]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 59,test_cathode[59]/33,tb_w_icons_top.wc_s[59]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 59,test_cathode[59]/33,tb_w_icons_top.wc_s[59]);
                tb_stim_err;
            end
            test_cathode[59] <= 0;
            test_num_chk[59] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[59] == 1'b1) begin
            test_anode_chk [59] <= 1'b1;
            test_anode[59]      <= test_anode[59] + 1'b1;

        end else if ( (EnP[59] == 1'b0) && (test_anode_chk[59]) ) begin
            test_anode_chk [59] <= 1'b0;
            if ((test_anode[59]/33) == tb_w_icons_top.wc_s[59]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 59,test_anode[59]/33,tb_w_icons_top.wc_s[59]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 59,test_anode[59]/33,tb_w_icons_top.wc_s[59]);
                tb_stim_err;
            end
            test_anode[59] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[59] == 1'b1) begin
            test_gap[59]      <= 0;
            test_gap_chk [59] <= 1'b1;
        end else if ( (EnN[59] == 1'b0) && (EnP[59] == 1'b0) && (test_gap_chk [59]) ) begin
            test_gap[59] <= test_gap[59] + 1'b1;
        end else if ((EnP[59] == 1'b1) && (test_gap_chk [59])) begin

            if ((test_gap[59]/33) == tb_w_icons_top.gap_s[59]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 59,test_gap[59]/33,tb_w_icons_top.gap_s[59]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 59,test_gap[59]/33,tb_w_icons_top.gap_s[59]);
                tb_stim_err;
            end
            test_gap[59]      <= 0;
            test_gap_chk [59] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[59] && (test_num[59] < tb_w_icons_top.num_s[59]) ) begin
            if (test_num[59] < tb_w_icons_top.interval_s[59]) begin
                if (EnP[59] == 1'b1) begin
                    test_interval[59]      <= 0;
                    test_interval_chk [59] <= 1'b1;
                end else if ( (EnP[59] == 1'b0) && (EnN[59] == 1'b0) && (test_interval_chk[59]) ) begin
                    test_interval[59] <= test_interval[59] + 1'b1;
                end else if ((EnN[59] == 1'b1) && (test_interval_chk[59])) begin

                    if ((test_interval[59]/33) == tb_w_icons_top.interval_s[59]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 59,test_interval[59]/33,tb_w_icons_top.interval_s[59]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 59,test_interval[59]/33,tb_w_icons_top.interval_s[59]);
                        tb_stim_err;
                    end
                    test_interval[59]      <= 0;
                    test_interval_chk [59] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[59] == 1'b1) && (test_num[59] < tb_w_icons_top.num_s[59]) && (test_num_chk[59] == 1'b0)) begin
            test_num[59]         <= test_num[59] + 1'b1;
            test_num_chk[59]     <= 1'b1;
            test_interval_en[59] <= 1'b1;

        end else if ((EnP[59] == 1'b1) && (test_num[59] < tb_w_icons_top.num_s[59]) && (test_num_chk[59] == 1'b1)) begin
            test_num_chk[59]     <= 1'b0;


        end else if ( ((EnN[59] == 1'b0) && (EnP[59] == 1'b0) && (test_num[59] == tb_w_icons_top.num_s[59])) ) begin
            test_num[59]         <= 0;
            test_num_chk[59]     <= 1'b0;
            test_interval_en[59] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[59] == 1'b1) || (EnP[59] == 1'b1)) begin
            if ( (Bn60 == tb_w_icons_top.ic_s[59]) && (Bp60 == tb_w_icons_top.ic_s[59]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 59,Bn60,Bp60,tb_w_icons_top.ic_s[59]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[59] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",59 );
                tb_stim_err;
            end
        end
    end




    //Channel60
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[60] == 1'b1) begin
            test_cathode_chk [60] <= 1'b1;
            test_cathode[60]      <= test_cathode[60] + 1'b1;

            if (!test_num_chk[60]) begin
                test_num[60]     <= test_num[60] + 1'b1;
                test_num_chk[60] <= 1'b1;
            end

        end else if ( (EnN[60] == 1'b0) && (test_cathode_chk[60]) ) begin
            test_cathode_chk [60] <= 1'b0;
            if ((test_cathode[60]/33) == tb_w_icons_top.wc_s[60]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 60,test_cathode[60]/33,tb_w_icons_top.wc_s[60]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 60,test_cathode[60]/33,tb_w_icons_top.wc_s[60]);
                tb_stim_err;
            end
            test_cathode[60] <= 0;
            test_num_chk[60] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[60] == 1'b1) begin
            test_anode_chk [60] <= 1'b1;
            test_anode[60]      <= test_anode[60] + 1'b1;

        end else if ( (EnP[60] == 1'b0) && (test_anode_chk[60]) ) begin
            test_anode_chk [60] <= 1'b0;
            if ((test_anode[60]/33) == tb_w_icons_top.wc_s[60]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 60,test_anode[60]/33,tb_w_icons_top.wc_s[60]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 60,test_anode[60]/33,tb_w_icons_top.wc_s[60]);
                tb_stim_err;
            end
            test_anode[60] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[60] == 1'b1) begin
            test_gap[60]      <= 0;
            test_gap_chk [60] <= 1'b1;
        end else if ( (EnN[60] == 1'b0) && (EnP[60] == 1'b0) && (test_gap_chk [60]) ) begin
            test_gap[60] <= test_gap[60] + 1'b1;
        end else if ((EnP[60] == 1'b1) && (test_gap_chk [60])) begin

            if ((test_gap[60]/33) == tb_w_icons_top.gap_s[60]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 60,test_gap[60]/33,tb_w_icons_top.gap_s[60]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 60,test_gap[60]/33,tb_w_icons_top.gap_s[60]);
                tb_stim_err;
            end
            test_gap[60]      <= 0;
            test_gap_chk [60] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[60] && (test_num[60] < tb_w_icons_top.num_s[60]) ) begin
            if (test_num[60] < tb_w_icons_top.interval_s[60]) begin
                if (EnP[60] == 1'b1) begin
                    test_interval[60]      <= 0;
                    test_interval_chk [60] <= 1'b1;
                end else if ( (EnP[60] == 1'b0) && (EnN[60] == 1'b0) && (test_interval_chk[60]) ) begin
                    test_interval[60] <= test_interval[60] + 1'b1;
                end else if ((EnN[60] == 1'b1) && (test_interval_chk[60])) begin

                    if ((test_interval[60]/33) == tb_w_icons_top.interval_s[60]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 60,test_interval[60]/33,tb_w_icons_top.interval_s[60]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 60,test_interval[60]/33,tb_w_icons_top.interval_s[60]);
                        tb_stim_err;
                    end
                    test_interval[60]      <= 0;
                    test_interval_chk [60] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[60] == 1'b1) && (test_num[60] < tb_w_icons_top.num_s[60]) && (test_num_chk[60] == 1'b0)) begin
            test_num[60]         <= test_num[60] + 1'b1;
            test_num_chk[60]     <= 1'b1;
            test_interval_en[60] <= 1'b1;

        end else if ((EnP[60] == 1'b1) && (test_num[60] < tb_w_icons_top.num_s[60]) && (test_num_chk[60] == 1'b1)) begin
            test_num_chk[60]     <= 1'b0;


        end else if ( ((EnN[60] == 1'b0) && (EnP[60] == 1'b0) && (test_num[60] == tb_w_icons_top.num_s[60])) ) begin
            test_num[60]         <= 0;
            test_num_chk[60]     <= 1'b0;
            test_interval_en[60] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[60] == 1'b1) || (EnP[60] == 1'b1)) begin
            if ( (Bn61 == tb_w_icons_top.ic_s[60]) && (Bp61 == tb_w_icons_top.ic_s[60]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 60,Bn61,Bp61,tb_w_icons_top.ic_s[60]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[60] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",60 );
                tb_stim_err;
            end
        end
    end




    //Channel61
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[61] == 1'b1) begin
            test_cathode_chk [61] <= 1'b1;
            test_cathode[61]      <= test_cathode[61] + 1'b1;

            if (!test_num_chk[61]) begin
                test_num[61]     <= test_num[61] + 1'b1;
                test_num_chk[61] <= 1'b1;
            end

        end else if ( (EnN[61] == 1'b0) && (test_cathode_chk[61]) ) begin
            test_cathode_chk [61] <= 1'b0;
            if ((test_cathode[61]/33) == tb_w_icons_top.wc_s[61]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 61,test_cathode[61]/33,tb_w_icons_top.wc_s[61]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 61,test_cathode[61]/33,tb_w_icons_top.wc_s[61]);
                tb_stim_err;
            end
            test_cathode[61] <= 0;
            test_num_chk[61] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[61] == 1'b1) begin
            test_anode_chk [61] <= 1'b1;
            test_anode[61]      <= test_anode[61] + 1'b1;

        end else if ( (EnP[61] == 1'b0) && (test_anode_chk[61]) ) begin
            test_anode_chk [61] <= 1'b0;
            if ((test_anode[61]/33) == tb_w_icons_top.wc_s[61]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 61,test_anode[61]/33,tb_w_icons_top.wc_s[61]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 61,test_anode[61]/33,tb_w_icons_top.wc_s[61]);
                tb_stim_err;
            end
            test_anode[61] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[61] == 1'b1) begin
            test_gap[61]      <= 0;
            test_gap_chk [61] <= 1'b1;
        end else if ( (EnN[61] == 1'b0) && (EnP[61] == 1'b0) && (test_gap_chk [61]) ) begin
            test_gap[61] <= test_gap[61] + 1'b1;
        end else if ((EnP[61] == 1'b1) && (test_gap_chk [61])) begin

            if ((test_gap[61]/33) == tb_w_icons_top.gap_s[61]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 61,test_gap[61]/33,tb_w_icons_top.gap_s[61]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 61,test_gap[61]/33,tb_w_icons_top.gap_s[61]);
                tb_stim_err;
            end
            test_gap[61]      <= 0;
            test_gap_chk [61] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[61] && (test_num[61] < tb_w_icons_top.num_s[61]) ) begin
            if (test_num[61] < tb_w_icons_top.interval_s[61]) begin
                if (EnP[61] == 1'b1) begin
                    test_interval[61]      <= 0;
                    test_interval_chk [61] <= 1'b1;
                end else if ( (EnP[61] == 1'b0) && (EnN[61] == 1'b0) && (test_interval_chk[61]) ) begin
                    test_interval[61] <= test_interval[61] + 1'b1;
                end else if ((EnN[61] == 1'b1) && (test_interval_chk[61])) begin

                    if ((test_interval[61]/33) == tb_w_icons_top.interval_s[61]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 61,test_interval[61]/33,tb_w_icons_top.interval_s[61]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 61,test_interval[61]/33,tb_w_icons_top.interval_s[61]);
                        tb_stim_err;
                    end
                    test_interval[61]      <= 0;
                    test_interval_chk [61] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[61] == 1'b1) && (test_num[61] < tb_w_icons_top.num_s[61]) && (test_num_chk[61] == 1'b0)) begin
            test_num[61]         <= test_num[61] + 1'b1;
            test_num_chk[61]     <= 1'b1;
            test_interval_en[61] <= 1'b1;

        end else if ((EnP[61] == 1'b1) && (test_num[61] < tb_w_icons_top.num_s[61]) && (test_num_chk[61] == 1'b1)) begin
            test_num_chk[61]     <= 1'b0;


        end else if ( ((EnN[61] == 1'b0) && (EnP[61] == 1'b0) && (test_num[61] == tb_w_icons_top.num_s[61])) ) begin
            test_num[61]         <= 0;
            test_num_chk[61]     <= 1'b0;
            test_interval_en[61] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[61] == 1'b1) || (EnP[61] == 1'b1)) begin
            if ( (Bn62 == tb_w_icons_top.ic_s[61]) && (Bp62 == tb_w_icons_top.ic_s[61]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 61,Bn62,Bp62,tb_w_icons_top.ic_s[61]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[61] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",61 );
                tb_stim_err;
            end
        end
    end




    //Channel62
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[62] == 1'b1) begin
            test_cathode_chk [62] <= 1'b1;
            test_cathode[62]      <= test_cathode[62] + 1'b1;

            if (!test_num_chk[62]) begin
                test_num[62]     <= test_num[62] + 1'b1;
                test_num_chk[62] <= 1'b1;
            end

        end else if ( (EnN[62] == 1'b0) && (test_cathode_chk[62]) ) begin
            test_cathode_chk [62] <= 1'b0;
            if ((test_cathode[62]/33) == tb_w_icons_top.wc_s[62]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 62,test_cathode[62]/33,tb_w_icons_top.wc_s[62]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 62,test_cathode[62]/33,tb_w_icons_top.wc_s[62]);
                tb_stim_err;
            end
            test_cathode[62] <= 0;
            test_num_chk[62] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[62] == 1'b1) begin
            test_anode_chk [62] <= 1'b1;
            test_anode[62]      <= test_anode[62] + 1'b1;

        end else if ( (EnP[62] == 1'b0) && (test_anode_chk[62]) ) begin
            test_anode_chk [62] <= 1'b0;
            if ((test_anode[62]/33) == tb_w_icons_top.wc_s[62]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 62,test_anode[62]/33,tb_w_icons_top.wc_s[62]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 62,test_anode[62]/33,tb_w_icons_top.wc_s[62]);
                tb_stim_err;
            end
            test_anode[62] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[62] == 1'b1) begin
            test_gap[62]      <= 0;
            test_gap_chk [62] <= 1'b1;
        end else if ( (EnN[62] == 1'b0) && (EnP[62] == 1'b0) && (test_gap_chk [62]) ) begin
            test_gap[62] <= test_gap[62] + 1'b1;
        end else if ((EnP[62] == 1'b1) && (test_gap_chk [62])) begin

            if ((test_gap[62]/33) == tb_w_icons_top.gap_s[62]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 62,test_gap[62]/33,tb_w_icons_top.gap_s[62]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 62,test_gap[62]/33,tb_w_icons_top.gap_s[62]);
                tb_stim_err;
            end
            test_gap[62]      <= 0;
            test_gap_chk [62] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[62] && (test_num[62] < tb_w_icons_top.num_s[62]) ) begin
            if (test_num[62] < tb_w_icons_top.interval_s[62]) begin
                if (EnP[62] == 1'b1) begin
                    test_interval[62]      <= 0;
                    test_interval_chk [62] <= 1'b1;
                end else if ( (EnP[62] == 1'b0) && (EnN[62] == 1'b0) && (test_interval_chk[62]) ) begin
                    test_interval[62] <= test_interval[62] + 1'b1;
                end else if ((EnN[62] == 1'b1) && (test_interval_chk[62])) begin

                    if ((test_interval[62]/33) == tb_w_icons_top.interval_s[62]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 62,test_interval[62]/33,tb_w_icons_top.interval_s[62]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 62,test_interval[62]/33,tb_w_icons_top.interval_s[62]);
                        tb_stim_err;
                    end
                    test_interval[62]      <= 0;
                    test_interval_chk [62] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[62] == 1'b1) && (test_num[62] < tb_w_icons_top.num_s[62]) && (test_num_chk[62] == 1'b0)) begin
            test_num[62]         <= test_num[62] + 1'b1;
            test_num_chk[62]     <= 1'b1;
            test_interval_en[62] <= 1'b1;

        end else if ((EnP[62] == 1'b1) && (test_num[62] < tb_w_icons_top.num_s[62]) && (test_num_chk[62] == 1'b1)) begin
            test_num_chk[62]     <= 1'b0;


        end else if ( ((EnN[62] == 1'b0) && (EnP[62] == 1'b0) && (test_num[62] == tb_w_icons_top.num_s[62])) ) begin
            test_num[62]         <= 0;
            test_num_chk[62]     <= 1'b0;
            test_interval_en[62] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[62] == 1'b1) || (EnP[62] == 1'b1)) begin
            if ( (Bn63 == tb_w_icons_top.ic_s[62]) && (Bp63 == tb_w_icons_top.ic_s[62]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 62,Bn63,Bp63,tb_w_icons_top.ic_s[62]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[62] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",62 );
                tb_stim_err;
            end
        end
    end




    //Channel63
    //this is only applicable if the default value for stimulation clock divider is used
    //Cathode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnN[63] == 1'b1) begin
            test_cathode_chk [63] <= 1'b1;
            test_cathode[63]      <= test_cathode[63] + 1'b1;

            if (!test_num_chk[63]) begin
                test_num[63]     <= test_num[63] + 1'b1;
                test_num_chk[63] <= 1'b1;
            end

        end else if ( (EnN[63] == 1'b0) && (test_cathode_chk[63]) ) begin
            test_cathode_chk [63] <= 1'b0;
            if ((test_cathode[63]/33) == tb_w_icons_top.wc_s[63]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 63,test_cathode[63]/33,tb_w_icons_top.wc_s[63]);
            end else begin
                $display("[Err                   ] - Channel[%2d] -> Cathode Pulse period (Generated by stim ctrl) = %4d , WC       (User-defined) = %4d", 63,test_cathode[63]/33,tb_w_icons_top.wc_s[63]);
                tb_stim_err;
            end
            test_cathode[63] <= 0;
            test_num_chk[63] <= 1'b0;

        end
    end

    //Anode width check
    always @(posedge (tb_w_icons_top.CLK_REF_S)) begin
        if (EnP[63] == 1'b1) begin
            test_anode_chk [63] <= 1'b1;
            test_anode[63]      <= test_anode[63] + 1'b1;

        end else if ( (EnP[63] == 1'b0) && (test_anode_chk[63]) ) begin
            test_anode_chk [63] <= 1'b0;
            if ((test_anode[63]/33) == tb_w_icons_top.wc_s[63]) begin
                tb_stim_check;
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 63,test_anode[63]/33,tb_w_icons_top.wc_s[63]);
            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Anode  Pulse period (Generated by stim ctrl) = %4d , WA       (User-defined) = %4d", 63,test_anode[63]/33,tb_w_icons_top.wc_s[63]);
                tb_stim_err;
            end
            test_anode[63] <= 0;
        end


    end

    //gap
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (EnN[63] == 1'b1) begin
            test_gap[63]      <= 0;
            test_gap_chk [63] <= 1'b1;
        end else if ( (EnN[63] == 1'b0) && (EnP[63] == 1'b0) && (test_gap_chk [63]) ) begin
            test_gap[63] <= test_gap[63] + 1'b1;
        end else if ((EnP[63] == 1'b1) && (test_gap_chk [63])) begin

            if ((test_gap[63]/33) == tb_w_icons_top.gap_s[63]) begin
                $display("[Analog Macro Montoring] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 63,test_gap[63]/33,tb_w_icons_top.gap_s[63]);
                tb_stim_check;

            end else begin
                $display("[Err                   ] - Channel[%2d] ->  Gap period          (Generated by stim ctrl) = %4d , GAP      (User-defined) = %4d", 63,test_gap[63]/33,tb_w_icons_top.gap_s[63]);
                tb_stim_err;
            end
            test_gap[63]      <= 0;
            test_gap_chk [63] <= 0;

        end
    end

    //interval
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if (test_interval_en[63] && (test_num[63] < tb_w_icons_top.num_s[63]) ) begin
            if (test_num[63] < tb_w_icons_top.interval_s[63]) begin
                if (EnP[63] == 1'b1) begin
                    test_interval[63]      <= 0;
                    test_interval_chk [63] <= 1'b1;
                end else if ( (EnP[63] == 1'b0) && (EnN[63] == 1'b0) && (test_interval_chk[63]) ) begin
                    test_interval[63] <= test_interval[63] + 1'b1;
                end else if ((EnN[63] == 1'b1) && (test_interval_chk[63])) begin

                    if ((test_interval[63]/33) == tb_w_icons_top.interval_s[63]) begin
                        $display("[Analog Macro Montoring] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 63,test_interval[63]/33,tb_w_icons_top.interval_s[63]);
                        tb_stim_check;

                    end else begin
                        $display("[Err                   ] - Channel[%2d] ->  Interval period     (Generated by stim ctrl) = %4d , Interval (User-defined) = %4d", 63,test_interval[63]/33,tb_w_icons_top.interval_s[63]);
                        tb_stim_err;
                    end
                    test_interval[63]      <= 0;
                    test_interval_chk [63] <= 0;

                end
            end
        end
    end

    //num
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[63] == 1'b1) && (test_num[63] < tb_w_icons_top.num_s[63]) && (test_num_chk[63] == 1'b0)) begin
            test_num[63]         <= test_num[63] + 1'b1;
            test_num_chk[63]     <= 1'b1;
            test_interval_en[63] <= 1'b1;

        end else if ((EnP[63] == 1'b1) && (test_num[63] < tb_w_icons_top.num_s[63]) && (test_num_chk[63] == 1'b1)) begin
            test_num_chk[63]     <= 1'b0;


        end else if ( ((EnN[63] == 1'b0) && (EnP[63] == 1'b0) && (test_num[63] == tb_w_icons_top.num_s[63])) ) begin
            test_num[63]         <= 0;
            test_num_chk[63]     <= 1'b0;
            test_interval_en[63] <= 1'b0;
        end
    end

    //ia and ic
    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        if ((EnN[63] == 1'b1) || (EnP[63] == 1'b1)) begin
            if ( (Bn64 == tb_w_icons_top.ic_s[63]) && (Bp64 == tb_w_icons_top.ic_s[63]) ) begin
                tb_stim_check;
            end else begin
                $display("[Err                   ] - Channel[%2d] ->   Bn = %4d , Bp = %4d , User-defined Amplitude = %4d", 63,Bn64,Bp64,tb_w_icons_top.ic_s[63]);
                tb_stim_err;
            end
        end
    end


    //check the limiting current status

    always @(posedge (tb_w_icons_top.CLK_REF_S) ) begin
        //ones_am[63] <= count_ones({tb_w_icons_top.stim_mask_g2,tb_w_icons_top.stim_mask_g1});

        if (FDA == 1) begin
            // to avoid the intermediate unwanted results
            #6000000;
            if ( (ones_ch > 7) && (ones_ch < 12) && (FDA == 1) ) begin
                tb_stim_check;
            end else if (FDA == 1) begin
                $display("[Err -> Limiting Current for channel [%2d] ]",63 );
                tb_stim_err;
            end
        end
    end



    // synthesis translate_on
    
endmodule
