/* icglue keep begin head */
/*
 * Module      : spi_custom_logic
 * Author      : Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module spi_custom_logic (
    spi_clk_i,
    spi_cs_i,
    apb_addr_o,
    apb_sel_o,
    apb_enable_o,
    apb_wdata_o,
    apb_write_o,
    apb_strb_o,
    apb_rdata_i,
    apb_ready_i,
    apb_slverr_i,
    apb_prot_o,
    apb_prot_en_o,
    chip_id_o,
    stim_mask_en_i,
    spi_rx_word_i,
    rx_done_i,
    spi_tx_word_o,
    tx_ready_o,
    crc5_chk_i,
    tx_done_i,
    crc5_ext_i,
    spi_cmd4b_i,
    spi_cmd4b_en_i,
    error_o
);

    parameter TX_WIDTH = 36;
    /* icglue keep begin parameters *//* icglue keep end */

    input                 spi_clk_i;
    input                 spi_cs_i;
    output          [9:0] apb_addr_o;
    output                apb_sel_o;
    output                apb_enable_o;
    output         [31:0] apb_wdata_o;
    output                apb_write_o;
    output          [3:0] apb_strb_o;
    input          [31:0] apb_rdata_i;
    input                 apb_ready_i;
    input                 apb_slverr_i;
    output          [2:0] apb_prot_o;
    output                apb_prot_en_o;
    output         [31:0] chip_id_o;
    input           [7:0] stim_mask_en_i;
    input  [TX_WIDTH-1:0] spi_rx_word_i;
    input                 rx_done_i;
    output         [31:0] spi_tx_word_o;
    output                tx_ready_o;
    input                 crc5_chk_i;
    input                 tx_done_i;
    input           [4:0] crc5_ext_i;
    input           [3:0] spi_cmd4b_i;
    input                 spi_cmd4b_en_i;
    output                error_o;
    /* icglue keep begin declarations */
    
    ////////////////////////////////////////////////////////////////////////
    // SPI FSM
    localparam                   STATE_WIDTH              = 4;
    localparam [STATE_WIDTH-1:0] S_IDLE                   = 4'b0000; //'h0
    localparam [STATE_WIDTH-1:0] S_CMD_WR_ADD             = 4'b0001; //'h1
    localparam [STATE_WIDTH-1:0] S_CMD_WR_DATA            = 4'b0010; //'h2
    localparam [STATE_WIDTH-1:0] S_CMD_RD_ADD             = 4'b0011; //'h3
    localparam [STATE_WIDTH-1:0] S_CMD_RD_DATA            = 4'b0100; //'h4
    localparam [STATE_WIDTH-1:0] S_CONFIG                 = 4'b0101; //'h5
    localparam [STATE_WIDTH-1:0] S_CHIP_ID                = 4'b0110; //'h6
    localparam [STATE_WIDTH-1:0] S_STIM_ST                = 4'b0111; //'h7
    localparam [STATE_WIDTH-1:0] S_CRC5_ERROR1            = 4'b1110; //'h14 this commands used internally and the user has no access to it
    localparam [STATE_WIDTH-1:0] S_CRC5_ERROR2            = 4'b1111; //'h15 this commands used internally and the user has no access to it
    
    reg [STATE_WIDTH-1:0] state, nxt_state;
    reg [9:0]             apb_address;
    reg [3:0]             apb_strb;
    reg [31:0]            apb_wdata;
    reg                   apb_enable;
    reg                   apb_write;
    reg                   apb_sel;
    reg [31:0]            spi_tx_word_o;
    reg                   tx_ready_o;
    wire [3:0]            spi_cmd;
    reg                   error_o;


    


    //FSM2: APB signaling
    localparam S_APB_ADDR_W                           = 3;
    localparam [S_APB_ADDR_W-1:0] S_APB_IDLE          = 'h0;
    localparam [S_APB_ADDR_W-1:0] S_APB_SETUP         = 'h1;
    localparam [S_APB_ADDR_W-1:0] S_APB_ACCESS        = 'h2;
    reg        [S_APB_ADDR_W-1:0] apb_state;
    reg        [S_APB_ADDR_W-1:0] next_apb_state;

    

    //this attribute should come right before state variable usage: it is for covered
    /*(*covered_fsm, spi, is="state", os="nxt_state",
                           trans="S_IDLE->S_CONFIG",
                           trans="S_IDLE->S_CMD_WR_DATA",
                           trans="S_IDLE->S_CMD_WR_DATA",
                           trans="S_IDLE->S_CMD_WR_ADD",
                           trans="S_IDLE->S_CMD_RD_ADD",
                           trans="S_IDLE->S_CMD_RD_DATA",
                           trans="S_IDLE->S_CRC5_ERROR1",
                           trans="S_IDLE->S_CHIP_ID",
                           trans="S_IDLE->S_STIM_ST",
                           trans="S_IDLE->S_IDLE",
                           trans="S_CMD_WR_ADD->S_IDLE",
                           trans="S_CMD_WR_ADD->S_CMD_WR_ADD",
                           trans="S_CMD_WR_DATA->S_IDLE",
                           trans="S_CONFIG->S_IDLE",
                           trans="S_CMD_RD_ADD->S_IDLE",
                           trans="S_CMD_RD_ADD->S_CMD_RD_ADD",
                           trans="S_CHIP_ID->S_CHIP_ID",
                           trans="S_STIM_ST->S_STIM_ST",
                           trans="S_CMD_RD_DATA->S_CMD_RD_DATA",
                           trans="S_CRC5_ERROR1->S_CRC5_ERROR2",
                           trans="S_CRC5_ERROR1->S_CRC5_ERROR1",
                           trans="S_CRC5_ERROR2->S_CRC5_ERROR2",
                           trans="S_CRC5_ERROR2->S_IDLE"
                           *)*/
    //FSM1: CMD Decodign
    always @(posedge spi_clk_i or posedge spi_cs_i) begin
        if(spi_cs_i) begin
            state         <= S_IDLE;
            error_o       <= 1'b0;
        end else begin
            state       <= nxt_state;
            if(state == S_CRC5_ERROR2) begin
                error_o       <= 1'b1;
            end
        end
    end

    assign spi_cmd = spi_rx_word_i[35:32];
    

    

    //add a case when CRC5 doesn't match
    always @(*) begin
        nxt_state = state;
        
        case(state)
            S_IDLE: begin
                if (rx_done_i == 1'b1) begin
                    if ( ( spi_cmd == S_CONFIG) && (crc5_chk_i==1'b1) ) begin
                        nxt_state = S_CONFIG;
                    
                    end else if ( (spi_cmd == S_CMD_WR_DATA) && (crc5_chk_i==1'b1) ) begin
                        nxt_state = S_CMD_WR_DATA;
                    end else if ( (spi_cmd == S_CMD_WR_ADD) && (crc5_chk_i==1'b1) ) begin
                        nxt_state = S_CMD_WR_ADD;
                    end else if ( (spi_cmd == S_CMD_RD_ADD) && (crc5_chk_i==1'b1) ) begin
                        nxt_state = S_CMD_RD_ADD;
                    end else if ( (spi_cmd == S_CMD_RD_DATA) ) begin
                        nxt_state = S_CMD_RD_DATA;
                    end else if ( ((spi_cmd == S_CMD_WR_DATA) && (crc5_chk_i==1'b0)) || ((spi_cmd == S_CMD_WR_ADD) && (crc5_chk_i==1'b0)) || ((spi_cmd == S_CMD_RD_ADD) && (crc5_chk_i==1'b0)) ) begin
                        nxt_state = S_CRC5_ERROR1;
                    end
                end  

                if ( ( spi_cmd4b_i == S_CHIP_ID) && (spi_cmd4b_en_i==1'b1) ) begin
                    nxt_state = S_CHIP_ID;   
                end else if ( ( spi_cmd4b_i == S_STIM_ST) && (spi_cmd4b_en_i==1'b1) ) begin
                    nxt_state = S_STIM_ST;  
                end
            end
           
            S_CMD_WR_ADD: begin
                if (apb_state == S_APB_ACCESS) begin    
                    nxt_state   = S_IDLE;
                end else begin
                    nxt_state   = S_CMD_WR_ADD;
                end
            end

            S_CMD_WR_DATA: begin
                nxt_state   = S_IDLE;
            end

            S_CONFIG: begin
                nxt_state   = S_IDLE;
            end
            
            S_CMD_RD_ADD: begin
                if (apb_state == S_APB_ACCESS) begin 
                    nxt_state   = S_IDLE;
                end else begin
                    nxt_state   = S_CMD_RD_ADD;
                end
            end

            S_CHIP_ID: begin
                nxt_state   = S_CHIP_ID;
            end

            S_STIM_ST: begin
                nxt_state   = S_STIM_ST;
            end

            S_CMD_RD_DATA: begin
                nxt_state   = S_CMD_RD_DATA;
            end

            S_CRC5_ERROR1: begin
                if (apb_state == S_APB_ACCESS) begin 
                    nxt_state   = S_CRC5_ERROR2;
                end else begin
                    nxt_state   = S_CRC5_ERROR1;
                end
            end


            S_CRC5_ERROR2: begin
                if (apb_state == S_APB_ACCESS) begin 
                    nxt_state   = S_IDLE;
                end else begin
                    nxt_state   = S_CRC5_ERROR2;
                end
            end
            
            default: nxt_state = S_IDLE;       
        endcase
    end

    //this attribute should come right before state variable usage
    /*(*covered_fsm, apb, is="apb_state", os="next_apb_state",
                           trans  ="S_APB_IDLE->S_APB_SETUP",
                           trans  ="S_APB_SETUP->S_APB_ACCESS",
                           trans  ="S_APB_ACCESS->S_APB_IDLE",
                           trans  ="S_APB_IDLE->S_APB_IDLE" *)*/

    always @(posedge spi_clk_i or posedge spi_cs_i) begin
        if(spi_cs_i) begin
            apb_state       <=  S_APB_IDLE;  
        end else begin
            apb_state       <= next_apb_state;
        end
    end
    
   
    always @(*) begin
        apb_sel     = 1'b0; 
        apb_enable  = 1'b0;
        apb_write   = 1'b0;
        apb_strb    = 4'b1111;
        apb_address = 10'h000;
        
        // next state logic:
        next_apb_state = apb_state;
        case (apb_state)
            S_APB_IDLE: begin
                if ( (state == S_CMD_WR_ADD) || (state == S_CMD_RD_ADD) ) begin
                    next_apb_state = S_APB_SETUP;
                    apb_sel        = 1'b1;     // apb enters the Setup mode
                    apb_address    = spi_rx_word_i[9:0];
                end else if (state == S_CRC5_ERROR1) begin
                    next_apb_state = S_APB_SETUP;
                    apb_sel        = 1'b1;     // apb enters the Setup mode
                    apb_address    = 10'h004;
                end else if (state == S_CRC5_ERROR2) begin
                    next_apb_state = S_APB_SETUP;
                    apb_sel        = 1'b1;     // apb enters the Setup mode
                    apb_address    = 10'h008;
                end
            
            end
             S_APB_SETUP: begin
                next_apb_state = S_APB_ACCESS;
                apb_sel     = 1'b1;
                apb_enable  = 1'b1;
                
                if ( (state == S_CMD_WR_ADD) || (state == S_CMD_RD_ADD) ) begin
                    apb_address = spi_rx_word_i[9:0];   
                end else if (state == S_CRC5_ERROR1) begin
                    apb_address    = 10'h004;
                end else if (state == S_CRC5_ERROR2) begin
                    apb_address    = 10'h008;
                end
                
                if ((state == S_CMD_WR_ADD) || (state == S_CRC5_ERROR1) || (state == S_CRC5_ERROR2)) begin
                    apb_write   = 1'b1;      // enable only for write operation
                end
            end
            S_APB_ACCESS: begin
                if (apb_ready_i) begin
                    next_apb_state = S_APB_IDLE;
                    apb_sel     = 1'b0; 
                    apb_enable  = 1'b0;
                    apb_write   = 1'b0;  
                end
            end
            default: next_apb_state = S_APB_IDLE;
        endcase
    end
    
    always @(posedge spi_clk_i) begin
        begin    //add the reset for apb_address later
            
            //reun the configuration to reset the SPI internal registers
            if (state == S_CONFIG) begin
                apb_wdata      <= 'b0;
                spi_tx_word_o  <= 'b0;
                tx_ready_o     <= 'b0;
                //add other registers if required to be reset
            end

            //Error operation
            if (nxt_state == S_CRC5_ERROR1) begin  //use nxt_state to aliign the apb_wdata to apb_sel
                apb_wdata    <= spi_rx_word_i[31:0];
            end

            if (nxt_state == S_CRC5_ERROR2) begin  //use nxt_state to aliign the apb_wdata to apb_sel
                apb_wdata    <= {23'h00000,crc5_ext_i,spi_rx_word_i[35:32]};
            end

            //Write operation
            if (state == S_CMD_WR_DATA) begin    // use state, because apb_wdata was set here but used in S_CMD_WR_ADD
                apb_wdata    <= spi_rx_word_i[31:0];
            end

            //Read Operation
            if ( (state == S_CMD_RD_ADD) && (tx_ready_o == 1'b0) )  begin  
                spi_tx_word_o <= apb_rdata_i;   //send data to spi_slave_common during RD_ADD -> then clean it when RD_DATA finished
                tx_ready_o    <= 1'b1;
            end  

            // when RX_DATA/ CHIP_ID sent out, the follwoing signals are reset
            if ( (state == S_CMD_RD_DATA) || (state == S_CHIP_ID) || (state == S_STIM_ST) ) begin
                if (tx_done_i) begin
                    spi_tx_word_o  <= 'b0;
                    tx_ready_o     <= 'b0;
                end
            end  


            // sending chip ID out
            if ((state == S_CHIP_ID) && (tx_ready_o == 1'b0)) begin
                spi_tx_word_o  <= chip_id_o;
                tx_ready_o     <= 'b1;
            end  

            
            // sending stimulator status
            if ((state == S_STIM_ST) && (tx_ready_o == 1'b0)) begin
                spi_tx_word_o  <= {24'b0,stim_mask_en_i};
                tx_ready_o     <= 'b1;
            end  


        end
    end
    
    assign apb_addr_o   = apb_address;
    assign apb_enable_o = apb_enable;
    assign apb_wdata_o  = apb_wdata;
    assign apb_write_o  = apb_write;
    assign apb_strb_o   = apb_strb;
    assign apb_sel_o    = apb_sel;
    /* icglue keep end */

    assign apb_prot_o = 3'b000;
    assign apb_prot_en_o = 1'b0;
    assign chip_id_o = 32'h01010164;
endmodule
