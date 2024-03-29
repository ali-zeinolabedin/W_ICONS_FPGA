reg [31:0]  data;
reg [9:0]   address;


reg [31:0]  stim_mask_g1, stim_mask_g2;


// External stim enable signal
initial begin
    #1200;
    stim_xen = 1'b1;
    #630000;
    stim_xen = 1'b0;
    #50000;
    stim_xen = 1'b1;
end



initial begin
    #1200;
    spi_config(`ver);
    #10
            
    chip_id(data,`ver);
    #100

    stim_status(data,`ver);
    #100

    // Set clock divider to 20
    stim_clkdiv_config(12'h060);
    // Enable Stim clock divider
    stim_clkdiv_on;
    // read to test the stim_clkdiv_config
    read_data(10'h14,data,`ver);
    if (data[11:0] == 12'h060) begin
        tb_check_passed;
    end else begin
        tb_check_failed;
        $display("\tClock divider value [%4h]",data[11:0]);
    end
    
    //wait 
    #10000
    // Set clock divider to 40
    stim_clkdiv_config(12'h140);
    #100
    read_data(10'h14,data,`ver);
    if (data[11:0] == 12'h140) begin
        tb_check_passed;
    end else begin
        tb_check_failed;
        $display("\tClock divider value [%4h]",data[11:0]);
    end
    
    #10000

    #50000
    tb_final_check;
end
