/*
 * Module: spi_master_top_level_tasks
 * Author:  Ali Zeinolabedin 
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
//------------------------------------------------------------
`include "spi_master_emulator_tasks.vh"
//-----------------------------------------------------------------------------------
//high-level function for write operation
task write_data(input [9:0] address, input [31:0] data,input verbose);
    begin
        wr_data(data,verbose,`crc5);
        wr_add(address,verbose,`crc5);
    end
endtask

//high-level function for write operation
task write_data_crc5(input [9:0] address, input [31:0] data,input verbose,input crc5);
    begin
        wr_data(data,verbose,crc5);
        wr_add(address,verbose,crc5);
    end
endtask

//high-level function for read operation
task read_data(input [9:0] address,output [31:0] data,input verbose);
    begin
        rd_add(address,verbose,`crc5);
        rd_data(data,verbose);
    end
endtask

task chip_error_status;
    reg [31:0] data;
    reg [9:0]  address;
    begin
       /*
        +--------------------+------------+------------------+---------------------+-------+--------+-------+----------+------------------------------------------+
        | chip_error_status1 | 0x00000004 | chip_error_load  | chip_error_load     |    32 | RW     |  31:0 |    32'h0 | Chip Error: ADD/DATA causing a failure    |
        +--------------------+------------+------------------+---------------------+-------+--------+-------+----------+-------------------------------------------+
        | chip_error_status2 | 0x00000008 | chip_error_cmd   | chip_error_cmd      |     4 | RW     |   3:0 |     4'h0 | Chip Error: CMD  causing a failure        |
        |                    |            | chip_error_crc5  | chip_error_crc5     |     5 | RW     |   8:4 |     5'h0 | Chip Error: CRC5 causing a failure        |
        |                    |            | -                | -                   |    23 | -      |  31:9 |        - |                                           |
        +--------------------+------------+------------------+---------------------+-------+--------+-------+----------+-------------------------------------------+
        */
        address = 10'h004;
        read_data(address,data,`nver);
        $display("-----------> Chip Error Status");
        $display("\tRead data/address: 0x%4h",data);
        address = 10'h008;
        read_data(address,data,`nver);
        $write("%c[1;31m",27);
        $display("\tFailed Command   : %4h",data[3:0]);
        $display("\tFailed CRC5      : %4h",data[8:4]);
        $write("%c[0m",27);
    end
endtask

//----------------------------------------------------------------------------------
// Abstract and module-level function for manipulation of recording and stimulation
task stim_clkdiv_config(input [11:0] divider);
    reg [9:0]  address;
    reg [31:0] data;
    begin
        address    = 10'h014;
        read_data(address,data,`nver);
        data[11:0] = divider;
        write_data(address,data,`nver);  
    end
endtask

// Stimulation Clock divider enable 
task stim_clkdiv_on;
    reg [9:0]  address;
    reg [31:0] data;
    begin
        address   = 10'h014;
        read_data(address,data,`nver);
        data[12]  = 1'b1;
        write_data(address,data,`nver);  
    end
endtask

task stim_clkdiv_off;
    reg [9:0]  address;
    reg [31:0] data;
    begin
        address   = 10'h014;
        read_data(address,data,`nver);
        data[12] = 1'b0;
        write_data(address,data,`nver);  
    end
endtask


// enable stim_ch in the corresponding mask_index
// it only enables a single channel for a given mask
// to be tested for other options
task stim_mask_ch_set(input [2:0] mask_index, input [5:0] stim_ch);
    reg [9:0]  address;
    reg [31:0] data_rd;
    reg [31:0] data;
    begin
        //base address: 10'h018
        address   = (stim_ch <= 8'd31) ? (10'h018 + mask_index*4'h8) : (10'h018 + mask_index*4'h8 + 4'h4);
        read_data(address,data,`nver);
        //$display("\tadd_read_test   : %4h",address);
        data[stim_ch[4:0]] = 1'b1;
        write_data(address,data,`nver);  
    end
endtask

