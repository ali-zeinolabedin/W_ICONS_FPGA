/*
 * Module: w_icons_mgmt
 * Author: Ali Zeinolabedin
 * Date  : 
 */
`timescale 1ns/1ps

module common_reset_sync (
    clk_i,
    reset_q_i,
    sync_reset_q_o,
    scan_mode_i 
);

    input   clk_i;
    input   reset_q_i;
    output  sync_reset_q_o;
    input   scan_mode_i;

    wire   reset_release_sync;
    wire   reset_release_in;
    assign reset_release_in = 1'b1;
 
    //???????? ---------------------
    //can be replaced with dual_ff if there is available in STDCELL library
    reg    data_sync0;
    reg    data_sync1;

    always @(posedge clk_i or negedge reset_q_i) begin
        if (reset_q_i == 1'b0) begin
            data_sync0 <= 1'b0;
            data_sync1 <= 1'b0;
        end else begin
            // allow synchronization of reset signals
            // lint_checking RSTDAT off
            data_sync0 <= reset_release_in;
            // lint_checking RSTDAT on
            data_sync1 <= data_sync0;
        end
    end
    assign reset_release_sync = data_sync1;
    //?????? ------------------------

   // ignore combinational logic in reset path in HAL
   // lint_checking GLTASR off
   assign sync_reset_q_o = (scan_mode_i) ? reset_q_i : reset_release_sync;
   // lint_checking GLTASR on

endmodule
