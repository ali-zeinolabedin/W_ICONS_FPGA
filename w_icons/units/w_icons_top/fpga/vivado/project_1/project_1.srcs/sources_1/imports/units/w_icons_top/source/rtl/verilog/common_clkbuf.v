/*
 * Module      : tb_w_icons_top
 * Author      :  Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
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