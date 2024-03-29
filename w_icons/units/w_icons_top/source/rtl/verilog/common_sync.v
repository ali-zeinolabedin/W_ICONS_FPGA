/*
 * Module      : tb_w_icons_top
 * Author      :  Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
`timescale 1ns/1ps
module common_sync (
    clk_i,
    reset_n_i,
    data_i,
    data_o
);

    input  clk_i;
    input  reset_n_i;

    input  data_i;
    output data_o;

    //???????? ---------------------
    //can be replaced with dual_ff if there is available in STDCELL library
    reg    data_sync0;
    reg    data_sync1;

    assign data_o = data_sync1;
    always @(posedge clk_i or negedge reset_n_i) begin
        if (reset_n_i == 1'b0) begin
            data_sync0 <= 1'b0;
            data_sync1 <= 1'b0;
        end else begin
            // allow synchronization of reset signals
            // lint_checking RSTDAT off
            data_sync0 <= data_i;
            // lint_checking RSTDAT on
            data_sync1 <= data_sync0;
        end
    end

endmodule