task stim_mask_ch_set_vec(input [2:0] mask_index, input [31:0] stim_mask_vec0, input [31:0] stim_mask_vec1);
    reg [9:0]  address;
    reg [31:0] data_rd;
    reg [31:0] data;
    begin
        //base address: 10'h018
        address   =  (10'h018 + mask_index*4'h8) ;
        data      = stim_mask_vec0;
        write_data(address,data,`nver); 

        address   =  (10'h018 + mask_index*4'h8 + 4'h4); 
        data      = stim_mask_vec1;
        write_data(address,data,`nver); 

    end
endtask

// enable the mask
task stim_mask_ctrl(input [7:0] mask);
    reg [9:0]  address;
    reg [31:0] data;
    begin
        address    = 10'h014;
        read_data(address,data,`nver);
        data[20:13] = mask;
        write_data(address,data,`nver);  
    end
endtask

task stim_params_config(input [9:0] base_address, input [15:0] interval, input [7:0] ia, input [7:0] ic, input [13:0] wc, input [13:0] gap, input [13:0] wa, input [11:0] num, input pol, input range, input mode);
    reg [9:0]  address;
    reg [31:0] data_rd;
    reg [31:0] data;
    reg [7:0]  ia_tmp;
    reg [13:0] wa_tmp;
    begin
        if (mode == 1) begin
            ia_tmp = ic;
            wa_tmp = wc;
        end else begin
            ia_tmp = ia;
            wa_tmp = wa;
        end
        // write to stic_ch?_p0
        address   = base_address;
        data      = {ic,ia_tmp,interval};
        write_data(address,data,`nver);
        // write to stic_ch?_p1
        address   = base_address + 4'h4;
        data      = {2'b00,wa_tmp,2'b00,wc};
        write_data(address,data,`nver);
        // write to stic_ch?_p2
        address   = base_address + 4'h8;
        // bit29 must be always 1 for W_Icons project
        data      = {range,pol,2'b10,num,2'b00,gap};
        write_data(address,data,`nver);
    end
endtask

// enable/disabling the recording tasks
task rec_on;
    reg [9:0]  address;
    reg [31:0] data;
    begin
        address   = 10'h014;
        read_data(address,data,`nver);
        data[21]  = 1'b1;
        write_data(address,data,`nver);  
    end
endtask

task rec_off;
    reg [9:0]  address;
    reg [31:0] data;
    begin
        address   = 10'h014;
        read_data(address,data,`nver);
        data[21]  = 1'b0;
        write_data(address,data,`nver);  
    end
endtask

// identify the recorded channel
// if channel<63  : corresponding single channel
// if channel>=64 : all channels

// identify the recorded channel
// Each channel has a dedicate bits to enable the signal
task rec_ch_mask(input [31:0] rec_mask_g1,input [31:0] rec_mask_g2);
    reg [9:0]  address;
    begin
        address      = 10'h058;
        write_data(address,rec_mask_g1,`nver);
        address      = 10'h05C;
        write_data(address,rec_mask_g2,`nver);  
    end
endtask

task rec_amp_mask(input [31:0] rec_mask_g1,input [31:0] rec_mask_g2);
    reg [9:0]  address;
    begin
        address      = 10'h00C;
        write_data(address,rec_mask_g1,`nver);
        address      = 10'h010;
        write_data(address,rec_mask_g2,`nver);  
    end
endtask


// Stimulation Clock divider enable 
task discharge_clkdiv_on;
    reg [9:0]  address;
    reg [31:0] data;
    begin
        address   = 10'h060;
        read_data(address,data,`nver);
        data[8]  = 1'b1;
        write_data(address,data,`nver);  
    end
endtask

task discharge_clkdiv_off;
    reg [9:0]  address;
    reg [31:0] data;
    begin
        address   = 10'h060;
        read_data(address,data,`nver);
        data[8] = 1'b0;
        write_data(address,data,`nver);  
    end
endtask


function [4:0] count_ones;
    input [63:0] data;
    reg [31:0] ones;
    integer i;
    begin
        count_ones = 0;  //initialize count variable.
        for(i=0;i<64;i=i+1)   //for all the bits.
            count_ones = count_ones + data[i]; //Add the bit to the count.
    end
endfunction