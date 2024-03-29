// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Jan 11 15:54:57 2024
// Host        : smaz-brn running 64-bit Linux Mint 21.2
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/smaz-brn/project/ASIC-W-ICONS-FPGA/Cadence/w_icons/units/w_icons_top/fpga/vivado/project_1/project_1.sim/sim_1/synth/timing/xsim/tb_w_icons_top_time_synth.v
// Design      : w_icons_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module common_clkdiv_by_n
   (CLK_REC_O_OBUF,
    CLK_REF_I_IBUF_BUFG,
    clkdiv_n_reg_0);
  output CLK_REC_O_OBUF;
  input CLK_REF_I_IBUF_BUFG;
  input clkdiv_n_reg_0;

  wire CLK_REC_O_OBUF;
  wire CLK_REF_I_IBUF_BUFG;
  wire clkdiv_n_next;
  wire clkdiv_n_reg_0;
  wire [11:0]count;
  wire \count[0]_i_1_n_0 ;
  wire [11:1]next_count;
  wire next_count0_carry__0_n_0;
  wire next_count0_carry__0_n_1;
  wire next_count0_carry__0_n_2;
  wire next_count0_carry__0_n_3;
  wire next_count0_carry__0_n_4;
  wire next_count0_carry__0_n_5;
  wire next_count0_carry__0_n_6;
  wire next_count0_carry__0_n_7;
  wire next_count0_carry__1_n_2;
  wire next_count0_carry__1_n_3;
  wire next_count0_carry__1_n_5;
  wire next_count0_carry__1_n_6;
  wire next_count0_carry__1_n_7;
  wire next_count0_carry_n_0;
  wire next_count0_carry_n_1;
  wire next_count0_carry_n_2;
  wire next_count0_carry_n_3;
  wire next_count0_carry_n_4;
  wire next_count0_carry_n_5;
  wire next_count0_carry_n_6;
  wire next_count0_carry_n_7;
  wire reset_clk;
  wire reset_clk0;
  wire reset_clk0_carry_i_1_n_0;
  wire reset_clk0_carry_i_2_n_0;
  wire reset_clk0_carry_i_3_n_0;
  wire reset_clk0_carry_i_4_n_0;
  wire reset_clk0_carry_n_1;
  wire reset_clk0_carry_n_2;
  wire reset_clk0_carry_n_3;
  wire set_clk;
  wire set_clk0;
  wire set_clk0_carry_i_1_n_0;
  wire set_clk0_carry_i_2_n_0;
  wire set_clk0_carry_i_3_n_0;
  wire set_clk0_carry_i_4_n_0;
  wire set_clk0_carry_n_1;
  wire set_clk0_carry_n_2;
  wire set_clk0_carry_n_3;
  wire [3:2]NLW_next_count0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_next_count0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_reset_clk0_carry_O_UNCONNECTED;
  wire [3:0]NLW_set_clk0_carry_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    clkdiv_n_i_1
       (.I0(set_clk),
        .I1(reset_clk),
        .O(clkdiv_n_next));
  FDCE #(
    .INIT(1'b0)) 
    clkdiv_n_reg
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(clkdiv_n_next),
        .CLR(clkdiv_n_reg_0),
        .D(set_clk),
        .Q(CLK_REC_O_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(set_clk),
        .I1(count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[10]_i_1 
       (.I0(next_count0_carry__1_n_6),
        .I1(set_clk),
        .O(next_count[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[11]_i_1 
       (.I0(next_count0_carry__1_n_5),
        .I1(set_clk),
        .O(next_count[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[1]_i_1 
       (.I0(next_count0_carry_n_7),
        .I1(set_clk),
        .O(next_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[2]_i_1 
       (.I0(next_count0_carry_n_6),
        .I1(set_clk),
        .O(next_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[3]_i_1 
       (.I0(next_count0_carry_n_5),
        .I1(set_clk),
        .O(next_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_1 
       (.I0(next_count0_carry_n_4),
        .I1(set_clk),
        .O(next_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[5]_i_1 
       (.I0(next_count0_carry__0_n_7),
        .I1(set_clk),
        .O(next_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[6]_i_1 
       (.I0(next_count0_carry__0_n_6),
        .I1(set_clk),
        .O(next_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_1 
       (.I0(next_count0_carry__0_n_5),
        .I1(set_clk),
        .O(next_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_1 
       (.I0(next_count0_carry__0_n_4),
        .I1(set_clk),
        .O(next_count[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[9]_i_1 
       (.I0(next_count0_carry__1_n_7),
        .I1(set_clk),
        .O(next_count[9]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[10]),
        .Q(count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[11]),
        .Q(count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[1]),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[2]),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[3]),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[4]),
        .Q(count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[5]),
        .Q(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[6]),
        .Q(count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[7]),
        .Q(count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[8]),
        .Q(count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(next_count[9]),
        .Q(count[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_count0_carry
       (.CI(1'b0),
        .CO({next_count0_carry_n_0,next_count0_carry_n_1,next_count0_carry_n_2,next_count0_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_count0_carry_n_4,next_count0_carry_n_5,next_count0_carry_n_6,next_count0_carry_n_7}),
        .S(count[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_count0_carry__0
       (.CI(next_count0_carry_n_0),
        .CO({next_count0_carry__0_n_0,next_count0_carry__0_n_1,next_count0_carry__0_n_2,next_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_count0_carry__0_n_4,next_count0_carry__0_n_5,next_count0_carry__0_n_6,next_count0_carry__0_n_7}),
        .S(count[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_count0_carry__1
       (.CI(next_count0_carry__0_n_0),
        .CO({NLW_next_count0_carry__1_CO_UNCONNECTED[3:2],next_count0_carry__1_n_2,next_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_next_count0_carry__1_O_UNCONNECTED[3],next_count0_carry__1_n_5,next_count0_carry__1_n_6,next_count0_carry__1_n_7}),
        .S({1'b0,count[11:9]}));
  CARRY4 reset_clk0_carry
       (.CI(1'b0),
        .CO({reset_clk0,reset_clk0_carry_n_1,reset_clk0_carry_n_2,reset_clk0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_reset_clk0_carry_O_UNCONNECTED[3:0]),
        .S({reset_clk0_carry_i_1_n_0,reset_clk0_carry_i_2_n_0,reset_clk0_carry_i_3_n_0,reset_clk0_carry_i_4_n_0}));
  LUT4 #(
    .INIT(16'hF0F1)) 
    reset_clk0_carry_i_1
       (.I0(next_count0_carry__1_n_5),
        .I1(next_count0_carry__1_n_6),
        .I2(set_clk),
        .I3(next_count0_carry__1_n_7),
        .O(reset_clk0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hF0F1)) 
    reset_clk0_carry_i_2
       (.I0(next_count0_carry__0_n_4),
        .I1(next_count0_carry__0_n_5),
        .I2(set_clk),
        .I3(next_count0_carry__0_n_6),
        .O(reset_clk0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hF0F1)) 
    reset_clk0_carry_i_3
       (.I0(next_count0_carry__0_n_7),
        .I1(next_count0_carry_n_4),
        .I2(set_clk),
        .I3(next_count0_carry_n_5),
        .O(reset_clk0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    reset_clk0_carry_i_4
       (.I0(count[0]),
        .I1(next_count0_carry_n_6),
        .I2(set_clk),
        .I3(next_count0_carry_n_7),
        .O(reset_clk0_carry_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    reset_clk_reg
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(reset_clk0),
        .Q(reset_clk));
  CARRY4 set_clk0_carry
       (.CI(1'b0),
        .CO({set_clk0,set_clk0_carry_n_1,set_clk0_carry_n_2,set_clk0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_set_clk0_carry_O_UNCONNECTED[3:0]),
        .S({set_clk0_carry_i_1_n_0,set_clk0_carry_i_2_n_0,set_clk0_carry_i_3_n_0,set_clk0_carry_i_4_n_0}));
  LUT4 #(
    .INIT(16'hF0F1)) 
    set_clk0_carry_i_1
       (.I0(next_count0_carry__1_n_5),
        .I1(next_count0_carry__1_n_6),
        .I2(set_clk),
        .I3(next_count0_carry__1_n_7),
        .O(set_clk0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hF0F1)) 
    set_clk0_carry_i_2
       (.I0(next_count0_carry__0_n_4),
        .I1(next_count0_carry__0_n_5),
        .I2(set_clk),
        .I3(next_count0_carry__0_n_6),
        .O(set_clk0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hF0F1)) 
    set_clk0_carry_i_3
       (.I0(next_count0_carry__0_n_7),
        .I1(next_count0_carry_n_4),
        .I2(set_clk),
        .I3(next_count0_carry_n_5),
        .O(set_clk0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    set_clk0_carry_i_4
       (.I0(next_count0_carry_n_6),
        .I1(next_count0_carry_n_7),
        .I2(count[0]),
        .I3(set_clk),
        .O(set_clk0_carry_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    set_clk_reg
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(clkdiv_n_reg_0),
        .D(set_clk0),
        .Q(set_clk));
endmodule

module common_reset_sync
   (data_sync1_reg_0,
    CLK_REF_I_IBUF_BUFG,
    data_sync1_reg_1);
  output data_sync1_reg_0;
  input CLK_REF_I_IBUF_BUFG;
  input data_sync1_reg_1;

  wire CLK_REF_I_IBUF_BUFG;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire data_sync0;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire data_sync1;
  wire data_sync1_reg_0;
  wire data_sync1_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    \count[11]_i_2 
       (.I0(data_sync1),
        .O(data_sync1_reg_0));
  initial assign data_sync0_reg.notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    data_sync0_reg
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(data_sync1_reg_1),
        .D(1'b1),
        .Q(data_sync0));
  initial assign data_sync1_reg.notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    data_sync1_reg
       (.C(CLK_REF_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(data_sync1_reg_1),
        .D(data_sync0),
        .Q(data_sync1));
endmodule

(* ORIG_REF_NAME = "common_reset_sync" *) 
module common_reset_sync_0
   (out,
    RESET_N_I,
    SPI_CLK_I_IBUF_BUFG,
    RESET_N_I_IBUF);
  output out;
  output RESET_N_I;
  input SPI_CLK_I_IBUF_BUFG;
  input RESET_N_I_IBUF;

  wire RESET_N_I;
  wire RESET_N_I_IBUF;
  wire SPI_CLK_I_IBUF_BUFG;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire data_sync0;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) wire data_sync1;

  assign out = data_sync1;
  LUT1 #(
    .INIT(2'h1)) 
    data_sync0_i_1
       (.I0(RESET_N_I_IBUF),
        .O(RESET_N_I));
  initial assign data_sync0_reg.notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    data_sync0_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RESET_N_I),
        .D(1'b1),
        .Q(data_sync0));
  initial assign data_sync1_reg.notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    data_sync1_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RESET_N_I),
        .D(data_sync0),
        .Q(data_sync1));
endmodule

module spi_custom_logic
   (tx_ready_s,
    \spi_rx_word_reg[11] ,
    E,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_onehot_apb_state_reg[0]_0 ,
    \FSM_sequential_state_reg[3]_1 ,
    \spi_rx_word_reg[9] ,
    \spi_rx_word_reg[5] ,
    \spi_rx_word_reg[11]_0 ,
    \spi_rx_word_reg[11]_1 ,
    \spi_rx_word_reg[5]_0 ,
    \spi_rx_word_reg[11]_2 ,
    \spi_rx_word_reg[6] ,
    \spi_rx_word_reg[14] ,
    \spi_rx_word_reg[5]_1 ,
    \spi_rx_word_reg[5]_2 ,
    \spi_rx_word_reg[5]_3 ,
    \spi_rx_word_reg[10] ,
    \spi_rx_word_reg[5]_4 ,
    \spi_rx_word_reg[5]_5 ,
    \spi_rx_word_reg[11]_3 ,
    \FSM_sequential_state_reg[2]_0 ,
    \spi_rx_word_reg[11]_4 ,
    \spi_rx_word_reg[11]_5 ,
    \spi_rx_word_reg[11]_6 ,
    \spi_rx_word_reg[11]_7 ,
    \spi_rx_word_reg[11]_8 ,
    \spi_rx_word_reg[11]_9 ,
    \spi_rx_word_reg[11]_10 ,
    \spi_rx_word_reg[11]_11 ,
    \spi_rx_word_reg[11]_12 ,
    \spi_rx_word_reg[9]_0 ,
    \spi_rx_word_reg[10]_0 ,
    \spi_rx_word_reg[9]_1 ,
    \spi_rx_word_reg[11]_13 ,
    \FSM_sequential_state_reg[2]_1 ,
    \spi_rx_word_reg[11]_14 ,
    \spi_rx_word_reg[11]_15 ,
    \FSM_sequential_state_reg[2]_2 ,
    \spi_rx_word_reg[10]_1 ,
    \spi_rx_word_reg[13] ,
    \spi_rx_word_reg[9]_2 ,
    D,
    \FSM_onehot_apb_state_reg[1]_0 ,
    apb_state_reg,
    \FSM_sequential_state_reg[0]_0 ,
    \FSM_sequential_state_reg[3]_2 ,
    \spi_tx_word_o_reg[24]_0 ,
    \spi_tx_word_o_reg[31]_0 ,
    \spi_tx_word_o_reg[30]_0 ,
    \spi_tx_word_o_reg[29]_0 ,
    \spi_tx_word_o_reg[28]_0 ,
    \spi_tx_word_o_reg[27]_0 ,
    \spi_tx_word_o_reg[26]_0 ,
    \spi_tx_word_o_reg[25]_0 ,
    \spi_tx_word_o_reg[23]_0 ,
    \spi_tx_word_o_reg[22]_0 ,
    \spi_tx_word_o_reg[21]_0 ,
    \spi_tx_word_o_reg[20]_0 ,
    \spi_tx_word_o_reg[19]_0 ,
    \spi_tx_word_o_reg[18]_0 ,
    \spi_tx_word_o_reg[17]_0 ,
    \spi_tx_word_o_reg[15]_0 ,
    \spi_tx_word_o_reg[14]_0 ,
    \spi_tx_word_o_reg[13]_0 ,
    \spi_tx_word_o_reg[12]_0 ,
    \spi_tx_word_o_reg[11]_0 ,
    \spi_tx_word_o_reg[10]_0 ,
    \spi_tx_word_o_reg[9]_0 ,
    apb_wdata_s,
    SPI_CLK_I_IBUF_BUFG,
    Q,
    \apb_wdata_reg[3]_0 ,
    \spi_tx_word_o_reg[13]_1 ,
    \spi_tx_word_o_reg[0]_i_2_0 ,
    \spi_tx_word_o_reg[1]_i_2_0 ,
    \spi_tx_word_o_reg[2]_i_2_0 ,
    \spi_tx_word_o_reg[3]_i_2_0 ,
    \spi_tx_word_o_reg[4]_i_2_0 ,
    \spi_tx_word_o_reg[5]_i_2_0 ,
    \spi_tx_word_o_reg[6]_i_2_0 ,
    \spi_tx_word_o_reg[7]_i_3_0 ,
    \spi_tx_word_o_reg[27]_1 ,
    \spi_tx_word_o_reg[16]_0 ,
    \spi_tx_word_o_reg[24]_1 ,
    tx_done_s,
    \spi_tx_word_o_reg[14]_1 ,
    \spi_tx_word_o_reg[14]_2 ,
    \spi_tx_word_o_reg[15]_1 ,
    \reg_stim_mask2_p1_stim_mask2_g1_reg[0] ,
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ,
    \reg_stim_mask2_p2_stim_mask2_g2_reg[0] ,
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ,
    \spi_tx_word_o_reg[8]_0 ,
    \spi_tx_word_o_reg[8]_1 ,
    \spi_tx_word_o_reg[9]_1 ,
    \spi_tx_word_o_reg[9]_2 ,
    \spi_tx_word_o_reg[10]_1 ,
    \spi_tx_word_o_reg[10]_2 ,
    \spi_tx_word_o_reg[11]_1 ,
    \spi_tx_word_o_reg[11]_2 ,
    \spi_tx_word_o_reg[12]_1 ,
    \spi_tx_word_o_reg[12]_2 ,
    \spi_tx_word_o_reg[13]_2 ,
    \spi_tx_word_o_reg[13]_3 ,
    \spi_tx_word_o_reg[17]_1 ,
    \spi_tx_word_o_reg[17]_2 ,
    \spi_tx_word_o_reg[18]_1 ,
    \spi_tx_word_o_reg[18]_2 ,
    \spi_tx_word_o_reg[19]_1 ,
    \spi_tx_word_o_reg[19]_2 ,
    \spi_tx_word_o_reg[20]_1 ,
    \spi_tx_word_o_reg[20]_2 ,
    \spi_tx_word_o_reg[21]_1 ,
    \spi_tx_word_o_reg[21]_2 ,
    \spi_tx_word_o_reg[22]_1 ,
    \spi_tx_word_o_reg[22]_2 ,
    \spi_tx_word_o_reg[23]_1 ,
    \spi_tx_word_o_reg[23]_2 ,
    \spi_tx_word_o_reg[25]_1 ,
    \spi_tx_word_o_reg[25]_2 ,
    \spi_tx_word_o_reg[26]_1 ,
    \spi_tx_word_o_reg[26]_2 ,
    \spi_tx_word_o_reg[27]_2 ,
    \spi_tx_word_o_reg[27]_3 ,
    \spi_tx_word_o_reg[28]_1 ,
    \spi_tx_word_o_reg[29]_1 ,
    \spi_tx_word_o_reg[30]_1 ,
    \spi_tx_word_o_reg[30]_2 ,
    \spi_tx_word_o_reg[31]_1 ,
    \spi_tx_word_o_reg[31]_2 ,
    \spi_tx_word_o_reg[0]_0 ,
    \spi_tx_word_o_reg[1]_0 ,
    \spi_tx_word_o_reg[2]_0 ,
    \spi_tx_word_o_reg[3]_0 ,
    \spi_tx_word_o_reg[4]_0 ,
    \spi_tx_word_o_reg[5]_0 ,
    \spi_tx_word_o_reg[6]_0 ,
    \spi_tx_word_o_reg[7]_0 ,
    \spi_tx_word_o[8]_i_2_0 ,
    \spi_tx_word_o_reg[9]_3 ,
    \spi_tx_word_o_reg[10]_3 ,
    \spi_tx_word_o_reg[11]_3 ,
    \spi_tx_word_o_reg[12]_3 ,
    \spi_tx_word_o_reg[13]_4 ,
    \spi_tx_word_o_reg[17]_3 ,
    \spi_tx_word_o_reg[18]_3 ,
    \spi_tx_word_o_reg[19]_3 ,
    \spi_tx_word_o_reg[20]_3 ,
    \spi_tx_word_o_reg[21]_3 ,
    \spi_tx_word_o_reg[22]_3 ,
    \spi_tx_word_o_reg[23]_3 ,
    \spi_tx_word_o_reg[25]_3 ,
    \spi_tx_word_o_reg[26]_3 ,
    \spi_tx_word_o_reg[27]_4 ,
    \spi_tx_word_o_reg[29]_2 ,
    \spi_tx_word_o_reg[29]_3 ,
    \spi_tx_word_o_reg[29]_4 ,
    \spi_tx_word_o_reg[7]_1 ,
    \spi_tx_word_o_reg[16]_1 ,
    \spi_tx_word_o_reg[24]_2 ,
    \spi_tx_word_1d_reg[8] ,
    \FSM_sequential_state_reg[0]_1 ,
    \FSM_sequential_state_reg[2]_3 ,
    \FSM_sequential_state_reg[3]_3 ,
    \FSM_sequential_state_reg[3]_4 ,
    \apb_wdata_reg[9]_0 ,
    \apb_wdata_reg[8]_0 ,
    SPI_MISO_O_TRI,
    \FSM_sequential_state_reg[1]_0 );
  output tx_ready_s;
  output [4:0]\spi_rx_word_reg[11] ;
  output [0:0]E;
  output \FSM_sequential_state_reg[3]_0 ;
  output \FSM_onehot_apb_state_reg[0]_0 ;
  output [3:0]\FSM_sequential_state_reg[3]_1 ;
  output [0:0]\spi_rx_word_reg[9] ;
  output [0:0]\spi_rx_word_reg[5] ;
  output [0:0]\spi_rx_word_reg[11]_0 ;
  output [0:0]\spi_rx_word_reg[11]_1 ;
  output [0:0]\spi_rx_word_reg[5]_0 ;
  output [0:0]\spi_rx_word_reg[11]_2 ;
  output [0:0]\spi_rx_word_reg[6] ;
  output \spi_rx_word_reg[14] ;
  output [0:0]\spi_rx_word_reg[5]_1 ;
  output [0:0]\spi_rx_word_reg[5]_2 ;
  output [0:0]\spi_rx_word_reg[5]_3 ;
  output [0:0]\spi_rx_word_reg[10] ;
  output [0:0]\spi_rx_word_reg[5]_4 ;
  output [0:0]\spi_rx_word_reg[5]_5 ;
  output [0:0]\spi_rx_word_reg[11]_3 ;
  output [0:0]\FSM_sequential_state_reg[2]_0 ;
  output [0:0]\spi_rx_word_reg[11]_4 ;
  output [0:0]\spi_rx_word_reg[11]_5 ;
  output [0:0]\spi_rx_word_reg[11]_6 ;
  output [0:0]\spi_rx_word_reg[11]_7 ;
  output [0:0]\spi_rx_word_reg[11]_8 ;
  output [0:0]\spi_rx_word_reg[11]_9 ;
  output [0:0]\spi_rx_word_reg[11]_10 ;
  output [0:0]\spi_rx_word_reg[11]_11 ;
  output [0:0]\spi_rx_word_reg[11]_12 ;
  output [0:0]\spi_rx_word_reg[9]_0 ;
  output [0:0]\spi_rx_word_reg[10]_0 ;
  output [0:0]\spi_rx_word_reg[9]_1 ;
  output [0:0]\spi_rx_word_reg[11]_13 ;
  output [0:0]\FSM_sequential_state_reg[2]_1 ;
  output [0:0]\spi_rx_word_reg[11]_14 ;
  output [0:0]\spi_rx_word_reg[11]_15 ;
  output [0:0]\FSM_sequential_state_reg[2]_2 ;
  output [0:0]\spi_rx_word_reg[10]_1 ;
  output [0:0]\spi_rx_word_reg[13] ;
  output [0:0]\spi_rx_word_reg[9]_2 ;
  output [0:0]D;
  output \FSM_onehot_apb_state_reg[1]_0 ;
  output [0:0]apb_state_reg;
  output \FSM_sequential_state_reg[0]_0 ;
  output \FSM_sequential_state_reg[3]_2 ;
  output [9:0]\spi_tx_word_o_reg[24]_0 ;
  output \spi_tx_word_o_reg[31]_0 ;
  output \spi_tx_word_o_reg[30]_0 ;
  output \spi_tx_word_o_reg[29]_0 ;
  output \spi_tx_word_o_reg[28]_0 ;
  output \spi_tx_word_o_reg[27]_0 ;
  output \spi_tx_word_o_reg[26]_0 ;
  output \spi_tx_word_o_reg[25]_0 ;
  output \spi_tx_word_o_reg[23]_0 ;
  output \spi_tx_word_o_reg[22]_0 ;
  output \spi_tx_word_o_reg[21]_0 ;
  output \spi_tx_word_o_reg[20]_0 ;
  output \spi_tx_word_o_reg[19]_0 ;
  output \spi_tx_word_o_reg[18]_0 ;
  output \spi_tx_word_o_reg[17]_0 ;
  output \spi_tx_word_o_reg[15]_0 ;
  output \spi_tx_word_o_reg[14]_0 ;
  output \spi_tx_word_o_reg[13]_0 ;
  output \spi_tx_word_o_reg[12]_0 ;
  output \spi_tx_word_o_reg[11]_0 ;
  output \spi_tx_word_o_reg[10]_0 ;
  output \spi_tx_word_o_reg[9]_0 ;
  output [31:0]apb_wdata_s;
  input SPI_CLK_I_IBUF_BUFG;
  input [1:0]Q;
  input [40:0]\apb_wdata_reg[3]_0 ;
  input [13:0]\spi_tx_word_o_reg[13]_1 ;
  input \spi_tx_word_o_reg[0]_i_2_0 ;
  input \spi_tx_word_o_reg[1]_i_2_0 ;
  input \spi_tx_word_o_reg[2]_i_2_0 ;
  input \spi_tx_word_o_reg[3]_i_2_0 ;
  input \spi_tx_word_o_reg[4]_i_2_0 ;
  input \spi_tx_word_o_reg[5]_i_2_0 ;
  input \spi_tx_word_o_reg[6]_i_2_0 ;
  input \spi_tx_word_o_reg[7]_i_3_0 ;
  input [11:0]\spi_tx_word_o_reg[27]_1 ;
  input \spi_tx_word_o_reg[16]_0 ;
  input \spi_tx_word_o_reg[24]_1 ;
  input tx_done_s;
  input \spi_tx_word_o_reg[14]_1 ;
  input \spi_tx_word_o_reg[14]_2 ;
  input \spi_tx_word_o_reg[15]_1 ;
  input \reg_stim_mask2_p1_stim_mask2_g1_reg[0] ;
  input \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ;
  input \reg_stim_mask2_p2_stim_mask2_g2_reg[0] ;
  input \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ;
  input \spi_tx_word_o_reg[8]_0 ;
  input \spi_tx_word_o_reg[8]_1 ;
  input \spi_tx_word_o_reg[9]_1 ;
  input \spi_tx_word_o_reg[9]_2 ;
  input \spi_tx_word_o_reg[10]_1 ;
  input \spi_tx_word_o_reg[10]_2 ;
  input \spi_tx_word_o_reg[11]_1 ;
  input \spi_tx_word_o_reg[11]_2 ;
  input \spi_tx_word_o_reg[12]_1 ;
  input \spi_tx_word_o_reg[12]_2 ;
  input \spi_tx_word_o_reg[13]_2 ;
  input \spi_tx_word_o_reg[13]_3 ;
  input \spi_tx_word_o_reg[17]_1 ;
  input \spi_tx_word_o_reg[17]_2 ;
  input \spi_tx_word_o_reg[18]_1 ;
  input \spi_tx_word_o_reg[18]_2 ;
  input \spi_tx_word_o_reg[19]_1 ;
  input \spi_tx_word_o_reg[19]_2 ;
  input \spi_tx_word_o_reg[20]_1 ;
  input \spi_tx_word_o_reg[20]_2 ;
  input \spi_tx_word_o_reg[21]_1 ;
  input \spi_tx_word_o_reg[21]_2 ;
  input \spi_tx_word_o_reg[22]_1 ;
  input \spi_tx_word_o_reg[22]_2 ;
  input \spi_tx_word_o_reg[23]_1 ;
  input \spi_tx_word_o_reg[23]_2 ;
  input \spi_tx_word_o_reg[25]_1 ;
  input \spi_tx_word_o_reg[25]_2 ;
  input \spi_tx_word_o_reg[26]_1 ;
  input \spi_tx_word_o_reg[26]_2 ;
  input \spi_tx_word_o_reg[27]_2 ;
  input \spi_tx_word_o_reg[27]_3 ;
  input \spi_tx_word_o_reg[28]_1 ;
  input \spi_tx_word_o_reg[29]_1 ;
  input \spi_tx_word_o_reg[30]_1 ;
  input \spi_tx_word_o_reg[30]_2 ;
  input \spi_tx_word_o_reg[31]_1 ;
  input \spi_tx_word_o_reg[31]_2 ;
  input \spi_tx_word_o_reg[0]_0 ;
  input \spi_tx_word_o_reg[1]_0 ;
  input \spi_tx_word_o_reg[2]_0 ;
  input \spi_tx_word_o_reg[3]_0 ;
  input \spi_tx_word_o_reg[4]_0 ;
  input \spi_tx_word_o_reg[5]_0 ;
  input \spi_tx_word_o_reg[6]_0 ;
  input \spi_tx_word_o_reg[7]_0 ;
  input \spi_tx_word_o[8]_i_2_0 ;
  input \spi_tx_word_o_reg[9]_3 ;
  input \spi_tx_word_o_reg[10]_3 ;
  input \spi_tx_word_o_reg[11]_3 ;
  input \spi_tx_word_o_reg[12]_3 ;
  input \spi_tx_word_o_reg[13]_4 ;
  input \spi_tx_word_o_reg[17]_3 ;
  input \spi_tx_word_o_reg[18]_3 ;
  input \spi_tx_word_o_reg[19]_3 ;
  input \spi_tx_word_o_reg[20]_3 ;
  input \spi_tx_word_o_reg[21]_3 ;
  input \spi_tx_word_o_reg[22]_3 ;
  input \spi_tx_word_o_reg[23]_3 ;
  input \spi_tx_word_o_reg[25]_3 ;
  input \spi_tx_word_o_reg[26]_3 ;
  input \spi_tx_word_o_reg[27]_4 ;
  input [1:0]\spi_tx_word_o_reg[29]_2 ;
  input [1:0]\spi_tx_word_o_reg[29]_3 ;
  input [1:0]\spi_tx_word_o_reg[29]_4 ;
  input [7:0]\spi_tx_word_o_reg[7]_1 ;
  input \spi_tx_word_o_reg[16]_1 ;
  input \spi_tx_word_o_reg[24]_2 ;
  input \spi_tx_word_1d_reg[8] ;
  input \FSM_sequential_state_reg[0]_1 ;
  input \FSM_sequential_state_reg[2]_3 ;
  input \FSM_sequential_state_reg[3]_3 ;
  input \FSM_sequential_state_reg[3]_4 ;
  input \apb_wdata_reg[9]_0 ;
  input \apb_wdata_reg[8]_0 ;
  input SPI_MISO_O_TRI;
  input [0:0]\FSM_sequential_state_reg[1]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_apb_state[0]_i_1_n_0 ;
  wire \FSM_onehot_apb_state[1]_i_1_n_0 ;
  wire \FSM_onehot_apb_state_reg[0]_0 ;
  wire \FSM_onehot_apb_state_reg[1]_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire [0:0]\FSM_sequential_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2]_1 ;
  wire [0:0]\FSM_sequential_state_reg[2]_2 ;
  wire \FSM_sequential_state_reg[2]_3 ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire [3:0]\FSM_sequential_state_reg[3]_1 ;
  wire \FSM_sequential_state_reg[3]_2 ;
  wire \FSM_sequential_state_reg[3]_3 ;
  wire \FSM_sequential_state_reg[3]_4 ;
  wire [1:0]Q;
  wire SPI_CLK_I_IBUF_BUFG;
  wire SPI_MISO_O_TRI;
  wire [8:7]apb_addr_s;
  wire apb_enable_s;
  wire [31:8]apb_rdata_s;
  wire [0:0]apb_state;
  wire [0:0]apb_state_reg;
  wire apb_wdata;
  wire [8:0]apb_wdata0_in;
  wire \apb_wdata[31]_i_1_n_0 ;
  wire \apb_wdata[8]_i_4_n_0 ;
  wire [40:0]\apb_wdata_reg[3]_0 ;
  wire \apb_wdata_reg[8]_0 ;
  wire \apb_wdata_reg[9]_0 ;
  wire [31:0]apb_wdata_s;
  wire [24:0]p_1_in;
  wire \reg_chip_error_status1_chip_error_load[31]_i_2_n_0 ;
  wire \reg_chip_error_status2_chip_error_cmd[3]_i_2_n_0 ;
  wire \reg_stim_ch0_p0_stim0_ia_mux[7]_i_3_n_0 ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_2_n_0 ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_5_n_0 ;
  wire \reg_stim_ch3_p0_stim3_ia_mux[7]_i_2_n_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13]_i_2_n_0 ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg[0] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg[0] ;
  wire [0:0]\spi_rx_word_reg[10] ;
  wire [0:0]\spi_rx_word_reg[10]_0 ;
  wire [0:0]\spi_rx_word_reg[10]_1 ;
  wire [4:0]\spi_rx_word_reg[11] ;
  wire [0:0]\spi_rx_word_reg[11]_0 ;
  wire [0:0]\spi_rx_word_reg[11]_1 ;
  wire [0:0]\spi_rx_word_reg[11]_10 ;
  wire [0:0]\spi_rx_word_reg[11]_11 ;
  wire [0:0]\spi_rx_word_reg[11]_12 ;
  wire [0:0]\spi_rx_word_reg[11]_13 ;
  wire [0:0]\spi_rx_word_reg[11]_14 ;
  wire [0:0]\spi_rx_word_reg[11]_15 ;
  wire [0:0]\spi_rx_word_reg[11]_2 ;
  wire [0:0]\spi_rx_word_reg[11]_3 ;
  wire [0:0]\spi_rx_word_reg[11]_4 ;
  wire [0:0]\spi_rx_word_reg[11]_5 ;
  wire [0:0]\spi_rx_word_reg[11]_6 ;
  wire [0:0]\spi_rx_word_reg[11]_7 ;
  wire [0:0]\spi_rx_word_reg[11]_8 ;
  wire [0:0]\spi_rx_word_reg[11]_9 ;
  wire [0:0]\spi_rx_word_reg[13] ;
  wire \spi_rx_word_reg[14] ;
  wire [0:0]\spi_rx_word_reg[5] ;
  wire [0:0]\spi_rx_word_reg[5]_0 ;
  wire [0:0]\spi_rx_word_reg[5]_1 ;
  wire [0:0]\spi_rx_word_reg[5]_2 ;
  wire [0:0]\spi_rx_word_reg[5]_3 ;
  wire [0:0]\spi_rx_word_reg[5]_4 ;
  wire [0:0]\spi_rx_word_reg[5]_5 ;
  wire [0:0]\spi_rx_word_reg[6] ;
  wire [0:0]\spi_rx_word_reg[9] ;
  wire [0:0]\spi_rx_word_reg[9]_0 ;
  wire [0:0]\spi_rx_word_reg[9]_1 ;
  wire [0:0]\spi_rx_word_reg[9]_2 ;
  wire \spi_tx_word_1d_reg[8] ;
  wire spi_tx_word_o10_out;
  wire \spi_tx_word_o[0]_i_4_n_0 ;
  wire \spi_tx_word_o[10]_i_4_n_0 ;
  wire \spi_tx_word_o[11]_i_4_n_0 ;
  wire \spi_tx_word_o[12]_i_4_n_0 ;
  wire \spi_tx_word_o[13]_i_4_n_0 ;
  wire \spi_tx_word_o[14]_i_3_n_0 ;
  wire \spi_tx_word_o[15]_i_3_n_0 ;
  wire \spi_tx_word_o[16]_i_3_n_0 ;
  wire \spi_tx_word_o[17]_i_4_n_0 ;
  wire \spi_tx_word_o[18]_i_4_n_0 ;
  wire \spi_tx_word_o[19]_i_4_n_0 ;
  wire \spi_tx_word_o[1]_i_4_n_0 ;
  wire \spi_tx_word_o[20]_i_4_n_0 ;
  wire \spi_tx_word_o[21]_i_4_n_0 ;
  wire \spi_tx_word_o[22]_i_4_n_0 ;
  wire \spi_tx_word_o[23]_i_4_n_0 ;
  wire \spi_tx_word_o[24]_i_12_n_0 ;
  wire \spi_tx_word_o[24]_i_13_n_0 ;
  wire \spi_tx_word_o[24]_i_1_n_0 ;
  wire \spi_tx_word_o[24]_i_4_n_0 ;
  wire \spi_tx_word_o[24]_i_7_n_0 ;
  wire \spi_tx_word_o[25]_i_4_n_0 ;
  wire \spi_tx_word_o[26]_i_4_n_0 ;
  wire \spi_tx_word_o[27]_i_4_n_0 ;
  wire \spi_tx_word_o[28]_i_3_n_0 ;
  wire \spi_tx_word_o[29]_i_3_n_0 ;
  wire \spi_tx_word_o[2]_i_4_n_0 ;
  wire \spi_tx_word_o[31]_i_1_n_0 ;
  wire \spi_tx_word_o[3]_i_4_n_0 ;
  wire \spi_tx_word_o[4]_i_4_n_0 ;
  wire \spi_tx_word_o[5]_i_4_n_0 ;
  wire \spi_tx_word_o[6]_i_4_n_0 ;
  wire \spi_tx_word_o[7]_i_2_n_0 ;
  wire \spi_tx_word_o[7]_i_5_n_0 ;
  wire \spi_tx_word_o[8]_i_2_0 ;
  wire \spi_tx_word_o[8]_i_5_n_0 ;
  wire \spi_tx_word_o[9]_i_4_n_0 ;
  wire \spi_tx_word_o_reg[0]_0 ;
  wire \spi_tx_word_o_reg[0]_i_2_0 ;
  wire \spi_tx_word_o_reg[0]_i_2_n_0 ;
  wire \spi_tx_word_o_reg[10]_0 ;
  wire \spi_tx_word_o_reg[10]_1 ;
  wire \spi_tx_word_o_reg[10]_2 ;
  wire \spi_tx_word_o_reg[10]_3 ;
  wire \spi_tx_word_o_reg[11]_0 ;
  wire \spi_tx_word_o_reg[11]_1 ;
  wire \spi_tx_word_o_reg[11]_2 ;
  wire \spi_tx_word_o_reg[11]_3 ;
  wire \spi_tx_word_o_reg[12]_0 ;
  wire \spi_tx_word_o_reg[12]_1 ;
  wire \spi_tx_word_o_reg[12]_2 ;
  wire \spi_tx_word_o_reg[12]_3 ;
  wire \spi_tx_word_o_reg[13]_0 ;
  wire [13:0]\spi_tx_word_o_reg[13]_1 ;
  wire \spi_tx_word_o_reg[13]_2 ;
  wire \spi_tx_word_o_reg[13]_3 ;
  wire \spi_tx_word_o_reg[13]_4 ;
  wire \spi_tx_word_o_reg[14]_0 ;
  wire \spi_tx_word_o_reg[14]_1 ;
  wire \spi_tx_word_o_reg[14]_2 ;
  wire \spi_tx_word_o_reg[15]_0 ;
  wire \spi_tx_word_o_reg[15]_1 ;
  wire \spi_tx_word_o_reg[16]_0 ;
  wire \spi_tx_word_o_reg[16]_1 ;
  wire \spi_tx_word_o_reg[17]_0 ;
  wire \spi_tx_word_o_reg[17]_1 ;
  wire \spi_tx_word_o_reg[17]_2 ;
  wire \spi_tx_word_o_reg[17]_3 ;
  wire \spi_tx_word_o_reg[18]_0 ;
  wire \spi_tx_word_o_reg[18]_1 ;
  wire \spi_tx_word_o_reg[18]_2 ;
  wire \spi_tx_word_o_reg[18]_3 ;
  wire \spi_tx_word_o_reg[19]_0 ;
  wire \spi_tx_word_o_reg[19]_1 ;
  wire \spi_tx_word_o_reg[19]_2 ;
  wire \spi_tx_word_o_reg[19]_3 ;
  wire \spi_tx_word_o_reg[1]_0 ;
  wire \spi_tx_word_o_reg[1]_i_2_0 ;
  wire \spi_tx_word_o_reg[1]_i_2_n_0 ;
  wire \spi_tx_word_o_reg[20]_0 ;
  wire \spi_tx_word_o_reg[20]_1 ;
  wire \spi_tx_word_o_reg[20]_2 ;
  wire \spi_tx_word_o_reg[20]_3 ;
  wire \spi_tx_word_o_reg[21]_0 ;
  wire \spi_tx_word_o_reg[21]_1 ;
  wire \spi_tx_word_o_reg[21]_2 ;
  wire \spi_tx_word_o_reg[21]_3 ;
  wire \spi_tx_word_o_reg[22]_0 ;
  wire \spi_tx_word_o_reg[22]_1 ;
  wire \spi_tx_word_o_reg[22]_2 ;
  wire \spi_tx_word_o_reg[22]_3 ;
  wire \spi_tx_word_o_reg[23]_0 ;
  wire \spi_tx_word_o_reg[23]_1 ;
  wire \spi_tx_word_o_reg[23]_2 ;
  wire \spi_tx_word_o_reg[23]_3 ;
  wire [9:0]\spi_tx_word_o_reg[24]_0 ;
  wire \spi_tx_word_o_reg[24]_1 ;
  wire \spi_tx_word_o_reg[24]_2 ;
  wire \spi_tx_word_o_reg[25]_0 ;
  wire \spi_tx_word_o_reg[25]_1 ;
  wire \spi_tx_word_o_reg[25]_2 ;
  wire \spi_tx_word_o_reg[25]_3 ;
  wire \spi_tx_word_o_reg[26]_0 ;
  wire \spi_tx_word_o_reg[26]_1 ;
  wire \spi_tx_word_o_reg[26]_2 ;
  wire \spi_tx_word_o_reg[26]_3 ;
  wire \spi_tx_word_o_reg[27]_0 ;
  wire [11:0]\spi_tx_word_o_reg[27]_1 ;
  wire \spi_tx_word_o_reg[27]_2 ;
  wire \spi_tx_word_o_reg[27]_3 ;
  wire \spi_tx_word_o_reg[27]_4 ;
  wire \spi_tx_word_o_reg[28]_0 ;
  wire \spi_tx_word_o_reg[28]_1 ;
  wire \spi_tx_word_o_reg[29]_0 ;
  wire \spi_tx_word_o_reg[29]_1 ;
  wire [1:0]\spi_tx_word_o_reg[29]_2 ;
  wire [1:0]\spi_tx_word_o_reg[29]_3 ;
  wire [1:0]\spi_tx_word_o_reg[29]_4 ;
  wire \spi_tx_word_o_reg[2]_0 ;
  wire \spi_tx_word_o_reg[2]_i_2_0 ;
  wire \spi_tx_word_o_reg[2]_i_2_n_0 ;
  wire \spi_tx_word_o_reg[30]_0 ;
  wire \spi_tx_word_o_reg[30]_1 ;
  wire \spi_tx_word_o_reg[30]_2 ;
  wire \spi_tx_word_o_reg[31]_0 ;
  wire \spi_tx_word_o_reg[31]_1 ;
  wire \spi_tx_word_o_reg[31]_2 ;
  wire \spi_tx_word_o_reg[3]_0 ;
  wire \spi_tx_word_o_reg[3]_i_2_0 ;
  wire \spi_tx_word_o_reg[3]_i_2_n_0 ;
  wire \spi_tx_word_o_reg[4]_0 ;
  wire \spi_tx_word_o_reg[4]_i_2_0 ;
  wire \spi_tx_word_o_reg[4]_i_2_n_0 ;
  wire \spi_tx_word_o_reg[5]_0 ;
  wire \spi_tx_word_o_reg[5]_i_2_0 ;
  wire \spi_tx_word_o_reg[5]_i_2_n_0 ;
  wire \spi_tx_word_o_reg[6]_0 ;
  wire \spi_tx_word_o_reg[6]_i_2_0 ;
  wire \spi_tx_word_o_reg[6]_i_2_n_0 ;
  wire \spi_tx_word_o_reg[7]_0 ;
  wire [7:0]\spi_tx_word_o_reg[7]_1 ;
  wire \spi_tx_word_o_reg[7]_i_3_0 ;
  wire \spi_tx_word_o_reg[7]_i_3_n_0 ;
  wire \spi_tx_word_o_reg[8]_0 ;
  wire \spi_tx_word_o_reg[8]_1 ;
  wire \spi_tx_word_o_reg[9]_0 ;
  wire \spi_tx_word_o_reg[9]_1 ;
  wire \spi_tx_word_o_reg[9]_2 ;
  wire \spi_tx_word_o_reg[9]_3 ;
  wire \spi_tx_word_o_reg_n_0_[0] ;
  wire tx_done_s;
  wire tx_ready_o_i_1_n_0;
  wire tx_ready_s;

  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \FSM_onehot_apb_state[0]_i_1 
       (.I0(apb_enable_s),
        .I1(\FSM_sequential_state_reg[3]_0 ),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(apb_state),
        .I4(apb_state_reg),
        .O(\FSM_onehot_apb_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFF00FE00)) 
    \FSM_onehot_apb_state[1]_i_1 
       (.I0(apb_enable_s),
        .I1(\FSM_sequential_state_reg[3]_0 ),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(apb_state),
        .I4(apb_state_reg),
        .O(\FSM_onehot_apb_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_apb_state[1]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_1 [3]),
        .I1(\FSM_sequential_state_reg[3]_1 [1]),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .O(\FSM_sequential_state_reg[3]_0 ));
  (* FSM_ENCODED_STATES = "S_APB_IDLE:001,S_APB_SETUP:010,S_APB_ACCESS:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_apb_state_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_apb_state[0]_i_1_n_0 ),
        .PRE(SPI_MISO_O_TRI),
        .Q(apb_state));
  (* FSM_ENCODED_STATES = "S_APB_IDLE:001,S_APB_SETUP:010,S_APB_ACCESS:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_apb_state_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(\FSM_onehot_apb_state[1]_i_1_n_0 ),
        .Q(apb_enable_s));
  (* FSM_ENCODED_STATES = "S_APB_IDLE:001,S_APB_SETUP:010,S_APB_ACCESS:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_apb_state_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(apb_enable_s),
        .Q(apb_state_reg));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFEEEEC)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_1 [0]),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(\FSM_sequential_state_reg[3]_1 [2]),
        .I3(\FSM_sequential_state_reg[3]_1 [1]),
        .I4(\FSM_sequential_state_reg[3]_1 [3]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state_reg[3]_1 [0]),
        .I1(\FSM_sequential_state_reg[3]_1 [3]),
        .I2(\FSM_sequential_state_reg[3]_1 [1]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\FSM_sequential_state_reg[3]_1 [3]),
        .I1(\FSM_sequential_state_reg[3]_1 [1]),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .O(\FSM_sequential_state_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAAAFAAAEA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_3 ),
        .I1(\FSM_onehot_apb_state_reg[1]_0 ),
        .I2(\FSM_sequential_state_reg[3]_1 [2]),
        .I3(\FSM_sequential_state_reg[3]_1 [3]),
        .I4(\FSM_sequential_state_reg[3]_1 [1]),
        .I5(\FSM_sequential_state_reg[3]_1 [0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(apb_enable_s),
        .I1(apb_state_reg),
        .O(\FSM_onehot_apb_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFF2FFFFF22222222)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_3 ),
        .I1(\FSM_sequential_state_reg[3]_4 ),
        .I2(apb_state_reg),
        .I3(apb_enable_s),
        .I4(\FSM_sequential_state_reg[3]_1 [0]),
        .I5(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\FSM_sequential_state_reg[3]_1 [3]),
        .I1(\FSM_sequential_state_reg[3]_1 [2]),
        .I2(\FSM_sequential_state_reg[3]_1 [1]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "S_CMD_RD_DATA:0010,S_CMD_RD_ADD:0000,S_CMD_WR_DATA:0011,S_CMD_WR_ADD:0100,S_IDLE:0001,S_STIM_ST:0110,S_CHIP_ID:0101,S_CRC5_ERROR2:1001,S_CRC5_ERROR1:1000,S_CONFIG:0111" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .PRE(SPI_MISO_O_TRI),
        .Q(\FSM_sequential_state_reg[3]_1 [0]));
  (* FSM_ENCODED_STATES = "S_CMD_RD_DATA:0010,S_CMD_RD_ADD:0000,S_CMD_WR_DATA:0011,S_CMD_WR_ADD:0100,S_IDLE:0001,S_STIM_ST:0110,S_CHIP_ID:0101,S_CRC5_ERROR2:1001,S_CRC5_ERROR1:1000,S_CONFIG:0111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(\FSM_sequential_state_reg[1]_0 ),
        .Q(\FSM_sequential_state_reg[3]_1 [1]));
  (* FSM_ENCODED_STATES = "S_CMD_RD_DATA:0010,S_CMD_RD_ADD:0000,S_CMD_WR_DATA:0011,S_CMD_WR_ADD:0100,S_IDLE:0001,S_STIM_ST:0110,S_CHIP_ID:0101,S_CRC5_ERROR2:1001,S_CRC5_ERROR1:1000,S_CONFIG:0111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[3]_1 [2]));
  (* FSM_ENCODED_STATES = "S_CMD_RD_DATA:0010,S_CMD_RD_ADD:0000,S_CMD_WR_DATA:0011,S_CMD_WR_ADD:0100,S_IDLE:0001,S_STIM_ST:0110,S_CHIP_ID:0101,S_CRC5_ERROR2:1001,S_CRC5_ERROR1:1000,S_CONFIG:0111" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(\FSM_sequential_state[3]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[3]_1 [3]));
  LUT6 #(
    .INIT(64'h88F8F88888888888)) 
    \apb_wdata[0]_i_1 
       (.I0(\apb_wdata_reg[3]_0 [5]),
        .I1(\apb_wdata[8]_i_4_n_0 ),
        .I2(\apb_wdata_reg[3]_0 [37]),
        .I3(apb_state_reg),
        .I4(\FSM_sequential_state_reg[3]_1 [0]),
        .I5(\FSM_sequential_state_reg[3]_1 [3]),
        .O(apb_wdata0_in[0]));
  LUT6 #(
    .INIT(64'h88F8F88888888888)) 
    \apb_wdata[1]_i_1 
       (.I0(\apb_wdata_reg[3]_0 [6]),
        .I1(\apb_wdata[8]_i_4_n_0 ),
        .I2(\apb_wdata_reg[3]_0 [38]),
        .I3(apb_state_reg),
        .I4(\FSM_sequential_state_reg[3]_1 [0]),
        .I5(\FSM_sequential_state_reg[3]_1 [3]),
        .O(apb_wdata0_in[1]));
  LUT6 #(
    .INIT(64'h88F8F88888888888)) 
    \apb_wdata[2]_i_1 
       (.I0(\apb_wdata_reg[3]_0 [7]),
        .I1(\apb_wdata[8]_i_4_n_0 ),
        .I2(\apb_wdata_reg[3]_0 [39]),
        .I3(apb_state_reg),
        .I4(\FSM_sequential_state_reg[3]_1 [0]),
        .I5(\FSM_sequential_state_reg[3]_1 [3]),
        .O(apb_wdata0_in[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \apb_wdata[31]_i_1 
       (.I0(apb_wdata),
        .I1(\apb_wdata[8]_i_4_n_0 ),
        .O(\apb_wdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF280028002800)) 
    \apb_wdata[3]_i_1 
       (.I0(\apb_wdata_reg[3]_0 [40]),
        .I1(apb_state_reg),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(\FSM_sequential_state_reg[3]_1 [3]),
        .I4(\apb_wdata_reg[3]_0 [8]),
        .I5(\apb_wdata[8]_i_4_n_0 ),
        .O(apb_wdata0_in[3]));
  LUT6 #(
    .INIT(64'hFFFF280028002800)) 
    \apb_wdata[4]_i_1 
       (.I0(\apb_wdata_reg[3]_0 [0]),
        .I1(apb_state_reg),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(\FSM_sequential_state_reg[3]_1 [3]),
        .I4(\apb_wdata_reg[3]_0 [9]),
        .I5(\apb_wdata[8]_i_4_n_0 ),
        .O(apb_wdata0_in[4]));
  LUT6 #(
    .INIT(64'hFFFF280028002800)) 
    \apb_wdata[5]_i_1 
       (.I0(\apb_wdata_reg[3]_0 [1]),
        .I1(apb_state_reg),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(\FSM_sequential_state_reg[3]_1 [3]),
        .I4(\apb_wdata_reg[3]_0 [10]),
        .I5(\apb_wdata[8]_i_4_n_0 ),
        .O(apb_wdata0_in[5]));
  LUT6 #(
    .INIT(64'hFFFF280028002800)) 
    \apb_wdata[6]_i_1 
       (.I0(\apb_wdata_reg[3]_0 [2]),
        .I1(apb_state_reg),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(\FSM_sequential_state_reg[3]_1 [3]),
        .I4(\apb_wdata_reg[3]_0 [11]),
        .I5(\apb_wdata[8]_i_4_n_0 ),
        .O(apb_wdata0_in[6]));
  LUT6 #(
    .INIT(64'hFFFF280028002800)) 
    \apb_wdata[7]_i_1 
       (.I0(\apb_wdata_reg[3]_0 [3]),
        .I1(apb_state_reg),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(\FSM_sequential_state_reg[3]_1 [3]),
        .I4(\apb_wdata_reg[3]_0 [12]),
        .I5(\apb_wdata[8]_i_4_n_0 ),
        .O(apb_wdata0_in[7]));
  LUT6 #(
    .INIT(64'h30FFBA00FFFFBA00)) 
    \apb_wdata[8]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_1 [1]),
        .I1(\FSM_sequential_state_reg[3]_4 ),
        .I2(\apb_wdata_reg[9]_0 ),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_sequential_state_reg[3]_1 [3]),
        .I5(apb_state_reg),
        .O(apb_wdata));
  LUT6 #(
    .INIT(64'hFFFF280028002800)) 
    \apb_wdata[8]_i_2 
       (.I0(\apb_wdata_reg[3]_0 [4]),
        .I1(apb_state_reg),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(\FSM_sequential_state_reg[3]_1 [3]),
        .I4(\apb_wdata_reg[3]_0 [13]),
        .I5(\apb_wdata[8]_i_4_n_0 ),
        .O(apb_wdata0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \apb_wdata[8]_i_4 
       (.I0(\FSM_sequential_state_reg[3]_1 [2]),
        .I1(\FSM_sequential_state_reg[3]_1 [3]),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(\FSM_sequential_state_reg[3]_1 [1]),
        .I4(\apb_wdata_reg[8]_0 ),
        .O(\apb_wdata[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(apb_wdata0_in[0]),
        .Q(apb_wdata_s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [15]),
        .Q(apb_wdata_s[10]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [16]),
        .Q(apb_wdata_s[11]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [17]),
        .Q(apb_wdata_s[12]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [18]),
        .Q(apb_wdata_s[13]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [19]),
        .Q(apb_wdata_s[14]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [20]),
        .Q(apb_wdata_s[15]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [21]),
        .Q(apb_wdata_s[16]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [22]),
        .Q(apb_wdata_s[17]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [23]),
        .Q(apb_wdata_s[18]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [24]),
        .Q(apb_wdata_s[19]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(apb_wdata0_in[1]),
        .Q(apb_wdata_s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [25]),
        .Q(apb_wdata_s[20]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [26]),
        .Q(apb_wdata_s[21]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [27]),
        .Q(apb_wdata_s[22]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [28]),
        .Q(apb_wdata_s[23]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [29]),
        .Q(apb_wdata_s[24]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [30]),
        .Q(apb_wdata_s[25]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [31]),
        .Q(apb_wdata_s[26]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [32]),
        .Q(apb_wdata_s[27]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [33]),
        .Q(apb_wdata_s[28]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [34]),
        .Q(apb_wdata_s[29]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(apb_wdata0_in[2]),
        .Q(apb_wdata_s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [35]),
        .Q(apb_wdata_s[30]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [36]),
        .Q(apb_wdata_s[31]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(apb_wdata0_in[3]),
        .Q(apb_wdata_s[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(apb_wdata0_in[4]),
        .Q(apb_wdata_s[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(apb_wdata0_in[5]),
        .Q(apb_wdata_s[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(apb_wdata0_in[6]),
        .Q(apb_wdata_s[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(apb_wdata0_in[7]),
        .Q(apb_wdata_s[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(apb_wdata0_in[8]),
        .Q(apb_wdata_s[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \apb_wdata_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(apb_wdata),
        .D(\apb_wdata_reg[3]_0 [14]),
        .Q(apb_wdata_s[9]),
        .R(\apb_wdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \reg_adc_amp1_amp_gain_g1[31]_i_1 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg[0] ),
        .I1(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\spi_rx_word_reg[11] [2]),
        .I4(\spi_rx_word_reg[11] [1]),
        .O(\spi_rx_word_reg[11]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \reg_adc_amp2_amp_gain_g2[31]_i_1 
       (.I0(\reg_chip_error_status2_chip_error_cmd[3]_i_2_n_0 ),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [2]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \reg_chip_error_status1_chip_error_load[31]_i_1 
       (.I0(\reg_chip_error_status1_chip_error_load[31]_i_2_n_0 ),
        .I1(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .I2(\spi_rx_word_reg[11] [2]),
        .I3(\spi_rx_word_reg[11] [1]),
        .O(\spi_rx_word_reg[6] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reg_chip_error_status1_chip_error_load[31]_i_2 
       (.I0(\spi_rx_word_reg[14] ),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(apb_addr_s[7]),
        .I3(apb_addr_s[8]),
        .I4(\spi_rx_word_reg[11] [4]),
        .O(\reg_chip_error_status1_chip_error_load[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \reg_chip_error_status1_chip_error_load[31]_i_3 
       (.I0(\apb_wdata_reg[3]_0 [13]),
        .I1(apb_state),
        .I2(apb_enable_s),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_sequential_state_reg[3]_1 [1]),
        .I5(\FSM_sequential_state_reg[3]_1 [3]),
        .O(apb_addr_s[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \reg_chip_error_status2_chip_error_cmd[3]_i_1 
       (.I0(\reg_chip_error_status2_chip_error_cmd[3]_i_2_n_0 ),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [2]),
        .O(\spi_rx_word_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000000003F7F)) 
    \reg_chip_error_status2_chip_error_cmd[3]_i_2 
       (.I0(\apb_wdata_reg[3]_0 [5]),
        .I1(\FSM_sequential_state_reg[3]_0 ),
        .I2(\FSM_onehot_apb_state_reg[0]_0 ),
        .I3(\apb_wdata_reg[3]_0 [6]),
        .I4(\spi_rx_word_reg[11] [0]),
        .I5(\reg_chip_error_status1_chip_error_load[31]_i_2_n_0 ),
        .O(\reg_chip_error_status2_chip_error_cmd[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1[31]_i_1 
       (.I0(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\spi_rx_word_reg[11] [3]),
        .O(\spi_rx_word_reg[5]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2[31]_i_1 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\spi_rx_word_reg[11] [2]),
        .I4(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .O(\spi_rx_word_reg[11]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \reg_rec_discharge_control_div_clk_discharge[7]_i_1 
       (.I0(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(\spi_rx_word_reg[11] [2]),
        .I3(\spi_rx_word_reg[11] [1]),
        .O(\spi_rx_word_reg[5]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \reg_rec_stim_control_div_clk_stim[11]_i_1 
       (.I0(\spi_rx_word_reg[11] [1]),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .I4(\reg_stim_mask2_p2_stim_mask2_g2_reg[0] ),
        .O(\FSM_sequential_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \reg_stim_ch0_p0_stim0_ia_mux[7]_i_1 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .I1(\spi_rx_word_reg[11] [0]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux[7]_i_3_n_0 ),
        .I4(\spi_rx_word_reg[11] [3]),
        .I5(\spi_rx_word_reg[11] [2]),
        .O(\spi_rx_word_reg[11]_8 ));
  LUT6 #(
    .INIT(64'h0007000000040000)) 
    \reg_stim_ch0_p0_stim0_ia_mux[7]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_1 [2]),
        .I1(\FSM_sequential_state_reg[3]_1 [3]),
        .I2(\FSM_sequential_state_reg[3]_1 [1]),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_onehot_apb_state_reg[0]_0 ),
        .I5(\apb_wdata_reg[3]_0 [7]),
        .O(\spi_rx_word_reg[11] [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hCCC08880)) 
    \reg_stim_ch0_p0_stim0_ia_mux[7]_i_3 
       (.I0(\apb_wdata_reg[3]_0 [5]),
        .I1(\FSM_sequential_state_reg[3]_0 ),
        .I2(apb_enable_s),
        .I3(apb_state),
        .I4(\apb_wdata_reg[3]_0 [6]),
        .O(\reg_stim_ch0_p0_stim0_ia_mux[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_1 
       (.I0(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\spi_rx_word_reg[11] [3]),
        .O(\spi_rx_word_reg[5] ));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_4 
       (.I0(\apb_wdata_reg[3]_0 [9]),
        .I1(apb_state),
        .I2(apb_enable_s),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_sequential_state_reg[3]_1 [1]),
        .I5(\FSM_sequential_state_reg[3]_1 [3]),
        .O(\spi_rx_word_reg[11] [2]));
  LUT6 #(
    .INIT(64'h0403000004000000)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_5 
       (.I0(\FSM_sequential_state_reg[3]_1 [2]),
        .I1(\FSM_sequential_state_reg[3]_1 [3]),
        .I2(\FSM_sequential_state_reg[3]_1 [1]),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_onehot_apb_state_reg[0]_0 ),
        .I5(\apb_wdata_reg[3]_0 [8]),
        .O(\spi_rx_word_reg[11] [1]));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_6 
       (.I0(\apb_wdata_reg[3]_0 [10]),
        .I1(apb_state),
        .I2(apb_enable_s),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_sequential_state_reg[3]_1 [1]),
        .I5(\FSM_sequential_state_reg[3]_1 [3]),
        .O(\spi_rx_word_reg[11] [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_7 
       (.I0(apb_state),
        .I1(apb_enable_s),
        .O(\FSM_onehot_apb_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap[13]_i_1 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\spi_rx_word_reg[11] [2]),
        .I4(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .O(\spi_rx_word_reg[11]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \reg_stim_ch1_p0_stim1_ia_mux[7]_i_1 
       (.I0(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(\spi_rx_word_reg[11] [2]),
        .I3(\spi_rx_word_reg[11] [1]),
        .O(\spi_rx_word_reg[5]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_1 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [2]),
        .I3(\spi_rx_word_reg[11] [3]),
        .I4(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .O(\spi_rx_word_reg[11]_6 ));
  LUT6 #(
    .INIT(64'h000AAAAA222AAAAA)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3 
       (.I0(\spi_rx_word_reg[11] [0]),
        .I1(\apb_wdata_reg[3]_0 [6]),
        .I2(apb_state),
        .I3(apb_enable_s),
        .I4(\FSM_sequential_state_reg[3]_0 ),
        .I5(\apb_wdata_reg[3]_0 [5]),
        .O(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAF0FBFFF)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_4 
       (.I0(\apb_wdata_reg[3]_0 [14]),
        .I1(\FSM_sequential_state_reg[3]_1 [2]),
        .I2(apb_enable_s),
        .I3(\FSM_sequential_state_reg[3]_0 ),
        .I4(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\spi_rx_word_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap[13]_i_1 
       (.I0(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\spi_rx_word_reg[11] [3]),
        .O(\spi_rx_word_reg[5]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg_stim_ch2_p0_stim2_ia_mux[7]_i_1 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\spi_rx_word_reg[11] [2]),
        .I4(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .O(\spi_rx_word_reg[11]_7 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_1 
       (.I0(\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_2_n_0 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(apb_addr_s[7]),
        .I3(\spi_rx_word_reg[11] [3]),
        .O(\spi_rx_word_reg[11]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_2 
       (.I0(\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_5_n_0 ),
        .I1(\spi_tx_word_o_reg[14]_2 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .O(\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_3 
       (.I0(\apb_wdata_reg[3]_0 [11]),
        .I1(apb_state),
        .I2(apb_enable_s),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_sequential_state_reg[3]_1 [1]),
        .I5(\FSM_sequential_state_reg[3]_1 [3]),
        .O(\spi_rx_word_reg[11] [4]));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_4 
       (.I0(\apb_wdata_reg[3]_0 [12]),
        .I1(apb_state),
        .I2(apb_enable_s),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_sequential_state_reg[3]_1 [1]),
        .I5(\FSM_sequential_state_reg[3]_1 [3]),
        .O(apb_addr_s[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFEFFDDFF)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_5 
       (.I0(\FSM_sequential_state_reg[3]_1 [3]),
        .I1(\FSM_sequential_state_reg[3]_1 [1]),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(apb_enable_s),
        .I4(\FSM_sequential_state_reg[3]_1 [2]),
        .O(\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap[13]_i_1 
       (.I0(\spi_rx_word_reg[11] [2]),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\reg_stim_ch0_p0_stim0_ia_mux[7]_i_3_n_0 ),
        .I5(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13]_i_2_n_0 ),
        .O(\spi_rx_word_reg[9]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \reg_stim_ch3_p0_stim3_ia_mux[7]_i_1 
       (.I0(\spi_rx_word_reg[11] [1]),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\reg_stim_ch3_p0_stim3_ia_mux[7]_i_2_n_0 ),
        .I4(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h0005555511155555)) 
    \reg_stim_ch3_p0_stim3_ia_mux[7]_i_2 
       (.I0(\spi_rx_word_reg[11] [0]),
        .I1(\apb_wdata_reg[3]_0 [6]),
        .I2(apb_state),
        .I3(apb_enable_s),
        .I4(\FSM_sequential_state_reg[3]_0 ),
        .I5(\apb_wdata_reg[3]_0 [5]),
        .O(\reg_stim_ch3_p0_stim3_ia_mux[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13]_i_1 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13]_i_2_n_0 ),
        .I1(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\spi_rx_word_reg[11] [2]),
        .I4(\spi_rx_word_reg[11] [1]),
        .O(\spi_rx_word_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13]_i_2 
       (.I0(\spi_rx_word_reg[14] ),
        .I1(\apb_wdata_reg[3]_0 [13]),
        .I2(\apb_wdata_reg[3]_0 [12]),
        .I3(\FSM_onehot_apb_state_reg[0]_0 ),
        .I4(\FSM_sequential_state_reg[3]_0 ),
        .I5(\apb_wdata_reg[3]_0 [11]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap[13]_i_1 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\reg_stim_ch3_p0_stim3_ia_mux[7]_i_2_n_0 ),
        .I4(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux[13]_i_2_n_0 ),
        .O(\spi_rx_word_reg[10]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \reg_stim_mask0_p1_stim_mask0_g1[31]_i_1 
       (.I0(\spi_rx_word_reg[11] [2]),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\reg_stim_mask2_p1_stim_mask2_g1_reg[0] ),
        .O(\spi_rx_word_reg[9]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \reg_stim_mask0_p2_stim_mask0_g2[31]_i_1 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg[0] ),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\spi_rx_word_reg[11] [2]),
        .I4(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .O(\spi_rx_word_reg[11]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \reg_stim_mask1_p1_stim_mask1_g1[31]_i_1 
       (.I0(\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_2_n_0 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(apb_addr_s[7]),
        .O(\spi_rx_word_reg[11]_14 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \reg_stim_mask1_p2_stim_mask1_g2[31]_i_1 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg[0] ),
        .I1(\spi_rx_word_reg[11] [0]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux[7]_i_3_n_0 ),
        .I4(\spi_rx_word_reg[11] [3]),
        .I5(\spi_rx_word_reg[11] [2]),
        .O(\spi_rx_word_reg[11]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \reg_stim_mask2_p1_stim_mask2_g1[31]_i_1 
       (.I0(\spi_rx_word_reg[11] [2]),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\reg_stim_mask2_p1_stim_mask2_g1_reg[0] ),
        .O(\spi_rx_word_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \reg_stim_mask2_p2_stim_mask2_g2[31]_i_1 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg[0] ),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\spi_rx_word_reg[11] [2]),
        .I4(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .O(\spi_rx_word_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \reg_stim_mask3_p1_stim_mask3_g1[31]_i_1 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\reg_stim_mask2_p1_stim_mask2_g1_reg[0] ),
        .O(\spi_rx_word_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \reg_stim_mask3_p2_stim_mask3_g2[31]_i_1 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg[0] ),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [2]),
        .I3(\spi_rx_word_reg[11] [3]),
        .I4(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .O(\spi_rx_word_reg[11]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \reg_stim_mask4_p1_stim_mask4_g1[31]_i_1 
       (.I0(\spi_rx_word_reg[11] [2]),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\reg_stim_mask2_p1_stim_mask2_g1_reg[0] ),
        .O(\spi_rx_word_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \reg_stim_mask4_p2_stim_mask4_g2[31]_i_1 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg[0] ),
        .I1(\spi_rx_word_reg[11] [3]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\spi_rx_word_reg[11] [2]),
        .I4(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .O(\spi_rx_word_reg[11]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \reg_stim_mask5_p1_stim_mask5_g1[31]_i_1 
       (.I0(\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux[13]_i_2_n_0 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(apb_addr_s[7]),
        .O(\spi_rx_word_reg[11]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \reg_stim_mask5_p2_stim_mask5_g2[31]_i_1 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\spi_rx_word_reg[11] [0]),
        .I4(\spi_rx_word_reg[11] [1]),
        .I5(\reg_stim_ch0_p0_stim0_ia_mux[7]_i_3_n_0 ),
        .O(\spi_rx_word_reg[11]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \reg_stim_mask6_p1_stim_mask6_g1[31]_i_1 
       (.I0(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [2]),
        .I3(\spi_rx_word_reg[11] [3]),
        .O(\spi_rx_word_reg[5]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \reg_stim_mask6_p2_stim_mask6_g2[31]_i_1 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .I1(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\spi_rx_word_reg[11] [2]),
        .I4(\spi_rx_word_reg[11] [1]),
        .O(\spi_rx_word_reg[11]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \reg_stim_mask7_p1_stim_mask7_g1[31]_i_1 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [1]),
        .I3(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .O(\spi_rx_word_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \reg_stim_mask7_p2_stim_mask7_g2[31]_i_1 
       (.I0(\spi_rx_word_reg[11] [1]),
        .I1(\spi_rx_word_reg[11] [2]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_3_n_0 ),
        .I4(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .O(\FSM_sequential_state_reg[2]_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \spi_tx_word_1d[8]_i_1 
       (.I0(\spi_tx_word_o_reg_n_0_[0] ),
        .I1(tx_ready_s),
        .I2(\spi_tx_word_1d_reg[8] ),
        .O(D));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \spi_tx_word_o[0]_i_1 
       (.I0(\spi_tx_word_o_reg[7]_1 [0]),
        .I1(\spi_tx_word_o[7]_i_2_n_0 ),
        .I2(\spi_tx_word_o_reg[0]_i_2_n_0 ),
        .I3(\spi_tx_word_o_reg[14]_2 ),
        .I4(spi_tx_word_o10_out),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[0]_i_4 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[13]_1 [0]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[0]_i_2_0 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[10]_i_1 
       (.I0(\spi_tx_word_o_reg[10]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[10]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[10]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[10]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[10]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[10]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[13]_1 [10]),
        .O(\spi_tx_word_o[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[11]_i_1 
       (.I0(\spi_tx_word_o_reg[11]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[11]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[11]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[11]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[11]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[11]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[13]_1 [11]),
        .O(\spi_tx_word_o[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[12]_i_1 
       (.I0(\spi_tx_word_o_reg[12]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[12]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[12]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[12]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[12]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[12]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[13]_1 [12]),
        .O(\spi_tx_word_o[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[13]_i_1 
       (.I0(\spi_tx_word_o_reg[13]_2 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[13]_3 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[13]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[13]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[13]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[13]_4 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[13]_1 [13]),
        .O(\spi_tx_word_o[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \spi_tx_word_o[14]_i_1 
       (.I0(\spi_tx_word_o_reg[14]_1 ),
        .I1(apb_addr_s[7]),
        .I2(\spi_tx_word_o[14]_i_3_n_0 ),
        .I3(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[14]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \spi_tx_word_o[14]_i_3 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [2]),
        .I3(Q[0]),
        .I4(\spi_rx_word_reg[11] [0]),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[14]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \spi_tx_word_o[15]_i_1 
       (.I0(\spi_tx_word_o_reg[15]_1 ),
        .I1(apb_addr_s[7]),
        .I2(\spi_tx_word_o[15]_i_3_n_0 ),
        .I3(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[15]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \spi_tx_word_o[15]_i_3 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_rx_word_reg[11] [1]),
        .I2(\spi_rx_word_reg[11] [2]),
        .I3(Q[1]),
        .I4(\spi_rx_word_reg[11] [0]),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00E20000)) 
    \spi_tx_word_o[16]_i_1 
       (.I0(\spi_tx_word_o_reg[16]_1 ),
        .I1(apb_addr_s[7]),
        .I2(\spi_tx_word_o[16]_i_3_n_0 ),
        .I3(\spi_tx_word_o_reg[14]_2 ),
        .I4(spi_tx_word_o10_out),
        .I5(\spi_tx_word_o[24]_i_7_n_0 ),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[16]_i_3 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[27]_1 [0]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[16]_0 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[17]_i_1 
       (.I0(\spi_tx_word_o_reg[17]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[17]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[17]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[17]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[17]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[17]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [1]),
        .O(\spi_tx_word_o[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[18]_i_1 
       (.I0(\spi_tx_word_o_reg[18]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[18]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[18]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[18]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[18]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[18]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [2]),
        .O(\spi_tx_word_o[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[19]_i_1 
       (.I0(\spi_tx_word_o_reg[19]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[19]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[19]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[19]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[19]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[19]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [3]),
        .O(\spi_tx_word_o[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \spi_tx_word_o[1]_i_1 
       (.I0(\spi_tx_word_o_reg[7]_1 [1]),
        .I1(\spi_tx_word_o[7]_i_2_n_0 ),
        .I2(\spi_tx_word_o_reg[1]_i_2_n_0 ),
        .I3(\spi_tx_word_o_reg[14]_2 ),
        .I4(spi_tx_word_o10_out),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[1]_i_4 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[13]_1 [1]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[1]_i_2_0 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[20]_i_1 
       (.I0(\spi_tx_word_o_reg[20]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[20]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[20]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[20]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[20]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[20]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [4]),
        .O(\spi_tx_word_o[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[21]_i_1 
       (.I0(\spi_tx_word_o_reg[21]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[21]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[21]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[21]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[21]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[21]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [5]),
        .O(\spi_tx_word_o[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[22]_i_1 
       (.I0(\spi_tx_word_o_reg[22]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[22]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[22]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[22]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[22]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[22]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [6]),
        .O(\spi_tx_word_o[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[23]_i_1 
       (.I0(\spi_tx_word_o_reg[23]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[23]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[23]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[23]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[23]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[23]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [7]),
        .O(\spi_tx_word_o[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5500450044450401)) 
    \spi_tx_word_o[24]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_1 [3]),
        .I1(\FSM_sequential_state_reg[3]_1 [1]),
        .I2(tx_ready_s),
        .I3(\FSM_sequential_state_reg[3]_1 [2]),
        .I4(tx_done_s),
        .I5(\FSM_sequential_state_reg[3]_1 [0]),
        .O(\spi_tx_word_o[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_tx_word_o[24]_i_12 
       (.I0(\spi_rx_word_reg[11] [2]),
        .I1(\spi_rx_word_reg[11] [1]),
        .O(\spi_tx_word_o[24]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \spi_tx_word_o[24]_i_13 
       (.I0(\spi_rx_word_reg[11] [2]),
        .I1(\spi_rx_word_reg[11] [0]),
        .I2(\spi_rx_word_reg[11] [1]),
        .O(\spi_tx_word_o[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00E20000)) 
    \spi_tx_word_o[24]_i_2 
       (.I0(\spi_tx_word_o_reg[24]_2 ),
        .I1(apb_addr_s[7]),
        .I2(\spi_tx_word_o[24]_i_4_n_0 ),
        .I3(\spi_tx_word_o_reg[14]_2 ),
        .I4(spi_tx_word_o10_out),
        .I5(\spi_tx_word_o[24]_i_7_n_0 ),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[24]_i_4 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[27]_1 [8]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[24]_1 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spi_tx_word_o[24]_i_6 
       (.I0(tx_ready_s),
        .I1(\FSM_sequential_state_reg[3]_1 [2]),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(\FSM_sequential_state_reg[3]_1 [1]),
        .I4(\FSM_sequential_state_reg[3]_1 [3]),
        .O(spi_tx_word_o10_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \spi_tx_word_o[24]_i_7 
       (.I0(\FSM_sequential_state_reg[3]_1 [1]),
        .I1(\FSM_sequential_state_reg[3]_1 [3]),
        .I2(\FSM_sequential_state_reg[3]_1 [0]),
        .I3(tx_ready_s),
        .I4(\FSM_sequential_state_reg[3]_1 [2]),
        .O(\spi_tx_word_o[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[25]_i_1 
       (.I0(\spi_tx_word_o_reg[25]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[25]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[25]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[25]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[25]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[25]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [9]),
        .O(\spi_tx_word_o[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[26]_i_1 
       (.I0(\spi_tx_word_o_reg[26]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[26]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[26]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[26]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[26]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[26]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [10]),
        .O(\spi_tx_word_o[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[27]_i_1 
       (.I0(\spi_tx_word_o_reg[27]_2 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[27]_3 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[27]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[27]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[27]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[27]_4 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[27]_1 [11]),
        .O(\spi_tx_word_o[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222222E)) 
    \spi_tx_word_o[28]_i_1 
       (.I0(\spi_tx_word_o_reg[28]_1 ),
        .I1(apb_addr_s[7]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\spi_tx_word_o[28]_i_3_n_0 ),
        .I4(\spi_rx_word_reg[11] [4]),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[28]));
  LUT6 #(
    .INIT(64'hAAEFBBEFEEEFFFEF)) 
    \spi_tx_word_o[28]_i_3 
       (.I0(\spi_rx_word_reg[11] [2]),
        .I1(\spi_rx_word_reg[11] [0]),
        .I2(\spi_tx_word_o_reg[29]_2 [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_tx_word_o_reg[29]_3 [0]),
        .I5(\spi_tx_word_o_reg[29]_4 [0]),
        .O(\spi_tx_word_o[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222222E)) 
    \spi_tx_word_o[29]_i_1 
       (.I0(\spi_tx_word_o_reg[29]_1 ),
        .I1(apb_addr_s[7]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\spi_tx_word_o[29]_i_3_n_0 ),
        .I4(\spi_rx_word_reg[11] [4]),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[29]));
  LUT6 #(
    .INIT(64'hAAEFBBEFEEEFFFEF)) 
    \spi_tx_word_o[29]_i_3 
       (.I0(\spi_rx_word_reg[11] [2]),
        .I1(\spi_rx_word_reg[11] [0]),
        .I2(\spi_tx_word_o_reg[29]_2 [1]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_tx_word_o_reg[29]_3 [1]),
        .I5(\spi_tx_word_o_reg[29]_4 [1]),
        .O(\spi_tx_word_o[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAEAAAEAA)) 
    \spi_tx_word_o[2]_i_1 
       (.I0(\spi_tx_word_o[24]_i_7_n_0 ),
        .I1(spi_tx_word_o10_out),
        .I2(\spi_tx_word_o_reg[14]_2 ),
        .I3(\spi_tx_word_o_reg[2]_i_2_n_0 ),
        .I4(\spi_tx_word_o_reg[7]_1 [2]),
        .I5(\spi_tx_word_o[7]_i_2_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[2]_i_4 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[13]_1 [2]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[2]_i_2_0 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222222E)) 
    \spi_tx_word_o[30]_i_1 
       (.I0(\spi_tx_word_o_reg[30]_1 ),
        .I1(apb_addr_s[7]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\spi_tx_word_o_reg[30]_2 ),
        .I4(\spi_rx_word_reg[11] [4]),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[30]));
  LUT6 #(
    .INIT(64'h3220002033300020)) 
    \spi_tx_word_o[31]_i_1 
       (.I0(tx_done_s),
        .I1(\FSM_sequential_state_reg[3]_1 [3]),
        .I2(\FSM_sequential_state_reg[3]_1 [1]),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_sequential_state_reg[3]_1 [2]),
        .I5(tx_ready_s),
        .O(\spi_tx_word_o[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002222222E)) 
    \spi_tx_word_o[31]_i_2 
       (.I0(\spi_tx_word_o_reg[31]_1 ),
        .I1(apb_addr_s[7]),
        .I2(\spi_rx_word_reg[11] [3]),
        .I3(\spi_tx_word_o_reg[31]_2 ),
        .I4(\spi_rx_word_reg[11] [4]),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[31]));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \spi_tx_word_o[3]_i_1 
       (.I0(\spi_tx_word_o_reg[7]_1 [3]),
        .I1(\spi_tx_word_o[7]_i_2_n_0 ),
        .I2(\spi_tx_word_o_reg[3]_i_2_n_0 ),
        .I3(\spi_tx_word_o_reg[14]_2 ),
        .I4(spi_tx_word_o10_out),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[3]_i_4 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[13]_1 [3]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[3]_i_2_0 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \spi_tx_word_o[4]_i_1 
       (.I0(\spi_tx_word_o_reg[7]_1 [4]),
        .I1(\spi_tx_word_o[7]_i_2_n_0 ),
        .I2(\spi_tx_word_o_reg[4]_i_2_n_0 ),
        .I3(\spi_tx_word_o_reg[14]_2 ),
        .I4(spi_tx_word_o10_out),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[4]_i_4 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[13]_1 [4]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[4]_i_2_0 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAEAAAEAA)) 
    \spi_tx_word_o[5]_i_1 
       (.I0(\spi_tx_word_o[24]_i_7_n_0 ),
        .I1(spi_tx_word_o10_out),
        .I2(\spi_tx_word_o_reg[14]_2 ),
        .I3(\spi_tx_word_o_reg[5]_i_2_n_0 ),
        .I4(\spi_tx_word_o_reg[7]_1 [5]),
        .I5(\spi_tx_word_o[7]_i_2_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[5]_i_4 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[13]_1 [5]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[5]_i_2_0 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEAAAEAAAEAA)) 
    \spi_tx_word_o[6]_i_1 
       (.I0(\spi_tx_word_o[24]_i_7_n_0 ),
        .I1(spi_tx_word_o10_out),
        .I2(\spi_tx_word_o_reg[14]_2 ),
        .I3(\spi_tx_word_o_reg[6]_i_2_n_0 ),
        .I4(\spi_tx_word_o_reg[7]_1 [6]),
        .I5(\spi_tx_word_o[7]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[6]_i_4 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[13]_1 [6]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[6]_i_2_0 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88F88888)) 
    \spi_tx_word_o[7]_i_1 
       (.I0(\spi_tx_word_o_reg[7]_1 [7]),
        .I1(\spi_tx_word_o[7]_i_2_n_0 ),
        .I2(\spi_tx_word_o_reg[7]_i_3_n_0 ),
        .I3(\spi_tx_word_o_reg[14]_2 ),
        .I4(spi_tx_word_o10_out),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \spi_tx_word_o[7]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_1 [0]),
        .I1(\FSM_sequential_state_reg[3]_1 [1]),
        .I2(\FSM_sequential_state_reg[3]_1 [3]),
        .I3(tx_ready_s),
        .I4(\FSM_sequential_state_reg[3]_1 [2]),
        .O(\spi_tx_word_o[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005400040)) 
    \spi_tx_word_o[7]_i_5 
       (.I0(\spi_rx_word_reg[11] [4]),
        .I1(\spi_tx_word_o_reg[13]_1 [7]),
        .I2(\spi_tx_word_o[24]_i_12_n_0 ),
        .I3(\spi_tx_word_o[24]_i_13_n_0 ),
        .I4(\spi_tx_word_o_reg[7]_i_3_0 ),
        .I5(\spi_rx_word_reg[11] [3]),
        .O(\spi_tx_word_o[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000C02)) 
    \spi_tx_word_o[8]_i_1 
       (.I0(apb_rdata_s[8]),
        .I1(\FSM_sequential_state_reg[3]_1 [2]),
        .I2(tx_ready_s),
        .I3(\FSM_sequential_state_reg[3]_1 [0]),
        .I4(\FSM_sequential_state_reg[3]_1 [1]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[8]_i_2 
       (.I0(\spi_tx_word_o_reg[8]_0 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[8]_1 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[8]_i_5_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[8]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[8]_i_5 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o[8]_i_2_0 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[13]_1 [8]),
        .O(\spi_tx_word_o[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \spi_tx_word_o[9]_i_1 
       (.I0(\spi_tx_word_o_reg[9]_1 ),
        .I1(\spi_rx_word_reg[11] [4]),
        .I2(\spi_tx_word_o_reg[9]_2 ),
        .I3(apb_addr_s[7]),
        .I4(\spi_tx_word_o[9]_i_4_n_0 ),
        .I5(\spi_tx_word_o_reg[14]_2 ),
        .O(apb_rdata_s[9]));
  LUT6 #(
    .INIT(64'hFFFABBBBFFFFBBBB)) 
    \spi_tx_word_o[9]_i_4 
       (.I0(\spi_rx_word_reg[11] [3]),
        .I1(\spi_tx_word_o_reg[9]_3 ),
        .I2(\spi_rx_word_reg[11] [0]),
        .I3(\spi_rx_word_reg[11] [1]),
        .I4(\spi_rx_word_reg[11] [2]),
        .I5(\spi_tx_word_o_reg[13]_1 [9]),
        .O(\spi_tx_word_o[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\spi_tx_word_o_reg_n_0_[0] ),
        .R(1'b0));
  MUXF7 \spi_tx_word_o_reg[0]_i_2 
       (.I0(\spi_tx_word_o_reg[0]_0 ),
        .I1(\spi_tx_word_o[0]_i_4_n_0 ),
        .O(\spi_tx_word_o_reg[0]_i_2_n_0 ),
        .S(apb_addr_s[7]));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[10]),
        .Q(\spi_tx_word_o_reg[10]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[11]),
        .Q(\spi_tx_word_o_reg[11]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[12]),
        .Q(\spi_tx_word_o_reg[12]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[13]),
        .Q(\spi_tx_word_o_reg[13]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[14]),
        .Q(\spi_tx_word_o_reg[14]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[15]),
        .Q(\spi_tx_word_o_reg[15]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(\spi_tx_word_o_reg[24]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[17]),
        .Q(\spi_tx_word_o_reg[17]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[18]),
        .Q(\spi_tx_word_o_reg[18]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[19]),
        .Q(\spi_tx_word_o_reg[19]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\spi_tx_word_o_reg[24]_0 [0]),
        .R(1'b0));
  MUXF7 \spi_tx_word_o_reg[1]_i_2 
       (.I0(\spi_tx_word_o_reg[1]_0 ),
        .I1(\spi_tx_word_o[1]_i_4_n_0 ),
        .O(\spi_tx_word_o_reg[1]_i_2_n_0 ),
        .S(apb_addr_s[7]));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[20]),
        .Q(\spi_tx_word_o_reg[20]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[21]),
        .Q(\spi_tx_word_o_reg[21]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[22]),
        .Q(\spi_tx_word_o_reg[22]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[23]),
        .Q(\spi_tx_word_o_reg[23]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(\spi_tx_word_o_reg[24]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[25]),
        .Q(\spi_tx_word_o_reg[25]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[26]),
        .Q(\spi_tx_word_o_reg[26]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[27]),
        .Q(\spi_tx_word_o_reg[27]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[28]),
        .Q(\spi_tx_word_o_reg[28]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[29]),
        .Q(\spi_tx_word_o_reg[29]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\spi_tx_word_o_reg[24]_0 [1]),
        .R(1'b0));
  MUXF7 \spi_tx_word_o_reg[2]_i_2 
       (.I0(\spi_tx_word_o_reg[2]_0 ),
        .I1(\spi_tx_word_o[2]_i_4_n_0 ),
        .O(\spi_tx_word_o_reg[2]_i_2_n_0 ),
        .S(apb_addr_s[7]));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[30]),
        .Q(\spi_tx_word_o_reg[30]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[31]),
        .Q(\spi_tx_word_o_reg[31]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\spi_tx_word_o_reg[24]_0 [2]),
        .R(1'b0));
  MUXF7 \spi_tx_word_o_reg[3]_i_2 
       (.I0(\spi_tx_word_o_reg[3]_0 ),
        .I1(\spi_tx_word_o[3]_i_4_n_0 ),
        .O(\spi_tx_word_o_reg[3]_i_2_n_0 ),
        .S(apb_addr_s[7]));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\spi_tx_word_o_reg[24]_0 [3]),
        .R(1'b0));
  MUXF7 \spi_tx_word_o_reg[4]_i_2 
       (.I0(\spi_tx_word_o_reg[4]_0 ),
        .I1(\spi_tx_word_o[4]_i_4_n_0 ),
        .O(\spi_tx_word_o_reg[4]_i_2_n_0 ),
        .S(apb_addr_s[7]));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\spi_tx_word_o_reg[24]_0 [4]),
        .R(1'b0));
  MUXF7 \spi_tx_word_o_reg[5]_i_2 
       (.I0(\spi_tx_word_o_reg[5]_0 ),
        .I1(\spi_tx_word_o[5]_i_4_n_0 ),
        .O(\spi_tx_word_o_reg[5]_i_2_n_0 ),
        .S(apb_addr_s[7]));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\spi_tx_word_o_reg[24]_0 [5]),
        .R(1'b0));
  MUXF7 \spi_tx_word_o_reg[6]_i_2 
       (.I0(\spi_tx_word_o_reg[6]_0 ),
        .I1(\spi_tx_word_o[6]_i_4_n_0 ),
        .O(\spi_tx_word_o_reg[6]_i_2_n_0 ),
        .S(apb_addr_s[7]));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\spi_tx_word_o_reg[24]_0 [6]),
        .R(1'b0));
  MUXF7 \spi_tx_word_o_reg[7]_i_3 
       (.I0(\spi_tx_word_o_reg[7]_0 ),
        .I1(\spi_tx_word_o[7]_i_5_n_0 ),
        .O(\spi_tx_word_o_reg[7]_i_3_n_0 ),
        .S(apb_addr_s[7]));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\spi_tx_word_o_reg[24]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_tx_word_o_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_tx_word_o[24]_i_1_n_0 ),
        .D(apb_rdata_s[9]),
        .Q(\spi_tx_word_o_reg[9]_0 ),
        .R(\spi_tx_word_o[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDDFEFFF12120101)) 
    tx_ready_o_i_1
       (.I0(\FSM_sequential_state_reg[3]_1 [0]),
        .I1(\FSM_sequential_state_reg[3]_1 [3]),
        .I2(\FSM_sequential_state_reg[3]_1 [1]),
        .I3(tx_done_s),
        .I4(\FSM_sequential_state_reg[3]_1 [2]),
        .I5(tx_ready_s),
        .O(tx_ready_o_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_ready_o_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .D(tx_ready_o_i_1_n_0),
        .Q(tx_ready_s),
        .R(1'b0));
endmodule

module spi_slave_common
   (tx_done_s,
    tx_lock_reg_0,
    \spi_rx_word_reg[5]_0 ,
    \spi_rx_word_reg[11]_0 ,
    Q,
    \spi_tx_word_1d_reg[39]_0 ,
    \spi_rx_word_reg[5]_1 ,
    \spi_rx_word_reg[11]_1 ,
    \spi_rx_word_reg[6]_0 ,
    \spi_cmd_reg[0]_0 ,
    crc5_chk_o_reg_0,
    \FSM_sequential_state_reg[2] ,
    \spi_rx_word_reg[40]_0 ,
    rx_done_o_reg_0,
    \FSM_sequential_state_reg[1] ,
    \spi_rx_word_reg[40]_1 ,
    SPI_CLK_I_IBUF_BUFG,
    SPI_MISO_O_TRI,
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ,
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ,
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_1 ,
    tx_ready_s,
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ,
    D,
    \spi_tx_word_1d_reg[33]_0 ,
    \spi_tx_word_1d_reg[34]_0 ,
    \spi_tx_word_1d_reg[35]_0 ,
    \spi_tx_word_1d_reg[36]_0 ,
    \spi_tx_word_1d_reg[37]_0 ,
    \spi_tx_word_1d_reg[32]_0 ,
    \spi_tx_word_1d_reg[17]_0 ,
    \spi_tx_word_1d_reg[18]_0 ,
    \spi_tx_word_1d_reg[19]_0 ,
    \spi_tx_word_1d_reg[20]_0 ,
    \spi_tx_word_1d_reg[21]_0 ,
    \spi_tx_word_1d_reg[22]_0 ,
    \spi_tx_word_1d_reg[23]_0 ,
    \spi_tx_word_1d_reg[25]_0 ,
    \spi_tx_word_1d_reg[26]_0 ,
    \spi_tx_word_1d_reg[27]_0 ,
    \spi_tx_word_1d_reg[28]_0 ,
    \spi_tx_word_1d_reg[29]_0 ,
    \spi_tx_word_1d_reg[30]_0 ,
    \spi_tx_word_1d_reg[31]_0 ,
    \spi_tx_word_1d_reg[38]_0 ,
    \spi_tx_word_1d_reg[39]_1 ,
    \FSM_sequential_state_reg[1]_0 ,
    \apb_wdata_reg[9] ,
    \FSM_sequential_state_reg[1]_1 ,
    apb_state_reg,
    \FSM_sequential_state_reg[0] ,
    \spi_tx_word_1d_reg[8]_0 );
  output tx_done_s;
  output tx_lock_reg_0;
  output \spi_rx_word_reg[5]_0 ;
  output \spi_rx_word_reg[11]_0 ;
  output [40:0]Q;
  output [0:0]\spi_tx_word_1d_reg[39]_0 ;
  output \spi_rx_word_reg[5]_1 ;
  output \spi_rx_word_reg[11]_1 ;
  output \spi_rx_word_reg[6]_0 ;
  output [0:0]\spi_cmd_reg[0]_0 ;
  output crc5_chk_o_reg_0;
  output \FSM_sequential_state_reg[2] ;
  output \spi_rx_word_reg[40]_0 ;
  output rx_done_o_reg_0;
  output \FSM_sequential_state_reg[1] ;
  output \spi_rx_word_reg[40]_1 ;
  input SPI_CLK_I_IBUF_BUFG;
  input SPI_MISO_O_TRI;
  input \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ;
  input \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ;
  input [0:0]\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_1 ;
  input tx_ready_s;
  input \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ;
  input [0:0]D;
  input \spi_tx_word_1d_reg[33]_0 ;
  input \spi_tx_word_1d_reg[34]_0 ;
  input \spi_tx_word_1d_reg[35]_0 ;
  input \spi_tx_word_1d_reg[36]_0 ;
  input \spi_tx_word_1d_reg[37]_0 ;
  input [9:0]\spi_tx_word_1d_reg[32]_0 ;
  input \spi_tx_word_1d_reg[17]_0 ;
  input \spi_tx_word_1d_reg[18]_0 ;
  input \spi_tx_word_1d_reg[19]_0 ;
  input \spi_tx_word_1d_reg[20]_0 ;
  input \spi_tx_word_1d_reg[21]_0 ;
  input \spi_tx_word_1d_reg[22]_0 ;
  input \spi_tx_word_1d_reg[23]_0 ;
  input \spi_tx_word_1d_reg[25]_0 ;
  input \spi_tx_word_1d_reg[26]_0 ;
  input \spi_tx_word_1d_reg[27]_0 ;
  input \spi_tx_word_1d_reg[28]_0 ;
  input \spi_tx_word_1d_reg[29]_0 ;
  input \spi_tx_word_1d_reg[30]_0 ;
  input \spi_tx_word_1d_reg[31]_0 ;
  input \spi_tx_word_1d_reg[38]_0 ;
  input \spi_tx_word_1d_reg[39]_1 ;
  input \FSM_sequential_state_reg[1]_0 ;
  input [3:0]\apb_wdata_reg[9] ;
  input \FSM_sequential_state_reg[1]_1 ;
  input [0:0]apb_state_reg;
  input \FSM_sequential_state_reg[0] ;
  input [0:0]\spi_tx_word_1d_reg[8]_0 ;

  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire \FSM_sequential_state_reg[2] ;
  wire [40:0]Q;
  wire SPI_CLK_I_IBUF_BUFG;
  wire SPI_MISO_O_TRI;
  wire [0:0]apb_state_reg;
  wire \apb_wdata[8]_i_6_n_0 ;
  wire [3:0]\apb_wdata_reg[9] ;
  wire crc0;
  wire \crc5[4]_i_1_n_0 ;
  wire crc5_chk_o0;
  wire crc5_chk_o_i_2_n_0;
  wire crc5_chk_o_i_3_n_0;
  wire crc5_chk_o_i_4_n_0;
  wire crc5_chk_o_reg_0;
  wire crc5_chk_s;
  wire \crc5_reg_n_0_[0] ;
  wire \crc5_reg_n_0_[1] ;
  wire \crc5_reg_n_0_[2] ;
  wire \crc5_reg_n_0_[3] ;
  wire [2:2]crc5_serial_return;
  wire crc5_serial_return02_out;
  wire [5:0]p_0_in;
  wire p_0_in1_in;
  wire [5:0]p_0_in__0;
  wire p_3_in;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ;
  wire [0:0]\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_1 ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ;
  wire [5:0]rx_cnt_reg;
  wire rx_done_o0;
  wire rx_done_o_reg_0;
  wire rx_done_s;
  wire sel;
  wire spi_cmd4b_en_s;
  wire [3:0]spi_cmd4b_s;
  wire spi_cmd_en;
  wire [0:0]\spi_cmd_reg[0]_0 ;
  wire \spi_rx_word[40]_i_1_n_0 ;
  wire \spi_rx_word_reg[11]_0 ;
  wire \spi_rx_word_reg[11]_1 ;
  wire \spi_rx_word_reg[40]_0 ;
  wire \spi_rx_word_reg[40]_1 ;
  wire \spi_rx_word_reg[5]_0 ;
  wire \spi_rx_word_reg[5]_1 ;
  wire \spi_rx_word_reg[6]_0 ;
  wire [39:9]spi_tx_word_1d0;
  wire [37:33]spi_tx_word_1d2_out;
  wire \spi_tx_word_1d[10]_i_1_n_0 ;
  wire \spi_tx_word_1d[11]_i_1_n_0 ;
  wire \spi_tx_word_1d[12]_i_1_n_0 ;
  wire \spi_tx_word_1d[13]_i_1_n_0 ;
  wire \spi_tx_word_1d[14]_i_1_n_0 ;
  wire \spi_tx_word_1d[15]_i_1_n_0 ;
  wire \spi_tx_word_1d[16]_i_1_n_0 ;
  wire \spi_tx_word_1d[17]_i_1_n_0 ;
  wire \spi_tx_word_1d[18]_i_1_n_0 ;
  wire \spi_tx_word_1d[19]_i_1_n_0 ;
  wire \spi_tx_word_1d[20]_i_1_n_0 ;
  wire \spi_tx_word_1d[21]_i_1_n_0 ;
  wire \spi_tx_word_1d[22]_i_1_n_0 ;
  wire \spi_tx_word_1d[23]_i_1_n_0 ;
  wire \spi_tx_word_1d[24]_i_1_n_0 ;
  wire \spi_tx_word_1d[25]_i_1_n_0 ;
  wire \spi_tx_word_1d[26]_i_1_n_0 ;
  wire \spi_tx_word_1d[27]_i_1_n_0 ;
  wire \spi_tx_word_1d[28]_i_1_n_0 ;
  wire \spi_tx_word_1d[29]_i_1_n_0 ;
  wire \spi_tx_word_1d[30]_i_1_n_0 ;
  wire \spi_tx_word_1d[31]_i_1_n_0 ;
  wire \spi_tx_word_1d[32]_i_1_n_0 ;
  wire \spi_tx_word_1d[37]_i_2_n_0 ;
  wire \spi_tx_word_1d[38]_i_1_n_0 ;
  wire \spi_tx_word_1d[39]_i_2_n_0 ;
  wire \spi_tx_word_1d[9]_i_1_n_0 ;
  wire \spi_tx_word_1d_reg[17]_0 ;
  wire \spi_tx_word_1d_reg[18]_0 ;
  wire \spi_tx_word_1d_reg[19]_0 ;
  wire \spi_tx_word_1d_reg[20]_0 ;
  wire \spi_tx_word_1d_reg[21]_0 ;
  wire \spi_tx_word_1d_reg[22]_0 ;
  wire \spi_tx_word_1d_reg[23]_0 ;
  wire \spi_tx_word_1d_reg[25]_0 ;
  wire \spi_tx_word_1d_reg[26]_0 ;
  wire \spi_tx_word_1d_reg[27]_0 ;
  wire \spi_tx_word_1d_reg[28]_0 ;
  wire \spi_tx_word_1d_reg[29]_0 ;
  wire \spi_tx_word_1d_reg[30]_0 ;
  wire \spi_tx_word_1d_reg[31]_0 ;
  wire [9:0]\spi_tx_word_1d_reg[32]_0 ;
  wire \spi_tx_word_1d_reg[33]_0 ;
  wire \spi_tx_word_1d_reg[34]_0 ;
  wire \spi_tx_word_1d_reg[35]_0 ;
  wire \spi_tx_word_1d_reg[36]_0 ;
  wire \spi_tx_word_1d_reg[37]_0 ;
  wire \spi_tx_word_1d_reg[38]_0 ;
  wire [0:0]\spi_tx_word_1d_reg[39]_0 ;
  wire \spi_tx_word_1d_reg[39]_1 ;
  wire [0:0]\spi_tx_word_1d_reg[8]_0 ;
  wire [5:0]tx_cnt_reg;
  wire \tx_crc5[0]_i_1_n_0 ;
  wire \tx_crc5[2]_i_1_n_0 ;
  wire \tx_crc5_reg_n_0_[0] ;
  wire \tx_crc5_reg_n_0_[1] ;
  wire \tx_crc5_reg_n_0_[2] ;
  wire \tx_crc5_reg_n_0_[3] ;
  wire \tx_crc5_reg_n_0_[4] ;
  wire tx_done_o_i_1_n_0;
  wire tx_done_s;
  wire tx_lock_crc5_i_1_n_0;
  wire tx_lock_crc5_reg_n_0;
  wire tx_lock_i_1_n_0;
  wire tx_lock_reg_0;
  wire tx_ready_s;

  LUT6 #(
    .INIT(64'hAA000303AAFF0303)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(\apb_wdata_reg[9] [1]),
        .I2(\FSM_sequential_state_reg[0] ),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(\apb_wdata_reg[9] [0]),
        .I5(spi_cmd4b_s[0]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFCFCFCFEFFF)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(crc5_chk_s),
        .I1(Q[40]),
        .I2(rx_done_s),
        .I3(Q[38]),
        .I4(Q[37]),
        .I5(Q[39]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000BA00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(spi_cmd4b_s[0]),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(\apb_wdata_reg[9] [2]),
        .I5(\FSM_sequential_state_reg[1]_1 ),
        .O(\spi_cmd_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0040044000000040)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[2]_i_4_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(Q[39]),
        .I3(Q[38]),
        .I4(Q[37]),
        .I5(crc5_chk_s),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(spi_cmd4b_s[1]),
        .I1(spi_cmd4b_s[3]),
        .I2(spi_cmd4b_s[2]),
        .I3(spi_cmd4b_en_s),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888C888)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state_reg[2] ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(crc5_chk_s),
        .I3(Q[37]),
        .I4(Q[38]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(crc5_chk_o_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(Q[40]),
        .I1(rx_done_s),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(Q[40]),
        .I1(rx_done_s),
        .I2(Q[39]),
        .I3(crc5_chk_s),
        .I4(\FSM_sequential_state[3]_i_5_n_0 ),
        .I5(\FSM_sequential_state_reg[1]_0 ),
        .O(\spi_rx_word_reg[40]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hAAEAAAAA)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\apb_wdata_reg[9] [2]),
        .I1(spi_cmd4b_en_s),
        .I2(spi_cmd4b_s[2]),
        .I3(spi_cmd4b_s[3]),
        .I4(spi_cmd4b_s[1]),
        .O(\FSM_sequential_state_reg[2] ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(Q[37]),
        .I1(Q[38]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \apb_wdata[8]_i_3 
       (.I0(Q[40]),
        .I1(rx_done_s),
        .I2(\FSM_sequential_state[3]_i_5_n_0 ),
        .I3(\apb_wdata_reg[9] [3]),
        .I4(crc5_chk_s),
        .I5(Q[39]),
        .O(\spi_rx_word_reg[40]_1 ));
  LUT6 #(
    .INIT(64'h0000800000FF8000)) 
    \apb_wdata[8]_i_5 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(\apb_wdata[8]_i_6_n_0 ),
        .I2(rx_done_s),
        .I3(\apb_wdata_reg[9] [0]),
        .I4(\apb_wdata_reg[9] [3]),
        .I5(apb_state_reg),
        .O(rx_done_o_reg_0));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \apb_wdata[8]_i_6 
       (.I0(Q[40]),
        .I1(\apb_wdata_reg[9] [2]),
        .I2(crc5_chk_s),
        .I3(Q[39]),
        .I4(Q[38]),
        .I5(Q[37]),
        .O(\apb_wdata[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc5[0]_i_1 
       (.I0(D),
        .I1(p_0_in1_in),
        .O(crc5_serial_return02_out));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc5[2]_i_1 
       (.I0(p_0_in1_in),
        .I1(D),
        .I2(\crc5_reg_n_0_[1] ),
        .O(crc5_serial_return));
  LUT4 #(
    .INIT(16'h01FF)) 
    \crc5[4]_i_1 
       (.I0(rx_cnt_reg[2]),
        .I1(rx_cnt_reg[3]),
        .I2(rx_cnt_reg[4]),
        .I3(rx_cnt_reg[5]),
        .O(\crc5[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008200000000)) 
    crc5_chk_o_i_1
       (.I0(crc5_chk_o_i_2_n_0),
        .I1(\crc5_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(rx_cnt_reg[2]),
        .I4(rx_cnt_reg[1]),
        .I5(crc5_chk_o_i_3_n_0),
        .O(crc5_chk_o0));
  LUT4 #(
    .INIT(16'h9009)) 
    crc5_chk_o_i_2
       (.I0(\crc5_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\crc5_reg_n_0_[2] ),
        .I3(Q[2]),
        .O(crc5_chk_o_i_2_n_0));
  LUT5 #(
    .INIT(32'h90090000)) 
    crc5_chk_o_i_3
       (.I0(Q[4]),
        .I1(p_0_in1_in),
        .I2(Q[3]),
        .I3(\crc5_reg_n_0_[3] ),
        .I4(crc5_chk_o_i_4_n_0),
        .O(crc5_chk_o_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    crc5_chk_o_i_4
       (.I0(rx_cnt_reg[3]),
        .I1(rx_cnt_reg[0]),
        .I2(rx_cnt_reg[4]),
        .I3(rx_cnt_reg[5]),
        .O(crc5_chk_o_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    crc5_chk_o_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(crc5_chk_o0),
        .Q(crc5_chk_s));
  FDPE #(
    .INIT(1'b1)) 
    \crc5_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\crc5[4]_i_1_n_0 ),
        .D(crc5_serial_return02_out),
        .PRE(SPI_MISO_O_TRI),
        .Q(\crc5_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \crc5_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\crc5[4]_i_1_n_0 ),
        .D(\crc5_reg_n_0_[0] ),
        .PRE(SPI_MISO_O_TRI),
        .Q(\crc5_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \crc5_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\crc5[4]_i_1_n_0 ),
        .D(crc5_serial_return),
        .PRE(SPI_MISO_O_TRI),
        .Q(\crc5_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \crc5_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\crc5[4]_i_1_n_0 ),
        .D(\crc5_reg_n_0_[2] ),
        .PRE(SPI_MISO_O_TRI),
        .Q(\crc5_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \crc5_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\crc5[4]_i_1_n_0 ),
        .D(\crc5_reg_n_0_[3] ),
        .PRE(SPI_MISO_O_TRI),
        .Q(p_0_in1_in));
  LUT6 #(
    .INIT(64'h00003F3F00003F7F)) 
    \reg_adc_amp1_amp_gain_g1[31]_i_2 
       (.I0(Q[11]),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I2(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .I3(Q[13]),
        .I4(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .I5(Q[12]),
        .O(\spi_rx_word_reg[11]_1 ));
  LUT6 #(
    .INIT(64'h000000000AAA2AAA)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_3 
       (.I0(\spi_rx_word_reg[11]_0 ),
        .I1(Q[5]),
        .I2(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I3(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .I4(Q[6]),
        .I5(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_1 ),
        .O(\spi_rx_word_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux[13]_i_2 
       (.I0(Q[11]),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I2(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .I3(Q[13]),
        .I4(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] ),
        .I5(Q[12]),
        .O(\spi_rx_word_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFC080FFFFFFFF)) 
    \reg_stim_mask0_p1_stim_mask0_g1[31]_i_2 
       (.I0(Q[5]),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I2(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .I3(Q[6]),
        .I4(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_1 ),
        .I5(\spi_rx_word_reg[11]_1 ),
        .O(\spi_rx_word_reg[5]_1 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F07)) 
    \rx_cnt[0]_i_1 
       (.I0(rx_cnt_reg[5]),
        .I1(rx_cnt_reg[4]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[2]),
        .I4(rx_cnt_reg[1]),
        .I5(rx_cnt_reg[3]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_cnt[1]_i_1 
       (.I0(rx_cnt_reg[0]),
        .I1(rx_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rx_cnt[2]_i_1 
       (.I0(rx_cnt_reg[1]),
        .I1(rx_cnt_reg[0]),
        .I2(rx_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rx_cnt[3]_i_1 
       (.I0(rx_cnt_reg[0]),
        .I1(rx_cnt_reg[1]),
        .I2(rx_cnt_reg[2]),
        .I3(rx_cnt_reg[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h3CCCCCCCCCCCCCC4)) 
    \rx_cnt[4]_i_1 
       (.I0(rx_cnt_reg[5]),
        .I1(rx_cnt_reg[4]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[2]),
        .I4(rx_cnt_reg[1]),
        .I5(rx_cnt_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCC4)) 
    \rx_cnt[5]_i_1 
       (.I0(rx_cnt_reg[4]),
        .I1(rx_cnt_reg[5]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[2]),
        .I4(rx_cnt_reg[1]),
        .I5(rx_cnt_reg[3]),
        .O(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in[0]),
        .Q(rx_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in[1]),
        .Q(rx_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in[2]),
        .Q(rx_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in[3]),
        .Q(rx_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in[4]),
        .Q(rx_cnt_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_cnt_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in[5]),
        .Q(rx_cnt_reg[5]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    rx_done_o_i_1
       (.I0(rx_cnt_reg[5]),
        .I1(rx_cnt_reg[4]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[3]),
        .I4(rx_cnt_reg[2]),
        .I5(rx_cnt_reg[1]),
        .O(rx_done_o0));
  FDCE #(
    .INIT(1'b0)) 
    rx_done_o_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(rx_done_o0),
        .Q(rx_done_s));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \spi_cmd[3]_i_1 
       (.I0(rx_cnt_reg[2]),
        .I1(rx_cnt_reg[3]),
        .I2(rx_cnt_reg[0]),
        .I3(rx_cnt_reg[1]),
        .I4(rx_cnt_reg[5]),
        .I5(rx_cnt_reg[4]),
        .O(spi_cmd_en));
  FDCE #(
    .INIT(1'b0)) 
    spi_cmd_en_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(spi_cmd_en),
        .CLR(SPI_MISO_O_TRI),
        .D(1'b1),
        .Q(spi_cmd4b_en_s));
  FDCE #(
    .INIT(1'b0)) 
    \spi_cmd_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(spi_cmd_en),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[0]),
        .Q(spi_cmd4b_s[0]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_cmd_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(spi_cmd_en),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[1]),
        .Q(spi_cmd4b_s[1]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_cmd_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(spi_cmd_en),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[2]),
        .Q(spi_cmd4b_s[2]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_cmd_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(spi_cmd_en),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[3]),
        .Q(spi_cmd4b_s[3]));
  LUT6 #(
    .INIT(64'h555577775555777F)) 
    \spi_rx_word[40]_i_1 
       (.I0(rx_cnt_reg[5]),
        .I1(rx_cnt_reg[3]),
        .I2(rx_cnt_reg[1]),
        .I3(rx_cnt_reg[2]),
        .I4(rx_cnt_reg[4]),
        .I5(rx_cnt_reg[0]),
        .O(\spi_rx_word[40]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[9]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[10]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[11]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[12]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[13]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[14]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[15]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[16]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[17]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[18]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[0]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[19]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[20]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[21]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[22]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[23]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[24]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[25]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[26]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[27]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[28]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[1]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[29]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[30]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[32] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[31]),
        .Q(Q[32]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[33] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[32]),
        .Q(Q[33]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[34] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[33]),
        .Q(Q[34]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[35] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[34]),
        .Q(Q[35]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[36] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[35]),
        .Q(Q[36]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[37] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[36]),
        .Q(Q[37]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[38] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[37]),
        .Q(Q[38]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[39] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[38]),
        .Q(Q[39]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[2]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[40] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[39]),
        .Q(Q[40]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[3]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[4]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[5]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[6]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[7]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \spi_rx_word_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\spi_rx_word[40]_i_1_n_0 ),
        .CLR(SPI_MISO_O_TRI),
        .D(Q[8]),
        .Q(Q[9]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[10]_i_1 
       (.I0(spi_tx_word_1d0[10]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [1]),
        .O(\spi_tx_word_1d[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[11]_i_1 
       (.I0(spi_tx_word_1d0[11]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [2]),
        .O(\spi_tx_word_1d[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[12]_i_1 
       (.I0(spi_tx_word_1d0[12]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [3]),
        .O(\spi_tx_word_1d[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[13]_i_1 
       (.I0(spi_tx_word_1d0[13]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [4]),
        .O(\spi_tx_word_1d[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[14]_i_1 
       (.I0(spi_tx_word_1d0[14]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [5]),
        .O(\spi_tx_word_1d[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[15]_i_1 
       (.I0(spi_tx_word_1d0[15]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [6]),
        .O(\spi_tx_word_1d[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[16]_i_1 
       (.I0(spi_tx_word_1d0[16]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [7]),
        .O(\spi_tx_word_1d[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[17]_i_1 
       (.I0(spi_tx_word_1d0[17]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[17]_0 ),
        .O(\spi_tx_word_1d[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[18]_i_1 
       (.I0(spi_tx_word_1d0[18]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[18]_0 ),
        .O(\spi_tx_word_1d[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[19]_i_1 
       (.I0(spi_tx_word_1d0[19]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[19]_0 ),
        .O(\spi_tx_word_1d[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[20]_i_1 
       (.I0(spi_tx_word_1d0[20]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[20]_0 ),
        .O(\spi_tx_word_1d[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[21]_i_1 
       (.I0(spi_tx_word_1d0[21]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[21]_0 ),
        .O(\spi_tx_word_1d[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[22]_i_1 
       (.I0(spi_tx_word_1d0[22]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[22]_0 ),
        .O(\spi_tx_word_1d[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[23]_i_1 
       (.I0(spi_tx_word_1d0[23]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[23]_0 ),
        .O(\spi_tx_word_1d[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[24]_i_1 
       (.I0(spi_tx_word_1d0[24]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [8]),
        .O(\spi_tx_word_1d[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[25]_i_1 
       (.I0(spi_tx_word_1d0[25]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[25]_0 ),
        .O(\spi_tx_word_1d[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[26]_i_1 
       (.I0(spi_tx_word_1d0[26]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[26]_0 ),
        .O(\spi_tx_word_1d[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[27]_i_1 
       (.I0(spi_tx_word_1d0[27]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[27]_0 ),
        .O(\spi_tx_word_1d[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[28]_i_1 
       (.I0(spi_tx_word_1d0[28]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[28]_0 ),
        .O(\spi_tx_word_1d[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[29]_i_1 
       (.I0(spi_tx_word_1d0[29]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[29]_0 ),
        .O(\spi_tx_word_1d[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[30]_i_1 
       (.I0(spi_tx_word_1d0[30]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[30]_0 ),
        .O(\spi_tx_word_1d[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[31]_i_1 
       (.I0(spi_tx_word_1d0[31]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[31]_0 ),
        .O(\spi_tx_word_1d[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[32]_i_1 
       (.I0(spi_tx_word_1d0[32]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [9]),
        .O(\spi_tx_word_1d[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAF0AACCAAF0AA)) 
    \spi_tx_word_1d[33]_i_1 
       (.I0(\tx_crc5_reg_n_0_[0] ),
        .I1(\spi_tx_word_1d_reg[33]_0 ),
        .I2(spi_tx_word_1d0[33]),
        .I3(\spi_tx_word_1d[37]_i_2_n_0 ),
        .I4(tx_ready_s),
        .I5(tx_lock_reg_0),
        .O(spi_tx_word_1d2_out[33]));
  LUT6 #(
    .INIT(64'hF0AAF0AACCAAF0AA)) 
    \spi_tx_word_1d[34]_i_1 
       (.I0(\tx_crc5_reg_n_0_[1] ),
        .I1(\spi_tx_word_1d_reg[34]_0 ),
        .I2(spi_tx_word_1d0[34]),
        .I3(\spi_tx_word_1d[37]_i_2_n_0 ),
        .I4(tx_ready_s),
        .I5(tx_lock_reg_0),
        .O(spi_tx_word_1d2_out[34]));
  LUT6 #(
    .INIT(64'hF0AAF0AACCAAF0AA)) 
    \spi_tx_word_1d[35]_i_1 
       (.I0(\tx_crc5_reg_n_0_[2] ),
        .I1(\spi_tx_word_1d_reg[35]_0 ),
        .I2(spi_tx_word_1d0[35]),
        .I3(\spi_tx_word_1d[37]_i_2_n_0 ),
        .I4(tx_ready_s),
        .I5(tx_lock_reg_0),
        .O(spi_tx_word_1d2_out[35]));
  LUT6 #(
    .INIT(64'hF0AAF0AACCAAF0AA)) 
    \spi_tx_word_1d[36]_i_1 
       (.I0(\tx_crc5_reg_n_0_[3] ),
        .I1(\spi_tx_word_1d_reg[36]_0 ),
        .I2(spi_tx_word_1d0[36]),
        .I3(\spi_tx_word_1d[37]_i_2_n_0 ),
        .I4(tx_ready_s),
        .I5(tx_lock_reg_0),
        .O(spi_tx_word_1d2_out[36]));
  LUT6 #(
    .INIT(64'hF0AAF0AACCAAF0AA)) 
    \spi_tx_word_1d[37]_i_1 
       (.I0(\tx_crc5_reg_n_0_[4] ),
        .I1(\spi_tx_word_1d_reg[37]_0 ),
        .I2(spi_tx_word_1d0[37]),
        .I3(\spi_tx_word_1d[37]_i_2_n_0 ),
        .I4(tx_ready_s),
        .I5(tx_lock_reg_0),
        .O(spi_tx_word_1d2_out[37]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hDDDF)) 
    \spi_tx_word_1d[37]_i_2 
       (.I0(tx_cnt_reg[5]),
        .I1(tx_lock_crc5_reg_n_0),
        .I2(tx_cnt_reg[4]),
        .I3(tx_cnt_reg[3]),
        .O(\spi_tx_word_1d[37]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[38]_i_1 
       (.I0(spi_tx_word_1d0[38]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[38]_0 ),
        .O(\spi_tx_word_1d[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \spi_tx_word_1d[39]_i_1 
       (.I0(tx_cnt_reg[5]),
        .I1(tx_cnt_reg[3]),
        .I2(tx_cnt_reg[4]),
        .I3(tx_cnt_reg[2]),
        .I4(tx_cnt_reg[0]),
        .I5(tx_cnt_reg[1]),
        .O(p_3_in));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[39]_i_2 
       (.I0(spi_tx_word_1d0[39]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[39]_1 ),
        .O(\spi_tx_word_1d[39]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \spi_tx_word_1d[9]_i_1 
       (.I0(spi_tx_word_1d0[9]),
        .I1(tx_lock_reg_0),
        .I2(tx_ready_s),
        .I3(\spi_tx_word_1d_reg[32]_0 [0]),
        .O(\spi_tx_word_1d[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[10]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[11]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[12]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[13]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[14]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[15]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[16]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[16]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[17]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[17]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[18]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[18]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[19]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[19]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[20]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[20]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[21]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[21]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[22]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[22]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[23]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[23]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[24]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[24]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[25]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[25]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[26]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[26]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[27]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[27]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[28]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[28]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[29]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[29]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[30]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[30]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[31]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[31]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[32]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[32] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[32]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[33]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[33] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(spi_tx_word_1d2_out[33]),
        .Q(spi_tx_word_1d0[34]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[34] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(spi_tx_word_1d2_out[34]),
        .Q(spi_tx_word_1d0[35]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[35] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(spi_tx_word_1d2_out[35]),
        .Q(spi_tx_word_1d0[36]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[36] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(spi_tx_word_1d2_out[36]),
        .Q(spi_tx_word_1d0[37]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[37] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(spi_tx_word_1d2_out[37]),
        .Q(spi_tx_word_1d0[38]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[38] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[38]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[39]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[39] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[39]_i_2_n_0 ),
        .Q(\spi_tx_word_1d_reg[39]_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d_reg[8]_0 ),
        .Q(spi_tx_word_1d0[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_tx_word_1d_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(p_3_in),
        .CLR(SPI_MISO_O_TRI),
        .D(\spi_tx_word_1d[9]_i_1_n_0 ),
        .Q(spi_tx_word_1d0[10]));
  LUT6 #(
    .INIT(64'hFF000000FE000000)) 
    \spi_tx_word_o[24]_i_5 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[14]),
        .I3(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .I4(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] ),
        .I5(Q[13]),
        .O(\spi_rx_word_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \tx_cnt[0]_i_1 
       (.I0(tx_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tx_cnt[1]_i_1 
       (.I0(tx_cnt_reg[0]),
        .I1(tx_cnt_reg[1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \tx_cnt[2]_i_1 
       (.I0(tx_cnt_reg[1]),
        .I1(tx_cnt_reg[0]),
        .I2(tx_cnt_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tx_cnt[3]_i_1 
       (.I0(tx_cnt_reg[2]),
        .I1(tx_cnt_reg[0]),
        .I2(tx_cnt_reg[1]),
        .I3(tx_cnt_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tx_cnt[4]_i_1 
       (.I0(tx_cnt_reg[3]),
        .I1(tx_cnt_reg[1]),
        .I2(tx_cnt_reg[0]),
        .I3(tx_cnt_reg[2]),
        .I4(tx_cnt_reg[4]),
        .O(p_0_in__0[4]));
  LUT4 #(
    .INIT(16'h0D00)) 
    \tx_cnt[5]_i_1 
       (.I0(spi_cmd4b_s[0]),
        .I1(spi_cmd4b_s[1]),
        .I2(spi_cmd4b_s[3]),
        .I3(spi_cmd4b_s[2]),
        .O(sel));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \tx_cnt[5]_i_2 
       (.I0(tx_cnt_reg[4]),
        .I1(tx_cnt_reg[2]),
        .I2(tx_cnt_reg[0]),
        .I3(tx_cnt_reg[1]),
        .I4(tx_cnt_reg[3]),
        .I5(tx_cnt_reg[5]),
        .O(p_0_in__0[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_cnt_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(sel),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in__0[0]),
        .Q(tx_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_cnt_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(sel),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in__0[1]),
        .Q(tx_cnt_reg[1]));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_cnt_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(sel),
        .D(p_0_in__0[2]),
        .PRE(SPI_MISO_O_TRI),
        .Q(tx_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_cnt_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(sel),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in__0[3]),
        .Q(tx_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_cnt_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(sel),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in__0[4]),
        .Q(tx_cnt_reg[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \tx_cnt_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(sel),
        .CLR(SPI_MISO_O_TRI),
        .D(p_0_in__0[5]),
        .Q(tx_cnt_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \tx_crc5[0]_i_1 
       (.I0(SPI_MISO_O_TRI),
        .I1(\spi_tx_word_1d_reg[39]_0 ),
        .I2(\tx_crc5_reg_n_0_[4] ),
        .O(\tx_crc5[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \tx_crc5[2]_i_1 
       (.I0(SPI_MISO_O_TRI),
        .I1(\spi_tx_word_1d_reg[39]_0 ),
        .I2(\tx_crc5_reg_n_0_[4] ),
        .I3(\tx_crc5_reg_n_0_[1] ),
        .O(\tx_crc5[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1E)) 
    \tx_crc5[4]_i_1 
       (.I0(tx_cnt_reg[4]),
        .I1(tx_cnt_reg[3]),
        .I2(tx_cnt_reg[5]),
        .O(crc0));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_crc5_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(crc0),
        .D(\tx_crc5[0]_i_1_n_0 ),
        .PRE(SPI_MISO_O_TRI),
        .Q(\tx_crc5_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_crc5_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(crc0),
        .D(\tx_crc5_reg_n_0_[0] ),
        .PRE(SPI_MISO_O_TRI),
        .Q(\tx_crc5_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_crc5_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(crc0),
        .D(\tx_crc5[2]_i_1_n_0 ),
        .PRE(SPI_MISO_O_TRI),
        .Q(\tx_crc5_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_crc5_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(crc0),
        .D(\tx_crc5_reg_n_0_[2] ),
        .PRE(SPI_MISO_O_TRI),
        .Q(\tx_crc5_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_crc5_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(crc0),
        .D(\tx_crc5_reg_n_0_[3] ),
        .PRE(SPI_MISO_O_TRI),
        .Q(\tx_crc5_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    tx_done_o_i_1
       (.I0(tx_cnt_reg[2]),
        .I1(tx_cnt_reg[3]),
        .I2(tx_cnt_reg[1]),
        .I3(tx_cnt_reg[0]),
        .I4(tx_cnt_reg[4]),
        .I5(tx_cnt_reg[5]),
        .O(tx_done_o_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    tx_done_o_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(tx_done_o_i_1_n_0),
        .Q(tx_done_s));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    tx_lock_crc5_i_1
       (.I0(tx_cnt_reg[5]),
        .I1(tx_cnt_reg[4]),
        .I2(tx_cnt_reg[3]),
        .I3(tx_lock_crc5_reg_n_0),
        .O(tx_lock_crc5_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    tx_lock_crc5_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(tx_lock_crc5_i_1_n_0),
        .Q(tx_lock_crc5_reg_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    tx_lock_i_1
       (.I0(p_3_in),
        .I1(tx_ready_s),
        .I2(tx_lock_reg_0),
        .O(tx_lock_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    tx_lock_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(1'b1),
        .CLR(SPI_MISO_O_TRI),
        .D(tx_lock_i_1_n_0),
        .Q(tx_lock_reg_0));
endmodule

module spi_wrap
   (Q,
    SPI_CLK_I_IBUF_BUFG,
    SPI_MISO_O_TRI,
    D,
    out);
  output [0:0]Q;
  input SPI_CLK_I_IBUF_BUFG;
  input SPI_MISO_O_TRI;
  input [0:0]D;
  input out;

  wire [0:0]D;
  wire [0:0]Q;
  wire SPI_CLK_I_IBUF_BUFG;
  wire SPI_MISO_O_TRI;
  wire [6:2]apb_addr_s;
  wire [1:1]apb_state_reg;
  wire [31:0]apb_wdata_s;
  wire [29:28]data32;
  wire [29:28]data35;
  wire i_spi_custom_logic_n_13;
  wire i_spi_custom_logic_n_14;
  wire i_spi_custom_logic_n_15;
  wire i_spi_custom_logic_n_16;
  wire i_spi_custom_logic_n_17;
  wire i_spi_custom_logic_n_18;
  wire i_spi_custom_logic_n_20;
  wire i_spi_custom_logic_n_21;
  wire i_spi_custom_logic_n_22;
  wire i_spi_custom_logic_n_23;
  wire i_spi_custom_logic_n_24;
  wire i_spi_custom_logic_n_25;
  wire i_spi_custom_logic_n_26;
  wire i_spi_custom_logic_n_27;
  wire i_spi_custom_logic_n_28;
  wire i_spi_custom_logic_n_29;
  wire i_spi_custom_logic_n_30;
  wire i_spi_custom_logic_n_31;
  wire i_spi_custom_logic_n_32;
  wire i_spi_custom_logic_n_33;
  wire i_spi_custom_logic_n_34;
  wire i_spi_custom_logic_n_35;
  wire i_spi_custom_logic_n_36;
  wire i_spi_custom_logic_n_37;
  wire i_spi_custom_logic_n_38;
  wire i_spi_custom_logic_n_39;
  wire i_spi_custom_logic_n_40;
  wire i_spi_custom_logic_n_41;
  wire i_spi_custom_logic_n_43;
  wire i_spi_custom_logic_n_44;
  wire i_spi_custom_logic_n_45;
  wire i_spi_custom_logic_n_46;
  wire i_spi_custom_logic_n_47;
  wire i_spi_custom_logic_n_48;
  wire i_spi_custom_logic_n_49;
  wire i_spi_custom_logic_n_50;
  wire i_spi_custom_logic_n_52;
  wire i_spi_custom_logic_n_53;
  wire i_spi_custom_logic_n_54;
  wire i_spi_custom_logic_n_55;
  wire i_spi_custom_logic_n_56;
  wire i_spi_custom_logic_n_57;
  wire i_spi_custom_logic_n_58;
  wire i_spi_custom_logic_n_59;
  wire i_spi_custom_logic_n_6;
  wire i_spi_custom_logic_n_60;
  wire i_spi_custom_logic_n_61;
  wire i_spi_custom_logic_n_62;
  wire i_spi_custom_logic_n_63;
  wire i_spi_custom_logic_n_64;
  wire i_spi_custom_logic_n_65;
  wire i_spi_custom_logic_n_66;
  wire i_spi_custom_logic_n_67;
  wire i_spi_custom_logic_n_68;
  wire i_spi_custom_logic_n_69;
  wire i_spi_custom_logic_n_7;
  wire i_spi_custom_logic_n_70;
  wire i_spi_custom_logic_n_71;
  wire i_spi_custom_logic_n_72;
  wire i_spi_custom_logic_n_73;
  wire i_spi_custom_logic_n_74;
  wire i_spi_custom_logic_n_75;
  wire i_spi_custom_logic_n_76;
  wire i_spi_custom_logic_n_77;
  wire i_spi_custom_logic_n_78;
  wire i_spi_custom_logic_n_79;
  wire i_spi_custom_logic_n_8;
  wire i_spi_custom_logic_n_80;
  wire i_spi_custom_logic_n_81;
  wire i_spi_custom_logic_n_82;
  wire i_spi_custom_logic_n_83;
  wire i_spi_custom_logic_n_84;
  wire i_spi_slave_common_n_1;
  wire i_spi_slave_common_n_2;
  wire i_spi_slave_common_n_3;
  wire i_spi_slave_common_n_40;
  wire i_spi_slave_common_n_41;
  wire i_spi_slave_common_n_42;
  wire i_spi_slave_common_n_43;
  wire i_spi_slave_common_n_44;
  wire i_spi_slave_common_n_46;
  wire i_spi_slave_common_n_47;
  wire i_spi_slave_common_n_48;
  wire i_spi_slave_common_n_49;
  wire i_spi_slave_common_n_50;
  wire i_spi_slave_common_n_51;
  wire i_spi_slave_common_n_52;
  wire i_spi_slave_common_n_53;
  wire i_spi_slave_common_n_54;
  wire i_spi_slave_common_n_55;
  wire i_w_icons_rf_n_0;
  wire i_w_icons_rf_n_1;
  wire i_w_icons_rf_n_10;
  wire i_w_icons_rf_n_100;
  wire i_w_icons_rf_n_101;
  wire i_w_icons_rf_n_102;
  wire i_w_icons_rf_n_103;
  wire i_w_icons_rf_n_104;
  wire i_w_icons_rf_n_105;
  wire i_w_icons_rf_n_106;
  wire i_w_icons_rf_n_107;
  wire i_w_icons_rf_n_108;
  wire i_w_icons_rf_n_109;
  wire i_w_icons_rf_n_11;
  wire i_w_icons_rf_n_110;
  wire i_w_icons_rf_n_111;
  wire i_w_icons_rf_n_112;
  wire i_w_icons_rf_n_113;
  wire i_w_icons_rf_n_114;
  wire i_w_icons_rf_n_115;
  wire i_w_icons_rf_n_116;
  wire i_w_icons_rf_n_117;
  wire i_w_icons_rf_n_12;
  wire i_w_icons_rf_n_13;
  wire i_w_icons_rf_n_14;
  wire i_w_icons_rf_n_15;
  wire i_w_icons_rf_n_16;
  wire i_w_icons_rf_n_17;
  wire i_w_icons_rf_n_18;
  wire i_w_icons_rf_n_19;
  wire i_w_icons_rf_n_2;
  wire i_w_icons_rf_n_20;
  wire i_w_icons_rf_n_21;
  wire i_w_icons_rf_n_22;
  wire i_w_icons_rf_n_23;
  wire i_w_icons_rf_n_28;
  wire i_w_icons_rf_n_29;
  wire i_w_icons_rf_n_3;
  wire i_w_icons_rf_n_30;
  wire i_w_icons_rf_n_31;
  wire i_w_icons_rf_n_32;
  wire i_w_icons_rf_n_33;
  wire i_w_icons_rf_n_34;
  wire i_w_icons_rf_n_35;
  wire i_w_icons_rf_n_36;
  wire i_w_icons_rf_n_37;
  wire i_w_icons_rf_n_38;
  wire i_w_icons_rf_n_39;
  wire i_w_icons_rf_n_4;
  wire i_w_icons_rf_n_40;
  wire i_w_icons_rf_n_41;
  wire i_w_icons_rf_n_5;
  wire i_w_icons_rf_n_50;
  wire i_w_icons_rf_n_51;
  wire i_w_icons_rf_n_52;
  wire i_w_icons_rf_n_53;
  wire i_w_icons_rf_n_54;
  wire i_w_icons_rf_n_55;
  wire i_w_icons_rf_n_56;
  wire i_w_icons_rf_n_57;
  wire i_w_icons_rf_n_58;
  wire i_w_icons_rf_n_59;
  wire i_w_icons_rf_n_6;
  wire i_w_icons_rf_n_60;
  wire i_w_icons_rf_n_61;
  wire i_w_icons_rf_n_62;
  wire i_w_icons_rf_n_63;
  wire i_w_icons_rf_n_64;
  wire i_w_icons_rf_n_65;
  wire i_w_icons_rf_n_66;
  wire i_w_icons_rf_n_67;
  wire i_w_icons_rf_n_68;
  wire i_w_icons_rf_n_69;
  wire i_w_icons_rf_n_7;
  wire i_w_icons_rf_n_70;
  wire i_w_icons_rf_n_71;
  wire i_w_icons_rf_n_72;
  wire i_w_icons_rf_n_73;
  wire i_w_icons_rf_n_74;
  wire i_w_icons_rf_n_75;
  wire i_w_icons_rf_n_76;
  wire i_w_icons_rf_n_77;
  wire i_w_icons_rf_n_78;
  wire i_w_icons_rf_n_79;
  wire i_w_icons_rf_n_8;
  wire i_w_icons_rf_n_80;
  wire i_w_icons_rf_n_81;
  wire i_w_icons_rf_n_82;
  wire i_w_icons_rf_n_83;
  wire i_w_icons_rf_n_84;
  wire i_w_icons_rf_n_85;
  wire i_w_icons_rf_n_86;
  wire i_w_icons_rf_n_87;
  wire i_w_icons_rf_n_88;
  wire i_w_icons_rf_n_89;
  wire i_w_icons_rf_n_9;
  wire i_w_icons_rf_n_90;
  wire i_w_icons_rf_n_91;
  wire i_w_icons_rf_n_92;
  wire i_w_icons_rf_n_93;
  wire i_w_icons_rf_n_94;
  wire i_w_icons_rf_n_95;
  wire i_w_icons_rf_n_96;
  wire i_w_icons_rf_n_97;
  wire i_w_icons_rf_n_98;
  wire i_w_icons_rf_n_99;
  wire [31:0]in18;
  wire out;
  wire [31:31]p_0_in;
  wire reg_rec_stim_control_rec_en2_out;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_2_n_0 ;
  wire [35:32]spi_rx_word_s;
  wire [3:0]state;
  wire [7:0]stim_mask_en_s;
  wire tx_done_s;
  wire tx_ready_s;

  spi_custom_logic i_spi_custom_logic
       (.D(i_spi_custom_logic_n_49),
        .E(i_spi_custom_logic_n_6),
        .\FSM_onehot_apb_state_reg[0]_0 (i_spi_custom_logic_n_8),
        .\FSM_onehot_apb_state_reg[1]_0 (i_spi_custom_logic_n_50),
        .\FSM_sequential_state_reg[0]_0 (i_spi_custom_logic_n_52),
        .\FSM_sequential_state_reg[0]_1 (i_spi_slave_common_n_54),
        .\FSM_sequential_state_reg[1]_0 (i_spi_slave_common_n_49),
        .\FSM_sequential_state_reg[2]_0 (i_spi_custom_logic_n_28),
        .\FSM_sequential_state_reg[2]_1 (reg_rec_stim_control_rec_en2_out),
        .\FSM_sequential_state_reg[2]_2 (i_spi_custom_logic_n_45),
        .\FSM_sequential_state_reg[2]_3 (i_spi_slave_common_n_50),
        .\FSM_sequential_state_reg[3]_0 (i_spi_custom_logic_n_7),
        .\FSM_sequential_state_reg[3]_1 (state),
        .\FSM_sequential_state_reg[3]_2 (i_spi_custom_logic_n_53),
        .\FSM_sequential_state_reg[3]_3 (i_spi_slave_common_n_52),
        .\FSM_sequential_state_reg[3]_4 (i_spi_slave_common_n_51),
        .Q({i_w_icons_rf_n_90,i_w_icons_rf_n_91}),
        .SPI_CLK_I_IBUF_BUFG(SPI_CLK_I_IBUF_BUFG),
        .SPI_MISO_O_TRI(SPI_MISO_O_TRI),
        .apb_state_reg(apb_state_reg),
        .\apb_wdata_reg[3]_0 ({spi_rx_word_s,in18,i_spi_slave_common_n_40,i_spi_slave_common_n_41,i_spi_slave_common_n_42,i_spi_slave_common_n_43,i_spi_slave_common_n_44}),
        .\apb_wdata_reg[8]_0 (i_spi_slave_common_n_53),
        .\apb_wdata_reg[9]_0 (i_spi_slave_common_n_55),
        .apb_wdata_s(apb_wdata_s),
        .\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] (i_spi_slave_common_n_2),
        .\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] (i_spi_slave_common_n_3),
        .\reg_stim_mask2_p1_stim_mask2_g1_reg[0] (i_spi_slave_common_n_46),
        .\reg_stim_mask2_p2_stim_mask2_g2_reg[0] (i_spi_slave_common_n_47),
        .\spi_rx_word_reg[10] (i_spi_custom_logic_n_24),
        .\spi_rx_word_reg[10]_0 (i_spi_custom_logic_n_39),
        .\spi_rx_word_reg[10]_1 (i_spi_custom_logic_n_46),
        .\spi_rx_word_reg[11] (apb_addr_s),
        .\spi_rx_word_reg[11]_0 (i_spi_custom_logic_n_15),
        .\spi_rx_word_reg[11]_1 (i_spi_custom_logic_n_16),
        .\spi_rx_word_reg[11]_10 (i_spi_custom_logic_n_35),
        .\spi_rx_word_reg[11]_11 (i_spi_custom_logic_n_36),
        .\spi_rx_word_reg[11]_12 (i_spi_custom_logic_n_37),
        .\spi_rx_word_reg[11]_13 (i_spi_custom_logic_n_41),
        .\spi_rx_word_reg[11]_14 (i_spi_custom_logic_n_43),
        .\spi_rx_word_reg[11]_15 (i_spi_custom_logic_n_44),
        .\spi_rx_word_reg[11]_2 (i_spi_custom_logic_n_18),
        .\spi_rx_word_reg[11]_3 (i_spi_custom_logic_n_27),
        .\spi_rx_word_reg[11]_4 (i_spi_custom_logic_n_29),
        .\spi_rx_word_reg[11]_5 (i_spi_custom_logic_n_30),
        .\spi_rx_word_reg[11]_6 (i_spi_custom_logic_n_31),
        .\spi_rx_word_reg[11]_7 (i_spi_custom_logic_n_32),
        .\spi_rx_word_reg[11]_8 (i_spi_custom_logic_n_33),
        .\spi_rx_word_reg[11]_9 (i_spi_custom_logic_n_34),
        .\spi_rx_word_reg[13] (i_spi_custom_logic_n_47),
        .\spi_rx_word_reg[14] (i_spi_custom_logic_n_20),
        .\spi_rx_word_reg[5] (i_spi_custom_logic_n_14),
        .\spi_rx_word_reg[5]_0 (i_spi_custom_logic_n_17),
        .\spi_rx_word_reg[5]_1 (i_spi_custom_logic_n_21),
        .\spi_rx_word_reg[5]_2 (i_spi_custom_logic_n_22),
        .\spi_rx_word_reg[5]_3 (i_spi_custom_logic_n_23),
        .\spi_rx_word_reg[5]_4 (i_spi_custom_logic_n_25),
        .\spi_rx_word_reg[5]_5 (i_spi_custom_logic_n_26),
        .\spi_rx_word_reg[6] (p_0_in),
        .\spi_rx_word_reg[9] (i_spi_custom_logic_n_13),
        .\spi_rx_word_reg[9]_0 (i_spi_custom_logic_n_38),
        .\spi_rx_word_reg[9]_1 (i_spi_custom_logic_n_40),
        .\spi_rx_word_reg[9]_2 (i_spi_custom_logic_n_48),
        .\spi_tx_word_1d_reg[8] (i_spi_slave_common_n_1),
        .\spi_tx_word_o[8]_i_2_0 (i_w_icons_rf_n_69),
        .\spi_tx_word_o_reg[0]_0 (i_w_icons_rf_n_87),
        .\spi_tx_word_o_reg[0]_i_2_0 (i_w_icons_rf_n_86),
        .\spi_tx_word_o_reg[10]_0 (i_spi_custom_logic_n_83),
        .\spi_tx_word_o_reg[10]_1 (i_w_icons_rf_n_6),
        .\spi_tx_word_o_reg[10]_2 (i_w_icons_rf_n_66),
        .\spi_tx_word_o_reg[10]_3 (i_w_icons_rf_n_65),
        .\spi_tx_word_o_reg[11]_0 (i_spi_custom_logic_n_82),
        .\spi_tx_word_o_reg[11]_1 (i_w_icons_rf_n_7),
        .\spi_tx_word_o_reg[11]_2 (i_w_icons_rf_n_64),
        .\spi_tx_word_o_reg[11]_3 (i_w_icons_rf_n_63),
        .\spi_tx_word_o_reg[12]_0 (i_spi_custom_logic_n_81),
        .\spi_tx_word_o_reg[12]_1 (i_w_icons_rf_n_8),
        .\spi_tx_word_o_reg[12]_2 (i_w_icons_rf_n_62),
        .\spi_tx_word_o_reg[12]_3 (i_w_icons_rf_n_61),
        .\spi_tx_word_o_reg[13]_0 (i_spi_custom_logic_n_80),
        .\spi_tx_word_o_reg[13]_1 ({i_w_icons_rf_n_92,i_w_icons_rf_n_93,i_w_icons_rf_n_94,i_w_icons_rf_n_95,i_w_icons_rf_n_96,i_w_icons_rf_n_97,i_w_icons_rf_n_98,i_w_icons_rf_n_99,i_w_icons_rf_n_100,i_w_icons_rf_n_101,i_w_icons_rf_n_102,i_w_icons_rf_n_103,i_w_icons_rf_n_104,i_w_icons_rf_n_105}),
        .\spi_tx_word_o_reg[13]_2 (i_w_icons_rf_n_9),
        .\spi_tx_word_o_reg[13]_3 (i_w_icons_rf_n_60),
        .\spi_tx_word_o_reg[13]_4 (i_w_icons_rf_n_59),
        .\spi_tx_word_o_reg[14]_0 (i_spi_custom_logic_n_79),
        .\spi_tx_word_o_reg[14]_1 (i_w_icons_rf_n_2),
        .\spi_tx_word_o_reg[14]_2 (i_spi_slave_common_n_48),
        .\spi_tx_word_o_reg[15]_0 (i_spi_custom_logic_n_78),
        .\spi_tx_word_o_reg[15]_1 (i_w_icons_rf_n_3),
        .\spi_tx_word_o_reg[16]_0 (i_w_icons_rf_n_57),
        .\spi_tx_word_o_reg[16]_1 (i_w_icons_rf_n_58),
        .\spi_tx_word_o_reg[17]_0 (i_spi_custom_logic_n_77),
        .\spi_tx_word_o_reg[17]_1 (i_w_icons_rf_n_10),
        .\spi_tx_word_o_reg[17]_2 (i_w_icons_rf_n_56),
        .\spi_tx_word_o_reg[17]_3 (i_w_icons_rf_n_55),
        .\spi_tx_word_o_reg[18]_0 (i_spi_custom_logic_n_76),
        .\spi_tx_word_o_reg[18]_1 (i_w_icons_rf_n_11),
        .\spi_tx_word_o_reg[18]_2 (i_w_icons_rf_n_54),
        .\spi_tx_word_o_reg[18]_3 (i_w_icons_rf_n_53),
        .\spi_tx_word_o_reg[19]_0 (i_spi_custom_logic_n_75),
        .\spi_tx_word_o_reg[19]_1 (i_w_icons_rf_n_12),
        .\spi_tx_word_o_reg[19]_2 (i_w_icons_rf_n_52),
        .\spi_tx_word_o_reg[19]_3 (i_w_icons_rf_n_51),
        .\spi_tx_word_o_reg[1]_0 (i_w_icons_rf_n_85),
        .\spi_tx_word_o_reg[1]_i_2_0 (i_w_icons_rf_n_84),
        .\spi_tx_word_o_reg[20]_0 (i_spi_custom_logic_n_74),
        .\spi_tx_word_o_reg[20]_1 (i_w_icons_rf_n_13),
        .\spi_tx_word_o_reg[20]_2 (i_w_icons_rf_n_50),
        .\spi_tx_word_o_reg[20]_3 (i_w_icons_rf_n_41),
        .\spi_tx_word_o_reg[21]_0 (i_spi_custom_logic_n_73),
        .\spi_tx_word_o_reg[21]_1 (i_w_icons_rf_n_14),
        .\spi_tx_word_o_reg[21]_2 (i_w_icons_rf_n_40),
        .\spi_tx_word_o_reg[21]_3 (i_w_icons_rf_n_39),
        .\spi_tx_word_o_reg[22]_0 (i_spi_custom_logic_n_72),
        .\spi_tx_word_o_reg[22]_1 (i_w_icons_rf_n_15),
        .\spi_tx_word_o_reg[22]_2 (i_w_icons_rf_n_38),
        .\spi_tx_word_o_reg[22]_3 (i_w_icons_rf_n_37),
        .\spi_tx_word_o_reg[23]_0 (i_spi_custom_logic_n_71),
        .\spi_tx_word_o_reg[23]_1 (i_w_icons_rf_n_16),
        .\spi_tx_word_o_reg[23]_2 (i_w_icons_rf_n_36),
        .\spi_tx_word_o_reg[23]_3 (i_w_icons_rf_n_35),
        .\spi_tx_word_o_reg[24]_0 ({i_spi_custom_logic_n_54,i_spi_custom_logic_n_55,i_spi_custom_logic_n_56,i_spi_custom_logic_n_57,i_spi_custom_logic_n_58,i_spi_custom_logic_n_59,i_spi_custom_logic_n_60,i_spi_custom_logic_n_61,i_spi_custom_logic_n_62,i_spi_custom_logic_n_63}),
        .\spi_tx_word_o_reg[24]_1 (i_w_icons_rf_n_33),
        .\spi_tx_word_o_reg[24]_2 (i_w_icons_rf_n_34),
        .\spi_tx_word_o_reg[25]_0 (i_spi_custom_logic_n_70),
        .\spi_tx_word_o_reg[25]_1 (i_w_icons_rf_n_17),
        .\spi_tx_word_o_reg[25]_2 (i_w_icons_rf_n_32),
        .\spi_tx_word_o_reg[25]_3 (i_w_icons_rf_n_31),
        .\spi_tx_word_o_reg[26]_0 (i_spi_custom_logic_n_69),
        .\spi_tx_word_o_reg[26]_1 (i_w_icons_rf_n_18),
        .\spi_tx_word_o_reg[26]_2 (i_w_icons_rf_n_30),
        .\spi_tx_word_o_reg[26]_3 (i_w_icons_rf_n_29),
        .\spi_tx_word_o_reg[27]_0 (i_spi_custom_logic_n_68),
        .\spi_tx_word_o_reg[27]_1 ({i_w_icons_rf_n_106,i_w_icons_rf_n_107,i_w_icons_rf_n_108,i_w_icons_rf_n_109,i_w_icons_rf_n_110,i_w_icons_rf_n_111,i_w_icons_rf_n_112,i_w_icons_rf_n_113,i_w_icons_rf_n_114,i_w_icons_rf_n_115,i_w_icons_rf_n_116,i_w_icons_rf_n_117}),
        .\spi_tx_word_o_reg[27]_2 (i_w_icons_rf_n_19),
        .\spi_tx_word_o_reg[27]_3 (i_w_icons_rf_n_28),
        .\spi_tx_word_o_reg[27]_4 (i_w_icons_rf_n_23),
        .\spi_tx_word_o_reg[28]_0 (i_spi_custom_logic_n_67),
        .\spi_tx_word_o_reg[28]_1 (i_w_icons_rf_n_20),
        .\spi_tx_word_o_reg[29]_0 (i_spi_custom_logic_n_66),
        .\spi_tx_word_o_reg[29]_1 (i_w_icons_rf_n_21),
        .\spi_tx_word_o_reg[29]_2 (data32),
        .\spi_tx_word_o_reg[29]_3 ({i_w_icons_rf_n_88,i_w_icons_rf_n_89}),
        .\spi_tx_word_o_reg[29]_4 (data35),
        .\spi_tx_word_o_reg[2]_0 (i_w_icons_rf_n_83),
        .\spi_tx_word_o_reg[2]_i_2_0 (i_w_icons_rf_n_82),
        .\spi_tx_word_o_reg[30]_0 (i_spi_custom_logic_n_65),
        .\spi_tx_word_o_reg[30]_1 (i_w_icons_rf_n_22),
        .\spi_tx_word_o_reg[30]_2 (i_w_icons_rf_n_1),
        .\spi_tx_word_o_reg[31]_0 (i_spi_custom_logic_n_64),
        .\spi_tx_word_o_reg[31]_1 (i_w_icons_rf_n_4),
        .\spi_tx_word_o_reg[31]_2 (i_w_icons_rf_n_0),
        .\spi_tx_word_o_reg[3]_0 (i_w_icons_rf_n_81),
        .\spi_tx_word_o_reg[3]_i_2_0 (i_w_icons_rf_n_80),
        .\spi_tx_word_o_reg[4]_0 (i_w_icons_rf_n_79),
        .\spi_tx_word_o_reg[4]_i_2_0 (i_w_icons_rf_n_78),
        .\spi_tx_word_o_reg[5]_0 (i_w_icons_rf_n_77),
        .\spi_tx_word_o_reg[5]_i_2_0 (i_w_icons_rf_n_76),
        .\spi_tx_word_o_reg[6]_0 (i_w_icons_rf_n_75),
        .\spi_tx_word_o_reg[6]_i_2_0 (i_w_icons_rf_n_74),
        .\spi_tx_word_o_reg[7]_0 (i_w_icons_rf_n_73),
        .\spi_tx_word_o_reg[7]_1 (stim_mask_en_s),
        .\spi_tx_word_o_reg[7]_i_3_0 (i_w_icons_rf_n_72),
        .\spi_tx_word_o_reg[8]_0 (i_w_icons_rf_n_70),
        .\spi_tx_word_o_reg[8]_1 (i_w_icons_rf_n_71),
        .\spi_tx_word_o_reg[9]_0 (i_spi_custom_logic_n_84),
        .\spi_tx_word_o_reg[9]_1 (i_w_icons_rf_n_5),
        .\spi_tx_word_o_reg[9]_2 (i_w_icons_rf_n_68),
        .\spi_tx_word_o_reg[9]_3 (i_w_icons_rf_n_67),
        .tx_done_s(tx_done_s),
        .tx_ready_s(tx_ready_s));
  spi_slave_common i_spi_slave_common
       (.D(D),
        .\FSM_sequential_state_reg[0] (i_spi_custom_logic_n_50),
        .\FSM_sequential_state_reg[1] (i_spi_slave_common_n_54),
        .\FSM_sequential_state_reg[1]_0 (i_spi_custom_logic_n_52),
        .\FSM_sequential_state_reg[1]_1 (i_spi_custom_logic_n_53),
        .\FSM_sequential_state_reg[2] (i_spi_slave_common_n_51),
        .Q({spi_rx_word_s,in18,i_spi_slave_common_n_40,i_spi_slave_common_n_41,i_spi_slave_common_n_42,i_spi_slave_common_n_43,i_spi_slave_common_n_44}),
        .SPI_CLK_I_IBUF_BUFG(SPI_CLK_I_IBUF_BUFG),
        .SPI_MISO_O_TRI(SPI_MISO_O_TRI),
        .apb_state_reg(apb_state_reg),
        .\apb_wdata_reg[9] (state),
        .crc5_chk_o_reg_0(i_spi_slave_common_n_50),
        .\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] (i_spi_custom_logic_n_7),
        .\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 (i_spi_custom_logic_n_8),
        .\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_1 (apb_addr_s[2]),
        .\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] (i_spi_custom_logic_n_20),
        .rx_done_o_reg_0(i_spi_slave_common_n_53),
        .\spi_cmd_reg[0]_0 (i_spi_slave_common_n_49),
        .\spi_rx_word_reg[11]_0 (i_spi_slave_common_n_3),
        .\spi_rx_word_reg[11]_1 (i_spi_slave_common_n_47),
        .\spi_rx_word_reg[40]_0 (i_spi_slave_common_n_52),
        .\spi_rx_word_reg[40]_1 (i_spi_slave_common_n_55),
        .\spi_rx_word_reg[5]_0 (i_spi_slave_common_n_2),
        .\spi_rx_word_reg[5]_1 (i_spi_slave_common_n_46),
        .\spi_rx_word_reg[6]_0 (i_spi_slave_common_n_48),
        .\spi_tx_word_1d_reg[17]_0 (i_spi_custom_logic_n_84),
        .\spi_tx_word_1d_reg[18]_0 (i_spi_custom_logic_n_83),
        .\spi_tx_word_1d_reg[19]_0 (i_spi_custom_logic_n_82),
        .\spi_tx_word_1d_reg[20]_0 (i_spi_custom_logic_n_81),
        .\spi_tx_word_1d_reg[21]_0 (i_spi_custom_logic_n_80),
        .\spi_tx_word_1d_reg[22]_0 (i_spi_custom_logic_n_79),
        .\spi_tx_word_1d_reg[23]_0 (i_spi_custom_logic_n_78),
        .\spi_tx_word_1d_reg[25]_0 (i_spi_custom_logic_n_77),
        .\spi_tx_word_1d_reg[26]_0 (i_spi_custom_logic_n_76),
        .\spi_tx_word_1d_reg[27]_0 (i_spi_custom_logic_n_75),
        .\spi_tx_word_1d_reg[28]_0 (i_spi_custom_logic_n_74),
        .\spi_tx_word_1d_reg[29]_0 (i_spi_custom_logic_n_73),
        .\spi_tx_word_1d_reg[30]_0 (i_spi_custom_logic_n_72),
        .\spi_tx_word_1d_reg[31]_0 (i_spi_custom_logic_n_71),
        .\spi_tx_word_1d_reg[32]_0 ({i_spi_custom_logic_n_54,i_spi_custom_logic_n_55,i_spi_custom_logic_n_56,i_spi_custom_logic_n_57,i_spi_custom_logic_n_58,i_spi_custom_logic_n_59,i_spi_custom_logic_n_60,i_spi_custom_logic_n_61,i_spi_custom_logic_n_62,i_spi_custom_logic_n_63}),
        .\spi_tx_word_1d_reg[33]_0 (i_spi_custom_logic_n_70),
        .\spi_tx_word_1d_reg[34]_0 (i_spi_custom_logic_n_69),
        .\spi_tx_word_1d_reg[35]_0 (i_spi_custom_logic_n_68),
        .\spi_tx_word_1d_reg[36]_0 (i_spi_custom_logic_n_67),
        .\spi_tx_word_1d_reg[37]_0 (i_spi_custom_logic_n_66),
        .\spi_tx_word_1d_reg[38]_0 (i_spi_custom_logic_n_65),
        .\spi_tx_word_1d_reg[39]_0 (Q),
        .\spi_tx_word_1d_reg[39]_1 (i_spi_custom_logic_n_64),
        .\spi_tx_word_1d_reg[8]_0 (i_spi_custom_logic_n_49),
        .tx_done_s(tx_done_s),
        .tx_lock_reg_0(i_spi_slave_common_n_1),
        .tx_ready_s(tx_ready_s));
  w_icons_rf i_w_icons_rf
       (.E(reg_rec_stim_control_rec_en2_out),
        .Q(data35),
        .SPI_CLK_I_IBUF_BUFG(SPI_CLK_I_IBUF_BUFG),
        .apb_wdata_s(apb_wdata_s),
        .\reg_adc_amp1_amp_gain_g1_reg[0]_0 (i_spi_custom_logic_n_41),
        .\reg_adc_amp2_amp_gain_g2_reg[31]_0 (i_spi_custom_logic_n_6),
        .\reg_chip_error_status1_chip_error_load_reg[31]_0 (\reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_2_n_0 ),
        .\reg_chip_error_status1_chip_error_load_reg[31]_1 (p_0_in),
        .\reg_chip_error_status2_chip_error_cmd_reg[0]_0 (i_spi_custom_logic_n_17),
        .\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 (i_spi_custom_logic_n_25),
        .\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 (i_spi_custom_logic_n_27),
        .\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 (i_spi_custom_logic_n_26),
        .\reg_rec_discharge_control_pw_discharge_reg[2]_0 (i_w_icons_rf_n_2),
        .\reg_rec_discharge_control_pw_discharge_reg[3]_0 (i_w_icons_rf_n_3),
        .\reg_rec_stim_control_stim_mask_en_reg[7]_0 (stim_mask_en_s),
        .\reg_stim_ch0_p0_stim0_interval_reg[15]_0 (i_spi_custom_logic_n_33),
        .\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 (i_spi_custom_logic_n_14),
        .\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 (i_spi_custom_logic_n_16),
        .\reg_stim_ch1_p0_stim1_interval_reg[15]_0 (i_spi_custom_logic_n_21),
        .\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 (i_spi_custom_logic_n_31),
        .\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 (i_spi_custom_logic_n_22),
        .\reg_stim_ch2_p0_stim2_interval_reg[15]_0 (i_spi_custom_logic_n_32),
        .\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[13]_0 (data32),
        .\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 (i_spi_custom_logic_n_44),
        .\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 (i_spi_custom_logic_n_48),
        .\reg_stim_ch3_p0_stim3_ic_reg[5]_0 ({i_w_icons_rf_n_88,i_w_icons_rf_n_89}),
        .\reg_stim_ch3_p0_stim3_interval_reg[15]_0 ({i_w_icons_rf_n_90,i_w_icons_rf_n_91}),
        .\reg_stim_ch3_p0_stim3_interval_reg[15]_1 (i_spi_custom_logic_n_45),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[0]_0 (i_w_icons_rf_n_57),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[10]_0 (i_w_icons_rf_n_29),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[11]_0 (i_w_icons_rf_n_23),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[1]_0 (i_w_icons_rf_n_55),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[2]_0 (i_w_icons_rf_n_53),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[3]_0 (i_w_icons_rf_n_51),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[4]_0 (i_w_icons_rf_n_41),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[5]_0 (i_w_icons_rf_n_39),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[6]_0 (i_w_icons_rf_n_37),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[7]_0 (i_w_icons_rf_n_35),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[8]_0 (i_w_icons_rf_n_33),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[9]_0 (i_w_icons_rf_n_31),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[0]_0 (i_w_icons_rf_n_86),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[10]_0 (i_w_icons_rf_n_65),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[11]_0 (i_w_icons_rf_n_63),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[12]_0 (i_w_icons_rf_n_61),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_0 (i_w_icons_rf_n_59),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 (i_spi_custom_logic_n_47),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[1]_0 (i_w_icons_rf_n_84),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[2]_0 (i_w_icons_rf_n_82),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[3]_0 (i_w_icons_rf_n_80),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[4]_0 (i_w_icons_rf_n_78),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[5]_0 (i_w_icons_rf_n_76),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[6]_0 (i_w_icons_rf_n_74),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[7]_0 (i_w_icons_rf_n_72),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[8]_0 (i_w_icons_rf_n_69),
        .\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[9]_0 (i_w_icons_rf_n_67),
        .reg_stim_ch3_pulse_p2_stim3_pol_reg_0(i_w_icons_rf_n_1),
        .\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 ({i_w_icons_rf_n_92,i_w_icons_rf_n_93,i_w_icons_rf_n_94,i_w_icons_rf_n_95,i_w_icons_rf_n_96,i_w_icons_rf_n_97,i_w_icons_rf_n_98,i_w_icons_rf_n_99,i_w_icons_rf_n_100,i_w_icons_rf_n_101,i_w_icons_rf_n_102,i_w_icons_rf_n_103,i_w_icons_rf_n_104,i_w_icons_rf_n_105}),
        .\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 ({i_w_icons_rf_n_106,i_w_icons_rf_n_107,i_w_icons_rf_n_108,i_w_icons_rf_n_109,i_w_icons_rf_n_110,i_w_icons_rf_n_111,i_w_icons_rf_n_112,i_w_icons_rf_n_113,i_w_icons_rf_n_114,i_w_icons_rf_n_115,i_w_icons_rf_n_116,i_w_icons_rf_n_117}),
        .\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 (i_spi_custom_logic_n_46),
        .reg_stim_ch3_pulse_p2_stim3_range_reg_0(i_w_icons_rf_n_0),
        .\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 (i_spi_custom_logic_n_40),
        .\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 (i_spi_custom_logic_n_37),
        .\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 (i_spi_custom_logic_n_43),
        .\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 (i_spi_custom_logic_n_36),
        .\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 (i_spi_custom_logic_n_13),
        .\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 (i_spi_custom_logic_n_15),
        .\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 (i_spi_custom_logic_n_39),
        .\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 (i_spi_custom_logic_n_35),
        .\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 (i_spi_custom_logic_n_38),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 (i_spi_custom_logic_n_34),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[10]_0 (i_w_icons_rf_n_6),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[11]_0 (i_w_icons_rf_n_7),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[12]_0 (i_w_icons_rf_n_8),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[13]_0 (i_w_icons_rf_n_9),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[17]_0 (i_w_icons_rf_n_10),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[18]_0 (i_w_icons_rf_n_11),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[19]_0 (i_w_icons_rf_n_12),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[20]_0 (i_w_icons_rf_n_13),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[21]_0 (i_w_icons_rf_n_14),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[22]_0 (i_w_icons_rf_n_15),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[23]_0 (i_w_icons_rf_n_16),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[25]_0 (i_w_icons_rf_n_17),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[26]_0 (i_w_icons_rf_n_18),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[27]_0 (i_w_icons_rf_n_19),
        .\reg_stim_mask4_p2_stim_mask4_g2_reg[9]_0 (i_w_icons_rf_n_5),
        .\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 (i_spi_custom_logic_n_18),
        .\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 (i_spi_custom_logic_n_30),
        .\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 (i_spi_custom_logic_n_23),
        .\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 (i_spi_custom_logic_n_29),
        .\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 (i_spi_custom_logic_n_24),
        .\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 (i_spi_custom_logic_n_28),
        .\spi_rx_word_reg[10] (i_w_icons_rf_n_28),
        .\spi_rx_word_reg[10]_0 (i_w_icons_rf_n_30),
        .\spi_rx_word_reg[10]_1 (i_w_icons_rf_n_32),
        .\spi_rx_word_reg[10]_10 (i_w_icons_rf_n_62),
        .\spi_rx_word_reg[10]_11 (i_w_icons_rf_n_64),
        .\spi_rx_word_reg[10]_12 (i_w_icons_rf_n_66),
        .\spi_rx_word_reg[10]_13 (i_w_icons_rf_n_68),
        .\spi_rx_word_reg[10]_14 (i_w_icons_rf_n_70),
        .\spi_rx_word_reg[10]_15 (i_w_icons_rf_n_71),
        .\spi_rx_word_reg[10]_2 (i_w_icons_rf_n_36),
        .\spi_rx_word_reg[10]_3 (i_w_icons_rf_n_38),
        .\spi_rx_word_reg[10]_4 (i_w_icons_rf_n_40),
        .\spi_rx_word_reg[10]_5 (i_w_icons_rf_n_50),
        .\spi_rx_word_reg[10]_6 (i_w_icons_rf_n_52),
        .\spi_rx_word_reg[10]_7 (i_w_icons_rf_n_54),
        .\spi_rx_word_reg[10]_8 (i_w_icons_rf_n_56),
        .\spi_rx_word_reg[10]_9 (i_w_icons_rf_n_60),
        .\spi_rx_word_reg[11] (i_w_icons_rf_n_4),
        .\spi_rx_word_reg[11]_0 (i_w_icons_rf_n_20),
        .\spi_rx_word_reg[11]_1 (i_w_icons_rf_n_21),
        .\spi_rx_word_reg[11]_10 (i_w_icons_rf_n_83),
        .\spi_rx_word_reg[11]_11 (i_w_icons_rf_n_85),
        .\spi_rx_word_reg[11]_12 (i_w_icons_rf_n_87),
        .\spi_rx_word_reg[11]_2 (i_w_icons_rf_n_22),
        .\spi_rx_word_reg[11]_3 (i_w_icons_rf_n_34),
        .\spi_rx_word_reg[11]_4 (i_w_icons_rf_n_58),
        .\spi_rx_word_reg[11]_5 (i_w_icons_rf_n_73),
        .\spi_rx_word_reg[11]_6 (i_w_icons_rf_n_75),
        .\spi_rx_word_reg[11]_7 (i_w_icons_rf_n_77),
        .\spi_rx_word_reg[11]_8 (i_w_icons_rf_n_79),
        .\spi_rx_word_reg[11]_9 (i_w_icons_rf_n_81),
        .\spi_tx_word_o_reg[14] (apb_addr_s));
  LUT1 #(
    .INIT(2'h1)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_2 
       (.I0(out),
        .O(\reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux[13]_i_2_n_0 ));
endmodule

module w_icons_core
   (data_sync1_reg,
    Q,
    CLK_REF_I_IBUF_BUFG,
    SPI_CLK_I_IBUF_BUFG,
    SPI_MISO_O_TRI,
    RESET_N_I_IBUF,
    D);
  output data_sync1_reg;
  output [0:0]Q;
  input CLK_REF_I_IBUF_BUFG;
  input SPI_CLK_I_IBUF_BUFG;
  input SPI_MISO_O_TRI;
  input RESET_N_I_IBUF;
  input [0:0]D;

  wire CLK_REF_I_IBUF_BUFG;
  wire [0:0]D;
  wire [0:0]Q;
  wire RESET_N_I_IBUF;
  wire SPI_CLK_I_IBUF_BUFG;
  wire SPI_MISO_O_TRI;
  wire data_sync1_reg;
  wire \i_w_icons_sync_rst/i_common_reset_sync_spi/reset_release_sync ;

  spi_wrap i_spi_wrap
       (.D(D),
        .Q(Q),
        .SPI_CLK_I_IBUF_BUFG(SPI_CLK_I_IBUF_BUFG),
        .SPI_MISO_O_TRI(SPI_MISO_O_TRI),
        .out(\i_w_icons_sync_rst/i_common_reset_sync_spi/reset_release_sync ));
  w_icons_mgmt i_w_icons_mgmt
       (.CLK_REF_I_IBUF_BUFG(CLK_REF_I_IBUF_BUFG),
        .RESET_N_I_IBUF(RESET_N_I_IBUF),
        .SPI_CLK_I_IBUF_BUFG(SPI_CLK_I_IBUF_BUFG),
        .data_sync1_reg(data_sync1_reg),
        .out(\i_w_icons_sync_rst/i_common_reset_sync_spi/reset_release_sync ));
endmodule

module w_icons_mgmt
   (out,
    data_sync1_reg,
    CLK_REF_I_IBUF_BUFG,
    SPI_CLK_I_IBUF_BUFG,
    RESET_N_I_IBUF);
  output out;
  output data_sync1_reg;
  input CLK_REF_I_IBUF_BUFG;
  input SPI_CLK_I_IBUF_BUFG;
  input RESET_N_I_IBUF;

  wire CLK_REF_I_IBUF_BUFG;
  wire RESET_N_I_IBUF;
  wire SPI_CLK_I_IBUF_BUFG;
  wire data_sync1_reg;
  wire out;

  w_icons_sync_rst i_w_icons_sync_rst
       (.CLK_REF_I_IBUF_BUFG(CLK_REF_I_IBUF_BUFG),
        .RESET_N_I_IBUF(RESET_N_I_IBUF),
        .SPI_CLK_I_IBUF_BUFG(SPI_CLK_I_IBUF_BUFG),
        .data_sync1_reg(data_sync1_reg),
        .out(out));
endmodule

module w_icons_rf
   (reg_stim_ch3_pulse_p2_stim3_range_reg_0,
    reg_stim_ch3_pulse_p2_stim3_pol_reg_0,
    \reg_rec_discharge_control_pw_discharge_reg[2]_0 ,
    \reg_rec_discharge_control_pw_discharge_reg[3]_0 ,
    \spi_rx_word_reg[11] ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[9]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[10]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[11]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[12]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[13]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[17]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[18]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[19]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[20]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[21]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[22]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[23]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[25]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[26]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[27]_0 ,
    \spi_rx_word_reg[11]_0 ,
    \spi_rx_word_reg[11]_1 ,
    \spi_rx_word_reg[11]_2 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[11]_0 ,
    Q,
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[13]_0 ,
    \spi_rx_word_reg[10] ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[10]_0 ,
    \spi_rx_word_reg[10]_0 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[9]_0 ,
    \spi_rx_word_reg[10]_1 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[8]_0 ,
    \spi_rx_word_reg[11]_3 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[7]_0 ,
    \spi_rx_word_reg[10]_2 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[6]_0 ,
    \spi_rx_word_reg[10]_3 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[5]_0 ,
    \spi_rx_word_reg[10]_4 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[4]_0 ,
    \reg_rec_stim_control_stim_mask_en_reg[7]_0 ,
    \spi_rx_word_reg[10]_5 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[3]_0 ,
    \spi_rx_word_reg[10]_6 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[2]_0 ,
    \spi_rx_word_reg[10]_7 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[1]_0 ,
    \spi_rx_word_reg[10]_8 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[0]_0 ,
    \spi_rx_word_reg[11]_4 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_0 ,
    \spi_rx_word_reg[10]_9 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[12]_0 ,
    \spi_rx_word_reg[10]_10 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[11]_0 ,
    \spi_rx_word_reg[10]_11 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[10]_0 ,
    \spi_rx_word_reg[10]_12 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[9]_0 ,
    \spi_rx_word_reg[10]_13 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[8]_0 ,
    \spi_rx_word_reg[10]_14 ,
    \spi_rx_word_reg[10]_15 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[7]_0 ,
    \spi_rx_word_reg[11]_5 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[6]_0 ,
    \spi_rx_word_reg[11]_6 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[5]_0 ,
    \spi_rx_word_reg[11]_7 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[4]_0 ,
    \spi_rx_word_reg[11]_8 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[3]_0 ,
    \spi_rx_word_reg[11]_9 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[2]_0 ,
    \spi_rx_word_reg[11]_10 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[1]_0 ,
    \spi_rx_word_reg[11]_11 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[0]_0 ,
    \spi_rx_word_reg[11]_12 ,
    \reg_stim_ch3_p0_stim3_ic_reg[5]_0 ,
    \reg_stim_ch3_p0_stim3_interval_reg[15]_0 ,
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 ,
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 ,
    E,
    apb_wdata_s,
    SPI_CLK_I_IBUF_BUFG,
    \reg_chip_error_status1_chip_error_load_reg[31]_0 ,
    \reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ,
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ,
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ,
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ,
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ,
    \spi_tx_word_o_reg[14] ,
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ,
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ,
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ,
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ,
    \reg_stim_ch0_p0_stim0_interval_reg[15]_0 ,
    \reg_stim_ch1_p0_stim1_interval_reg[15]_0 ,
    \reg_stim_ch2_p0_stim2_interval_reg[15]_0 ,
    \reg_stim_ch3_p0_stim3_interval_reg[15]_1 ,
    \reg_chip_error_status1_chip_error_load_reg[31]_1 ,
    \reg_chip_error_status2_chip_error_cmd_reg[0]_0 ,
    \reg_adc_amp1_amp_gain_g1_reg[0]_0 ,
    \reg_adc_amp2_amp_gain_g2_reg[31]_0 ,
    \reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ,
    \reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ,
    \reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ,
    \reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ,
    \reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ,
    \reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ,
    \reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ,
    \reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ,
    \reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ,
    \reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ,
    \reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ,
    \reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ,
    \reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ,
    \reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ,
    \reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ,
    \reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ,
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ,
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 );
  output reg_stim_ch3_pulse_p2_stim3_range_reg_0;
  output reg_stim_ch3_pulse_p2_stim3_pol_reg_0;
  output \reg_rec_discharge_control_pw_discharge_reg[2]_0 ;
  output \reg_rec_discharge_control_pw_discharge_reg[3]_0 ;
  output \spi_rx_word_reg[11] ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[9]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[10]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[11]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[12]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[13]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[17]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[18]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[19]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[20]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[21]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[22]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[23]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[25]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[26]_0 ;
  output \reg_stim_mask4_p2_stim_mask4_g2_reg[27]_0 ;
  output \spi_rx_word_reg[11]_0 ;
  output \spi_rx_word_reg[11]_1 ;
  output \spi_rx_word_reg[11]_2 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[11]_0 ;
  output [1:0]Q;
  output [1:0]\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[13]_0 ;
  output \spi_rx_word_reg[10] ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[10]_0 ;
  output \spi_rx_word_reg[10]_0 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[9]_0 ;
  output \spi_rx_word_reg[10]_1 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[8]_0 ;
  output \spi_rx_word_reg[11]_3 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[7]_0 ;
  output \spi_rx_word_reg[10]_2 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[6]_0 ;
  output \spi_rx_word_reg[10]_3 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[5]_0 ;
  output \spi_rx_word_reg[10]_4 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[4]_0 ;
  output [7:0]\reg_rec_stim_control_stim_mask_en_reg[7]_0 ;
  output \spi_rx_word_reg[10]_5 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[3]_0 ;
  output \spi_rx_word_reg[10]_6 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[2]_0 ;
  output \spi_rx_word_reg[10]_7 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[1]_0 ;
  output \spi_rx_word_reg[10]_8 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[0]_0 ;
  output \spi_rx_word_reg[11]_4 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_0 ;
  output \spi_rx_word_reg[10]_9 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[12]_0 ;
  output \spi_rx_word_reg[10]_10 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[11]_0 ;
  output \spi_rx_word_reg[10]_11 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[10]_0 ;
  output \spi_rx_word_reg[10]_12 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[9]_0 ;
  output \spi_rx_word_reg[10]_13 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[8]_0 ;
  output \spi_rx_word_reg[10]_14 ;
  output \spi_rx_word_reg[10]_15 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[7]_0 ;
  output \spi_rx_word_reg[11]_5 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[6]_0 ;
  output \spi_rx_word_reg[11]_6 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[5]_0 ;
  output \spi_rx_word_reg[11]_7 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[4]_0 ;
  output \spi_rx_word_reg[11]_8 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[3]_0 ;
  output \spi_rx_word_reg[11]_9 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[2]_0 ;
  output \spi_rx_word_reg[11]_10 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[1]_0 ;
  output \spi_rx_word_reg[11]_11 ;
  output \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[0]_0 ;
  output \spi_rx_word_reg[11]_12 ;
  output [1:0]\reg_stim_ch3_p0_stim3_ic_reg[5]_0 ;
  output [1:0]\reg_stim_ch3_p0_stim3_interval_reg[15]_0 ;
  output [13:0]\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 ;
  output [11:0]\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 ;
  input [0:0]E;
  input [31:0]apb_wdata_s;
  input SPI_CLK_I_IBUF_BUFG;
  input \reg_chip_error_status1_chip_error_load_reg[31]_0 ;
  input [0:0]\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ;
  input [0:0]\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ;
  input [0:0]\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ;
  input [0:0]\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ;
  input [0:0]\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ;
  input [4:0]\spi_tx_word_o_reg[14] ;
  input [0:0]\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ;
  input [0:0]\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ;
  input [0:0]\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ;
  input [0:0]\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ;
  input [0:0]\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ;
  input [0:0]\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ;
  input [0:0]\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ;
  input [0:0]\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ;
  input [0:0]\reg_chip_error_status1_chip_error_load_reg[31]_1 ;
  input [0:0]\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ;
  input [0:0]\reg_adc_amp1_amp_gain_g1_reg[0]_0 ;
  input [0:0]\reg_adc_amp2_amp_gain_g2_reg[31]_0 ;
  input [0:0]\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ;
  input [0:0]\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ;
  input [0:0]\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ;
  input [0:0]\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ;
  input [0:0]\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ;
  input [0:0]\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ;
  input [0:0]\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ;
  input [0:0]\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ;
  input [0:0]\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ;
  input [0:0]\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ;
  input [0:0]\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ;
  input [0:0]\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ;
  input [0:0]\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ;
  input [0:0]\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ;
  input [0:0]\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ;
  input [0:0]\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ;
  input [0:0]\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ;
  input [0:0]\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ;

  wire [0:0]E;
  wire [1:0]Q;
  wire SPI_CLK_I_IBUF_BUFG;
  wire [31:0]apb_wdata_s;
  wire [29:16]data26;
  wire [29:16]data29;
  wire [27:16]data32;
  wire [27:16]data35;
  wire [0:0]\reg_adc_amp1_amp_gain_g1_reg[0]_0 ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[0] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[10] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[11] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[12] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[13] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[14] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[15] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[16] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[17] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[18] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[19] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[1] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[20] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[21] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[22] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[23] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[24] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[25] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[26] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[27] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[28] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[29] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[2] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[30] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[31] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[3] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[4] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[5] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[6] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[7] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[8] ;
  wire \reg_adc_amp1_amp_gain_g1_reg_n_0_[9] ;
  wire [0:0]\reg_adc_amp2_amp_gain_g2_reg[31]_0 ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[0] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[10] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[11] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[12] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[13] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[14] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[15] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[16] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[17] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[18] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[19] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[1] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[20] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[21] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[22] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[23] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[24] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[25] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[26] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[27] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[28] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[29] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[2] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[30] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[31] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[3] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[4] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[5] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[6] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[7] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[8] ;
  wire \reg_adc_amp2_amp_gain_g2_reg_n_0_[9] ;
  wire \reg_chip_error_status1_chip_error_load_reg[31]_0 ;
  wire [0:0]\reg_chip_error_status1_chip_error_load_reg[31]_1 ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[0] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[10] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[11] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[12] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[13] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[14] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[15] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[16] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[17] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[18] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[19] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[1] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[20] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[21] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[22] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[23] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[24] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[25] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[26] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[27] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[28] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[29] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[2] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[30] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[31] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[3] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[4] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[5] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[6] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[7] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[8] ;
  wire \reg_chip_error_status1_chip_error_load_reg_n_0_[9] ;
  wire [0:0]\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ;
  wire \reg_chip_error_status2_chip_error_cmd_reg_n_0_[0] ;
  wire \reg_chip_error_status2_chip_error_cmd_reg_n_0_[1] ;
  wire \reg_chip_error_status2_chip_error_cmd_reg_n_0_[2] ;
  wire \reg_chip_error_status2_chip_error_cmd_reg_n_0_[3] ;
  wire \reg_chip_error_status2_chip_error_crc5_reg_n_0_[0] ;
  wire \reg_chip_error_status2_chip_error_crc5_reg_n_0_[1] ;
  wire \reg_chip_error_status2_chip_error_crc5_reg_n_0_[2] ;
  wire \reg_chip_error_status2_chip_error_crc5_reg_n_0_[3] ;
  wire \reg_chip_error_status2_chip_error_crc5_reg_n_0_[4] ;
  wire [0:0]\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[0] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[10] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[11] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[12] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[13] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[14] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[15] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[16] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[17] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[18] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[19] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[1] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[20] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[21] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[22] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[23] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[24] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[25] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[26] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[27] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[28] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[29] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[2] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[30] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[31] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[3] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[4] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[5] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[6] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[7] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[8] ;
  wire \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[9] ;
  wire [0:0]\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[0] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[10] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[11] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[12] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[13] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[14] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[15] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[16] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[17] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[18] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[19] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[1] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[20] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[21] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[22] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[23] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[24] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[25] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[26] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[27] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[28] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[29] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[2] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[30] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[31] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[3] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[4] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[5] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[6] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[7] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[8] ;
  wire \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[9] ;
  wire [0:0]\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ;
  wire \reg_rec_discharge_control_div_clk_discharge_reg_n_0_[0] ;
  wire \reg_rec_discharge_control_div_clk_discharge_reg_n_0_[1] ;
  wire \reg_rec_discharge_control_div_clk_discharge_reg_n_0_[2] ;
  wire \reg_rec_discharge_control_div_clk_discharge_reg_n_0_[3] ;
  wire \reg_rec_discharge_control_div_clk_discharge_reg_n_0_[4] ;
  wire \reg_rec_discharge_control_div_clk_discharge_reg_n_0_[5] ;
  wire \reg_rec_discharge_control_div_clk_discharge_reg_n_0_[6] ;
  wire \reg_rec_discharge_control_div_clk_discharge_reg_n_0_[7] ;
  wire reg_rec_discharge_control_en_clk_discharge_reg_n_0;
  wire \reg_rec_discharge_control_pw_discharge_reg[2]_0 ;
  wire \reg_rec_discharge_control_pw_discharge_reg[3]_0 ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[0] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[10] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[11] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[12] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[13] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[14] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[15] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[16] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[17] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[18] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[19] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[1] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[2] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[3] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[4] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[5] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[6] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[7] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[8] ;
  wire \reg_rec_discharge_control_pw_discharge_reg_n_0_[9] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[0] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[10] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[11] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[1] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[2] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[3] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[4] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[5] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[6] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[7] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[8] ;
  wire \reg_rec_stim_control_div_clk_stim_reg_n_0_[9] ;
  wire reg_rec_stim_control_en_clk_stim_reg_n_0;
  wire reg_rec_stim_control_rec_en_reg_n_0;
  wire [7:0]\reg_rec_stim_control_stim_mask_en_reg[7]_0 ;
  wire \reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[0] ;
  wire \reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[1] ;
  wire \reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[2] ;
  wire \reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[3] ;
  wire \reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[4] ;
  wire \reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[5] ;
  wire \reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[6] ;
  wire \reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[7] ;
  wire \reg_stim_ch0_p0_stim0_ic_reg_n_0_[0] ;
  wire \reg_stim_ch0_p0_stim0_ic_reg_n_0_[1] ;
  wire \reg_stim_ch0_p0_stim0_ic_reg_n_0_[2] ;
  wire \reg_stim_ch0_p0_stim0_ic_reg_n_0_[3] ;
  wire \reg_stim_ch0_p0_stim0_ic_reg_n_0_[4] ;
  wire \reg_stim_ch0_p0_stim0_ic_reg_n_0_[5] ;
  wire \reg_stim_ch0_p0_stim0_ic_reg_n_0_[6] ;
  wire \reg_stim_ch0_p0_stim0_ic_reg_n_0_[7] ;
  wire [0:0]\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[0] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[10] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[11] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[12] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[13] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[14] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[15] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[1] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[2] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[3] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[4] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[5] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[6] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[7] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[8] ;
  wire \reg_stim_ch0_p0_stim0_interval_reg_n_0_[9] ;
  wire [0:0]\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[0] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[10] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[11] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[12] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[13] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[1] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[2] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[3] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[4] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[5] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[6] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[7] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[8] ;
  wire \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[9] ;
  wire reg_stim_ch0_pulse_p2_stim0_pol_reg_n_0;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[0] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[10] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[11] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[12] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[13] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[1] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[2] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[3] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[4] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[5] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[6] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[7] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[8] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[9] ;
  wire [0:0]\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[0] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[10] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[11] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[1] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[2] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[3] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[4] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[5] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[6] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[7] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[8] ;
  wire \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[9] ;
  wire reg_stim_ch0_pulse_p2_stim0_range_reg_n_0;
  wire \reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[0] ;
  wire \reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[1] ;
  wire \reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[2] ;
  wire \reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[3] ;
  wire \reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[4] ;
  wire \reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[5] ;
  wire \reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[6] ;
  wire \reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[7] ;
  wire \reg_stim_ch1_p0_stim1_ic_reg_n_0_[0] ;
  wire \reg_stim_ch1_p0_stim1_ic_reg_n_0_[1] ;
  wire \reg_stim_ch1_p0_stim1_ic_reg_n_0_[2] ;
  wire \reg_stim_ch1_p0_stim1_ic_reg_n_0_[3] ;
  wire \reg_stim_ch1_p0_stim1_ic_reg_n_0_[4] ;
  wire \reg_stim_ch1_p0_stim1_ic_reg_n_0_[5] ;
  wire \reg_stim_ch1_p0_stim1_ic_reg_n_0_[6] ;
  wire \reg_stim_ch1_p0_stim1_ic_reg_n_0_[7] ;
  wire [0:0]\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[0] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[10] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[11] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[12] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[13] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[14] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[15] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[1] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[2] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[3] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[4] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[5] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[6] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[7] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[8] ;
  wire \reg_stim_ch1_p0_stim1_interval_reg_n_0_[9] ;
  wire [0:0]\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[0] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[10] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[11] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[12] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[13] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[1] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[2] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[3] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[4] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[5] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[6] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[7] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[8] ;
  wire \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[9] ;
  wire reg_stim_ch1_pulse_p2_stim1_pol_reg_n_0;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[0] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[10] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[11] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[12] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[13] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[1] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[2] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[3] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[4] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[5] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[6] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[7] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[8] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[9] ;
  wire [0:0]\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[0] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[10] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[11] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[1] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[2] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[3] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[4] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[5] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[6] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[7] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[8] ;
  wire \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[9] ;
  wire reg_stim_ch1_pulse_p2_stim1_range_reg_n_0;
  wire \reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[0] ;
  wire \reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[1] ;
  wire \reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[2] ;
  wire \reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[3] ;
  wire \reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[4] ;
  wire \reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[5] ;
  wire \reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[6] ;
  wire \reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[7] ;
  wire \reg_stim_ch2_p0_stim2_ic_reg_n_0_[0] ;
  wire \reg_stim_ch2_p0_stim2_ic_reg_n_0_[1] ;
  wire \reg_stim_ch2_p0_stim2_ic_reg_n_0_[2] ;
  wire \reg_stim_ch2_p0_stim2_ic_reg_n_0_[3] ;
  wire \reg_stim_ch2_p0_stim2_ic_reg_n_0_[4] ;
  wire \reg_stim_ch2_p0_stim2_ic_reg_n_0_[5] ;
  wire \reg_stim_ch2_p0_stim2_ic_reg_n_0_[6] ;
  wire \reg_stim_ch2_p0_stim2_ic_reg_n_0_[7] ;
  wire [0:0]\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[0] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[10] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[11] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[12] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[13] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[14] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[15] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[1] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[2] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[3] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[4] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[5] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[6] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[7] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[8] ;
  wire \reg_stim_ch2_p0_stim2_interval_reg_n_0_[9] ;
  wire [1:0]\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[13]_0 ;
  wire [0:0]\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[0] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[10] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[11] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[12] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[13] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[1] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[2] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[3] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[4] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[5] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[6] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[7] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[8] ;
  wire \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[9] ;
  wire reg_stim_ch2_pulse_p2_stim2_pol_reg_n_0;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[0] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[10] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[11] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[12] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[13] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[1] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[2] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[3] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[4] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[5] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[6] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[7] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[8] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[9] ;
  wire [0:0]\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[0] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[10] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[11] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[1] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[2] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[3] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[4] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[5] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[6] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[7] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[8] ;
  wire \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[9] ;
  wire reg_stim_ch2_pulse_p2_stim2_range_reg_n_0;
  wire \reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[0] ;
  wire \reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[1] ;
  wire \reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[2] ;
  wire \reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[3] ;
  wire \reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[4] ;
  wire \reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[5] ;
  wire \reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[6] ;
  wire \reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[7] ;
  wire [1:0]\reg_stim_ch3_p0_stim3_ic_reg[5]_0 ;
  wire \reg_stim_ch3_p0_stim3_ic_reg_n_0_[0] ;
  wire \reg_stim_ch3_p0_stim3_ic_reg_n_0_[1] ;
  wire \reg_stim_ch3_p0_stim3_ic_reg_n_0_[2] ;
  wire \reg_stim_ch3_p0_stim3_ic_reg_n_0_[3] ;
  wire \reg_stim_ch3_p0_stim3_ic_reg_n_0_[6] ;
  wire \reg_stim_ch3_p0_stim3_ic_reg_n_0_[7] ;
  wire [1:0]\reg_stim_ch3_p0_stim3_interval_reg[15]_0 ;
  wire [0:0]\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[0] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[10] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[11] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[12] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[13] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[1] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[2] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[3] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[4] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[5] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[6] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[7] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[8] ;
  wire \reg_stim_ch3_p0_stim3_interval_reg_n_0_[9] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[0]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[10]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[11]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[1]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[2]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[3]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[4]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[5]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[6]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[7]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[8]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[9]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[0]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[10]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[11]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[12]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_0 ;
  wire [0:0]\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[1]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[2]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[3]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[4]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[5]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[6]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[7]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[8]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[9]_0 ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[0] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[10] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[11] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[12] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[13] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[1] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[2] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[3] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[4] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[5] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[6] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[7] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[8] ;
  wire \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[9] ;
  wire reg_stim_ch3_pulse_p2_stim3_pol_reg_0;
  wire reg_stim_ch3_pulse_p2_stim3_pol_reg_n_0;
  wire [13:0]\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 ;
  wire [11:0]\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 ;
  wire [0:0]\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ;
  wire reg_stim_ch3_pulse_p2_stim3_range_reg_0;
  wire reg_stim_ch3_pulse_p2_stim3_range_reg_n_0;
  wire [0:0]\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[0] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[10] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[11] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[12] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[13] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[14] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[15] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[16] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[17] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[18] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[19] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[1] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[20] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[21] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[22] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[23] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[24] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[25] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[26] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[27] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[28] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[29] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[2] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[30] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[31] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[3] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[4] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[5] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[6] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[7] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[8] ;
  wire \reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[0] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[10] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[11] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[12] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[13] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[14] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[15] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[16] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[17] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[18] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[19] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[1] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[20] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[21] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[22] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[23] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[24] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[25] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[26] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[27] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[28] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[29] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[2] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[30] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[31] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[3] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[4] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[5] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[6] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[7] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[8] ;
  wire \reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[0] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[10] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[11] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[12] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[13] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[14] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[15] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[16] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[17] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[18] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[19] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[1] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[20] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[21] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[22] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[23] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[24] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[25] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[26] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[27] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[28] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[29] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[2] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[30] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[31] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[3] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[4] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[5] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[6] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[7] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[8] ;
  wire \reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[0] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[10] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[11] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[12] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[13] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[14] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[15] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[16] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[17] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[18] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[19] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[1] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[20] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[21] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[22] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[23] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[24] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[25] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[26] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[27] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[28] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[29] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[2] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[30] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[31] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[3] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[4] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[5] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[6] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[7] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[8] ;
  wire \reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[0] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[10] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[11] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[12] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[13] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[14] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[15] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[16] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[17] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[18] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[19] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[1] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[20] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[21] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[22] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[23] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[24] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[25] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[26] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[27] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[28] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[29] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[2] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[30] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[31] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[3] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[4] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[5] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[6] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[7] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[8] ;
  wire \reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[0] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[10] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[11] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[12] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[13] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[14] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[15] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[16] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[17] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[18] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[19] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[1] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[20] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[21] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[22] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[23] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[24] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[25] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[26] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[27] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[28] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[29] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[2] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[30] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[31] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[3] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[4] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[5] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[6] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[7] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[8] ;
  wire \reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[0] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[10] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[11] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[12] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[13] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[14] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[15] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[16] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[17] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[18] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[19] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[1] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[20] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[21] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[22] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[23] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[24] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[25] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[26] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[27] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[28] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[29] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[2] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[30] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[31] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[3] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[4] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[5] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[6] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[7] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[8] ;
  wire \reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[0] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[10] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[11] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[12] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[13] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[14] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[15] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[16] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[17] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[18] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[19] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[1] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[20] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[21] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[22] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[23] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[24] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[25] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[26] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[27] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[28] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[29] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[2] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[30] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[31] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[3] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[4] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[5] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[6] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[7] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[8] ;
  wire \reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[0] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[10] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[11] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[12] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[13] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[14] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[15] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[16] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[17] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[18] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[19] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[1] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[20] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[21] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[22] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[23] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[24] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[25] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[26] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[27] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[28] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[29] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[2] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[30] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[31] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[3] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[4] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[5] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[6] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[7] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[8] ;
  wire \reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[10]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[11]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[12]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[13]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[17]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[18]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[19]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[20]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[21]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[22]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[23]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[25]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[26]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[27]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg[9]_0 ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[0] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[10] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[11] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[12] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[13] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[14] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[15] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[16] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[17] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[18] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[19] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[1] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[20] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[21] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[22] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[23] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[24] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[25] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[26] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[27] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[28] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[29] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[2] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[30] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[31] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[3] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[4] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[5] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[6] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[7] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[8] ;
  wire \reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[0] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[10] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[11] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[12] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[13] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[14] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[15] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[16] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[17] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[18] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[19] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[1] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[20] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[21] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[22] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[23] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[24] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[25] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[26] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[27] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[28] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[29] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[2] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[30] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[31] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[3] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[4] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[5] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[6] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[7] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[8] ;
  wire \reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[0] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[10] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[11] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[12] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[13] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[14] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[15] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[16] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[17] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[18] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[19] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[1] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[20] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[21] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[22] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[23] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[24] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[25] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[26] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[27] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[28] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[29] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[2] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[30] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[31] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[3] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[4] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[5] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[6] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[7] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[8] ;
  wire \reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[0] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[10] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[11] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[12] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[13] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[14] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[15] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[16] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[17] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[18] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[19] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[1] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[20] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[21] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[22] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[23] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[24] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[25] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[26] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[27] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[28] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[29] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[2] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[30] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[31] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[3] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[4] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[5] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[6] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[7] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[8] ;
  wire \reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[0] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[10] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[11] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[12] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[13] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[14] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[15] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[16] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[17] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[18] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[19] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[1] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[20] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[21] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[22] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[23] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[24] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[25] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[26] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[27] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[28] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[29] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[2] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[30] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[31] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[3] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[4] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[5] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[6] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[7] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[8] ;
  wire \reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[0] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[10] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[11] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[12] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[13] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[14] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[15] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[16] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[17] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[18] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[19] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[1] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[20] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[21] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[22] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[23] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[24] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[25] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[26] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[27] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[28] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[29] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[2] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[30] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[31] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[3] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[4] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[5] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[6] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[7] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[8] ;
  wire \reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[9] ;
  wire [0:0]\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[0] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[10] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[11] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[12] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[13] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[14] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[15] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[16] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[17] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[18] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[19] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[1] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[20] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[21] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[22] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[23] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[24] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[25] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[26] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[27] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[28] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[29] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[2] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[30] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[31] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[3] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[4] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[5] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[6] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[7] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[8] ;
  wire \reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[9] ;
  wire \spi_rx_word_reg[10] ;
  wire \spi_rx_word_reg[10]_0 ;
  wire \spi_rx_word_reg[10]_1 ;
  wire \spi_rx_word_reg[10]_10 ;
  wire \spi_rx_word_reg[10]_11 ;
  wire \spi_rx_word_reg[10]_12 ;
  wire \spi_rx_word_reg[10]_13 ;
  wire \spi_rx_word_reg[10]_14 ;
  wire \spi_rx_word_reg[10]_15 ;
  wire \spi_rx_word_reg[10]_2 ;
  wire \spi_rx_word_reg[10]_3 ;
  wire \spi_rx_word_reg[10]_4 ;
  wire \spi_rx_word_reg[10]_5 ;
  wire \spi_rx_word_reg[10]_6 ;
  wire \spi_rx_word_reg[10]_7 ;
  wire \spi_rx_word_reg[10]_8 ;
  wire \spi_rx_word_reg[10]_9 ;
  wire \spi_rx_word_reg[11] ;
  wire \spi_rx_word_reg[11]_0 ;
  wire \spi_rx_word_reg[11]_1 ;
  wire \spi_rx_word_reg[11]_10 ;
  wire \spi_rx_word_reg[11]_11 ;
  wire \spi_rx_word_reg[11]_12 ;
  wire \spi_rx_word_reg[11]_2 ;
  wire \spi_rx_word_reg[11]_3 ;
  wire \spi_rx_word_reg[11]_4 ;
  wire \spi_rx_word_reg[11]_5 ;
  wire \spi_rx_word_reg[11]_6 ;
  wire \spi_rx_word_reg[11]_7 ;
  wire \spi_rx_word_reg[11]_8 ;
  wire \spi_rx_word_reg[11]_9 ;
  wire \spi_tx_word_o[0]_i_10_n_0 ;
  wire \spi_tx_word_o[0]_i_11_n_0 ;
  wire \spi_tx_word_o[0]_i_12_n_0 ;
  wire \spi_tx_word_o[0]_i_13_n_0 ;
  wire \spi_tx_word_o[0]_i_14_n_0 ;
  wire \spi_tx_word_o[0]_i_15_n_0 ;
  wire \spi_tx_word_o[0]_i_16_n_0 ;
  wire \spi_tx_word_o[0]_i_17_n_0 ;
  wire \spi_tx_word_o[10]_i_12_n_0 ;
  wire \spi_tx_word_o[10]_i_13_n_0 ;
  wire \spi_tx_word_o[10]_i_14_n_0 ;
  wire \spi_tx_word_o[10]_i_15_n_0 ;
  wire \spi_tx_word_o[10]_i_5_n_0 ;
  wire \spi_tx_word_o[10]_i_6_n_0 ;
  wire \spi_tx_word_o[10]_i_7_n_0 ;
  wire \spi_tx_word_o[10]_i_8_n_0 ;
  wire \spi_tx_word_o[11]_i_12_n_0 ;
  wire \spi_tx_word_o[11]_i_13_n_0 ;
  wire \spi_tx_word_o[11]_i_14_n_0 ;
  wire \spi_tx_word_o[11]_i_15_n_0 ;
  wire \spi_tx_word_o[11]_i_5_n_0 ;
  wire \spi_tx_word_o[11]_i_6_n_0 ;
  wire \spi_tx_word_o[11]_i_7_n_0 ;
  wire \spi_tx_word_o[11]_i_8_n_0 ;
  wire \spi_tx_word_o[12]_i_12_n_0 ;
  wire \spi_tx_word_o[12]_i_13_n_0 ;
  wire \spi_tx_word_o[12]_i_14_n_0 ;
  wire \spi_tx_word_o[12]_i_15_n_0 ;
  wire \spi_tx_word_o[12]_i_5_n_0 ;
  wire \spi_tx_word_o[12]_i_6_n_0 ;
  wire \spi_tx_word_o[12]_i_7_n_0 ;
  wire \spi_tx_word_o[12]_i_8_n_0 ;
  wire \spi_tx_word_o[13]_i_12_n_0 ;
  wire \spi_tx_word_o[13]_i_13_n_0 ;
  wire \spi_tx_word_o[13]_i_14_n_0 ;
  wire \spi_tx_word_o[13]_i_15_n_0 ;
  wire \spi_tx_word_o[13]_i_5_n_0 ;
  wire \spi_tx_word_o[13]_i_6_n_0 ;
  wire \spi_tx_word_o[13]_i_7_n_0 ;
  wire \spi_tx_word_o[13]_i_8_n_0 ;
  wire \spi_tx_word_o[14]_i_10_n_0 ;
  wire \spi_tx_word_o[14]_i_11_n_0 ;
  wire \spi_tx_word_o[14]_i_12_n_0 ;
  wire \spi_tx_word_o[14]_i_13_n_0 ;
  wire \spi_tx_word_o[14]_i_4_n_0 ;
  wire \spi_tx_word_o[14]_i_7_n_0 ;
  wire \spi_tx_word_o[14]_i_8_n_0 ;
  wire \spi_tx_word_o[14]_i_9_n_0 ;
  wire \spi_tx_word_o[15]_i_10_n_0 ;
  wire \spi_tx_word_o[15]_i_11_n_0 ;
  wire \spi_tx_word_o[15]_i_12_n_0 ;
  wire \spi_tx_word_o[15]_i_13_n_0 ;
  wire \spi_tx_word_o[15]_i_4_n_0 ;
  wire \spi_tx_word_o[15]_i_7_n_0 ;
  wire \spi_tx_word_o[15]_i_8_n_0 ;
  wire \spi_tx_word_o[15]_i_9_n_0 ;
  wire \spi_tx_word_o[16]_i_10_n_0 ;
  wire \spi_tx_word_o[16]_i_11_n_0 ;
  wire \spi_tx_word_o[16]_i_12_n_0 ;
  wire \spi_tx_word_o[16]_i_13_n_0 ;
  wire \spi_tx_word_o[16]_i_14_n_0 ;
  wire \spi_tx_word_o[16]_i_15_n_0 ;
  wire \spi_tx_word_o[16]_i_7_n_0 ;
  wire \spi_tx_word_o[16]_i_9_n_0 ;
  wire \spi_tx_word_o[17]_i_12_n_0 ;
  wire \spi_tx_word_o[17]_i_13_n_0 ;
  wire \spi_tx_word_o[17]_i_14_n_0 ;
  wire \spi_tx_word_o[17]_i_15_n_0 ;
  wire \spi_tx_word_o[17]_i_5_n_0 ;
  wire \spi_tx_word_o[17]_i_6_n_0 ;
  wire \spi_tx_word_o[17]_i_7_n_0 ;
  wire \spi_tx_word_o[17]_i_8_n_0 ;
  wire \spi_tx_word_o[18]_i_12_n_0 ;
  wire \spi_tx_word_o[18]_i_13_n_0 ;
  wire \spi_tx_word_o[18]_i_14_n_0 ;
  wire \spi_tx_word_o[18]_i_15_n_0 ;
  wire \spi_tx_word_o[18]_i_5_n_0 ;
  wire \spi_tx_word_o[18]_i_6_n_0 ;
  wire \spi_tx_word_o[18]_i_7_n_0 ;
  wire \spi_tx_word_o[18]_i_8_n_0 ;
  wire \spi_tx_word_o[19]_i_12_n_0 ;
  wire \spi_tx_word_o[19]_i_13_n_0 ;
  wire \spi_tx_word_o[19]_i_14_n_0 ;
  wire \spi_tx_word_o[19]_i_15_n_0 ;
  wire \spi_tx_word_o[19]_i_5_n_0 ;
  wire \spi_tx_word_o[19]_i_6_n_0 ;
  wire \spi_tx_word_o[19]_i_7_n_0 ;
  wire \spi_tx_word_o[19]_i_8_n_0 ;
  wire \spi_tx_word_o[1]_i_10_n_0 ;
  wire \spi_tx_word_o[1]_i_11_n_0 ;
  wire \spi_tx_word_o[1]_i_12_n_0 ;
  wire \spi_tx_word_o[1]_i_13_n_0 ;
  wire \spi_tx_word_o[1]_i_14_n_0 ;
  wire \spi_tx_word_o[1]_i_15_n_0 ;
  wire \spi_tx_word_o[1]_i_16_n_0 ;
  wire \spi_tx_word_o[1]_i_17_n_0 ;
  wire \spi_tx_word_o[20]_i_12_n_0 ;
  wire \spi_tx_word_o[20]_i_13_n_0 ;
  wire \spi_tx_word_o[20]_i_14_n_0 ;
  wire \spi_tx_word_o[20]_i_15_n_0 ;
  wire \spi_tx_word_o[20]_i_5_n_0 ;
  wire \spi_tx_word_o[20]_i_6_n_0 ;
  wire \spi_tx_word_o[20]_i_7_n_0 ;
  wire \spi_tx_word_o[20]_i_8_n_0 ;
  wire \spi_tx_word_o[21]_i_12_n_0 ;
  wire \spi_tx_word_o[21]_i_13_n_0 ;
  wire \spi_tx_word_o[21]_i_14_n_0 ;
  wire \spi_tx_word_o[21]_i_15_n_0 ;
  wire \spi_tx_word_o[21]_i_5_n_0 ;
  wire \spi_tx_word_o[21]_i_6_n_0 ;
  wire \spi_tx_word_o[21]_i_7_n_0 ;
  wire \spi_tx_word_o[21]_i_8_n_0 ;
  wire \spi_tx_word_o[22]_i_12_n_0 ;
  wire \spi_tx_word_o[22]_i_13_n_0 ;
  wire \spi_tx_word_o[22]_i_14_n_0 ;
  wire \spi_tx_word_o[22]_i_15_n_0 ;
  wire \spi_tx_word_o[22]_i_5_n_0 ;
  wire \spi_tx_word_o[22]_i_6_n_0 ;
  wire \spi_tx_word_o[22]_i_7_n_0 ;
  wire \spi_tx_word_o[22]_i_8_n_0 ;
  wire \spi_tx_word_o[23]_i_12_n_0 ;
  wire \spi_tx_word_o[23]_i_13_n_0 ;
  wire \spi_tx_word_o[23]_i_14_n_0 ;
  wire \spi_tx_word_o[23]_i_15_n_0 ;
  wire \spi_tx_word_o[23]_i_5_n_0 ;
  wire \spi_tx_word_o[23]_i_6_n_0 ;
  wire \spi_tx_word_o[23]_i_7_n_0 ;
  wire \spi_tx_word_o[23]_i_8_n_0 ;
  wire \spi_tx_word_o[24]_i_11_n_0 ;
  wire \spi_tx_word_o[24]_i_15_n_0 ;
  wire \spi_tx_word_o[24]_i_16_n_0 ;
  wire \spi_tx_word_o[24]_i_17_n_0 ;
  wire \spi_tx_word_o[24]_i_18_n_0 ;
  wire \spi_tx_word_o[24]_i_19_n_0 ;
  wire \spi_tx_word_o[24]_i_20_n_0 ;
  wire \spi_tx_word_o[24]_i_21_n_0 ;
  wire \spi_tx_word_o[25]_i_12_n_0 ;
  wire \spi_tx_word_o[25]_i_13_n_0 ;
  wire \spi_tx_word_o[25]_i_14_n_0 ;
  wire \spi_tx_word_o[25]_i_15_n_0 ;
  wire \spi_tx_word_o[25]_i_5_n_0 ;
  wire \spi_tx_word_o[25]_i_6_n_0 ;
  wire \spi_tx_word_o[25]_i_7_n_0 ;
  wire \spi_tx_word_o[25]_i_8_n_0 ;
  wire \spi_tx_word_o[26]_i_12_n_0 ;
  wire \spi_tx_word_o[26]_i_13_n_0 ;
  wire \spi_tx_word_o[26]_i_14_n_0 ;
  wire \spi_tx_word_o[26]_i_15_n_0 ;
  wire \spi_tx_word_o[26]_i_5_n_0 ;
  wire \spi_tx_word_o[26]_i_6_n_0 ;
  wire \spi_tx_word_o[26]_i_7_n_0 ;
  wire \spi_tx_word_o[26]_i_8_n_0 ;
  wire \spi_tx_word_o[27]_i_12_n_0 ;
  wire \spi_tx_word_o[27]_i_13_n_0 ;
  wire \spi_tx_word_o[27]_i_14_n_0 ;
  wire \spi_tx_word_o[27]_i_15_n_0 ;
  wire \spi_tx_word_o[27]_i_5_n_0 ;
  wire \spi_tx_word_o[27]_i_6_n_0 ;
  wire \spi_tx_word_o[27]_i_7_n_0 ;
  wire \spi_tx_word_o[27]_i_8_n_0 ;
  wire \spi_tx_word_o[28]_i_10_n_0 ;
  wire \spi_tx_word_o[28]_i_11_n_0 ;
  wire \spi_tx_word_o[28]_i_12_n_0 ;
  wire \spi_tx_word_o[28]_i_13_n_0 ;
  wire \spi_tx_word_o[28]_i_14_n_0 ;
  wire \spi_tx_word_o[28]_i_7_n_0 ;
  wire \spi_tx_word_o[28]_i_8_n_0 ;
  wire \spi_tx_word_o[28]_i_9_n_0 ;
  wire \spi_tx_word_o[29]_i_10_n_0 ;
  wire \spi_tx_word_o[29]_i_11_n_0 ;
  wire \spi_tx_word_o[29]_i_12_n_0 ;
  wire \spi_tx_word_o[29]_i_13_n_0 ;
  wire \spi_tx_word_o[29]_i_14_n_0 ;
  wire \spi_tx_word_o[29]_i_7_n_0 ;
  wire \spi_tx_word_o[29]_i_8_n_0 ;
  wire \spi_tx_word_o[29]_i_9_n_0 ;
  wire \spi_tx_word_o[2]_i_10_n_0 ;
  wire \spi_tx_word_o[2]_i_11_n_0 ;
  wire \spi_tx_word_o[2]_i_12_n_0 ;
  wire \spi_tx_word_o[2]_i_13_n_0 ;
  wire \spi_tx_word_o[2]_i_14_n_0 ;
  wire \spi_tx_word_o[2]_i_15_n_0 ;
  wire \spi_tx_word_o[2]_i_16_n_0 ;
  wire \spi_tx_word_o[2]_i_17_n_0 ;
  wire \spi_tx_word_o[30]_i_10_n_0 ;
  wire \spi_tx_word_o[30]_i_11_n_0 ;
  wire \spi_tx_word_o[30]_i_12_n_0 ;
  wire \spi_tx_word_o[30]_i_13_n_0 ;
  wire \spi_tx_word_o[30]_i_14_n_0 ;
  wire \spi_tx_word_o[30]_i_7_n_0 ;
  wire \spi_tx_word_o[30]_i_8_n_0 ;
  wire \spi_tx_word_o[30]_i_9_n_0 ;
  wire \spi_tx_word_o[31]_i_10_n_0 ;
  wire \spi_tx_word_o[31]_i_11_n_0 ;
  wire \spi_tx_word_o[31]_i_12_n_0 ;
  wire \spi_tx_word_o[31]_i_13_n_0 ;
  wire \spi_tx_word_o[31]_i_14_n_0 ;
  wire \spi_tx_word_o[31]_i_15_n_0 ;
  wire \spi_tx_word_o[31]_i_8_n_0 ;
  wire \spi_tx_word_o[31]_i_9_n_0 ;
  wire \spi_tx_word_o[3]_i_10_n_0 ;
  wire \spi_tx_word_o[3]_i_11_n_0 ;
  wire \spi_tx_word_o[3]_i_12_n_0 ;
  wire \spi_tx_word_o[3]_i_13_n_0 ;
  wire \spi_tx_word_o[3]_i_14_n_0 ;
  wire \spi_tx_word_o[3]_i_15_n_0 ;
  wire \spi_tx_word_o[3]_i_16_n_0 ;
  wire \spi_tx_word_o[3]_i_17_n_0 ;
  wire \spi_tx_word_o[4]_i_10_n_0 ;
  wire \spi_tx_word_o[4]_i_11_n_0 ;
  wire \spi_tx_word_o[4]_i_12_n_0 ;
  wire \spi_tx_word_o[4]_i_13_n_0 ;
  wire \spi_tx_word_o[4]_i_14_n_0 ;
  wire \spi_tx_word_o[4]_i_15_n_0 ;
  wire \spi_tx_word_o[4]_i_16_n_0 ;
  wire \spi_tx_word_o[4]_i_17_n_0 ;
  wire \spi_tx_word_o[5]_i_10_n_0 ;
  wire \spi_tx_word_o[5]_i_11_n_0 ;
  wire \spi_tx_word_o[5]_i_12_n_0 ;
  wire \spi_tx_word_o[5]_i_13_n_0 ;
  wire \spi_tx_word_o[5]_i_14_n_0 ;
  wire \spi_tx_word_o[5]_i_15_n_0 ;
  wire \spi_tx_word_o[5]_i_16_n_0 ;
  wire \spi_tx_word_o[5]_i_17_n_0 ;
  wire \spi_tx_word_o[6]_i_10_n_0 ;
  wire \spi_tx_word_o[6]_i_11_n_0 ;
  wire \spi_tx_word_o[6]_i_12_n_0 ;
  wire \spi_tx_word_o[6]_i_13_n_0 ;
  wire \spi_tx_word_o[6]_i_14_n_0 ;
  wire \spi_tx_word_o[6]_i_15_n_0 ;
  wire \spi_tx_word_o[6]_i_16_n_0 ;
  wire \spi_tx_word_o[6]_i_17_n_0 ;
  wire \spi_tx_word_o[7]_i_11_n_0 ;
  wire \spi_tx_word_o[7]_i_12_n_0 ;
  wire \spi_tx_word_o[7]_i_13_n_0 ;
  wire \spi_tx_word_o[7]_i_14_n_0 ;
  wire \spi_tx_word_o[7]_i_15_n_0 ;
  wire \spi_tx_word_o[7]_i_16_n_0 ;
  wire \spi_tx_word_o[7]_i_17_n_0 ;
  wire \spi_tx_word_o[7]_i_18_n_0 ;
  wire \spi_tx_word_o[8]_i_11_n_0 ;
  wire \spi_tx_word_o[8]_i_12_n_0 ;
  wire \spi_tx_word_o[8]_i_13_n_0 ;
  wire \spi_tx_word_o[8]_i_14_n_0 ;
  wire \spi_tx_word_o[8]_i_15_n_0 ;
  wire \spi_tx_word_o[8]_i_16_n_0 ;
  wire \spi_tx_word_o[8]_i_17_n_0 ;
  wire \spi_tx_word_o[8]_i_18_n_0 ;
  wire \spi_tx_word_o[9]_i_12_n_0 ;
  wire \spi_tx_word_o[9]_i_13_n_0 ;
  wire \spi_tx_word_o[9]_i_14_n_0 ;
  wire \spi_tx_word_o[9]_i_15_n_0 ;
  wire \spi_tx_word_o[9]_i_5_n_0 ;
  wire \spi_tx_word_o[9]_i_6_n_0 ;
  wire \spi_tx_word_o[9]_i_7_n_0 ;
  wire \spi_tx_word_o[9]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[0]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[0]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[0]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[0]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[10]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[10]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[11]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[11]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[12]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[12]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[13]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[13]_i_9_n_0 ;
  wire [4:0]\spi_tx_word_o_reg[14] ;
  wire \spi_tx_word_o_reg[14]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[14]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[15]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[15]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[16]_i_4_n_0 ;
  wire \spi_tx_word_o_reg[16]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[16]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[17]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[17]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[18]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[18]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[19]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[19]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[1]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[1]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[1]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[1]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[20]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[20]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[21]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[21]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[22]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[22]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[23]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[23]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[24]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[24]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[24]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[25]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[25]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[26]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[26]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[27]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[27]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[28]_i_4_n_0 ;
  wire \spi_tx_word_o_reg[28]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[28]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[29]_i_4_n_0 ;
  wire \spi_tx_word_o_reg[29]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[29]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[2]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[2]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[2]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[2]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[30]_i_4_n_0 ;
  wire \spi_tx_word_o_reg[30]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[30]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[31]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[31]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[31]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[3]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[3]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[3]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[3]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[4]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[4]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[4]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[4]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[5]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[5]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[5]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[5]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[6]_i_5_n_0 ;
  wire \spi_tx_word_o_reg[6]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[6]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[6]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[7]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[7]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[7]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[7]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[8]_i_6_n_0 ;
  wire \spi_tx_word_o_reg[8]_i_7_n_0 ;
  wire \spi_tx_word_o_reg[8]_i_8_n_0 ;
  wire \spi_tx_word_o_reg[8]_i_9_n_0 ;
  wire \spi_tx_word_o_reg[9]_i_10_n_0 ;
  wire \spi_tx_word_o_reg[9]_i_9_n_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp1_amp_gain_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp1_amp_gain_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_adc_amp1_amp_gain_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_adc_amp2_amp_gain_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_adc_amp2_amp_gain_g2_reg[31]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_adc_amp2_amp_gain_g2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status1_chip_error_load_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status1_chip_error_load_reg[31]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_chip_error_status1_chip_error_load_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status2_chip_error_cmd_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_chip_error_status2_chip_error_cmd_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status2_chip_error_cmd_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_chip_error_status2_chip_error_cmd_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status2_chip_error_cmd_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_chip_error_status2_chip_error_cmd_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status2_chip_error_cmd_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_chip_error_status2_chip_error_cmd_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status2_chip_error_crc5_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status2_chip_error_crc5_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status2_chip_error_crc5_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status2_chip_error_crc5_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_chip_error_status2_chip_error_crc5_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_chip_error_status2_chip_error_cmd_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_div_clk_discharge_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \reg_rec_discharge_control_div_clk_discharge_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .D(apb_wdata_s[1]),
        .PRE(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .Q(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_div_clk_discharge_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_div_clk_discharge_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_div_clk_discharge_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_div_clk_discharge_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[5] ));
  FDPE #(
    .INIT(1'b1)) 
    \reg_rec_discharge_control_div_clk_discharge_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .D(apb_wdata_s[6]),
        .PRE(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .Q(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_div_clk_discharge_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    reg_rec_discharge_control_en_clk_discharge_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(reg_rec_discharge_control_en_clk_discharge_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[3] ));
  FDPE #(
    .INIT(1'b1)) 
    \reg_rec_discharge_control_pw_discharge_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .D(apb_wdata_s[16]),
        .PRE(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_discharge_control_pw_discharge_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_rec_discharge_control_div_clk_discharge_reg[7]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_rec_discharge_control_pw_discharge_reg_n_0_[9] ));
  FDPE #(
    .INIT(1'b1)) 
    \reg_rec_stim_control_div_clk_stim_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .D(apb_wdata_s[0]),
        .PRE(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[4] ));
  FDPE #(
    .INIT(1'b1)) 
    \reg_rec_stim_control_div_clk_stim_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .D(apb_wdata_s[5]),
        .PRE(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_div_clk_stim_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_rec_stim_control_div_clk_stim_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    reg_rec_stim_control_en_clk_stim_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(reg_rec_stim_control_en_clk_stim_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    reg_rec_stim_control_rec_en_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(reg_rec_stim_control_rec_en_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_stim_mask_en_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_stim_mask_en_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_stim_mask_en_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_stim_mask_en_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_stim_mask_en_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_stim_mask_en_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_stim_mask_en_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_rec_stim_control_stim_mask_en_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(E),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ia_mux_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ia_mux_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ia_mux_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ia_mux_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ia_mux_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ia_mux_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ia_mux_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ia_mux_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ic_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ic_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ic_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ic_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ic_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ic_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ic_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_ic_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_p0_stim0_interval_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_p0_stim0_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(data26[16]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(data26[26]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(data26[27]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(data26[28]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(data26[29]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(data26[17]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(data26[18]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(data26[19]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(data26[20]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(data26[21]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(data26[22]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(data26[23]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(data26[24]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wa_mux_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(data26[25]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    reg_stim_ch0_pulse_p2_stim0_pol_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(reg_stim_ch0_pulse_p2_stim0_pol_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    reg_stim_ch0_pulse_p2_stim0_range_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(reg_stim_ch0_pulse_p2_stim0_range_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ia_mux_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ia_mux_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ia_mux_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ia_mux_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ia_mux_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ia_mux_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ia_mux_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ia_mux_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ic_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ic_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ic_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ic_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ic_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ic_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ic_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_ic_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_p0_stim1_interval_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_p0_stim1_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(data29[16]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(data29[26]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(data29[27]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(data29[28]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(data29[29]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(data29[17]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(data29[18]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(data29[19]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(data29[20]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(data29[21]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(data29[22]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(data29[23]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(data29[24]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wa_mux_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(data29[25]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    reg_stim_ch1_pulse_p2_stim1_pol_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(reg_stim_ch1_pulse_p2_stim1_pol_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    reg_stim_ch1_pulse_p2_stim1_range_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(reg_stim_ch1_pulse_p2_stim1_range_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ia_mux_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ia_mux_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ia_mux_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ia_mux_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ia_mux_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ia_mux_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ia_mux_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ia_mux_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ic_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ic_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ic_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ic_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ic_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ic_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ic_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_ic_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_p0_stim2_interval_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_p0_stim2_interval_reg[15]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(data32[16]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(data32[26]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(data32[27]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[13]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[13]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(data32[17]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(data32[18]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(data32[19]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(data32[20]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(data32[21]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(data32[22]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(data32[23]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(data32[24]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wa_mux_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(data32[25]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg[13]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    reg_stim_ch2_pulse_p2_stim2_pol_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(reg_stim_ch2_pulse_p2_stim2_pol_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    reg_stim_ch2_pulse_p2_stim2_range_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg[11]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(reg_stim_ch2_pulse_p2_stim2_range_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ia_mux_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ia_mux_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ia_mux_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ia_mux_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ia_mux_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ia_mux_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ia_mux_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ia_mux_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ic_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ic_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ic_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ic_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ic_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_ch3_p0_stim3_ic_reg[5]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ic_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_ch3_p0_stim3_ic_reg[5]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ic_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_ic_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_p0_stim3_interval_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_p0_stim3_interval_reg[15]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(data35[16]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(data35[26]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(data35[27]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(data35[17]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(data35[18]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(data35[19]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(data35[20]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(data35[21]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(data35[22]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(data35[23]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(data35[24]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(data35[25]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    reg_stim_ch3_pulse_p2_stim3_pol_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(reg_stim_ch3_pulse_p2_stim3_pol_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_gap_reg[13]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    reg_stim_ch3_pulse_p2_stim3_range_reg
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_ch3_pulse_p2_stim3_pulse_num_reg[11]_1 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(reg_stim_ch3_pulse_p2_stim3_range_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p1_stim_mask0_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p1_stim_mask0_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask0_p2_stim_mask0_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask0_p2_stim_mask0_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p1_stim_mask1_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p1_stim_mask1_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask1_p2_stim_mask1_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask1_p2_stim_mask1_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p1_stim_mask2_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p1_stim_mask2_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask2_p2_stim_mask2_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask2_p2_stim_mask2_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p1_stim_mask3_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p1_stim_mask3_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask3_p2_stim_mask3_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask3_p2_stim_mask3_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p1_stim_mask4_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p1_stim_mask4_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask4_p2_stim_mask4_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask4_p2_stim_mask4_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p1_stim_mask5_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p1_stim_mask5_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask5_p2_stim_mask5_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask5_p2_stim_mask5_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p1_stim_mask6_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p1_stim_mask6_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask6_p2_stim_mask6_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask6_p2_stim_mask6_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p1_stim_mask7_g1_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p1_stim_mask7_g1_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[0] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[0]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[10] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[10]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[11] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[11]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[12] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[12]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[13] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[13]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[14] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[14]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[15] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[15]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[16] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[16]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[17] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[17]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[18] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[18]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[19] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[19]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[1] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[1]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[20] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[20]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[21] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[21]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[22] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[22]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[23] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[23]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[24] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[24]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[25] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[25]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[26] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[26]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[27] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[27]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[28] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[28]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[29] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[29]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[2] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[2]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[30] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[30]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[31] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[31]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[3] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[3]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[4] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[4]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[5] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[5]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[6] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[6]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[7] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[7]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[8] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[8]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_stim_mask7_p2_stim_mask7_g2_reg[9] 
       (.C(SPI_CLK_I_IBUF_BUFG),
        .CE(\reg_stim_mask7_p2_stim_mask7_g2_reg[0]_0 ),
        .CLR(\reg_chip_error_status1_chip_error_load_reg[31]_0 ),
        .D(apb_wdata_s[9]),
        .Q(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[0]_i_10 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[0] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[0] ),
        .O(\spi_tx_word_o[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[0]_i_11 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[0] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[0] ),
        .O(\spi_tx_word_o[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[0]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[0] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[0] ),
        .O(\spi_tx_word_o[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[0]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[0] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[0] ),
        .O(\spi_tx_word_o[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[0]_i_14 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[0] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[0] ),
        .O(\spi_tx_word_o[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[0]_i_15 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[0] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[0] ),
        .O(\spi_tx_word_o[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spi_tx_word_o[0]_i_16 
       (.I0(\reg_adc_amp1_amp_gain_g1_reg_n_0_[0] ),
        .I1(\reg_chip_error_status2_chip_error_cmd_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_chip_error_status1_chip_error_load_reg_n_0_[0] ),
        .O(\spi_tx_word_o[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[0]_i_17 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[0] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[0] ),
        .O(\spi_tx_word_o[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[0]_i_3 
       (.I0(\spi_tx_word_o_reg[0]_i_5_n_0 ),
        .I1(\spi_tx_word_o_reg[0]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[0]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o_reg[0]_i_8_n_0 ),
        .O(\spi_rx_word_reg[11]_12 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[0]_i_9 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[0] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[0] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[10]_i_11 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[10] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[10] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[10] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[10] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[10]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[10] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[10] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[10] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[10] ),
        .O(\spi_tx_word_o[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[10]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[10] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[10] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[10] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[10] ),
        .O(\spi_tx_word_o[10]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spi_tx_word_o[10]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[10] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[10] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[10] ),
        .O(\spi_tx_word_o[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[10]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[10] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[10] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[10] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[10] ),
        .O(\spi_tx_word_o[10]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[10]_i_2 
       (.I0(\spi_tx_word_o[10]_i_5_n_0 ),
        .I1(\spi_tx_word_o[10]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[10]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[10]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[10]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[10] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[10] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[10] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[10] ),
        .O(\spi_tx_word_o[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[10]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[10] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[10] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[10] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[10] ),
        .O(\spi_tx_word_o[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[10]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[10] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[10] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[10] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[10] ),
        .O(\spi_tx_word_o[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[10]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[10] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[10] ),
        .O(\spi_tx_word_o[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[11]_i_11 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[11] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[11] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[11] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[11] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[11]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[11] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[11] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[11] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[11] ),
        .O(\spi_tx_word_o[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[11]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[11] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[11] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[11] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[11] ),
        .O(\spi_tx_word_o[11]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spi_tx_word_o[11]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[11] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[11] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[11] ),
        .O(\spi_tx_word_o[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[11]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[11] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[11] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[11] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[11] ),
        .O(\spi_tx_word_o[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[11]_i_2 
       (.I0(\spi_tx_word_o[11]_i_5_n_0 ),
        .I1(\spi_tx_word_o[11]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[11]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[11]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[11]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[11] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[11] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[11] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[11] ),
        .O(\spi_tx_word_o[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[11]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[11] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[11] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[11] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[11] ),
        .O(\spi_tx_word_o[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[11]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[11] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[11] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[11] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[11] ),
        .O(\spi_tx_word_o[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[11]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[11] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[11] ),
        .O(\spi_tx_word_o[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[12]_i_11 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[12] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[12] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[12] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[12] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[12]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[12] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[12] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[12] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[12] ),
        .O(\spi_tx_word_o[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[12]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[12] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[12] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[12] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[12] ),
        .O(\spi_tx_word_o[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[12]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[12] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[12] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[12] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[0] ),
        .O(\spi_tx_word_o[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[12]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[12] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[12] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[12] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[12] ),
        .O(\spi_tx_word_o[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[12]_i_2 
       (.I0(\spi_tx_word_o[12]_i_5_n_0 ),
        .I1(\spi_tx_word_o[12]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[12]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[12]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[12]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[12] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[12] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[12] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[12] ),
        .O(\spi_tx_word_o[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[12]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[12] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[12] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[12] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[12] ),
        .O(\spi_tx_word_o[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[12]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[12] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[12] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(reg_rec_stim_control_en_clk_stim_reg_n_0),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[12] ),
        .O(\spi_tx_word_o[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[12]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[12] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[12] ),
        .O(\spi_tx_word_o[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[13]_i_11 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[13] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[13] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[13] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[13] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[13]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[13] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[13] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[13] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[13] ),
        .O(\spi_tx_word_o[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[13]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[13] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[13] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[13] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[13] ),
        .O(\spi_tx_word_o[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[13]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[13] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[13] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[13] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[1] ),
        .O(\spi_tx_word_o[13]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[13]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[13] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[13] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[13] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[13] ),
        .O(\spi_tx_word_o[13]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[13]_i_2 
       (.I0(\spi_tx_word_o[13]_i_5_n_0 ),
        .I1(\spi_tx_word_o[13]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[13]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[13]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[13]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[13] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[13] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[13] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[13] ),
        .O(\spi_tx_word_o[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[13]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[13] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[13] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[13] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[13] ),
        .O(\spi_tx_word_o[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[13]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[13] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[13] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [0]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[13] ),
        .O(\spi_tx_word_o[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[13]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[13] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[13] ),
        .O(\spi_tx_word_o[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[14]_i_10 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[14] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[14] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[14] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[14] ),
        .O(\spi_tx_word_o[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[14]_i_11 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[14] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[14] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[14] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[14] ),
        .O(\spi_tx_word_o[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[14]_i_12 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[14] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[14] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[14] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[14] ),
        .O(\spi_tx_word_o[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[14]_i_13 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[14] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[14] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [1]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[14] ),
        .O(\spi_tx_word_o[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[14]_i_2 
       (.I0(\spi_tx_word_o[14]_i_4_n_0 ),
        .I1(\spi_tx_word_o_reg[14]_i_5_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[14]_i_6_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o[14]_i_7_n_0 ),
        .O(\reg_rec_discharge_control_pw_discharge_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h4343535040405350)) 
    \spi_tx_word_o[14]_i_4 
       (.I0(\spi_tx_word_o[14]_i_8_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [1]),
        .I2(\spi_tx_word_o_reg[14] [2]),
        .I3(\reg_rec_discharge_control_pw_discharge_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[14] ),
        .O(\spi_tx_word_o[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBB88B8888888B888)) 
    \spi_tx_word_o[14]_i_7 
       (.I0(\spi_tx_word_o[14]_i_13_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [2]),
        .I2(\reg_chip_error_status1_chip_error_load_reg_n_0_[14] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\spi_tx_word_o_reg[14] [1]),
        .I5(\reg_adc_amp1_amp_gain_g1_reg_n_0_[14] ),
        .O(\spi_tx_word_o[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7077)) 
    \spi_tx_word_o[14]_i_8 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[14] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[14] ),
        .O(\spi_tx_word_o[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[14]_i_9 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[14] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[14] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[14] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[14] ),
        .O(\spi_tx_word_o[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[15]_i_10 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[15] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[15] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[15] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[15] ),
        .O(\spi_tx_word_o[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[15]_i_11 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[15] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[15] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[15] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[15] ),
        .O(\spi_tx_word_o[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[15]_i_12 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[15] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[15] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[15] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[15] ),
        .O(\spi_tx_word_o[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[15]_i_13 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[15] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[15] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [2]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[15] ),
        .O(\spi_tx_word_o[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[15]_i_2 
       (.I0(\spi_tx_word_o[15]_i_4_n_0 ),
        .I1(\spi_tx_word_o_reg[15]_i_5_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[15]_i_6_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o[15]_i_7_n_0 ),
        .O(\reg_rec_discharge_control_pw_discharge_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h4343535040405350)) 
    \spi_tx_word_o[15]_i_4 
       (.I0(\spi_tx_word_o[15]_i_8_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [1]),
        .I2(\spi_tx_word_o_reg[14] [2]),
        .I3(\reg_rec_discharge_control_pw_discharge_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[15] ),
        .O(\spi_tx_word_o[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBB88B8888888B888)) 
    \spi_tx_word_o[15]_i_7 
       (.I0(\spi_tx_word_o[15]_i_13_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [2]),
        .I2(\reg_chip_error_status1_chip_error_load_reg_n_0_[15] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\spi_tx_word_o_reg[14] [1]),
        .I5(\reg_adc_amp1_amp_gain_g1_reg_n_0_[15] ),
        .O(\spi_tx_word_o[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7077)) 
    \spi_tx_word_o[15]_i_8 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[15] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[15] ),
        .O(\spi_tx_word_o[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[15]_i_9 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[15] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[15] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[15] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[15] ),
        .O(\spi_tx_word_o[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[16]_i_10 
       (.I0(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[0] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[16]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[0] ),
        .O(\spi_tx_word_o[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[16]_i_11 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[16] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[16] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[16] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[16] ),
        .O(\spi_tx_word_o[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[16]_i_12 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[16] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[16] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[16] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[16] ),
        .O(\spi_tx_word_o[16]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[16]_i_13 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[16] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[16] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[16] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[16] ),
        .O(\spi_tx_word_o[16]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[16]_i_14 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[16] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[16] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[16] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[16] ),
        .O(\spi_tx_word_o[16]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[16]_i_15 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[16] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[16] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [3]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[16] ),
        .O(\spi_tx_word_o[16]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[16]_i_2 
       (.I0(\spi_tx_word_o_reg[16]_i_4_n_0 ),
        .I1(\spi_tx_word_o_reg[16]_i_5_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[16]_i_6_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o[16]_i_7_n_0 ),
        .O(\spi_rx_word_reg[11]_4 ));
  LUT6 #(
    .INIT(64'hB8BBB88888BB88BB)) 
    \spi_tx_word_o[16]_i_7 
       (.I0(\spi_tx_word_o[16]_i_15_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [2]),
        .I2(\reg_adc_amp1_amp_gain_g1_reg_n_0_[16] ),
        .I3(\spi_tx_word_o_reg[14] [1]),
        .I4(\reg_chip_error_status1_chip_error_load_reg_n_0_[16] ),
        .I5(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[16]_i_8 
       (.I0(data35[16]),
        .I1(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[16]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[16]_i_9 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[0] ),
        .I1(data26[16]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[4] ),
        .O(\spi_tx_word_o[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[17]_i_11 
       (.I0(data35[17]),
        .I1(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[17]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[17]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[17] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[17] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[17] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[17] ),
        .O(\spi_tx_word_o[17]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[17]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[17] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[17] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[17] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[17] ),
        .O(\spi_tx_word_o[17]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[17]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[1] ),
        .I1(data26[17]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[5] ),
        .O(\spi_tx_word_o[17]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[17]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[1] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[17]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[1] ),
        .O(\spi_tx_word_o[17]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[17]_i_2 
       (.I0(\spi_tx_word_o[17]_i_5_n_0 ),
        .I1(\spi_tx_word_o[17]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[17]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[17]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[17]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[17] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[17] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[17] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[17] ),
        .O(\spi_tx_word_o[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[17]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[17] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[17] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[17] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[17] ),
        .O(\spi_tx_word_o[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[17]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[17] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[17] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [4]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[17] ),
        .O(\spi_tx_word_o[17]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[17]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[17] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[17] ),
        .O(\spi_tx_word_o[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[18]_i_11 
       (.I0(data35[18]),
        .I1(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[18]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[18]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[18] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[18] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[18] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[18] ),
        .O(\spi_tx_word_o[18]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[18]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[18] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[18] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[18] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[18] ),
        .O(\spi_tx_word_o[18]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[18]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[2] ),
        .I1(data26[18]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[6] ),
        .O(\spi_tx_word_o[18]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[18]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[2] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[18]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[2] ),
        .O(\spi_tx_word_o[18]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[18]_i_2 
       (.I0(\spi_tx_word_o[18]_i_5_n_0 ),
        .I1(\spi_tx_word_o[18]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[18]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[18]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[18]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[18] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[18] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[18] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[18] ),
        .O(\spi_tx_word_o[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[18]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[18] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[18] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[18] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[18] ),
        .O(\spi_tx_word_o[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[18]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[18] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[18] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [5]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[18] ),
        .O(\spi_tx_word_o[18]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[18]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[18] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[18] ),
        .O(\spi_tx_word_o[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[19]_i_11 
       (.I0(data35[19]),
        .I1(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[19]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[19]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[19] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[19] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[19] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[19] ),
        .O(\spi_tx_word_o[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[19]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[19] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[19] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[19] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[19] ),
        .O(\spi_tx_word_o[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[19]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[3] ),
        .I1(data26[19]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[7] ),
        .O(\spi_tx_word_o[19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[19]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[3] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[19]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[3] ),
        .O(\spi_tx_word_o[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[19]_i_2 
       (.I0(\spi_tx_word_o[19]_i_5_n_0 ),
        .I1(\spi_tx_word_o[19]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[19]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[19]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[19]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[19] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[19] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[19] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[19] ),
        .O(\spi_tx_word_o[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[19]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[19] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[19] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[19] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[19] ),
        .O(\spi_tx_word_o[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[19]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[19] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[19] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [6]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[19] ),
        .O(\spi_tx_word_o[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[19]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[19] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[19] ),
        .O(\spi_tx_word_o[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[1]_i_10 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[1] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[1] ),
        .O(\spi_tx_word_o[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[1]_i_11 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[1] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[1] ),
        .O(\spi_tx_word_o[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[1]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[1] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[1] ),
        .O(\spi_tx_word_o[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[1]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[1] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[1] ),
        .O(\spi_tx_word_o[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[1]_i_14 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[1] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[1] ),
        .O(\spi_tx_word_o[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[1]_i_15 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[1] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[1] ),
        .O(\spi_tx_word_o[1]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spi_tx_word_o[1]_i_16 
       (.I0(\reg_adc_amp1_amp_gain_g1_reg_n_0_[1] ),
        .I1(\reg_chip_error_status2_chip_error_cmd_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_chip_error_status1_chip_error_load_reg_n_0_[1] ),
        .O(\spi_tx_word_o[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[1]_i_17 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[1] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[1] ),
        .O(\spi_tx_word_o[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[1]_i_3 
       (.I0(\spi_tx_word_o_reg[1]_i_5_n_0 ),
        .I1(\spi_tx_word_o_reg[1]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[1]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o_reg[1]_i_8_n_0 ),
        .O(\spi_rx_word_reg[11]_11 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[1]_i_9 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[1] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[1] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[20]_i_11 
       (.I0(data35[20]),
        .I1(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[20]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[20]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[20] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[20] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[20] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[20] ),
        .O(\spi_tx_word_o[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[20]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[20] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[20] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[20] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[20] ),
        .O(\spi_tx_word_o[20]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[20]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[4] ),
        .I1(data26[20]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[8] ),
        .O(\spi_tx_word_o[20]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[20]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[4] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[20]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[4] ),
        .O(\spi_tx_word_o[20]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[20]_i_2 
       (.I0(\spi_tx_word_o[20]_i_5_n_0 ),
        .I1(\spi_tx_word_o[20]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[20]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[20]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[20]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[20] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[20] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[20] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[20] ),
        .O(\spi_tx_word_o[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[20]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[20] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[20] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[20] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[20] ),
        .O(\spi_tx_word_o[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[20]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[20] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[20] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_stim_mask_en_reg[7]_0 [7]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[20] ),
        .O(\spi_tx_word_o[20]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[20]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[20] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[20] ),
        .O(\spi_tx_word_o[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[21]_i_11 
       (.I0(data35[21]),
        .I1(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[21]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[21]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[21] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[21] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[21] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[21] ),
        .O(\spi_tx_word_o[21]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[21]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[21] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[21] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[21] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[21] ),
        .O(\spi_tx_word_o[21]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[21]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[5] ),
        .I1(data26[21]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[9] ),
        .O(\spi_tx_word_o[21]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[21]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[5] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[21]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[5] ),
        .O(\spi_tx_word_o[21]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[21]_i_2 
       (.I0(\spi_tx_word_o[21]_i_5_n_0 ),
        .I1(\spi_tx_word_o[21]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[21]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[21]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[21]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[21] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[21] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[21] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[21] ),
        .O(\spi_tx_word_o[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[21]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[21] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[21] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[21] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[21] ),
        .O(\spi_tx_word_o[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[21]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[21] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[21] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(reg_rec_stim_control_rec_en_reg_n_0),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[21] ),
        .O(\spi_tx_word_o[21]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[21]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[21] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[21] ),
        .O(\spi_tx_word_o[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[22]_i_11 
       (.I0(data35[22]),
        .I1(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[22]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[22]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[22] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[22] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[22] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[22] ),
        .O(\spi_tx_word_o[22]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[22]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[22] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[22] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[22] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[22] ),
        .O(\spi_tx_word_o[22]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[22]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[6] ),
        .I1(data26[22]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[10] ),
        .O(\spi_tx_word_o[22]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[22]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[6] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[22]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[6] ),
        .O(\spi_tx_word_o[22]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[22]_i_2 
       (.I0(\spi_tx_word_o[22]_i_5_n_0 ),
        .I1(\spi_tx_word_o[22]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[22]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[22]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[22]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[22] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[22] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[22] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[22] ),
        .O(\spi_tx_word_o[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[22]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[22] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[22] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[22] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[22] ),
        .O(\spi_tx_word_o[22]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[22]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[22] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[22] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[22] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[22]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[22]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[22] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[22] ),
        .O(\spi_tx_word_o[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[23]_i_11 
       (.I0(data35[23]),
        .I1(\reg_stim_ch3_p0_stim3_ia_mux_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[23]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[23]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[23] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[23] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[23] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[23] ),
        .O(\spi_tx_word_o[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[23]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[23] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[23] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[23] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[23] ),
        .O(\spi_tx_word_o[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[23]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[7] ),
        .I1(data26[23]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ia_mux_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[11] ),
        .O(\spi_tx_word_o[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[23]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ia_mux_reg_n_0_[7] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[23]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ia_mux_reg_n_0_[7] ),
        .O(\spi_tx_word_o[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[23]_i_2 
       (.I0(\spi_tx_word_o[23]_i_5_n_0 ),
        .I1(\spi_tx_word_o[23]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[23]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[23]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[23]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[23] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[23] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[23] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[23] ),
        .O(\spi_tx_word_o[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[23]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[23] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[23] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[23] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[23] ),
        .O(\spi_tx_word_o[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[23]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[23] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[23] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[23] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[23]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[23] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[23] ),
        .O(\spi_tx_word_o[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB88888BB88BB)) 
    \spi_tx_word_o[24]_i_11 
       (.I0(\spi_tx_word_o[24]_i_21_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [2]),
        .I2(\reg_adc_amp1_amp_gain_g1_reg_n_0_[24] ),
        .I3(\spi_tx_word_o_reg[14] [1]),
        .I4(\reg_chip_error_status1_chip_error_load_reg_n_0_[24] ),
        .I5(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[24]_i_14 
       (.I0(data35[24]),
        .I1(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[24]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[24]_i_15 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[8] ),
        .I1(data26[24]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[0] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[12] ),
        .O(\spi_tx_word_o[24]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[24]_i_16 
       (.I0(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[0] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[8] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[24]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[0] ),
        .O(\spi_tx_word_o[24]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[24]_i_17 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[24] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[24] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[24] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[24] ),
        .O(\spi_tx_word_o[24]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[24]_i_18 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[24] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[24] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[24] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[24] ),
        .O(\spi_tx_word_o[24]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[24]_i_19 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[24] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[24] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[24] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[24] ),
        .O(\spi_tx_word_o[24]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[24]_i_20 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[24] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[24] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[24] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[24] ),
        .O(\spi_tx_word_o[24]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[24]_i_21 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[24] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[24] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[24] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[24]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[24]_i_3 
       (.I0(\spi_tx_word_o_reg[24]_i_8_n_0 ),
        .I1(\spi_tx_word_o_reg[24]_i_9_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[24]_i_10_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o[24]_i_11_n_0 ),
        .O(\spi_rx_word_reg[11]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[25]_i_11 
       (.I0(data35[25]),
        .I1(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[9] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[25]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[25]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[25] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[25] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[25] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[25] ),
        .O(\spi_tx_word_o[25]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[25]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[25] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[25] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[25] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[25] ),
        .O(\spi_tx_word_o[25]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[25]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[9] ),
        .I1(data26[25]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[1] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[13] ),
        .O(\spi_tx_word_o[25]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[25]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[1] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[9] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[25]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[1] ),
        .O(\spi_tx_word_o[25]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[25]_i_2 
       (.I0(\spi_tx_word_o[25]_i_5_n_0 ),
        .I1(\spi_tx_word_o[25]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[25]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[25]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[25]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[25] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[25] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[25] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[25] ),
        .O(\spi_tx_word_o[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[25]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[25] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[25] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[25] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[25] ),
        .O(\spi_tx_word_o[25]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[25]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[25] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[25] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[25] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[25]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[25]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[25] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[25] ),
        .O(\spi_tx_word_o[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[26]_i_11 
       (.I0(data35[26]),
        .I1(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[10] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[26]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[26]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[26] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[26] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[26] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[26] ),
        .O(\spi_tx_word_o[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[26]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[26] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[26] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[26] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[26] ),
        .O(\spi_tx_word_o[26]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[26]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[10] ),
        .I1(data26[26]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[14] ),
        .O(\spi_tx_word_o[26]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[26]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[2] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[10] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[26]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[2] ),
        .O(\spi_tx_word_o[26]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[26]_i_2 
       (.I0(\spi_tx_word_o[26]_i_5_n_0 ),
        .I1(\spi_tx_word_o[26]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[26]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[26]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[26]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[26] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[26] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[26] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[26] ),
        .O(\spi_tx_word_o[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[26]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[26] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[26] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[26] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[26] ),
        .O(\spi_tx_word_o[26]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[26]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[26] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[26] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[26] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[26]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[26] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[26] ),
        .O(\spi_tx_word_o[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[27]_i_11 
       (.I0(data35[27]),
        .I1(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_num_reg_n_0_[11] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(data32[27]),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wa_mux_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[27]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[27] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[27] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[27] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[27] ),
        .O(\spi_tx_word_o[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[27]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[27] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[27] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[27] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[27] ),
        .O(\spi_tx_word_o[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[27]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_num_reg_n_0_[11] ),
        .I1(data26[27]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_pw_discharge_reg_n_0_[15] ),
        .O(\spi_tx_word_o[27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[27]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[3] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_num_reg_n_0_[11] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(data29[27]),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[3] ),
        .O(\spi_tx_word_o[27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[27]_i_2 
       (.I0(\spi_tx_word_o[27]_i_5_n_0 ),
        .I1(\spi_tx_word_o[27]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[27]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[27]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[27]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[27] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[27] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[27] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[27] ),
        .O(\spi_tx_word_o[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[27]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[27] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[27] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[27] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[27] ),
        .O(\spi_tx_word_o[27]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[27]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[27] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[27] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[27] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[27]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[27]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[27] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[27] ),
        .O(\spi_tx_word_o[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[28]_i_10 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[28] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[28] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[28] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[28] ),
        .O(\spi_tx_word_o[28]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[28]_i_11 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[28] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[28] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[28] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[28] ),
        .O(\spi_tx_word_o[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[28]_i_12 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[28] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[28] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[28] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[28] ),
        .O(\spi_tx_word_o[28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[28]_i_13 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[28] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[28] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[28] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[28] ),
        .O(\spi_tx_word_o[28]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[28]_i_14 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[28] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[28] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[28] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[28]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[28]_i_2 
       (.I0(\spi_tx_word_o_reg[28]_i_4_n_0 ),
        .I1(\spi_tx_word_o_reg[28]_i_5_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[28]_i_6_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o[28]_i_7_n_0 ),
        .O(\spi_rx_word_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hBB88B8888888B888)) 
    \spi_tx_word_o[28]_i_7 
       (.I0(\spi_tx_word_o[28]_i_14_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [2]),
        .I2(\reg_chip_error_status1_chip_error_load_reg_n_0_[28] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\spi_tx_word_o_reg[14] [1]),
        .I5(\reg_adc_amp1_amp_gain_g1_reg_n_0_[28] ),
        .O(\spi_tx_word_o[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_tx_word_o[28]_i_8 
       (.I0(data26[28]),
        .I1(\spi_tx_word_o_reg[14] [1]),
        .I2(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[4] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_rec_discharge_control_pw_discharge_reg_n_0_[16] ),
        .O(\spi_tx_word_o[28]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spi_tx_word_o[28]_i_9 
       (.I0(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[4] ),
        .I1(\spi_tx_word_o_reg[14] [1]),
        .I2(data29[28]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[4] ),
        .O(\spi_tx_word_o[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[29]_i_10 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[29] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[29] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[29] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[29] ),
        .O(\spi_tx_word_o[29]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[29]_i_11 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[29] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[29] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[29] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[29] ),
        .O(\spi_tx_word_o[29]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[29]_i_12 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[29] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[29] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[29] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[29] ),
        .O(\spi_tx_word_o[29]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[29]_i_13 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[29] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[29] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[29] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[29] ),
        .O(\spi_tx_word_o[29]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[29]_i_14 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[29] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[29] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[29] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[29]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[29]_i_2 
       (.I0(\spi_tx_word_o_reg[29]_i_4_n_0 ),
        .I1(\spi_tx_word_o_reg[29]_i_5_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[29]_i_6_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o[29]_i_7_n_0 ),
        .O(\spi_rx_word_reg[11]_1 ));
  LUT6 #(
    .INIT(64'hBB88B8888888B888)) 
    \spi_tx_word_o[29]_i_7 
       (.I0(\spi_tx_word_o[29]_i_14_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [2]),
        .I2(\reg_chip_error_status1_chip_error_load_reg_n_0_[29] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\spi_tx_word_o_reg[14] [1]),
        .I5(\reg_adc_amp1_amp_gain_g1_reg_n_0_[29] ),
        .O(\spi_tx_word_o[29]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spi_tx_word_o[29]_i_8 
       (.I0(data26[29]),
        .I1(\spi_tx_word_o_reg[14] [1]),
        .I2(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[5] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_rec_discharge_control_pw_discharge_reg_n_0_[17] ),
        .O(\spi_tx_word_o[29]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spi_tx_word_o[29]_i_9 
       (.I0(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[5] ),
        .I1(\spi_tx_word_o_reg[14] [1]),
        .I2(data29[29]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[5] ),
        .O(\spi_tx_word_o[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[2]_i_10 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[2] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[2] ),
        .O(\spi_tx_word_o[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[2]_i_11 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[2] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[2] ),
        .O(\spi_tx_word_o[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[2]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[2] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[2] ),
        .O(\spi_tx_word_o[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[2]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[2] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[2] ),
        .O(\spi_tx_word_o[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[2]_i_14 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[2] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[2] ),
        .O(\spi_tx_word_o[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[2]_i_15 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[2] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[2] ),
        .O(\spi_tx_word_o[2]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \spi_tx_word_o[2]_i_16 
       (.I0(\reg_adc_amp1_amp_gain_g1_reg_n_0_[2] ),
        .I1(\reg_chip_error_status2_chip_error_cmd_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_chip_error_status1_chip_error_load_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[2]_i_17 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[2] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[2] ),
        .O(\spi_tx_word_o[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[2]_i_3 
       (.I0(\spi_tx_word_o_reg[2]_i_5_n_0 ),
        .I1(\spi_tx_word_o_reg[2]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[2]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o_reg[2]_i_8_n_0 ),
        .O(\spi_rx_word_reg[11]_10 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[2]_i_9 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[2] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[2] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[2] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[30]_i_10 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[30] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[30] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[30] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[30] ),
        .O(\spi_tx_word_o[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[30]_i_11 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[30] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[30] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[30] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[30] ),
        .O(\spi_tx_word_o[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[30]_i_12 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[30] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[30] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[30] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[30] ),
        .O(\spi_tx_word_o[30]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[30]_i_13 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[30] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[30] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[30] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[30] ),
        .O(\spi_tx_word_o[30]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[30]_i_14 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[30] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[30] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[30] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[30]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[30]_i_2 
       (.I0(\spi_tx_word_o_reg[30]_i_4_n_0 ),
        .I1(\spi_tx_word_o_reg[30]_i_5_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[30]_i_6_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o[30]_i_7_n_0 ),
        .O(\spi_rx_word_reg[11]_2 ));
  LUT6 #(
    .INIT(64'hFFF5FFF5F03FFF3F)) 
    \spi_tx_word_o[30]_i_3 
       (.I0(reg_stim_ch3_pulse_p2_stim3_pol_reg_n_0),
        .I1(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(reg_stim_ch2_pulse_p2_stim2_pol_reg_n_0),
        .I5(\spi_tx_word_o_reg[14] [2]),
        .O(reg_stim_ch3_pulse_p2_stim3_pol_reg_0));
  LUT6 #(
    .INIT(64'hBB88B8888888B888)) 
    \spi_tx_word_o[30]_i_7 
       (.I0(\spi_tx_word_o[30]_i_14_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [2]),
        .I2(\reg_chip_error_status1_chip_error_load_reg_n_0_[30] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\spi_tx_word_o_reg[14] [1]),
        .I5(\reg_adc_amp1_amp_gain_g1_reg_n_0_[30] ),
        .O(\spi_tx_word_o[30]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spi_tx_word_o[30]_i_8 
       (.I0(reg_stim_ch0_pulse_p2_stim0_pol_reg_n_0),
        .I1(\spi_tx_word_o_reg[14] [1]),
        .I2(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[6] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_rec_discharge_control_pw_discharge_reg_n_0_[18] ),
        .O(\spi_tx_word_o[30]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[30]_i_9 
       (.I0(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[6] ),
        .I1(reg_stim_ch1_pulse_p2_stim1_pol_reg_n_0),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[30]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[31]_i_10 
       (.I0(\reg_stim_ch2_p0_stim2_ic_reg_n_0_[7] ),
        .I1(reg_stim_ch1_pulse_p2_stim1_range_reg_n_0),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_p0_stim1_ic_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[31]_i_11 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[31] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[31] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[31] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[31] ),
        .O(\spi_tx_word_o[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[31]_i_12 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[31] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[31] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[31] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[31] ),
        .O(\spi_tx_word_o[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[31]_i_13 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[31] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[31] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[31] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[31] ),
        .O(\spi_tx_word_o[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[31]_i_14 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[31] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[31] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[31] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[31] ),
        .O(\spi_tx_word_o[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \spi_tx_word_o[31]_i_15 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[31] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[31] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp2_amp_gain_g2_reg_n_0_[31] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[31]_i_3 
       (.I0(\spi_tx_word_o_reg[31]_i_5_n_0 ),
        .I1(\spi_tx_word_o_reg[31]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[31]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o[31]_i_8_n_0 ),
        .O(\spi_rx_word_reg[11] ));
  LUT6 #(
    .INIT(64'hFFF5FFF5F03FFF3F)) 
    \spi_tx_word_o[31]_i_4 
       (.I0(reg_stim_ch3_pulse_p2_stim3_range_reg_n_0),
        .I1(\reg_stim_ch3_p0_stim3_ic_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(reg_stim_ch2_pulse_p2_stim2_range_reg_n_0),
        .I5(\spi_tx_word_o_reg[14] [2]),
        .O(reg_stim_ch3_pulse_p2_stim3_range_reg_0));
  LUT6 #(
    .INIT(64'hBB88B8888888B888)) 
    \spi_tx_word_o[31]_i_8 
       (.I0(\spi_tx_word_o[31]_i_15_n_0 ),
        .I1(\spi_tx_word_o_reg[14] [2]),
        .I2(\reg_chip_error_status1_chip_error_load_reg_n_0_[31] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\spi_tx_word_o_reg[14] [1]),
        .I5(\reg_adc_amp1_amp_gain_g1_reg_n_0_[31] ),
        .O(\spi_tx_word_o[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \spi_tx_word_o[31]_i_9 
       (.I0(reg_stim_ch0_pulse_p2_stim0_range_reg_n_0),
        .I1(\spi_tx_word_o_reg[14] [1]),
        .I2(\reg_stim_ch0_p0_stim0_ic_reg_n_0_[7] ),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_rec_discharge_control_pw_discharge_reg_n_0_[19] ),
        .O(\spi_tx_word_o[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[3]_i_10 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[3] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[3] ),
        .O(\spi_tx_word_o[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[3]_i_11 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[3] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[3] ),
        .O(\spi_tx_word_o[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[3]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[3] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[3] ),
        .O(\spi_tx_word_o[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[3]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[3] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[3] ),
        .O(\spi_tx_word_o[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[3]_i_14 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[3] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[3] ),
        .O(\spi_tx_word_o[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[3]_i_15 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[3] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[3] ),
        .O(\spi_tx_word_o[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spi_tx_word_o[3]_i_16 
       (.I0(\reg_adc_amp1_amp_gain_g1_reg_n_0_[3] ),
        .I1(\reg_chip_error_status2_chip_error_cmd_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_chip_error_status1_chip_error_load_reg_n_0_[3] ),
        .O(\spi_tx_word_o[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[3]_i_17 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[3] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[3] ),
        .O(\spi_tx_word_o[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[3]_i_3 
       (.I0(\spi_tx_word_o_reg[3]_i_5_n_0 ),
        .I1(\spi_tx_word_o_reg[3]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[3]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o_reg[3]_i_8_n_0 ),
        .O(\spi_rx_word_reg[11]_9 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[3]_i_9 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[3] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[3] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[3] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[4]_i_10 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[4] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[4] ),
        .O(\spi_tx_word_o[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[4]_i_11 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[4] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[4] ),
        .O(\spi_tx_word_o[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[4]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[4] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[4] ),
        .O(\spi_tx_word_o[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[4]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[4] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[4] ),
        .O(\spi_tx_word_o[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[4]_i_14 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[4] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[4] ),
        .O(\spi_tx_word_o[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[4]_i_15 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[4] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[4] ),
        .O(\spi_tx_word_o[4]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spi_tx_word_o[4]_i_16 
       (.I0(\reg_adc_amp1_amp_gain_g1_reg_n_0_[4] ),
        .I1(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[0] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_chip_error_status1_chip_error_load_reg_n_0_[4] ),
        .O(\spi_tx_word_o[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[4]_i_17 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[4] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[4] ),
        .O(\spi_tx_word_o[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[4]_i_3 
       (.I0(\spi_tx_word_o_reg[4]_i_5_n_0 ),
        .I1(\spi_tx_word_o_reg[4]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[4]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o_reg[4]_i_8_n_0 ),
        .O(\spi_rx_word_reg[11]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[4]_i_9 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[4] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[4] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[4] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[5]_i_10 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[5] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[5] ),
        .O(\spi_tx_word_o[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[5]_i_11 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[5] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[5] ),
        .O(\spi_tx_word_o[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[5]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[5] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[5] ),
        .O(\spi_tx_word_o[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[5]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[5] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[5] ),
        .O(\spi_tx_word_o[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[5]_i_14 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[5] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[5] ),
        .O(\spi_tx_word_o[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[5]_i_15 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[5] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[5] ),
        .O(\spi_tx_word_o[5]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \spi_tx_word_o[5]_i_16 
       (.I0(\reg_adc_amp1_amp_gain_g1_reg_n_0_[5] ),
        .I1(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[1] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_chip_error_status1_chip_error_load_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[5]_i_17 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[5] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[5] ),
        .O(\spi_tx_word_o[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[5]_i_3 
       (.I0(\spi_tx_word_o_reg[5]_i_5_n_0 ),
        .I1(\spi_tx_word_o_reg[5]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[5]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o_reg[5]_i_8_n_0 ),
        .O(\spi_rx_word_reg[11]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[5]_i_9 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[5] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[5] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[5] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[5] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[6]_i_10 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[6] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[6] ),
        .O(\spi_tx_word_o[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[6]_i_11 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[6] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[6] ),
        .O(\spi_tx_word_o[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[6]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[6] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[6] ),
        .O(\spi_tx_word_o[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[6]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[6] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[6] ),
        .O(\spi_tx_word_o[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[6]_i_14 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[6] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[6] ),
        .O(\spi_tx_word_o[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[6]_i_15 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[6] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[6] ),
        .O(\spi_tx_word_o[6]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \spi_tx_word_o[6]_i_16 
       (.I0(\reg_adc_amp1_amp_gain_g1_reg_n_0_[6] ),
        .I1(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[2] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_chip_error_status1_chip_error_load_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[6]_i_17 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[6] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[6] ),
        .O(\spi_tx_word_o[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[6]_i_3 
       (.I0(\spi_tx_word_o_reg[6]_i_5_n_0 ),
        .I1(\spi_tx_word_o_reg[6]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[6]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o_reg[6]_i_8_n_0 ),
        .O(\spi_rx_word_reg[11]_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[6]_i_9 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[6] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[6] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[6] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[6] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[7]_i_10 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[7] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[7] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[7]_i_11 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[7] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_rec_discharge_control_div_clk_discharge_reg_n_0_[7] ),
        .O(\spi_tx_word_o[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[7]_i_12 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[7] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[7] ),
        .O(\spi_tx_word_o[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[7]_i_13 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[7] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[7] ),
        .O(\spi_tx_word_o[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[7]_i_14 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[7] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[7] ),
        .O(\spi_tx_word_o[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[7]_i_15 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[7] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[7] ),
        .O(\spi_tx_word_o[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[7]_i_16 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[7] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[7] ),
        .O(\spi_tx_word_o[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spi_tx_word_o[7]_i_17 
       (.I0(\reg_adc_amp1_amp_gain_g1_reg_n_0_[7] ),
        .I1(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[3] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_chip_error_status1_chip_error_load_reg_n_0_[7] ),
        .O(\spi_tx_word_o[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[7]_i_18 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[7] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[7] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[7] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[7] ),
        .O(\spi_tx_word_o[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[7]_i_4 
       (.I0(\spi_tx_word_o_reg[7]_i_6_n_0 ),
        .I1(\spi_tx_word_o_reg[7]_i_7_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [4]),
        .I3(\spi_tx_word_o_reg[7]_i_8_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [3]),
        .I5(\spi_tx_word_o_reg[7]_i_9_n_0 ),
        .O(\spi_rx_word_reg[11]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[8]_i_10 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[8] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[8] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[8] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \spi_tx_word_o[8]_i_11 
       (.I0(\reg_adc_amp1_amp_gain_g1_reg_n_0_[8] ),
        .I1(\reg_chip_error_status2_chip_error_crc5_reg_n_0_[4] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_chip_error_status1_chip_error_load_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .O(\spi_tx_word_o[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[8]_i_12 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[8] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[8] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[8] ),
        .O(\spi_tx_word_o[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[8]_i_13 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[8] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[8] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[8] ),
        .O(\spi_tx_word_o[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[8]_i_14 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[8] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[8] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[8] ),
        .O(\spi_tx_word_o[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[8]_i_15 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[8] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[8] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[8] ),
        .O(\spi_tx_word_o[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[8]_i_16 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[8] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[8] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[8] ),
        .O(\spi_tx_word_o[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[8]_i_17 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[8] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[8] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(reg_rec_discharge_control_en_clk_discharge_reg_n_0),
        .O(\spi_tx_word_o[8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[8]_i_18 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[8] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[8] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[8] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[8] ),
        .O(\spi_tx_word_o[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[9]_i_11 
       (.I0(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg_n_0_[9] ),
        .I1(\reg_stim_ch3_p0_stim3_interval_reg_n_0_[9] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch2_pulse_p2_stim2_pulse_gap_reg_n_0_[9] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch2_pulse_p1_stim2_pulse_wc_reg_n_0_[9] ),
        .O(\reg_stim_ch3_pulse_p1_stim3_pulse_wc_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[9]_i_12 
       (.I0(\reg_stim_mask6_p2_stim_mask6_g2_reg_n_0_[9] ),
        .I1(\reg_stim_mask6_p1_stim_mask6_g1_reg_n_0_[9] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask5_p2_stim_mask5_g2_reg_n_0_[9] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask5_p1_stim_mask5_g1_reg_n_0_[9] ),
        .O(\spi_tx_word_o[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[9]_i_13 
       (.I0(\reg_enabled_ch_rec_g2_en_rec_ch_g2_reg_n_0_[9] ),
        .I1(\reg_enabled_ch_rec_g1_en_rec_ch_g1_reg_n_0_[9] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask7_p2_stim_mask7_g2_reg_n_0_[9] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask7_p1_stim_mask7_g1_reg_n_0_[9] ),
        .O(\spi_tx_word_o[9]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \spi_tx_word_o[9]_i_14 
       (.I0(\reg_stim_ch0_pulse_p2_stim0_pulse_gap_reg_n_0_[9] ),
        .I1(\reg_stim_ch0_pulse_p1_stim0_pulse_wc_reg_n_0_[9] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\spi_tx_word_o_reg[14] [0]),
        .I4(\reg_stim_ch0_p0_stim0_interval_reg_n_0_[9] ),
        .O(\spi_tx_word_o[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[9]_i_15 
       (.I0(\reg_stim_ch2_p0_stim2_interval_reg_n_0_[9] ),
        .I1(\reg_stim_ch1_pulse_p2_stim1_pulse_gap_reg_n_0_[9] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_ch1_pulse_p1_stim1_pulse_wc_reg_n_0_[9] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_ch1_p0_stim1_interval_reg_n_0_[9] ),
        .O(\spi_tx_word_o[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[9]_i_2 
       (.I0(\spi_tx_word_o[9]_i_5_n_0 ),
        .I1(\spi_tx_word_o[9]_i_6_n_0 ),
        .I2(\spi_tx_word_o_reg[14] [3]),
        .I3(\spi_tx_word_o[9]_i_7_n_0 ),
        .I4(\spi_tx_word_o_reg[14] [2]),
        .I5(\spi_tx_word_o[9]_i_8_n_0 ),
        .O(\reg_stim_mask4_p2_stim_mask4_g2_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[9]_i_5 
       (.I0(\reg_stim_mask4_p2_stim_mask4_g2_reg_n_0_[9] ),
        .I1(\reg_stim_mask4_p1_stim_mask4_g1_reg_n_0_[9] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask3_p2_stim_mask3_g2_reg_n_0_[9] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask3_p1_stim_mask3_g1_reg_n_0_[9] ),
        .O(\spi_tx_word_o[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[9]_i_6 
       (.I0(\reg_stim_mask2_p2_stim_mask2_g2_reg_n_0_[9] ),
        .I1(\reg_stim_mask2_p1_stim_mask2_g1_reg_n_0_[9] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_stim_mask1_p2_stim_mask1_g2_reg_n_0_[9] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_stim_mask1_p1_stim_mask1_g1_reg_n_0_[9] ),
        .O(\spi_tx_word_o[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spi_tx_word_o[9]_i_7 
       (.I0(\reg_stim_mask0_p2_stim_mask0_g2_reg_n_0_[9] ),
        .I1(\reg_stim_mask0_p1_stim_mask0_g1_reg_n_0_[9] ),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_rec_stim_control_div_clk_stim_reg_n_0_[9] ),
        .I4(\spi_tx_word_o_reg[14] [0]),
        .I5(\reg_adc_amp2_amp_gain_g2_reg_n_0_[9] ),
        .O(\spi_tx_word_o[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \spi_tx_word_o[9]_i_8 
       (.I0(\reg_chip_error_status1_chip_error_load_reg_n_0_[9] ),
        .I1(\spi_tx_word_o_reg[14] [0]),
        .I2(\spi_tx_word_o_reg[14] [1]),
        .I3(\reg_adc_amp1_amp_gain_g1_reg_n_0_[9] ),
        .O(\spi_tx_word_o[9]_i_8_n_0 ));
  MUXF7 \spi_tx_word_o_reg[0]_i_5 
       (.I0(\spi_tx_word_o[0]_i_10_n_0 ),
        .I1(\spi_tx_word_o[0]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[0]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[0]_i_6 
       (.I0(\spi_tx_word_o[0]_i_12_n_0 ),
        .I1(\spi_tx_word_o[0]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[0]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[0]_i_7 
       (.I0(\spi_tx_word_o[0]_i_14_n_0 ),
        .I1(\spi_tx_word_o[0]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[0]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[0]_i_8 
       (.I0(\spi_tx_word_o[0]_i_16_n_0 ),
        .I1(\spi_tx_word_o[0]_i_17_n_0 ),
        .O(\spi_tx_word_o_reg[0]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[10]_i_10 
       (.I0(\spi_tx_word_o[10]_i_14_n_0 ),
        .I1(\spi_tx_word_o[10]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[10]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[10]_i_3 
       (.I0(\spi_tx_word_o_reg[10]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[10]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_12 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[10]_i_9 
       (.I0(\spi_tx_word_o[10]_i_12_n_0 ),
        .I1(\spi_tx_word_o[10]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[10]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[11]_i_10 
       (.I0(\spi_tx_word_o[11]_i_14_n_0 ),
        .I1(\spi_tx_word_o[11]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[11]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[11]_i_3 
       (.I0(\spi_tx_word_o_reg[11]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[11]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_11 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[11]_i_9 
       (.I0(\spi_tx_word_o[11]_i_12_n_0 ),
        .I1(\spi_tx_word_o[11]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[11]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[12]_i_10 
       (.I0(\spi_tx_word_o[12]_i_14_n_0 ),
        .I1(\spi_tx_word_o[12]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[12]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[12]_i_3 
       (.I0(\spi_tx_word_o_reg[12]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[12]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_10 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[12]_i_9 
       (.I0(\spi_tx_word_o[12]_i_12_n_0 ),
        .I1(\spi_tx_word_o[12]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[12]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[13]_i_10 
       (.I0(\spi_tx_word_o[13]_i_14_n_0 ),
        .I1(\spi_tx_word_o[13]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[13]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[13]_i_3 
       (.I0(\spi_tx_word_o_reg[13]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[13]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_9 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[13]_i_9 
       (.I0(\spi_tx_word_o[13]_i_12_n_0 ),
        .I1(\spi_tx_word_o[13]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[13]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[14]_i_5 
       (.I0(\spi_tx_word_o[14]_i_9_n_0 ),
        .I1(\spi_tx_word_o[14]_i_10_n_0 ),
        .O(\spi_tx_word_o_reg[14]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[14]_i_6 
       (.I0(\spi_tx_word_o[14]_i_11_n_0 ),
        .I1(\spi_tx_word_o[14]_i_12_n_0 ),
        .O(\spi_tx_word_o_reg[14]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[15]_i_5 
       (.I0(\spi_tx_word_o[15]_i_9_n_0 ),
        .I1(\spi_tx_word_o[15]_i_10_n_0 ),
        .O(\spi_tx_word_o_reg[15]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[15]_i_6 
       (.I0(\spi_tx_word_o[15]_i_11_n_0 ),
        .I1(\spi_tx_word_o[15]_i_12_n_0 ),
        .O(\spi_tx_word_o_reg[15]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[16]_i_4 
       (.I0(\spi_tx_word_o[16]_i_9_n_0 ),
        .I1(\spi_tx_word_o[16]_i_10_n_0 ),
        .O(\spi_tx_word_o_reg[16]_i_4_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[16]_i_5 
       (.I0(\spi_tx_word_o[16]_i_11_n_0 ),
        .I1(\spi_tx_word_o[16]_i_12_n_0 ),
        .O(\spi_tx_word_o_reg[16]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[16]_i_6 
       (.I0(\spi_tx_word_o[16]_i_13_n_0 ),
        .I1(\spi_tx_word_o[16]_i_14_n_0 ),
        .O(\spi_tx_word_o_reg[16]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[17]_i_10 
       (.I0(\spi_tx_word_o[17]_i_14_n_0 ),
        .I1(\spi_tx_word_o[17]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[17]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[17]_i_3 
       (.I0(\spi_tx_word_o_reg[17]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[17]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_8 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[17]_i_9 
       (.I0(\spi_tx_word_o[17]_i_12_n_0 ),
        .I1(\spi_tx_word_o[17]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[17]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[18]_i_10 
       (.I0(\spi_tx_word_o[18]_i_14_n_0 ),
        .I1(\spi_tx_word_o[18]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[18]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[18]_i_3 
       (.I0(\spi_tx_word_o_reg[18]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[18]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_7 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[18]_i_9 
       (.I0(\spi_tx_word_o[18]_i_12_n_0 ),
        .I1(\spi_tx_word_o[18]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[18]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[19]_i_10 
       (.I0(\spi_tx_word_o[19]_i_14_n_0 ),
        .I1(\spi_tx_word_o[19]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[19]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[19]_i_3 
       (.I0(\spi_tx_word_o_reg[19]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[19]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_6 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[19]_i_9 
       (.I0(\spi_tx_word_o[19]_i_12_n_0 ),
        .I1(\spi_tx_word_o[19]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[19]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[1]_i_5 
       (.I0(\spi_tx_word_o[1]_i_10_n_0 ),
        .I1(\spi_tx_word_o[1]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[1]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[1]_i_6 
       (.I0(\spi_tx_word_o[1]_i_12_n_0 ),
        .I1(\spi_tx_word_o[1]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[1]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[1]_i_7 
       (.I0(\spi_tx_word_o[1]_i_14_n_0 ),
        .I1(\spi_tx_word_o[1]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[1]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[1]_i_8 
       (.I0(\spi_tx_word_o[1]_i_16_n_0 ),
        .I1(\spi_tx_word_o[1]_i_17_n_0 ),
        .O(\spi_tx_word_o_reg[1]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[20]_i_10 
       (.I0(\spi_tx_word_o[20]_i_14_n_0 ),
        .I1(\spi_tx_word_o[20]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[20]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[20]_i_3 
       (.I0(\spi_tx_word_o_reg[20]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[20]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_5 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[20]_i_9 
       (.I0(\spi_tx_word_o[20]_i_12_n_0 ),
        .I1(\spi_tx_word_o[20]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[20]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[21]_i_10 
       (.I0(\spi_tx_word_o[21]_i_14_n_0 ),
        .I1(\spi_tx_word_o[21]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[21]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[21]_i_3 
       (.I0(\spi_tx_word_o_reg[21]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[21]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_4 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[21]_i_9 
       (.I0(\spi_tx_word_o[21]_i_12_n_0 ),
        .I1(\spi_tx_word_o[21]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[21]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[22]_i_10 
       (.I0(\spi_tx_word_o[22]_i_14_n_0 ),
        .I1(\spi_tx_word_o[22]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[22]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[22]_i_3 
       (.I0(\spi_tx_word_o_reg[22]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[22]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_3 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[22]_i_9 
       (.I0(\spi_tx_word_o[22]_i_12_n_0 ),
        .I1(\spi_tx_word_o[22]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[22]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[23]_i_10 
       (.I0(\spi_tx_word_o[23]_i_14_n_0 ),
        .I1(\spi_tx_word_o[23]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[23]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[23]_i_3 
       (.I0(\spi_tx_word_o_reg[23]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[23]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_2 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[23]_i_9 
       (.I0(\spi_tx_word_o[23]_i_12_n_0 ),
        .I1(\spi_tx_word_o[23]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[23]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[24]_i_10 
       (.I0(\spi_tx_word_o[24]_i_19_n_0 ),
        .I1(\spi_tx_word_o[24]_i_20_n_0 ),
        .O(\spi_tx_word_o_reg[24]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[24]_i_8 
       (.I0(\spi_tx_word_o[24]_i_15_n_0 ),
        .I1(\spi_tx_word_o[24]_i_16_n_0 ),
        .O(\spi_tx_word_o_reg[24]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[24]_i_9 
       (.I0(\spi_tx_word_o[24]_i_17_n_0 ),
        .I1(\spi_tx_word_o[24]_i_18_n_0 ),
        .O(\spi_tx_word_o_reg[24]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[25]_i_10 
       (.I0(\spi_tx_word_o[25]_i_14_n_0 ),
        .I1(\spi_tx_word_o[25]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[25]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[25]_i_3 
       (.I0(\spi_tx_word_o_reg[25]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[25]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_1 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[25]_i_9 
       (.I0(\spi_tx_word_o[25]_i_12_n_0 ),
        .I1(\spi_tx_word_o[25]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[25]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[26]_i_10 
       (.I0(\spi_tx_word_o[26]_i_14_n_0 ),
        .I1(\spi_tx_word_o[26]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[26]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[26]_i_3 
       (.I0(\spi_tx_word_o_reg[26]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[26]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_0 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[26]_i_9 
       (.I0(\spi_tx_word_o[26]_i_12_n_0 ),
        .I1(\spi_tx_word_o[26]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[26]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[27]_i_10 
       (.I0(\spi_tx_word_o[27]_i_14_n_0 ),
        .I1(\spi_tx_word_o[27]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[27]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[27]_i_3 
       (.I0(\spi_tx_word_o_reg[27]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[27]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10] ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[27]_i_9 
       (.I0(\spi_tx_word_o[27]_i_12_n_0 ),
        .I1(\spi_tx_word_o[27]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[27]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[28]_i_4 
       (.I0(\spi_tx_word_o[28]_i_8_n_0 ),
        .I1(\spi_tx_word_o[28]_i_9_n_0 ),
        .O(\spi_tx_word_o_reg[28]_i_4_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[28]_i_5 
       (.I0(\spi_tx_word_o[28]_i_10_n_0 ),
        .I1(\spi_tx_word_o[28]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[28]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[28]_i_6 
       (.I0(\spi_tx_word_o[28]_i_12_n_0 ),
        .I1(\spi_tx_word_o[28]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[28]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[29]_i_4 
       (.I0(\spi_tx_word_o[29]_i_8_n_0 ),
        .I1(\spi_tx_word_o[29]_i_9_n_0 ),
        .O(\spi_tx_word_o_reg[29]_i_4_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[29]_i_5 
       (.I0(\spi_tx_word_o[29]_i_10_n_0 ),
        .I1(\spi_tx_word_o[29]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[29]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[29]_i_6 
       (.I0(\spi_tx_word_o[29]_i_12_n_0 ),
        .I1(\spi_tx_word_o[29]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[29]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[2]_i_5 
       (.I0(\spi_tx_word_o[2]_i_10_n_0 ),
        .I1(\spi_tx_word_o[2]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[2]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[2]_i_6 
       (.I0(\spi_tx_word_o[2]_i_12_n_0 ),
        .I1(\spi_tx_word_o[2]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[2]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[2]_i_7 
       (.I0(\spi_tx_word_o[2]_i_14_n_0 ),
        .I1(\spi_tx_word_o[2]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[2]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[2]_i_8 
       (.I0(\spi_tx_word_o[2]_i_16_n_0 ),
        .I1(\spi_tx_word_o[2]_i_17_n_0 ),
        .O(\spi_tx_word_o_reg[2]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[30]_i_4 
       (.I0(\spi_tx_word_o[30]_i_8_n_0 ),
        .I1(\spi_tx_word_o[30]_i_9_n_0 ),
        .O(\spi_tx_word_o_reg[30]_i_4_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[30]_i_5 
       (.I0(\spi_tx_word_o[30]_i_10_n_0 ),
        .I1(\spi_tx_word_o[30]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[30]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[30]_i_6 
       (.I0(\spi_tx_word_o[30]_i_12_n_0 ),
        .I1(\spi_tx_word_o[30]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[30]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[31]_i_5 
       (.I0(\spi_tx_word_o[31]_i_9_n_0 ),
        .I1(\spi_tx_word_o[31]_i_10_n_0 ),
        .O(\spi_tx_word_o_reg[31]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[31]_i_6 
       (.I0(\spi_tx_word_o[31]_i_11_n_0 ),
        .I1(\spi_tx_word_o[31]_i_12_n_0 ),
        .O(\spi_tx_word_o_reg[31]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[31]_i_7 
       (.I0(\spi_tx_word_o[31]_i_13_n_0 ),
        .I1(\spi_tx_word_o[31]_i_14_n_0 ),
        .O(\spi_tx_word_o_reg[31]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[3]_i_5 
       (.I0(\spi_tx_word_o[3]_i_10_n_0 ),
        .I1(\spi_tx_word_o[3]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[3]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[3]_i_6 
       (.I0(\spi_tx_word_o[3]_i_12_n_0 ),
        .I1(\spi_tx_word_o[3]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[3]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[3]_i_7 
       (.I0(\spi_tx_word_o[3]_i_14_n_0 ),
        .I1(\spi_tx_word_o[3]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[3]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[3]_i_8 
       (.I0(\spi_tx_word_o[3]_i_16_n_0 ),
        .I1(\spi_tx_word_o[3]_i_17_n_0 ),
        .O(\spi_tx_word_o_reg[3]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[4]_i_5 
       (.I0(\spi_tx_word_o[4]_i_10_n_0 ),
        .I1(\spi_tx_word_o[4]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[4]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[4]_i_6 
       (.I0(\spi_tx_word_o[4]_i_12_n_0 ),
        .I1(\spi_tx_word_o[4]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[4]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[4]_i_7 
       (.I0(\spi_tx_word_o[4]_i_14_n_0 ),
        .I1(\spi_tx_word_o[4]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[4]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[4]_i_8 
       (.I0(\spi_tx_word_o[4]_i_16_n_0 ),
        .I1(\spi_tx_word_o[4]_i_17_n_0 ),
        .O(\spi_tx_word_o_reg[4]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[5]_i_5 
       (.I0(\spi_tx_word_o[5]_i_10_n_0 ),
        .I1(\spi_tx_word_o[5]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[5]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[5]_i_6 
       (.I0(\spi_tx_word_o[5]_i_12_n_0 ),
        .I1(\spi_tx_word_o[5]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[5]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[5]_i_7 
       (.I0(\spi_tx_word_o[5]_i_14_n_0 ),
        .I1(\spi_tx_word_o[5]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[5]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[5]_i_8 
       (.I0(\spi_tx_word_o[5]_i_16_n_0 ),
        .I1(\spi_tx_word_o[5]_i_17_n_0 ),
        .O(\spi_tx_word_o_reg[5]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[6]_i_5 
       (.I0(\spi_tx_word_o[6]_i_10_n_0 ),
        .I1(\spi_tx_word_o[6]_i_11_n_0 ),
        .O(\spi_tx_word_o_reg[6]_i_5_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[6]_i_6 
       (.I0(\spi_tx_word_o[6]_i_12_n_0 ),
        .I1(\spi_tx_word_o[6]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[6]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[6]_i_7 
       (.I0(\spi_tx_word_o[6]_i_14_n_0 ),
        .I1(\spi_tx_word_o[6]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[6]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[6]_i_8 
       (.I0(\spi_tx_word_o[6]_i_16_n_0 ),
        .I1(\spi_tx_word_o[6]_i_17_n_0 ),
        .O(\spi_tx_word_o_reg[6]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[7]_i_6 
       (.I0(\spi_tx_word_o[7]_i_11_n_0 ),
        .I1(\spi_tx_word_o[7]_i_12_n_0 ),
        .O(\spi_tx_word_o_reg[7]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[7]_i_7 
       (.I0(\spi_tx_word_o[7]_i_13_n_0 ),
        .I1(\spi_tx_word_o[7]_i_14_n_0 ),
        .O(\spi_tx_word_o_reg[7]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[7]_i_8 
       (.I0(\spi_tx_word_o[7]_i_15_n_0 ),
        .I1(\spi_tx_word_o[7]_i_16_n_0 ),
        .O(\spi_tx_word_o_reg[7]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[7]_i_9 
       (.I0(\spi_tx_word_o[7]_i_17_n_0 ),
        .I1(\spi_tx_word_o[7]_i_18_n_0 ),
        .O(\spi_tx_word_o_reg[7]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[8]_i_3 
       (.I0(\spi_tx_word_o_reg[8]_i_6_n_0 ),
        .I1(\spi_tx_word_o_reg[8]_i_7_n_0 ),
        .O(\spi_rx_word_reg[10]_14 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF8 \spi_tx_word_o_reg[8]_i_4 
       (.I0(\spi_tx_word_o_reg[8]_i_8_n_0 ),
        .I1(\spi_tx_word_o_reg[8]_i_9_n_0 ),
        .O(\spi_rx_word_reg[10]_15 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[8]_i_6 
       (.I0(\spi_tx_word_o[8]_i_11_n_0 ),
        .I1(\spi_tx_word_o[8]_i_12_n_0 ),
        .O(\spi_tx_word_o_reg[8]_i_6_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[8]_i_7 
       (.I0(\spi_tx_word_o[8]_i_13_n_0 ),
        .I1(\spi_tx_word_o[8]_i_14_n_0 ),
        .O(\spi_tx_word_o_reg[8]_i_7_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[8]_i_8 
       (.I0(\spi_tx_word_o[8]_i_15_n_0 ),
        .I1(\spi_tx_word_o[8]_i_16_n_0 ),
        .O(\spi_tx_word_o_reg[8]_i_8_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[8]_i_9 
       (.I0(\spi_tx_word_o[8]_i_17_n_0 ),
        .I1(\spi_tx_word_o[8]_i_18_n_0 ),
        .O(\spi_tx_word_o_reg[8]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF7 \spi_tx_word_o_reg[9]_i_10 
       (.I0(\spi_tx_word_o[9]_i_14_n_0 ),
        .I1(\spi_tx_word_o[9]_i_15_n_0 ),
        .O(\spi_tx_word_o_reg[9]_i_10_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
  MUXF8 \spi_tx_word_o_reg[9]_i_3 
       (.I0(\spi_tx_word_o_reg[9]_i_9_n_0 ),
        .I1(\spi_tx_word_o_reg[9]_i_10_n_0 ),
        .O(\spi_rx_word_reg[10]_13 ),
        .S(\spi_tx_word_o_reg[14] [3]));
  MUXF7 \spi_tx_word_o_reg[9]_i_9 
       (.I0(\spi_tx_word_o[9]_i_12_n_0 ),
        .I1(\spi_tx_word_o[9]_i_13_n_0 ),
        .O(\spi_tx_word_o_reg[9]_i_9_n_0 ),
        .S(\spi_tx_word_o_reg[14] [2]));
endmodule

module w_icons_sync_rst
   (out,
    data_sync1_reg,
    CLK_REF_I_IBUF_BUFG,
    SPI_CLK_I_IBUF_BUFG,
    RESET_N_I_IBUF);
  output out;
  output data_sync1_reg;
  input CLK_REF_I_IBUF_BUFG;
  input SPI_CLK_I_IBUF_BUFG;
  input RESET_N_I_IBUF;

  wire CLK_REF_I_IBUF_BUFG;
  wire RESET_N_I_IBUF;
  wire SPI_CLK_I_IBUF_BUFG;
  wire data_sync1_reg;
  wire i_common_reset_sync_spi_n_1;
  wire out;

  common_reset_sync i_common_reset_sync
       (.CLK_REF_I_IBUF_BUFG(CLK_REF_I_IBUF_BUFG),
        .data_sync1_reg_0(data_sync1_reg),
        .data_sync1_reg_1(i_common_reset_sync_spi_n_1));
  common_reset_sync_0 i_common_reset_sync_spi
       (.RESET_N_I(i_common_reset_sync_spi_n_1),
        .RESET_N_I_IBUF(RESET_N_I_IBUF),
        .SPI_CLK_I_IBUF_BUFG(SPI_CLK_I_IBUF_BUFG),
        .out(out));
endmodule

(* TOP_CLKDIV_W = "12" *) 
(* NotValidForBitStream *)
module w_icons_top
   (CLK_REF_I,
    RESET_N_I,
    STIM_XEN_I,
    ERR_CRC_O,
    ERR_STIM_O,
    SPI_CLK_I,
    SPI_CS_I,
    SPI_MOSI_I,
    SPI_MISO_O,
    CLK_REC_O,
    ADC_EN_O,
    ADC1_OUT_O,
    ADC2_OUT_O);
  input CLK_REF_I;
  input RESET_N_I;
  input STIM_XEN_I;
  output ERR_CRC_O;
  output ERR_STIM_O;
  input SPI_CLK_I;
  input SPI_CS_I;
  input SPI_MOSI_I;
  output SPI_MISO_O;
  output CLK_REC_O;
  output ADC_EN_O;
  output ADC1_OUT_O;
  output ADC2_OUT_O;

  wire ADC1_OUT_O;
  wire ADC2_OUT_O;
  wire ADC_EN_O;
  wire CLK_REC_O;
  wire CLK_REC_O_OBUF;
  wire CLK_REF_I;
  wire CLK_REF_I_IBUF;
  wire CLK_REF_I_IBUF_BUFG;
  wire ERR_CRC_O;
  wire ERR_STIM_O;
  wire RESET_N_I;
  wire RESET_N_I_IBUF;
  wire SPI_CLK_I;
  wire SPI_CLK_I_IBUF;
  wire SPI_CLK_I_IBUF_BUFG;
  wire SPI_CS_I;
  wire SPI_MISO_O;
  wire SPI_MISO_O_OBUF;
  wire SPI_MISO_O_TRI;
  wire SPI_MOSI_I;
  wire SPI_MOSI_I_IBUF;
  wire i_w_icons_core_n_0;

initial begin
 $sdf_annotate("tb_w_icons_top_time_synth.sdf",,,,"tool_control");
end
  OBUFT ADC1_OUT_O_OBUF_inst
       (.I(1'b0),
        .O(ADC1_OUT_O),
        .T(1'b1));
  OBUFT ADC2_OUT_O_OBUF_inst
       (.I(1'b0),
        .O(ADC2_OUT_O),
        .T(1'b1));
  OBUFT ADC_EN_O_OBUF_inst
       (.I(1'b0),
        .O(ADC_EN_O),
        .T(1'b1));
  OBUF CLK_REC_O_OBUF_inst
       (.I(CLK_REC_O_OBUF),
        .O(CLK_REC_O));
  BUFG CLK_REF_I_IBUF_BUFG_inst
       (.I(CLK_REF_I_IBUF),
        .O(CLK_REF_I_IBUF_BUFG));
  IBUF CLK_REF_I_IBUF_inst
       (.I(CLK_REF_I),
        .O(CLK_REF_I_IBUF));
  OBUFT ERR_CRC_O_OBUF_inst
       (.I(1'b0),
        .O(ERR_CRC_O),
        .T(1'b1));
  OBUFT ERR_STIM_O_OBUF_inst
       (.I(1'b0),
        .O(ERR_STIM_O),
        .T(1'b1));
  IBUF RESET_N_I_IBUF_inst
       (.I(RESET_N_I),
        .O(RESET_N_I_IBUF));
  BUFG SPI_CLK_I_IBUF_BUFG_inst
       (.I(SPI_CLK_I_IBUF),
        .O(SPI_CLK_I_IBUF_BUFG));
  IBUF SPI_CLK_I_IBUF_inst
       (.I(SPI_CLK_I),
        .O(SPI_CLK_I_IBUF));
  IBUF SPI_CS_I_IBUF_inst
       (.I(SPI_CS_I),
        .O(SPI_MISO_O_TRI));
  OBUFT SPI_MISO_O_OBUFT_inst
       (.I(SPI_MISO_O_OBUF),
        .O(SPI_MISO_O),
        .T(SPI_MISO_O_TRI));
  IBUF SPI_MOSI_I_IBUF_inst
       (.I(SPI_MOSI_I),
        .O(SPI_MOSI_I_IBUF));
  common_clkdiv_by_n i_common_clkdiv_by_n_top
       (.CLK_REC_O_OBUF(CLK_REC_O_OBUF),
        .CLK_REF_I_IBUF_BUFG(CLK_REF_I_IBUF_BUFG),
        .clkdiv_n_reg_0(i_w_icons_core_n_0));
  w_icons_core i_w_icons_core
       (.CLK_REF_I_IBUF_BUFG(CLK_REF_I_IBUF_BUFG),
        .D(SPI_MOSI_I_IBUF),
        .Q(SPI_MISO_O_OBUF),
        .RESET_N_I_IBUF(RESET_N_I_IBUF),
        .SPI_CLK_I_IBUF_BUFG(SPI_CLK_I_IBUF_BUFG),
        .SPI_MISO_O_TRI(SPI_MISO_O_TRI),
        .data_sync1_reg(i_w_icons_core_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
