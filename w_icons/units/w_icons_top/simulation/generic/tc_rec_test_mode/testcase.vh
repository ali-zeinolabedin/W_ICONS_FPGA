

reg [31:0]  data;
reg [9:0]   address;
reg         start_rec = 0;
reg [31:0]  rec_mask_g1, rec_mask_g2;
reg [63:0]  rec_mask;
integer     i,j;
reg [5:0]   selected_ch;
integer     random_period;
reg [31:0]  stim_mask_g1, stim_mask_g2;


`include "recording_chk.vh"


initial begin
    start_rec   = 0;
    rec_mask_g1 = 0  ;
    rec_mask_g2 = 0  ;
    rec_mask    = 1  ;
    stim_mask_g1 = 0 ;
    stim_mask_g2 = 0 ;
    i           = 0  ;
    j           = 0  ;
    selected_ch = 0  ;
    #1200;
    spi_config(`ver);
    #100
    chip_id(data,`ver);
    $display("Chip ID: %4h",data);
    #100
    rec_mask_g1 = rec_mask[31:0] ;
    rec_mask_g2 = rec_mask[63:32] ;
    rec_ch_mask(rec_mask_g1,rec_mask_g2);
    
    for (i=0;i<5;i=i+1) begin
        start_rec = 1;
        rec_on;
        #20000;
        start_rec = 0;
        rec_off;
        // update the mask
        rec_mask = rec_mask << 1 ;
        if (rec_mask==0) begin
            rec_mask = 1 ;   
        end 
        rec_mask_g1 = rec_mask[31:0] ;
        rec_mask_g2 = rec_mask[63:32] ;
        rec_ch_mask(rec_mask_g1,rec_mask_g2);
    end
            
    tb_final_check;
end

//only functional simulation, it doesn't work in netlist simulation
initial begin
    chk_rec_v1;
end 