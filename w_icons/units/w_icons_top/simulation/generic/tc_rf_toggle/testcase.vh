reg [31:0]  data;
reg [9:0]   address;
reg [31:0] stim_mask_g1, stim_mask_g2;
reg [63:0] stim_mask;
reg [31:0] data_in, data_out;



integer i,ch_j,mask_i,loop_end, mask_itr;

// External stim enable signal
initial begin
    
    #3200;
    stim_xen = 1'b1;
    #630000;
    
end

initial begin
    #5200;
    spi_config(`ver);
    #10
            
    chip_id(data,`ver);
    #100

    stim_status(data,`ver);
    #100

    // Enable Stim clock divider
    stim_clkdiv_on;

      
    //  for all selected channels
    for (ch_j = 0; ch_j < 217; ch_j = ch_j +1) begin
        base_add_s  = 10'h0 + ch_j*4'h4 ;
        $display ("Write to Register [%2d], address: %4h", ch_j,base_add_s);
        data_in = 32'hAAAAAAAA ;
        write_data(base_add_s,data_in,`nver);
    end
    

    /*
    $display ("Check Register!");
    for (ch_j = 0; ch_j < 217; ch_j = ch_j +1) begin
        base_add_s  = 10'h0 + ch_j*4'h4 ;
        
        data_in = 32'hAAAAAAA1 ;
        read_data(base_add_s,data_out,`nver);
        if (data_out == data_in) begin
            tb_check_passed;
        end else begin
            $display ("Failed: Cheack Register [%2d], address: %4h -> Read value:%8h, Expected Value:%8h ", ch_j,base_add_s,data_out,data_in);
            tb_check_failed;
        end
    end
    */

    
    for (ch_j = 0; ch_j <217; ch_j = ch_j +1) begin
        base_add_s  = 10'h0 + ch_j*4'h4 ;
        $display ("Write to Register [%2d], address: %4h", ch_j,base_add_s);
        data_in = 32'h55555555 ;
        write_data(base_add_s,data_in,`nver);
    end
    
    for (ch_j = 0; ch_j < 217; ch_j = ch_j +1) begin
        base_add_s  = 10'h0 + ch_j*4'h4 ;
        $display ("Write to Register [%2d], address: %4h", ch_j,base_add_s);
        data_in = 32'h0 ;
        write_data(base_add_s,data_in,`nver);

    end

    for (ch_j = 0; ch_j <217; ch_j = ch_j +1) begin
        base_add_s  = 10'h0 + ch_j*4'h4 ;
        $display ("Write to Register [%2d], address: %4h", ch_j,base_add_s);
        data_in = 32'hffffffff ;
        write_data(base_add_s,data_in,`nver);
    end
    
    tb_final_check;
end
