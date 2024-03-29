/* ICGLUE GENERATED FILE - manual changes out of prepared *icglue keep begin/end* blocks will be overwritten */
/* icglue keep begin head */
/*
 * Module: spi_slave_common
 * Author: Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
// Parameters:  Supportted SPI mode: 0  
//              Mode 0 is selected: sampling on rising edge, transmitting on falling edge
//              Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA)
//               0   |             0             |        0       
//
/* 1) spi_rx_word:
   47------44 | 43-----------------------12 | 11----------7 | 6 ----------0
   CMD(4bits) |      32bits(ADD/DATA)       | CRC5(5bits)   |    DUMMY

   2)spi_rx_word_o = spi_rx_word [40:5]
*/
/* icglue keep end */
`timescale 1ns/1ps

module spi_slave_common (
    spi_clk_i,
    spi_cs_i,
    spi_mosi_i,
    spi_miso_o,
    spi_rx_word_o,
    rx_done_o,
    spi_tx_word_i,
    tx_ready_i,
    crc5_chk_o,
    tx_done_o,
    crc5_ext_o,
    spi_cmd4b_o,
    spi_cmd4b_en_o
);

    parameter TX_WIDTH = 36;
    /* icglue keep begin parameters *//* icglue keep end */

    input                 spi_clk_i;
    input                 spi_cs_i;
    input                 spi_mosi_i;
    output                spi_miso_o;
    output [TX_WIDTH-1:0] spi_rx_word_o;
    output                rx_done_o;
    input          [31:0] spi_tx_word_i;
    input                 tx_ready_i;
    output                crc5_chk_o;
    output                tx_done_o;
    output          [4:0] crc5_ext_o;
    output          [3:0] spi_cmd4b_o;
    output                spi_cmd4b_en_o;
    /* icglue keep begin declarations */

    wire [35:0]           spi_rx_word_o;
    reg [40:0]            spi_rx_word;
    reg                   rx_done_o;
    reg [5:0]             rx_cnt;
    reg [4:0]             crc5;
    reg                   crc5_chk_o;
    reg [3:0]             spi_cmd;

    reg [5:0]             tx_cnt;
    reg [4:0]             tx_crc5;
    reg                   tx_lock;
    reg                   tx_lock_crc5;
    //reg                   tx_data_done;
    reg [39:0]            spi_tx_word_1d;
    reg                   tx_done_o;
    reg                   spi_cmd_en;

    //RX side: Sampling on rising edge
    always @(posedge spi_clk_i or posedge spi_cs_i)
    begin
        if (spi_cs_i) begin
            rx_cnt           <= 'b0;
            rx_done_o        <= 'b0;
            spi_rx_word      <= 'b0;
            crc5             <= 5'b11111;
            crc5_chk_o       <= 'b0;
            spi_cmd          <= 'b0;
            spi_cmd_en       <= 'b0;
            
        end else begin
            rx_cnt <= rx_cnt + 1;
            // Receive MSB
            if (rx_cnt < 6'd41) begin             // set spi_rx_word_o to {CMD,ADD/DATA,CRC}, 41 bits
                spi_rx_word <= {spi_rx_word[39:0],spi_mosi_i};
            end else if (rx_cnt == 6'd48) begin   // set rc_cnt to zero after 48 clock cycles: the SPI CMD length
                rx_cnt      <= 'b0;
            end
            //enable signal for spi_rx_word_o for the next module
            rx_done_o       <= (rx_cnt == 6'd41);
            
            //Calculate CRC5 for the first 36bits 
            if (rx_cnt < 6'd36) begin             
                crc5        <= crc5_serial(crc5,spi_mosi_i);
            end   
            // check the crc5 
            crc5_chk_o      <= (rx_cnt == 6'd41) && (crc5 == spi_rx_word[4:0]);


            if (rx_cnt == 6'd4) begin             // extract spi command for RD_DATA
                spi_cmd     <= spi_rx_word[3:0];
                spi_cmd_en  <= 1'b1;
            end
        end 
    end 
    assign spi_rx_word_o   = spi_rx_word[40:5];
    assign crc5_ext_o      = spi_rx_word[4:0]; // Recieved CRC5 from outside
    assign spi_cmd4b_o     = spi_cmd;          // send to spi_custom_logic
    assign spi_cmd4b_en_o  = spi_cmd_en;       // send to spi_custom_logic


    // to be designed again for the new instruction
    //TX side: transmitting on falling edge
    always @(negedge spi_clk_i or posedge spi_cs_i) 
    begin
        if (spi_cs_i) begin
            tx_cnt         <= 6'h4;      //RD_DATA is detected after 4 clock cycles
            tx_crc5        <= 5'b11111;
            //tx_data_done   <= 1'b0;
            spi_tx_word_1d <='b0;
            tx_lock        <='b0;
            tx_lock_crc5   <='b0;
            tx_done_o      <='b0;
            
        end else begin
            //start transmitting out
            
            if ( (spi_cmd == 4'b0100) || (spi_cmd == 4'b0110) || (spi_cmd == 4'b0111)) begin  //RD_DATA, CHIP_ID, STIM_ST
                tx_cnt         <= tx_cnt + 1;

            end
            
            if (tx_cnt >= 6'd7) begin
                spi_tx_word_1d <= spi_tx_word_1d << 1;
                
                //capture RD_DATA
                if ((tx_lock == 1'b0) && tx_ready_i ) begin
                    spi_tx_word_1d[39:8] <= spi_tx_word_i;
                    tx_lock              <= 1'b1;
                end
            end 

            //calculate the CRC5 & replacing to transmit out
            if ( (tx_cnt >= 6'd8) && (tx_cnt < 6'd40) ) begin
                tx_crc5               <= crc5_serial(tx_crc5,spi_miso_o);
            end else if ((tx_cnt >= 6'd40) && (tx_lock_crc5 == 1'b0)) begin
                spi_tx_word_1d[37:33]  <= tx_crc5;
                tx_lock_crc5           <= 1'b1;
            end         
            tx_done_o                  <= (tx_cnt == 6'd46);
        end 
    end 
    // Send MSB first
    assign spi_miso_o  = spi_cs_i? 1'bz: spi_tx_word_1d[39];
    //assign spi_miso_o  = spi_tx_word_1d[39];

    //Transmitting on falling edge
    //CRC5 claculation function
    function automatic [4:0] crc5_serial;
        input [4:0]  crc;
        input        data;
        begin
        crc5_serial[0] = crc[4] ^ data;
        crc5_serial[1] = crc[0];
        crc5_serial[2] = crc[1] ^ crc[4] ^ data;
        crc5_serial[3] = crc[2];
        crc5_serial[4] = crc[3];
        end
    endfunction //

    /* icglue keep end */
endmodule
