/*
 * Module: w_icons_mgmt
 * Author: Ali Zeinolabedin
 * Date  : 
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