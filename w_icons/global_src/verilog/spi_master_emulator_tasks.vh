/*
 * Module: spi_master_emulator_tasks
 * Author:  Ali Zeinolabedin 
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
//------------------------------------------------------------
`define ver  1
`define nver 0
`define crc5_error 1
`define crc5       0
//------------------------------------------------------------
// SPI Primitive functions 
// Sends a single byte from master.  Will drive CS on its own.
task tx_byte(input [7:0] data); 
    begin 
        @(posedge CLK_REF_SPI_S);
        tx_data         = data;
        tx_data_valid   = 1'b1;
        spi_cs          = 1'b0;
        @(posedge CLK_REF_SPI_S);
        tx_data_valid   = 1'b0;
        @(posedge CLK_REF_SPI_S);
        @(posedge tx_data_ready_s);
        spi_cs          = 1'b1;
    end
endtask // Send a single byte

// similar to tx_byte with extra delay btw successive write
task tx_byte_delay(input [7:0] data); 
    begin 
        @(posedge CLK_REF_SPI_S);
        tx_data         = data[7:0];
        tx_data_valid   = 1'b1;
        spi_cs          = 1'b0;
        @(posedge CLK_REF_SPI_S);
        tx_data_valid   = 1'b0;
        //wait for 8*CLKS_PER_HALF_BIT*2 clock cycles to generalize it to the CLK_REF
        repeat (8*CLKS_PER_HALF_BIT*2+CLKS_PER_HALF_BIT) begin
            @(posedge CLK_REF_SPI_S);
        end
    end
endtask // 

// 
task rx_byte_delay(input [7:0] data, output [7:0] rd_data); 
    begin 
        @(posedge CLK_REF_SPI_S);
        tx_data         = data[7:0];
        tx_data_valid   = 1'b1;
        spi_cs          = 1'b0;
        @(posedge CLK_REF_SPI_S);
        tx_data_valid   = 1'b0;
        //wait for 8*CLKS_PER_HALF_BIT*2 clock cycles to generalize it to the CLK_REF
        repeat (8*CLKS_PER_HALF_BIT*2+CLKS_PER_HALF_BIT) begin
            @(posedge CLK_REF_SPI_S);
            if (rx_data_valid_s) begin
                rd_data = rx_data_s;
            end
        end
    end
endtask // 
//------------------------------------------------------
// SPI Commands definition
// CMD(4'b0101): SPI_CONFIG
task spi_config(input verbose); 
    reg [35:0] data_pack;
    reg [47:0] data_48bits;
    begin 
        if (verbose == 1'b1) begin
            $display("-----------> SPI Config: CMD(4'b0101)");
        end
        data_pack = {4'b0101,32'h0000_0000};
        if (verbose == 1'b1) begin
            $display("\tdata_pack  : 0x%h",data_pack);
            $display("\tcrc5       : 0b%b (0x%h)",crc5_val(data_pack),crc5_val(data_pack));
        end
        data_48bits = {data_pack,crc5_val(data_pack),7'b0000000};
        if (verbose == 1'b1) begin
            $display("\t48-bit data: 0x%h",data_48bits);
        end
        //transmit data
        tx_byte_delay(data_48bits[47:40]);
        tx_byte_delay(data_48bits[39:32]);
        tx_byte_delay(data_48bits[31:24]);
        tx_byte_delay(data_48bits[23:16]);
        tx_byte_delay(data_48bits[15:8]);
        tx_byte_delay(data_48bits[7:0]);
        if (verbose == 1'b1) begin
            $display(".....................................");
        end 
        spi_cs   = 1'b1;
    end
endtask // Send an address

// CMD(4'b0001): WR_ADD
task wr_add(input [9:0] address,input verbose,input crc5_error); 
    reg [35:0] data_pack;
    reg [47:0] data_48bits;
    begin 
        if (verbose == 1'b1) begin
            $display("-----------> WR_ADD: CMD(4'b0001)");
        end
        data_pack = {4'b0001,22'h0,address};
        if (verbose == 1'b1) begin
            $display("\taddress    : 0x%h",address);
            $display("\tdata_pack  : 0x%h",data_pack);
        end
        if (crc5_error) begin
            if (verbose == 1'b1) begin
                $display("\tcrc5       : 0b%b (0x%h)",crc5_val_failed(data_pack),crc5_val_failed(data_pack));
            end
            data_48bits = {data_pack,crc5_val_failed(data_pack),7'b0000000};
        end else begin
            if (verbose == 1'b1) begin
                $display("\tcrc5       : 0b%b (0x%h)",crc5_val(data_pack),crc5_val(data_pack));
            end
            data_48bits = {data_pack,crc5_val(data_pack),7'b0000000};
        end
        if (verbose == 1'b1) begin
            $display("\t48-bit data: 0x%h",data_48bits);
        end
        //transmit address
        tx_byte_delay(data_48bits[47:40]);
        tx_byte_delay(data_48bits[39:32]);
        tx_byte_delay(data_48bits[31:24]);
        tx_byte_delay(data_48bits[23:16]);
        tx_byte_delay(data_48bits[15:8]);
        tx_byte_delay(data_48bits[7:0]);
        if (verbose == 1'b1) begin
            $display(".....................................");
        end
        spi_cs   = 1'b1;
    end
endtask //CMD: WR_ADD

// CMD(4'b0010): WR_DATA
task wr_data(input [31:0] data,input verbose,input crc5_error); 
    reg [35:0] data_pack;
    reg [47:0] data_48bits;
    begin 
        if (verbose == 1'b1) begin
            $display("----------->WR_DATA: CMD(4'b0010)");
        end
        data_pack = {4'b0010,data};
        if (verbose == 1'b1) begin
            $display("\tdata       : 0x%h",data);
            $display("\tdata_pack  : 0x%h",data_pack);
        end
        if (crc5_error) begin
            if (verbose == 1'b1) begin
                $display("\tcrc5       : 0b%b (0x%h)",crc5_val_failed(data_pack),crc5_val_failed(data_pack));
            end
            data_48bits = {data_pack,crc5_val_failed(data_pack),7'b0000000};
        end else begin
            if (verbose == 1'b1) begin
                $display("\tcrc5       : 0b%b (0x%h)",crc5_val(data_pack),crc5_val(data_pack));
            end
            data_48bits = {data_pack,crc5_val(data_pack),7'b0000000};
        end
        if (verbose == 1'b1) begin
            $display("\t48-bit data: 0x%h",data_48bits);
        end
        //transmit data
        tx_byte_delay(data_48bits[47:40]);
        tx_byte_delay(data_48bits[39:32]);
        tx_byte_delay(data_48bits[31:24]);
        tx_byte_delay(data_48bits[23:16]);
        tx_byte_delay(data_48bits[15:8]);
        tx_byte_delay(data_48bits[7:0]);
        if (verbose == 1'b1) begin
            $display(".....................................");
        end
        spi_cs   = 1'b1;
    end
endtask //CMD: WR_DATA

// CMD(4'b011): RD_ADD
task rd_add(input [9:0] address,input verbose,input crc5_error); 
    reg [35:0] data_pack;
    reg [47:0] data_48bits;
    begin 
        if (verbose == 1'b1) begin
            $display("-----------> RD_ADD: CMD(4'b0011)");
        end
        data_pack = {4'b0011,22'h0,address};
        if (verbose == 1'b1) begin
            $display("\taddress    : 0x%h",address);
            $display("\tdata_pack  : 0x%h",data_pack);
        end
        if (crc5_error) begin
            if (verbose == 1'b1) begin
                $display("\tcrc5       : 0b%b (0x%h)",crc5_val_failed(data_pack),crc5_val_failed(data_pack));
            end
            data_48bits = {data_pack,crc5_val_failed(data_pack),7'b0000000};
        end else begin
            if (verbose == 1'b1) begin
                $display("\tcrc5       : 0b%b (0x%h)",crc5_val(data_pack),crc5_val(data_pack));
            end
            data_48bits = {data_pack,crc5_val(data_pack),7'b0000000};
        end
        if (verbose == 1'b1) begin
            $display("\t48-bit data: 0x%h",data_48bits);
        end
        //transmit address
        tx_byte_delay(data_48bits[47:40]);
        tx_byte_delay(data_48bits[39:32]);
        tx_byte_delay(data_48bits[31:24]);
        tx_byte_delay(data_48bits[23:16]);
        tx_byte_delay(data_48bits[15:8]);
        tx_byte_delay(data_48bits[7:0]);
        if (verbose == 1'b1) begin
            $display(".....................................");
        end
        spi_cs   = 1'b1;
    end
endtask //CMD: RD_ADD

//CMD(4'b0100): RD_DATA
task rd_data(output [31:0] data,input verbose); 
    reg [47:0] rd_data;
    begin 
        if (verbose == 1'b1) begin
            $display("----------->RD_DATA: CMD(4'b0100)");
        end
        // first four dummy is to read data
        rx_byte_delay({4'b0100,4'b0000},rd_data[47:40]);
        rx_byte_delay(8'h00,rd_data[39:32]);
        rx_byte_delay(8'h00,rd_data[31:24]);
        rx_byte_delay(8'h00,rd_data[23:16]);
        rx_byte_delay(8'h00,rd_data[15:8]);
        rx_byte_delay(8'h00,rd_data[7:0]);
        data = rd_data[39:8];
        if (verbose == 1'b1) begin
            
            $display("\tRead data: %4h",rd_data[39:8]);
            $display("\tCRC: %4h",rd_data[4:0]);
        end        
        if ( crc5_val_rd(rd_data[39:8]) == rd_data[4:0] ) begin
            if (verbose == 1'b1) begin
                $write("%c[1;34m",27);
                $display("\tRead CRC5: Passed!");
                $write("%c[0m",27);
                $display(".....................................");
            end
            tb_check_passed;
        end else begin
            if (verbose == 1'b1) begin
                $write("%c[1;31m",27);
                $display("\tRead CRC5: Failed!");
                $display("\t\tOn-chip CRC5   : 0x%h",rd_data[4:0]);
                $display("\t\tCalculated CRC5: 0x%h",crc5_val_rd(rd_data[39:8]));
                $write("%c[0m",27);
                $display(".....................................");
             end
            tb_check_failed;
        end
        spi_cs   = 1'b1;    
    end
endtask //CMD: RD

//CMD(4'b0110): CHIP_ID
task chip_id(output [31:0] data,input verbose); 
    reg [47:0] rd_data;
    begin 
        if (verbose == 1'b1) begin
            $display("----------->Chip ID: CMD(4'b0110)");
        end
        // first four dummy is to read data
        rx_byte_delay({4'b0110,4'b0000},rd_data[47:40]);
        rx_byte_delay(8'h00,rd_data[39:32]);
        rx_byte_delay(8'h00,rd_data[31:24]);
        rx_byte_delay(8'h00,rd_data[23:16]);
        rx_byte_delay(8'h00,rd_data[15:8]);
        rx_byte_delay(8'h00,rd_data[7:0]);
        data = rd_data[39:8];
        if (verbose == 1'b1) begin
            $display("\tChip ID: %4h",rd_data[39:0]);
            $display("\tChip ID: %4h",rd_data[39:8]);
        end        
        if ( crc5_val_rd(rd_data[39:8]) == rd_data[4:0] ) begin
            if (verbose == 1'b1) begin
                $write("%c[1;34m",27);
                $display("\tRead CRC5: Passed!");
                $write("%c[0m",27);
                $display(".....................................");
            end
            tb_check_passed;
        end else begin
            if (verbose == 1'b1) begin
                $write("%c[1;31m",27);
                $display("\tRead CRC5: Failed!");
                $display("\t\tOn-chip CRC5   : 0x%h",rd_data[4:0]);
                $display("\t\tCalculated CRC5: 0x%h",crc5_val_rd(rd_data[39:8]));
                $write("%c[0m",27);
                $display(".....................................");
             end
            tb_check_failed;
        end
        spi_cs   = 1'b1;    
    end
endtask //CMD: CHIP_ID

//CMD(4'b0111): STIM_ST
task stim_status(output [31:0] data,input verbose); 
    reg [47:0] rd_data;
    begin 
        if (verbose == 1'b1) begin
            $display("----------->Stimulator Status: CMD(4'b0111)");
        end
        // first four dummy is to read data
        rx_byte_delay({4'b0111,4'b0000},rd_data[47:40]);
        rx_byte_delay(8'h00,rd_data[39:32]);
        rx_byte_delay(8'h00,rd_data[31:24]);
        rx_byte_delay(8'h00,rd_data[23:16]);
        rx_byte_delay(8'h00,rd_data[15:8]);
        rx_byte_delay(8'h00,rd_data[7:0]);
        data = rd_data[39:8];
        if (verbose == 1'b1) begin
            $display("\tStimulator status: %4h",rd_data[15:8]);
        end        
        if ( crc5_val_rd(rd_data[39:8]) == rd_data[4:0] ) begin
            if (verbose == 1'b1) begin
                $write("%c[1;34m",27);
                $display("\tRead CRC5: Passed!");
                $write("%c[0m",27);
                $display(".....................................");
            end
            tb_check_passed;
        end else begin
            if (verbose == 1'b1) begin
                $write("%c[1;31m",27);
                $display("\tRead CRC5: Failed!");
                $display("\t\tOn-chip CRC5   : 0x%h",rd_data[4:0]);
                $display("\t\tCalculated CRC5: 0x%h",crc5_val_rd(rd_data[39:8]));
                $write("%c[0m",27);
                $display(".....................................");
             end
            tb_check_failed;
        end
        spi_cs   = 1'b1;    
    end
endtask //CMD: STIM_ST

//------------------------------------------------------
// SPI Commands definition
// CMD(4'b0101): illegal Commands
task spi_illegal_cmd(input [3:0] cmd_illegal,input verbose); 
    reg [35:0] data_pack;
    reg [47:0] data_48bits;
    begin 
        data_pack = {cmd_illegal,32'h1234_5678};
        if (verbose == 1'b1) begin
            $display("\tdata_pack  : 0x%h",data_pack);
            $display("\tcrc5       : 0b%b (0x%h)",crc5_val(data_pack),crc5_val(data_pack));
        end
        data_48bits = {data_pack,crc5_val(data_pack),7'b0000000};
        if (verbose == 1'b1) begin
            $display("\t48-bit data: 0x%h",data_48bits);
        end
        //transmit data
        tx_byte_delay(data_48bits[47:40]);
        tx_byte_delay(data_48bits[39:32]);
        tx_byte_delay(data_48bits[31:24]);
        tx_byte_delay(data_48bits[23:16]);
        tx_byte_delay(data_48bits[15:8]);
        tx_byte_delay(data_48bits[7:0]);
        if (verbose == 1'b1) begin
            $display(".....................................");
        end 
        spi_cs   = 1'b1;
    end
endtask // Send an address

//----------------------------------------------------------------------------------
// CRC5 Calculation (Emulator side)
function [4:0] crc5_val_rd;
    input [31:0] data;
    integer i;
    integer j;
    begin
        crc5_val_rd    = 5'h1F;
        for (i = 0; i <= 31; i = i + 1) begin
            crc5_val_rd = crc5_serial(crc5_val_rd,data[31-i]);
            // for test only
            //$display("----crc5[%2d]: %h --- data:%b",i,crc5_val_rd,data[31-i]);
        end
    end
endfunction


// True CRC5 Generator
function [4:0] crc5_val;
    input [35:0] data;
    integer i;
    integer j;
    begin
        crc5_val    = 5'h1F;
        for (i = 0; i <= 35; i = i + 1) begin
            crc5_val = crc5_serial(crc5_val,data[35-i]);
            // for test only
            //$display("----crc5[%2d]: %h --- data:%b",i,crc5_val,data[35-i]);
        end
    end
endfunction

function [4:0] crc5_serial;
    input [4:0] crc;
    input data;
    begin
    crc5_serial[0] = crc[4] ^ data;
    crc5_serial[1] = crc[0];
    crc5_serial[2] = crc[1] ^ crc[4] ^ data;
    crc5_serial[3] = crc[2];
    crc5_serial[4] = crc[3];
    end
endfunction


// False CRC5 Generator
function [4:0] crc5_val_failed;
    input [35:0] data;
    integer i;
    integer j;
    begin
        crc5_val_failed    = 5'h1F;
        for (i = 0; i <= 35; i = i + 1) begin
            crc5_val_failed = crc5_serial_failed(crc5_val_failed,data[35-i]);
        end
    end
endfunction

function [4:0] crc5_serial_failed;
    input [4:0] crc;
    input data;
    begin
    crc5_serial_failed[0] = crc[4] ^ data;
    crc5_serial_failed[1] = crc[0];
    crc5_serial_failed[2] = crc[1] ^ crc[2] ^ data;
    crc5_serial_failed[3] = crc[0];
    crc5_serial_failed[4] = crc[2];
    end
endfunction



