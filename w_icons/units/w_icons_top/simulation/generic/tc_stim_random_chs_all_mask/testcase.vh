reg [31:0]  data;
reg [9:0]   address;
reg [31:0] stim_mask_g1, stim_mask_g2;
reg [63:0] stim_mask;



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
    loop_end = 2;
    
    for (mask_itr = 0; mask_itr < 2 ; mask_itr = mask_itr +1) begin
        stim_mask = 64'h000000000000007F;
        stim_mask_g1 = stim_mask[31:0];
        stim_mask_g2 = stim_mask[63:32];
        stim_mask_ch_set_vec(mask_itr,stim_mask_g1,stim_mask_g2); 
        $display ("\t mask : %1d", mask_itr);
        $display ("\t stim mask : %64h", stim_mask);
        for (mask_i = 0; mask_i < 8 ; mask_i = mask_i +1) begin
            $display ("---------------------------------------------------");
            $display ("Write parameters to selected stimulation channels");
            if (mask_i == 9) begin
                loop_end = 1;
            end else begin
                loop_end = 7;
            end

            for (ch_j = 0; ch_j < loop_end; ch_j = ch_j +1) begin
                base_add_s  = 10'h064 + ch_j*4'hC + mask_i*4'hC*7;
                $display ("Write to stimulator Ch [%2d], address: %4h", ch_j+7*mask_i,base_add_s);
                interval_s[ch_j+7*mask_i]  = {$random} % 30;
                ic_s[ch_j+7*mask_i]        = {$random} % 70;
                wc_s[ch_j+7*mask_i]        = {$random} % 90;
                gap_s[ch_j+7*mask_i]       = {$random} % 10;
                num_s[ch_j+7*mask_i]       = {$random} % 5 + 1'b1;
                pol_s[ch_j+7*mask_i]       = 1'b0;
                range_s[ch_j+7*mask_i]     = 1'b0;
                $display ("\t Interval : %2d", interval_s[ch_j+7*mask_i]);
                $display ("\t Ic       : %2d", ic_s[ch_j+7*mask_i]);
                $display ("\t PulseW   : %2d", wc_s[ch_j+7*mask_i]);
                $display ("\t PulseGap : %2d", gap_s[ch_j+7*mask_i]);
                $display ("\t PulseNum : %2d", num_s[ch_j+7*mask_i]);
                $display ("\t Pol      : %2d", pol_s[ch_j+7*mask_i]);
                $display ("\t range    : %2d", range_s[ch_j+7*mask_i]);

                stim_params_config(base_add_s,interval_s[ch_j+7*mask_i],ia_s[ch_j+7*mask_i],ic_s[ch_j+7*mask_i],wc_s[ch_j+7*mask_i],gap_s[ch_j+7*mask_i],wa_s[ch_j+7*mask_i],num_s[ch_j+7*mask_i],pol_s[ch_j+7*mask_i],range_s[ch_j+7*mask_i],1);
            end


            for (i=0;i<1;i=i+1) begin
                $display ("-------------------------> Iteration [%3d]", i);

                // Enable mask0
                stim_mask_ctrl(1<<mask_itr);
                //wait to run the whole pattern
                //#(num_s*(wc_s+wc_s+gap_s+interval_s)*1000+1000);
                #800000;            
                //these delays to be replaced with the max delay of the channel enabled in the mask
                // Disable all mask
                stim_mask_ctrl(8'b0);
                //to provide enough delay btw current ch check on analog macro
                //#(num_s*(wc_s+wc_s+gap_s+interval_s)*1000+1000);
            end
            #100000;
            #100000;
            stim_mask    = stim_mask << 7;
            stim_mask_g1 = stim_mask[31:0];
            stim_mask_g2 = stim_mask[63:32];
            stim_mask_ch_set_vec(mask_itr,stim_mask_g1,stim_mask_g2); 
            $display ("\t stim mask : %64h", stim_mask);
        end
    end
    if ( (stim_chk == 0) || (stim_err>0)) begin
        tb_check_failed;
        $display ("Stimulation Failed!");
    end 
    
    tb_final_check;
end
