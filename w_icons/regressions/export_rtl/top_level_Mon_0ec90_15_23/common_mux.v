/*
 * Module: w_icons_mgmt
 * Author: Ali Zeinolabedin
 * Date  : 
 */
`timescale 1ns/1ps
module common_mux (
    I0,
    I1,
    SEL,
    Z
);
    parameter  IN_W   = 8;
    input  [IN_W-1:0] I0;
    input  [IN_W-1:0] I1;
    input SEL;
    output [IN_W-1:0] Z;

    assign Z = (SEL == 1'b1) ? I1 : I0 ;

endmodule