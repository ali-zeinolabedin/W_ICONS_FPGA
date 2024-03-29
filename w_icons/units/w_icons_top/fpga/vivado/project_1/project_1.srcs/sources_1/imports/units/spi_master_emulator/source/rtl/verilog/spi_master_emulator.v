/* icglue keep begin head */
/*
 * Module      : spi_master_emulator
 * Author      : Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
/* icglue keep end */
`timescale 1ns/1ps

module spi_master_emulator (
    clk_i,
    spi_clk_o,
    spi_mosi_o,
    spi_miso_i,
    reset_n_i,
    tx_data_i,
    tx_data_valid_i,
    tx_data_ready_o,
    rx_data_o,
    rx_data_valid_o
);

    parameter SPI_MODE          = 0;
    parameter CLKS_PER_HALF_BIT = 1;
    /* icglue keep begin parameters *//* icglue keep end */

    input        clk_i;
    output       spi_clk_o;
    output       spi_mosi_o;
    input        spi_miso_i;
    input        reset_n_i;
    input  [7:0] tx_data_i;
    input        tx_data_valid_i;
    output       tx_data_ready_o;
    output [7:0] rx_data_o;
    output       rx_data_valid_o;
    /* icglue keep begin declarations */
    reg        spi_clk_o;
    reg        spi_cs_o;
    reg        spi_mosi_o;
    reg        tx_data_ready_o;
    reg  [7:0] rx_data_o;
    reg        rx_data_valid_o;
    
    ///////////////////////////////////////////////////////////////////////////////
    // modified version of https://github.com/nandland/spi-master/blob/master/Verilog/source/SPI_Master.v
    // Description: SPI (Serial Peripheral Interface) Master
    //              Creates master based on input configuration.
    //              Sends a byte one bit at a time on MOSI
    //              Will also receive byte data one bit at a time on MISO.
    //              Any data on input byte will be shipped out on MOSI.
    //
    // Note:        clk_i must be at least 2x faster than spclk_i_o
    //
    // Parameters:  SPI_MODE, can be 0, 1, 2, or 3.  See above.
    //              Can be configured in one of 4 modes:
    //              Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA)
    //               0   |             0             |        0
    //               1   |             0             |        1
    //               2   |             1             |        0
    //               3   |             1             |        1
    //              More: https://en.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus#Mode_numbers
    //              CLKS_PER_HALF_BIT - Sets frequency of spi_clk_o.  spclk_i_o is
    //              derived from clk_i.  Set to integer number of clocks for each
    //              half-bit of SPI data.  E.g. 100 MHz clk_i, CLKS_PER_HALF_BIT = 2
    //              would create spclk_i_o of 25 MHz.  Must be >= 2
    //
    ///////////////////////////////////////////////////////////////////////////////


    // SPI Interface (All Runs at SPI Clock Domain)
    wire w_CPOL;     // Clock polarity
    wire w_CPHA;     // Clock phase

    reg [$clog2(CLKS_PER_HALF_BIT*2)-1:0] r_SPI_Clk_Count;
    reg r_SPI_Clk;
    reg [4:0] r_SPI_Clk_Edges;
    reg r_Leading_Edge;
    reg r_Trailing_Edge;
    reg       r_TX_DV;
    reg [7:0] r_TX_Byte;

    reg [2:0] r_RX_Bit_Count;
    reg [2:0] r_TX_Bit_Count;

    // CPOL: Clock Polarity
    // CPOL=0 means clock idles at 0, leading edge is rising edge.
    // CPOL=1 means clock idles at 1, leading edge is falling edge.
    assign w_CPOL  = (SPI_MODE == 2) | (SPI_MODE == 3);

    // CPHA: Clock Phase
    // CPHA=0 means the "out" side changes the data on trailing edge of clock
    //              the "in" side captures data on leading edge of clock
    // CPHA=1 means the "out" side changes the data on leading edge of clock
    //              the "in" side captures data on the trailing edge of clock
    assign w_CPHA  = (SPI_MODE == 1) | (SPI_MODE == 3);



    // Purpose: Generate SPI Clock correct number of times when DV pulse comes
    always @(posedge clk_i or negedge reset_n_i) begin
        if (~reset_n_i) begin
            tx_data_ready_o <= 1'b0;
            r_SPI_Clk_Edges <= 0;
            r_Leading_Edge  <= 1'b0;
            r_Trailing_Edge <= 1'b0;
            r_SPI_Clk       <= w_CPOL; // assign default state to idle state
            r_SPI_Clk_Count <= 0;
            spi_cs_o        <= 1'b1;
        end else begin
            // Default assignments
            r_Leading_Edge  <= 1'b0;
            r_Trailing_Edge <= 1'b0;
            if (tx_data_valid_i) begin
                tx_data_ready_o      <= 1'b0;
                r_SPI_Clk_Edges <= 16;  // Total # edges in one byte ALWAYS 16
                spi_cs_o        <= 1'b0;
            end else if (r_SPI_Clk_Edges > 0) begin
                tx_data_ready_o <= 1'b0;
                if (r_SPI_Clk_Count == CLKS_PER_HALF_BIT*2-1) begin
                    r_SPI_Clk_Edges <= r_SPI_Clk_Edges - 1'b1;
                    r_Trailing_Edge <= 1'b1;
                    r_SPI_Clk_Count <= 0;
                    r_SPI_Clk       <= ~r_SPI_Clk;
                end else if (r_SPI_Clk_Count == CLKS_PER_HALF_BIT-1) begin
                    r_SPI_Clk_Edges <= r_SPI_Clk_Edges - 1'b1;
                    r_Leading_Edge  <= 1'b1;
                    r_SPI_Clk_Count <= r_SPI_Clk_Count + 1'b1;
                    r_SPI_Clk       <= ~r_SPI_Clk;
                end else begin
                    r_SPI_Clk_Count <= r_SPI_Clk_Count + 1'b1;
                end
            end else begin
                tx_data_ready_o <= 1'b1;
            end       
        end // else: !if(~reset_n_i)
    end // always @ (posedge clk_i or negedge reset_n_i)


    // Purpose: Register tx_data_i when Data Valid is pulsed.
    // Keeps local storage of byte in case higher level module changes the data
    always @(posedge clk_i or negedge reset_n_i) begin
        if (~reset_n_i) begin
            r_TX_Byte <= 8'h00;
            r_TX_DV   <= 1'b0;
        end else begin
            r_TX_DV <= tx_data_valid_i; // 1 clock cycle delay
            if (tx_data_valid_i) begin
                r_TX_Byte <= tx_data_i;
            end
        end // else: !if(~reset_n_i)
    end // always @ (posedge clk_i or negedge reset_n_i)


    // Purpose: Generate MOSI data
    // Works with both CPHA=0 and CPHA=1
    always @(posedge clk_i or negedge reset_n_i) begin
        if (~reset_n_i) begin
            spi_mosi_o     <= 1'b0;
            r_TX_Bit_Count <= 3'b111; // send MSb first
        end else begin
            // If ready is high, reset bit counts to default
            if (tx_data_ready_o) begin
                r_TX_Bit_Count <= 3'b111;
            end else if (r_TX_DV & ~w_CPHA) begin
                // Catch the case where we start transaction and CPHA = 0
                spi_mosi_o     <= r_TX_Byte[3'b111];
                r_TX_Bit_Count <= 3'b110;
            end else if ((r_Leading_Edge & w_CPHA) | (r_Trailing_Edge & ~w_CPHA)) begin
                r_TX_Bit_Count <= r_TX_Bit_Count - 1'b1;
                spi_mosi_o     <= r_TX_Byte[r_TX_Bit_Count];
            end
        end
    end


    // Purpose: Read in MISO data.
    always @(posedge clk_i or negedge reset_n_i) begin
        if (~reset_n_i) begin
            rx_data_o       <= 8'h00;
            rx_data_valid_o <= 1'b0;
            r_RX_Bit_Count  <= 3'b111;
        end else begin
            // Default Assignments
            rx_data_valid_o   <= 1'b0;
            if (tx_data_ready_o) begin // Check if ready is high, if so reset bit count to default
                r_RX_Bit_Count <= 3'b111;
            end else if ((r_Leading_Edge & ~w_CPHA) | (r_Trailing_Edge & w_CPHA)) begin
                rx_data_o[r_RX_Bit_Count] <= spi_miso_i;  // Sample data
                r_RX_Bit_Count            <= r_RX_Bit_Count - 1'b1;
                if (r_RX_Bit_Count == 3'b000) begin
                    rx_data_valid_o   <= 1'b1;   // Byte done, pulse Data Valid
                end
            end
        end
    end
    
    
    // Purpose: Add clock delay to signals for alignment.
    always @(posedge clk_i or negedge reset_n_i) begin
        if (~reset_n_i) begin
            spi_clk_o  <= w_CPOL;
        end else begin
            spi_clk_o <= r_SPI_Clk;
        end // else: !if(~reset_n_i)
    end // always @ (posedge clk_i or negedge reset_n_i)

    /* icglue keep end */
endmodule
