reg [31:0]  data;
reg [9:0]   address;
reg [31:0] stim_mask_g1, stim_mask_g2;
reg [4:0]  ones;

integer i,mask_j;


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
    


    for (i=0 ; i < 64 ; i = i+1) begin
        base_add_s     = 10'h064 +  i*4'hC;
        interval_s[i]  = {$random} % 20;
        ic_s[i]        = {$random} % 256;
        wc_s[i]        = {$random} % 200;
        gap_s[i]       = {$random} % 10;
        num_s[i]       = {$random} % 3 + 2'b10; 
        pol_s[i]       = 1'b0;
        range_s[i]     = 1'b0;
        stim_params_config(base_add_s,interval_s[i],ia_s[i],ic_s[i],wc_s[i],gap_s[i],wa_s[i],num_s[i],pol_s[i],range_s[i],1);
        /*
        $display ("Write to stimulator [%2d], address: %4h", i,base_add_s);
        $display ("\t Interval : %2d", interval_s[i]);
        $display ("\t Ic       : %2d", ic_s[i]);
        $display ("\t PulseW   : %2d", wc_s[i]);
        $display ("\t PulseGap : %2d", gap_s[i]);
        $display ("\t PulseNum : %2d", num_s[i]);
        $display ("\t Pol      : %2d", pol_s[i]);
        $display ("\t range    : %2d", range_s[i]);
        */
    end

    #100  
    //--------------------------------------------------------------------------------------
    //  Ch0: random wc and ic with valid values and fixed interval and num
    for (mask_j=0; mask_j<8; mask_j = mask_j +1) begin
        $display ("----------------> Check Error for Mask [%2d]", mask_j);
        $display ("\t enabled mask index: %8b", 1<<mask_j);
        for (i=0;i<7;i=i+1) begin
            if (i < 1) begin
                stim_mask_g1 = 32'h00000FF1;
                stim_mask_g2 = 32'hF0000000;
                stim_mask_ch_set_vec(mask_j[2:0],stim_mask_g1,stim_mask_g2);

            end else if ( (i >= 1) && (i <= 2) ) begin 
                stim_mask_g1 = 32'h00000001;
                stim_mask_g2 = 32'h00000000;
                stim_mask_ch_set_vec(mask_j[2:0],stim_mask_g1,stim_mask_g2);

            end else if (i >= 3) begin 
                stim_mask_g1 = 32'h00000001;
                stim_mask_g2 = 32'hFF000000;
                stim_mask_ch_set_vec(mask_j[2:0],stim_mask_g1,stim_mask_g2);
                
            end
           
            // Enable mask
            stim_mask_ctrl(1<<mask_j);
            //wait to run the whole pattern
            //#(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
            #800000;
            // Disable mask0
            stim_mask_ctrl(8'b0);
            //#(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
            //clear mask0
            #1000;
            
        end

        stim_mask_ch_set_vec(mask_j[2:0],32'h0,32'h0);
        
    end
    if ( (stim_chk == 0) || (stim_err>0)) begin
        tb_check_failed;
        $display ("Stimulation Failed!");
    end 
    tb_final_check;
end

//check the saftey checks
reg test;
initial begin
    test = 0;
    while (1) begin
        @(ERR_STIM_S);
        
        ones = count_ones({stim_mask_g2,stim_mask_g1});
        if (ones >= 12) begin
            tb_stim_check;
        end else if (ERR_STIM_S && (ones < 12) ) begin
            tb_stim_err;
            test = 1;
        end
    end
end 
