reg [31:0]  data;
reg [9:0]   address;
reg [31:0] stim_mask_g1, stim_mask_g2;



integer i,ch_j;

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
    //stim_mask_ch_set(3'b000,6'b000000);
    // Set the ch16 in mask0
    stim_mask_g1 = 32'h0000000F;
    stim_mask_g2 = 32'h00000000;
    stim_mask_ch_set_vec(3'b000,stim_mask_g1,stim_mask_g2); 
    //  for all selected channels
    $display ("---------------------------------------------------");
    $display ("Write parameters to selected stimulation channels");
    for (ch_j = 0; ch_j < 2; ch_j = ch_j +1) begin
        base_add_s  = 10'h064 + ch_j*4'hC;
        $display ("Write to stimulator [%2d], address: %4h", ch_j,base_add_s);
        interval_s[ch_j]  = {$random} % 30;
        ic_s[ch_j]        = {$random} % 70;
        wc_s[ch_j]        = {$random} % 90;
        gap_s[ch_j]       = {$random} % 10;
        num_s[ch_j]       = {$random} % 3 + 1'b1;
        pol_s[ch_j]       = 1'b0;
        range_s[ch_j]     = 1'b0;
        $display ("\t Interval : %2d", interval_s[ch_j]);
        $display ("\t Ic       : %2d", ic_s[ch_j]);
        $display ("\t PulseW   : %2d", wc_s[ch_j]);
        $display ("\t PulseGap : %2d", gap_s[ch_j]);
        $display ("\t PulseNum : %2d", num_s[ch_j]);
        $display ("\t Pol      : %2d", pol_s[ch_j]);
        $display ("\t range    : %2d", range_s[ch_j]);

        stim_params_config(base_add_s,interval_s[ch_j],ia_s[ch_j],ic_s[ch_j],wc_s[ch_j],gap_s[ch_j],wa_s[ch_j],num_s[ch_j],pol_s[ch_j],range_s[ch_j],1);
    end

    for (i=0;i<2;i=i+1) begin
        $display ("-------------------------> Iteration [%3d]", i);

        // Enable mask0
        stim_mask_ctrl(3'b001);
        //wait to run the whole pattern
        //#(num_s*(wc_s+wc_s+gap_s+interval_s)*1000+1000);
        #100000
        #100000
        #100000
        //these delays to be replaced with the max delay of the channel enabled in the mask
        // Disable mask0
        stim_mask_ctrl(3'b000);
        //to provide enough delay btw current ch check on analog macro
        //#(num_s*(wc_s+wc_s+gap_s+interval_s)*1000+1000);
    end
   
    if ( (stim_chk == 0) || (stim_err>0)) begin
        tb_check_failed;
        $display ("Stimulation Failed!");
    end 
    
    tb_final_check;
end
