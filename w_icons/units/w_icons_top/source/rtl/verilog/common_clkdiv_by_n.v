/*
 * Module      : tb_w_icons_top
 * Author      :  Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
`timescale 1ns/1ps

module common_clkdiv_by_n (
    clk_i,
    reset_n_i,
    clk_div_o,
    div_val_n_i,
    enable_i
);

    parameter DIV_VAL_N_W = 12;
    /* icglue keep begin parameters *//* icglue keep end */

    input                    clk_i;
    input                    reset_n_i;
    output                   clk_div_o;
    input  [DIV_VAL_N_W-1:0] div_val_n_i;
    input                    enable_i;
    /* icglue keep begin declarations */
    wire                     clkdiv;
    reg                     clkdiv_p;
    reg                     clkdiv_n;

    reg    [DIV_VAL_N_W-1:0] count;
    wire   [DIV_VAL_N_W-1:0] next_count;
    wire   [DIV_VAL_N_W-1:0] div_val_minus_1;
    wire                     clk_n;
    reg                      set_clk;
    reg                      reset_clk;
    

    assign div_val_minus_1 = div_val_n_i - 1;
    assign next_count      = set_clk ? 'b0 : count + 1;
    assign clk_n           = clk_i;


    always@(posedge clk_i or negedge reset_n_i) begin
        if (reset_n_i == 1'b0) begin
            count     <= 'd0;
            set_clk   <= 1'd0;
            reset_clk <= 1'd0;
        end else if (enable_i) begin
            count <= next_count;

            /* posedge at end of period (last counter value) */
            if (next_count == div_val_minus_1) begin
                set_clk <= 1'd1;
            end else begin
                set_clk <= 1'd0;
            end

            /* negedge at half period (half of last counter value) */
            if (next_count == {1'b0,div_val_minus_1[DIV_VAL_N_W-1:1]}) begin
                reset_clk <= 1'd1;
            end else begin
                reset_clk <= 1'd0;
            end
        end
    end


    reg clkdiv_p_next;
    reg clkdiv_n_next;

    always @(clkdiv_p or clkdiv_n or set_clk or reset_clk or div_val_n_i) begin
        clkdiv_p_next = clkdiv_p;
        clkdiv_n_next = clkdiv_n;

        if (set_clk) begin
            clkdiv_p_next = 1'b1;
            clkdiv_n_next = 1'b1;
        end else if (reset_clk) begin
            clkdiv_p_next = 1'b0;
            clkdiv_n_next = ~div_val_n_i[0];
        end
    end

    //TBD: this to be replaced by clk_ff cell
    always@(posedge clk_i or negedge reset_n_i) begin
        if (reset_n_i == 1'b0) begin
            clkdiv_p <= 1'b0;
        end else begin
            clkdiv_p <= clkdiv_p_next;
        end
    end 

    //TBD: this to be replaced by clk_ff cell
    always@(posedge clk_n or negedge reset_n_i) begin
        if (reset_n_i == 1'b0) begin
            clkdiv_n <= 1'b0;
        end else begin
            clkdiv_n <= clkdiv_n_next;
        end
    end    


    // TBD: this part to be replaced by clk_and cell
    assign clkdiv    = clkdiv_p & clkdiv_n; 
    
    // TBD: this part to be replaced by clk_mux cell
    assign clk_div_o = (div_val_n_i == 'd1)? clk_i : clkdiv;



    /* icglue keep end */
endmodule
