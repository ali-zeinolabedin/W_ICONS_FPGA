/*
 * Module: w_icons_mgmt
 * Author: Ali Zeinolabedin
 * Date  : 
 */
`timescale 1ns/1ps
module common_clkbuf (
    I,
    Z
);

    input  I;
    output Z;

    //to be replaced with clk buffer from the STD library
   
    assign Z = I;

endmodule