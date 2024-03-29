


reg [31:0] data;
reg [9:0]  address;
reg [31:0] rec_mask_g1, rec_mask_g2;
reg [31:0] stim_mask_g1, stim_mask_g2;
reg        start_rec;
reg [63:0] rec_mask;
reg [7:0]  mask_en;

integer    i;
reg  [6:0] j;
reg  [3:0] k;


`include "recording_chk.vh"


// External stim enable signal
initial begin
    #1200;
    stim_xen = 1'b1;
    //#100000;
    //stim_xen = 1'b0;
    //#50000;
    //stim_xen = 1'b1;
end



initial begin
    i            = 0;
    j            = 0;
    k            = 0;
    start_rec    = 1'b0;
    rec_mask     = 1;
    mask_en      = 1;
    stim_mask_g1 = rec_mask[31:0]  ;
    stim_mask_g2 = rec_mask[63:32] ;
    rec_mask_g1  = rec_mask[31:0]  ;
    rec_mask_g2  = rec_mask[63:32] ;
    #1200;
    spi_config(`ver);
    #100
    chip_id(data,`ver);
    #100
    stim_status(data,`ver);
    #100
    // Set clock divider to 20
    stim_clkdiv_config(12'h020);
    // Enable Stim clock divider
    stim_clkdiv_on;
    //--------------------------------------------------------------------------------------
    // sweeping over all masks
    for (k=0; k<3; k=k+1) begin
        // sweeping over all channels
        $display("******************************************  Mask: %4d  ******************************************",k);
        for (j = 0 ; j < 4; j=j+1) begin  //64
            $display("===========================================  Ch: %4d  ==========================================",j);
            // write to a mask
            //stim_mask_ch_set(k[2:0],j[5:0]);
            stim_mask_ch_set_vec(k[2:0],rec_mask[31:0],rec_mask[63:32]);
            // write to the recording mask
            rec_ch_mask(rec_mask_g1,rec_mask_g2);
            // numebr of run for each selected channels 
            for (i = 0 ; i<1 ; i=i+1) begin
                // Enable mask0
                stim_mask_ctrl(mask_en);
                // Check the stimulator status
                stim_status(data,`ver);
                start_rec = 1;
                rec_on;
                #400000
                start_rec = 0;
                rec_off;
                // Disable mask0
                stim_mask_ctrl(3'b000);
                #1000;
            end
            
            rec_mask = rec_mask << 1 ;
            if (rec_mask==0) begin
                rec_mask = 1 ;   
            end 
            stim_mask_g1 = rec_mask[31:0]  ;
            stim_mask_g2 = rec_mask[63:32] ;
            rec_mask_g1  = rec_mask[31:0]  ;
            rec_mask_g2  = rec_mask[63:32] ;

        end
        rec_mask     = 1 ;
        stim_mask_g1 = rec_mask[31:0]  ;
        stim_mask_g2 = rec_mask[63:32] ;
        rec_mask_g1  = rec_mask[31:0]  ;
        rec_mask_g2  = rec_mask[63:32] ;
        mask_en      = mask_en << 1    ;
        #10;
    end
    // Disable stim clock
    stim_clkdiv_off;
    #1000    
    // Check the stimulator status
    stim_status(data,`ver);


        
    tb_final_check;
end


initial begin
    chk_rec_v1;

end