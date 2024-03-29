


reg [31:0]  data;
reg [9:0]   address;
integer     i;
reg [31:0] stim_mask_g1, stim_mask_g2;
reg [31:0]  rec_mask_g1, rec_mask_g2;
reg [63:0] rec_mask;


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
    #1200;
    spi_config(`ver);
    #10
    
    
    #100
    chip_id(data,`ver);
    $display("Chip ID: %4h",data);
    #100

    // Turn on discharge block
    discharge_clkdiv_on;
    
    // recording ch0, turn on and then off  
    rec_ch_mask(32'h1,32'h0);
    rec_on;
    #10000
    rec_off;
    #900
   
    // Set clock divider to 20
    stim_clkdiv_config(12'h020);
    // Enable Stim clock divider
    stim_clkdiv_on;
    // Set the ch0 in mask0
    stim_mask_ch_set(3'b000,6'b000000);
    // Enable mask0
    stim_mask_ctrl(8'h01);
    #10000;
    stim_mask_ctrl(8'h00);
    #20000;
    
    // recording ch0 and ch1, turn on and then off
    rec_ch_mask(32'h3,32'h0);
    rec_on;
    #20000;
    rec_off;
    #900;



    // recording ch0 and ch1, turn on and then off
    rec_ch_mask(32'hF,32'h0);
    rec_on;
    rec_ch_mask(32'h11,32'h0);
    #20000;
    rec_ch_mask(32'h0F01,32'h0);
    #30000;
    for (i=0 ; i<12; i=i+1) begin
        rec_ch_mask($random,$random);
        #30000;
    end
    rec_off;
    #900;



    stim_clkdiv_on;
    // Set the ch0 in mask0
    stim_mask_ch_set(3'b000,6'b000001);
    // Enable mask0
    rec_mask     = {$random,$random} ;
    stim_mask_g1 = rec_mask[31:0]    ;
    stim_mask_g2 = rec_mask[63:32]   ;
    rec_mask_g1  = rec_mask[31:0]    ;
    rec_mask_g2  = rec_mask[63:32]   ;
    stim_mask_ch_set_vec(3'b000,stim_mask_g1,stim_mask_g2);
    // write to the recording mask
    rec_ch_mask(rec_mask_g1,rec_mask_g2);
    stim_mask_ctrl(8'h01);
    rec_on;
    #40000;
    #10000;
    rec_off;
    
    stim_mask_ctrl(8'h00);
    #40000;

    // Turn off discharge block
    discharge_clkdiv_off;

    if (discharge == 0) begin
        tb_check_failed;
        $display (" dicharge failed![%d]",discharge);
    end 
    
    //$display ("ERROR: timeout");
    //tb_check_failed;
    tb_final_check;
end

initial begin

    //$sdf_annotate("/home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/units/w_icons_top/rtl2gds/genus/WORK/w_icons_core.sdf", tb_w_icons_top.i_w_icons_top.i_w_icons_core);
end