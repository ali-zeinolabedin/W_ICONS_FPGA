reg [31:0]  data;
reg [9:0]   address;
reg [31:0] stim_mask_g1, stim_mask_g2;
reg [4:0]  ones;

integer i;


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

    // Set the ch0 in mask0
    // stim_mask_ch_set(3'b000,6'b000000);
    // Set the ch16 in mask0
    stim_mask_g1 = 32'h00000001;
    stim_mask_g2 = 32'h00000000;
    stim_mask_ch_set_vec(3'b000,stim_mask_g1,stim_mask_g2); 
    base_add_s  = 10'h064;
    interval_s[0]  = 16'd10;
    ic_s[0]        = 8'd1;
    wc_s[0]        = 14'd21;
    gap_s[0]       = 14'd5;
    wa_s[0]        = 14'd4;
    num_s[0]       = 12'd2;
    pol_s[0]       = 1'b0;
    range_s[0]     = 1'b0;
    stim_params_config(base_add_s,interval_s[0],ia_s[0],ic_s[0],wc_s[0],gap_s[0],wa_s[0],num_s[0],pol_s[0],range_s[0],1);

    // Enable mask0
    stim_mask_ctrl(3'b001);
    //wait to run
    #100000
    // Disable mask0
    stim_mask_ctrl(3'b000);
    #100  
    
    for (i=0 ; i < 64 ; i = i+1) begin
        base_add_s     = 10'h064 +  i*4'hC;
        interval_s[i]  = {$random} % 20;
        ic_s[i]        = {$random} % 256;
        wc_s[i]        = {$random} % 200;
        gap_s[i]       = {$random} % 10;
        num_s[i]       = {$random} % 3 + 1'b1; 
        pol_s[i]       = 1'b0;
        range_s[i]     = 1'b0;
        stim_params_config(base_add_s,interval_s[i],ia_s[i],ic_s[i],wc_s[i],gap_s[i],wa_s[i],num_s[i],pol_s[i],range_s[i],1);
    end




    //--------------------------------------------------------------------------------------
    //  Ch0: random wc and ic with valid values and fixed interval and num
    for (i=0;i<10;i=i+1) begin
        if (i < 3) begin
            stim_mask_g1 = 32'h00000FF1;
            stim_mask_g2 = 32'hF0000000;
            stim_mask_ch_set_vec(3'b000,stim_mask_g1,stim_mask_g2);

        end else if ( (i >= 3) && (i <= 6) ) begin 
            stim_mask_g1 = 32'h00000001;
            stim_mask_g2 = 32'h00000000;
            stim_mask_ch_set_vec(3'b000,stim_mask_g1,stim_mask_g2);

        end else if (i >= 6) begin 
            stim_mask_g1 = 32'h00000001;
            stim_mask_g2 = 32'hFF000000;
            stim_mask_ch_set_vec(3'b000,stim_mask_g1,stim_mask_g2);
            
        end
        

        // Enable mask0
        stim_mask_ctrl(3'b001);
        //wait to run the whole pattern
        //#(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
        //these delays to be replaced with the max delay of the channel enabled in the mask
        #400000;
        // Disable mask0
        stim_mask_ctrl(3'b000);
        //#(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
        #400000;
    end

    if ( (stim_chk == 0) || (stim_err>0)) begin
        tb_check_failed;
        $display ("Stimulation Failed!");
    end 
    tb_final_check;
end


//check the saftey checks
initial begin
    while (1) begin
        @(ERR_STIM_S);
        
        ones = count_ones({stim_mask_g2,stim_mask_g1});
        if (ones >= 12) begin
            tb_stim_check;
        end else if (ERR_STIM_S && (ones < 12) ) begin
            tb_stim_err;
        end
    end
end 
