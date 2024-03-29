/*
 * Module      : tb_w_icons_top
 * Author      :  Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
`timescale 1ns/1ps
module common_clkgate (
    CP,
    EN,
    CPEN
);

   input  CP;
   input  EN;

   output CPEN;

   reg    CKL;

   wire   INT_E;

  assign INT_E = EN;
  

    always @(CP or INT_E) begin
        if ( CP == 1'b0 ) begin
            CKL = INT_E;
        end
    end

   assign CPEN = CKL & CP;

endmodule 