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
    stim_mask_g1 = 32'h000000F1;
    stim_mask_g2 = 32'h00000000;
    stim_mask_ch_set_vec(3'b000,stim_mask_g1,stim_mask_g2); 
    

    //--------------------------------------------------------------------------------------
    //  Ch0: random wc and ic with valid values and fixed interval and num
    for (i=0;i<7;i=i+1) begin
        if (i < 3) begin
            base_add_s  = 10'h064;
            interval_s[0]  = 16'd10;
            ic_s[0]        = {$random} % 256;
            wc_s[0]        = {$random} % 200;
            gap_s[0]       = 14'd5;
            num_s[0]      = 12'd2;
            pol_s[0]       = 1'b0;
            range_s[0]     = 1'b0;
            stim_params_config(base_add_s,interval_s[0],ia_s[0],ic_s[0],wc_s[0],gap_s[0],wa_s[0],num_s[0],pol_s[0],range_s[0],1); 
            #20000;   

        end else if ( (i >= 3) && (i <= 5) ) begin 
            base_add_s  = 10'h064;
            interval_s[0]  = 16'd10;
            ic_s[0]        = {$random} % 256;
            wc_s[0]        = 250;
            gap_s[0]       = 14'd5;
            num_s[0]       = 12'd2;
            pol_s[0]       = 1'b0;
            range_s[0]     = 1'b0;
            stim_params_config(base_add_s,interval_s[0],ia_s[0],ic_s[0],wc_s[0],gap_s[0],wa_s[0],num_s[0],pol_s[0],range_s[0],1);    
            #20000;

        end else if (i >= 6) begin 
            base_add_s  = 10'h064;
            interval_s[0]  = 16'd10;
            ic_s[0]        = {$random} % 256;
            wc_s[0]        = {$random} % 200;
            gap_s[0]       = 14'd5;
            num_s[0]       = 12'd2;
            pol_s[0]       = 1'b0;
            range_s[0]     = 1'b0;
            stim_params_config(base_add_s,interval_s[0],ia_s[0],ic_s[0],wc_s[0],gap_s[0],wa_s[0],num_s[0],pol_s[0],range_s[0],1); 
            #20000;
        end
        
        // Enable mask0
        stim_mask_ctrl(3'b001);
        //wait to run the whole pattern
        #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
        // Disable mask0
        stim_mask_ctrl(3'b000);
        #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
        #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
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
        #20000  // to avoid the error when ERR_STIM goes up
        if ( wc_s[0] > 200) begin
            tb_stim_check;
        end else begin
            #20000;
            if ( wc_s[0] > 200) begin
                tb_stim_err;
            end
        end
    end
end 
