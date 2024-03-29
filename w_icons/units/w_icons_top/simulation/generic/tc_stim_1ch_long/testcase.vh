reg [31:0]  data;
reg [9:0]   address;
reg [31:0] stim_mask_g1, stim_mask_g2;



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
    //stim_mask_ch_set(3'b000,6'b000000);
    // Set the ch16 in mask0
    $display ("-----------> Single run");
    stim_mask_g1 = 32'h00000001;
    stim_mask_g2 = 32'h00000000;
    stim_mask_ch_set_vec(3'b000,32'h00000001,32'h00000000); 
    base_add_s  = 10'h064;
    interval_s[0]  = 16'd10;
    ic_s[0]        = 8'd1;
    wc_s[0]        = 14'd21;
    gap_s[0]       = 14'd5;
    wa_s[0]        = 14'd4;
    num_s[0]      = 12'd2;
    pol_s[0]       = 1'b0;
    range_s[0]     = 1'b0;
    stim_params_config(base_add_s,interval_s[0],ia_s[0],ic_s[0],wc_s[0],gap_s[0],wa_s[0],num_s[0],pol_s[0],range_s[0],1);

    // Enable mask0
    stim_mask_ctrl(3'b001);
    //wait to run
    #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
    // Disable mask0
    stim_mask_ctrl(3'b000);
    #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
    

    //--------------------------------------------------------------------------------------
    //  Ch0: random wc and ic with valid values and fixed interval and num
    $display ("-----------> run with random wc and ic with valid values and fixed interval and num");
    for (i=0;i<5;i=i+1) begin
        base_add_s  = 10'h064;
        interval_s[0]  = 16'd10;
        ic_s[0]        = {$random} % 256;
        wc_s[0]        = {$random} % 200;
        gap_s[0]       = 14'd5;
        num_s[0]       = 12'd2;
        pol_s[0]       = 1'b0;
        range_s[0]     = 1'b0;
        stim_params_config(base_add_s,interval_s[0],ia_s[0],ic_s[0],wc_s[0],gap_s[0],wa_s[0],num_s[0],pol_s[0],range_s[0],1);

        // Enable mask0
        stim_mask_ctrl(3'b001);
        //wait to run the whole pattern
       #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
        // Disable mask0
        stim_mask_ctrl(3'b000);
        //to provide enough delay btw current ch check on analog macro
        #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
    end

    

    //--------------------------------------------------------------------------------------
    //  Ch0: random values for interval and num and gap and fixed ic and wc
    $display ("-----------> run with random values for interval and num and gap and fixed ic and wc");
    for (i=0;i<5;i=i+1) begin
        base_add_s  = 10'h064;
        interval_s[0]  = {$random} % 30;
        ic_s[0]        = 200;
        wc_s[0]        = 56;
        gap_s[0]       = {$random} % 10;
        num_s[0]       = {$random} % 20+1;
        pol_s[0]       = 1'b0;
        range_s[0]     = 1'b0;
        stim_params_config(base_add_s,interval_s[0],ia_s[0],ic_s[0],wc_s[0],gap_s[0],wa_s[0],num_s[0],pol_s[0],range_s[0],1);

        // Enable mask0
        stim_mask_ctrl(3'b001);
        //wait to run the whole pattern
        #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
        // Disable mask0
        stim_mask_ctrl(3'b000);
        //to provide enough delay btw current ch check on analog macro
        #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
    end

    
    //  Ch0: all random values
    $display ("-----------> run with all random values");
    for (i=0;i<5;i=i+1) begin
        base_add_s  = 10'h064;
        interval_s[0]  = {$random} % 30;
        ic_s[0]        = {$random} % 70;
        wc_s[0]        = {$random} % 90;
        gap_s[0]       = {$random} % 10;
        num_s[0]       = {$random} % 20+1;
        pol_s[0]       = 1'b0;
        range_s[0]     = 1'b0;
        stim_params_config(base_add_s,interval_s[0],ia_s[0],ic_s[0],wc_s[0],gap_s[0],wa_s[0],num_s[0],pol_s[0],range_s[0],1);

        // Enable mask0
        stim_mask_ctrl(3'b001);
        //wait to run the whole pattern
        #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
        // Disable mask0
        stim_mask_ctrl(3'b000);
        //to provide enough delay btw current ch check on analog macro
        #(num_s[0]*(wc_s[0]+wc_s[0]+gap_s[0]+interval_s[0])*1000+1000);
    end
    
    if ( (stim_chk == 0) || (stim_err>0)) begin
        tb_check_failed;
        $display ("Stimulation Failed!");
    end 
    
    tb_final_check;
end
