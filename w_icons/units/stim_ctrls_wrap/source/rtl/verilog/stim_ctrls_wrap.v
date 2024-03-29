/* icglue keep begin head */
/*
 * Module      : stim_ctrls_wrap
 * Author      : Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module stim_ctrls_wrap (
    reset_n_i,
    stim_xen_sync_i,
    stim_monophasic_i,
    stim_mask0_g1_i,
    stim_mask0_g2_i,
    stim_mask1_g1_i,
    stim_mask1_g2_i,
    stim_mask2_g1_i,
    stim_mask2_g2_i,
    stim_mask3_g1_i,
    stim_mask3_g2_i,
    stim_mask4_g1_i,
    stim_mask4_g2_i,
    stim_mask5_g1_i,
    stim_mask5_g2_i,
    stim_mask6_g1_i,
    stim_mask6_g2_i,
    stim_mask7_g1_i,
    stim_mask7_g2_i,
    stim0_interval_i,
    stim0_pulse_wc_i,
    stim0_pulse_gap_i,
    stim0_pulse_wa_i,
    stim0_pulse_num_i,
    stim0_pol_i,
    stim1_interval_i,
    stim1_pulse_wc_i,
    stim1_pulse_gap_i,
    stim1_pulse_wa_i,
    stim1_pulse_num_i,
    stim1_pol_i,
    stim2_interval_i,
    stim2_pulse_wc_i,
    stim2_pulse_gap_i,
    stim2_pulse_wa_i,
    stim2_pulse_num_i,
    stim2_pol_i,
    stim3_interval_i,
    stim3_pulse_wc_i,
    stim3_pulse_gap_i,
    stim3_pulse_wa_i,
    stim3_pulse_num_i,
    stim3_pol_i,
    err_stim_o,
    stim_mask_en0_g_i,
    stim_mask_en1_g_i,
    stim_mask_en2_g_i,
    stim_mask_en3_g_i,
    stim_mask_en4_g_i,
    stim_mask_en5_g_i,
    stim_mask_en6_g_i,
    stim_mask_en7_g_i,
    clk_stim_i,
    stim_en_vec_o,
    EnN_vec_o,
    EnP_vec_o,
    imp_en_g1_sync_o,
    imp_en_g2_sync_o,
    limiting_current_o
);
    /* icglue keep begin parameters *//* icglue keep end */

    input         reset_n_i;
    input         stim_xen_sync_i;
    input         stim_monophasic_i;
    input  [31:0] stim_mask0_g1_i;
    input  [31:0] stim_mask0_g2_i;
    input  [31:0] stim_mask1_g1_i;
    input  [31:0] stim_mask1_g2_i;
    input  [31:0] stim_mask2_g1_i;
    input  [31:0] stim_mask2_g2_i;
    input  [31:0] stim_mask3_g1_i;
    input  [31:0] stim_mask3_g2_i;
    input  [31:0] stim_mask4_g1_i;
    input  [31:0] stim_mask4_g2_i;
    input  [31:0] stim_mask5_g1_i;
    input  [31:0] stim_mask5_g2_i;
    input  [31:0] stim_mask6_g1_i;
    input  [31:0] stim_mask6_g2_i;
    input  [31:0] stim_mask7_g1_i;
    input  [31:0] stim_mask7_g2_i;
    input  [15:0] stim0_interval_i;
    input  [13:0] stim0_pulse_wc_i;
    input  [13:0] stim0_pulse_gap_i;
    input  [13:0] stim0_pulse_wa_i;
    input  [11:0] stim0_pulse_num_i;
    input         stim0_pol_i;
    input  [15:0] stim1_interval_i;
    input  [13:0] stim1_pulse_wc_i;
    input  [13:0] stim1_pulse_gap_i;
    input  [13:0] stim1_pulse_wa_i;
    input  [11:0] stim1_pulse_num_i;
    input         stim1_pol_i;
    input  [15:0] stim2_interval_i;
    input  [13:0] stim2_pulse_wc_i;
    input  [13:0] stim2_pulse_gap_i;
    input  [13:0] stim2_pulse_wa_i;
    input  [11:0] stim2_pulse_num_i;
    input         stim2_pol_i;
    input  [15:0] stim3_interval_i;
    input  [13:0] stim3_pulse_wc_i;
    input  [13:0] stim3_pulse_gap_i;
    input  [13:0] stim3_pulse_wa_i;
    input  [11:0] stim3_pulse_num_i;
    input         stim3_pol_i;
    output        err_stim_o;
    input         stim_mask_en0_g_i;
    input         stim_mask_en1_g_i;
    input         stim_mask_en2_g_i;
    input         stim_mask_en3_g_i;
    input         stim_mask_en4_g_i;
    input         stim_mask_en5_g_i;
    input         stim_mask_en6_g_i;
    input         stim_mask_en7_g_i;
    input         clk_stim_i;
    output [63:0] stim_en_vec_o;
    output  [3:0] EnN_vec_o;
    output  [3:0] EnP_vec_o;
    output [31:0] imp_en_g1_sync_o;
    output [31:0] imp_en_g2_sync_o;
    output        limiting_current_o;

    wire [7:0] mask_en_8bit_s;
    wire       mask_en_status0_s;
    wire       mask_en_status1_s;
    wire       mask_en_status2_s;
    wire       mask_en_status3_s;
    wire       mask_en_status4_s;
    wire       mask_en_status5_s;
    wire       mask_en_status6_s;
    wire       mask_en_status7_s;
    wire       anode_en0_s;
    wire       cathode_en0_s;
    wire       stim_cntrl_en0_s;
    wire       anode_en1_s;
    wire       cathode_en1_s;
    wire       stim_cntrl_en1_s;
    wire       anode_en2_s;
    wire       cathode_en2_s;
    wire       stim_cntrl_en2_s;
    wire       anode_en3_s;
    wire       cathode_en3_s;
    wire       stim_cntrl_en3_s;
    /* icglue keep begin declarations */
    
    wire [63:0] mask0_cat,mask1_cat,mask2_cat,mask3_cat,mask4_cat,mask5_cat,mask6_cat,mask7_cat;
    reg  [6:0]  mask0_ones,mask1_ones,mask2_ones,mask3_ones,mask4_ones,mask5_ones,mask6_ones,mask7_ones;
    integer  i0,i1,i2,i3,i4,i5,i6,i7;
    reg         mask0_cmp,mask1_cmp,mask2_cmp,mask3_cmp,mask4_cmp,mask5_cmp,mask6_cmp,mask7_cmp;
    reg         mask0_err,mask1_err,mask2_err,mask3_err,mask4_err,mask5_err,mask6_err,mask7_err;
    wire [7:0]  mask_saftey;
    wire        limiting_current_o; 
    reg         err_stim_o;
    reg  [63:0] stim_width_chk;
    
    assign      mask_saftey        = {mask7_err,mask6_err,mask5_err,mask4_err,mask3_err,mask2_err,mask1_err,mask0_err};
    assign      limiting_current_o = mask0_cmp | mask1_cmp | mask2_cmp | mask3_cmp | mask4_cmp | mask5_cmp | mask6_cmp | mask7_cmp ;


    always @(posedge clk_stim_i or negedge reset_n_i) begin
        if (reset_n_i == 1'b0) begin
            err_stim_o <= 1'b0;

        end else begin
            if ((|mask_saftey == 1'b1) || (|stim_width_chk == 1'b1)) begin
                //raise an error on GPIO
                err_stim_o <= 1'b1;
            end else begin
                //it is clear when new clean parameters are set
                err_stim_o <= 1'b0;
            end
        end
    end

    /* icglue keep end */


    stim_ctrl i_stim_ctrl_ch0 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim0_interval_i),
        .pulse_wc_i      (stim0_pulse_wc_i),
        .pulse_gap_i     (stim0_pulse_gap_i),
        .pulse_wa_i      (stim0_pulse_wa_i),
        .pulse_num_i     (stim0_pulse_num_i),
        .pol_i           (stim0_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en0_s),
        .cathode_en_o    (cathode_en0_s),
        .stim_en_i       (stim_cntrl_en0_s)
    );

    stim_ctrl i_stim_ctrl_ch1 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim1_interval_i),
        .pulse_wc_i      (stim1_pulse_wc_i),
        .pulse_gap_i     (stim1_pulse_gap_i),
        .pulse_wa_i      (stim1_pulse_wa_i),
        .pulse_num_i     (stim1_pulse_num_i),
        .pol_i           (stim1_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en1_s),
        .cathode_en_o    (cathode_en1_s),
        .stim_en_i       (stim_cntrl_en1_s)
    );

    stim_ctrl i_stim_ctrl_ch2 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim2_interval_i),
        .pulse_wc_i      (stim2_pulse_wc_i),
        .pulse_gap_i     (stim2_pulse_gap_i),
        .pulse_wa_i      (stim2_pulse_wa_i),
        .pulse_num_i     (stim2_pulse_num_i),
        .pol_i           (stim2_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en2_s),
        .cathode_en_o    (cathode_en2_s),
        .stim_en_i       (stim_cntrl_en2_s)
    );

    stim_ctrl i_stim_ctrl_ch3 (
        .reset_n_i       (reset_n_i),
        .monophasic_en_i (stim_monophasic_i),
        .interval_i      (stim3_interval_i),
        .pulse_wc_i      (stim3_pulse_wc_i),
        .pulse_gap_i     (stim3_pulse_gap_i),
        .pulse_wa_i      (stim3_pulse_wa_i),
        .pulse_num_i     (stim3_pulse_num_i),
        .pol_i           (stim3_pol_i),
        .clk_i           (clk_stim_i),
        .anode_en_o      (anode_en3_s),
        .cathode_en_o    (cathode_en3_s),
        .stim_en_i       (stim_cntrl_en3_s)
    );


    assign mask_en_8bit_s= {stim_mask_en7_g_i,stim_mask_en6_g_i,stim_mask_en5_g_i,stim_mask_en4_g_i,stim_mask_en3_g_i,stim_mask_en2_g_i,stim_mask_en1_g_i,stim_mask_en0_g_i};
    assign mask_en_status0_s = mask_en_8bit_s[0];
    assign mask_en_status1_s = (~mask_en_8bit_s[0]) & (mask_en_8bit_s[1]);
    assign mask_en_status2_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (mask_en_8bit_s[2]);
    assign mask_en_status3_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (mask_en_8bit_s[3]);
    assign mask_en_status4_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (~mask_en_8bit_s[3]) & (mask_en_8bit_s[4]);
    assign mask_en_status5_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (~mask_en_8bit_s[3]) & (~mask_en_8bit_s[4]) & (mask_en_8bit_s[5]);
    assign mask_en_status6_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (~mask_en_8bit_s[3]) & (~mask_en_8bit_s[4]) & (~mask_en_8bit_s[5]) & (mask_en_8bit_s[6]);
    assign mask_en_status7_s = (~mask_en_8bit_s[0]) & (~mask_en_8bit_s[1]) & (~mask_en_8bit_s[2]) & (~mask_en_8bit_s[3]) & (~mask_en_8bit_s[4]) & (~mask_en_8bit_s[5]) & (~mask_en_8bit_s[6]) & (mask_en_8bit_s[7]);


    assign  stim_cntrl_en0_s = (stim_mask0_g1_i[0] | stim_mask1_g1_i[0] | stim_mask2_g1_i[0] | stim_mask3_g1_i[0] | stim_mask4_g1_i[0] | stim_mask5_g1_i[0] | stim_mask6_g1_i[0] | stim_mask7_g1_i[0]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en1_s = (stim_mask0_g1_i[1] | stim_mask1_g1_i[1] | stim_mask2_g1_i[1] | stim_mask3_g1_i[1] | stim_mask4_g1_i[1] | stim_mask5_g1_i[1] | stim_mask6_g1_i[1] | stim_mask7_g1_i[1]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en2_s = (stim_mask0_g1_i[2] | stim_mask1_g1_i[2] | stim_mask2_g1_i[2] | stim_mask3_g1_i[2] | stim_mask4_g1_i[2] | stim_mask5_g1_i[2] | stim_mask6_g1_i[2] | stim_mask7_g1_i[2]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_cntrl_en3_s = (stim_mask0_g1_i[3] | stim_mask1_g1_i[3] | stim_mask2_g1_i[3] | stim_mask3_g1_i[3] | stim_mask4_g1_i[3] | stim_mask5_g1_i[3] | stim_mask6_g1_i[3] | stim_mask7_g1_i[3]) & (mask_en_status0_s | mask_en_status1_s | mask_en_status2_s | mask_en_status3_s | mask_en_status4_s | mask_en_status5_s | mask_en_status6_s | mask_en_status7_s) & stim_xen_sync_i & (~err_stim_o);
    assign  stim_en_vec_o={stim_cntrl_en3_s, stim_cntrl_en2_s, stim_cntrl_en1_s, stim_cntrl_en0_s};
    assign  EnN_vec_o={cathode_en3_s, cathode_en2_s, cathode_en1_s, cathode_en0_s};
    assign  EnP_vec_o={anode_en3_s, anode_en2_s, anode_en1_s, anode_en0_s};
    assign  imp_en_g1_sync_o={stim_cntrl_en3_s,stim_cntrl_en2_s,stim_cntrl_en1_s,stim_cntrl_en0_s};
    assign  imp_en_g2_sync_o={32'b0};

    assign mask0_cat = {stim_mask0_g2_i,stim_mask0_g1_i};
    always @(mask0_cat) begin
        mask0_ones = 0;
        mask0_cmp  = 0;
        mask0_err  = 0;
        for (i0=0;i0<=63;i0=i0+1) begin
            if (mask0_cat[i0] == 1'b1) begin
                mask0_ones = mask0_ones + 1;
            end
        end
        if ((mask0_ones>7'd7) && (mask0_ones<7'd12) )begin
            mask0_cmp = 1;
        end else if (mask0_ones >= 7'd12) begin
            mask0_err = 1;
            mask0_cmp = 0;
        end else begin
            mask0_cmp  = 0;
        end
    end


    assign mask1_cat = {stim_mask1_g2_i,stim_mask1_g1_i};
    always @(mask1_cat) begin
        mask1_ones = 0;
        mask1_cmp  = 0;
        mask1_err  = 0;
        for (i1=0;i1<=63;i1=i1+1) begin
            if (mask1_cat[i1] == 1'b1) begin
                mask1_ones = mask1_ones + 1;
            end
        end
        if ((mask1_ones>7'd7) && (mask1_ones<7'd12) )begin
            mask1_cmp = 1;
        end else if (mask1_ones >= 7'd12) begin
            mask1_err = 1;
            mask1_cmp = 0;
        end else begin
            mask1_cmp  = 0;
        end
    end


    assign mask2_cat = {stim_mask2_g2_i,stim_mask2_g1_i};
    always @(mask2_cat) begin
        mask2_ones = 0;
        mask2_cmp  = 0;
        mask2_err  = 0;
        for (i2=0;i2<=63;i2=i2+1) begin
            if (mask2_cat[i2] == 1'b1) begin
                mask2_ones = mask2_ones + 1;
            end
        end
        if ((mask2_ones>7'd7) && (mask2_ones<7'd12) )begin
            mask2_cmp = 1;
        end else if (mask2_ones >= 7'd12) begin
            mask2_err = 1;
            mask2_cmp = 0;
        end else begin
            mask2_cmp  = 0;
        end
    end


    assign mask3_cat = {stim_mask3_g2_i,stim_mask3_g1_i};
    always @(mask3_cat) begin
        mask3_ones = 0;
        mask3_cmp  = 0;
        mask3_err  = 0;
        for (i3=0;i3<=63;i3=i3+1) begin
            if (mask3_cat[i3] == 1'b1) begin
                mask3_ones = mask3_ones + 1;
            end
        end
        if ((mask3_ones>7'd7) && (mask3_ones<7'd12) )begin
            mask3_cmp = 1;
        end else if (mask3_ones >= 7'd12) begin
            mask3_err = 1;
            mask3_cmp = 0;
        end else begin
            mask3_cmp  = 0;
        end
    end


    assign mask4_cat = {stim_mask4_g2_i,stim_mask4_g1_i};
    always @(mask4_cat) begin
        mask4_ones = 0;
        mask4_cmp  = 0;
        mask4_err  = 0;
        for (i4=0;i4<=63;i4=i4+1) begin
            if (mask4_cat[i4] == 1'b1) begin
                mask4_ones = mask4_ones + 1;
            end
        end
        if ((mask4_ones>7'd7) && (mask4_ones<7'd12) )begin
            mask4_cmp = 1;
        end else if (mask4_ones >= 7'd12) begin
            mask4_err = 1;
            mask4_cmp = 0;
        end else begin
            mask4_cmp  = 0;
        end
    end


    assign mask5_cat = {stim_mask5_g2_i,stim_mask5_g1_i};
    always @(mask5_cat) begin
        mask5_ones = 0;
        mask5_cmp  = 0;
        mask5_err  = 0;
        for (i5=0;i5<=63;i5=i5+1) begin
            if (mask5_cat[i5] == 1'b1) begin
                mask5_ones = mask5_ones + 1;
            end
        end
        if ((mask5_ones>7'd7) && (mask5_ones<7'd12) )begin
            mask5_cmp = 1;
        end else if (mask5_ones >= 7'd12) begin
            mask5_err = 1;
            mask5_cmp = 0;
        end else begin
            mask5_cmp  = 0;
        end
    end


    assign mask6_cat = {stim_mask6_g2_i,stim_mask6_g1_i};
    always @(mask6_cat) begin
        mask6_ones = 0;
        mask6_cmp  = 0;
        mask6_err  = 0;
        for (i6=0;i6<=63;i6=i6+1) begin
            if (mask6_cat[i6] == 1'b1) begin
                mask6_ones = mask6_ones + 1;
            end
        end
        if ((mask6_ones>7'd7) && (mask6_ones<7'd12) )begin
            mask6_cmp = 1;
        end else if (mask6_ones >= 7'd12) begin
            mask6_err = 1;
            mask6_cmp = 0;
        end else begin
            mask6_cmp  = 0;
        end
    end


    assign mask7_cat = {stim_mask7_g2_i,stim_mask7_g1_i};
    always @(mask7_cat) begin
        mask7_ones = 0;
        mask7_cmp  = 0;
        mask7_err  = 0;
        for (i7=0;i7<=63;i7=i7+1) begin
            if (mask7_cat[i7] == 1'b1) begin
                mask7_ones = mask7_ones + 1;
            end
        end
        if ((mask7_ones>7'd7) && (mask7_ones<7'd12) )begin
            mask7_cmp = 1;
        end else if (mask7_ones >= 7'd12) begin
            mask7_err = 1;
            mask7_cmp = 0;
        end else begin
            mask7_cmp  = 0;
        end
    end


    always @(*) begin
        stim_width_chk[0] = 0;
        if ((stim0_pulse_wc_i>14'd200) || (stim0_pulse_wa_i>14'd200)) begin
            stim_width_chk[0] = 1;
        end else  begin
            stim_width_chk[0] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[1] = 0;
        if ((stim1_pulse_wc_i>14'd200) || (stim1_pulse_wa_i>14'd200)) begin
            stim_width_chk[1] = 1;
        end else  begin
            stim_width_chk[1] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[2] = 0;
        if ((stim2_pulse_wc_i>14'd200) || (stim2_pulse_wa_i>14'd200)) begin
            stim_width_chk[2] = 1;
        end else  begin
            stim_width_chk[2] = 0;
        end
    end


    always @(*) begin
        stim_width_chk[3] = 0;
        if ((stim3_pulse_wc_i>14'd200) || (stim3_pulse_wa_i>14'd200)) begin
            stim_width_chk[3] = 1;
        end else  begin
            stim_width_chk[3] = 0;
        end
    end

endmodule
