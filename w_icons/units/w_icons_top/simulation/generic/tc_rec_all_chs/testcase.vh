

reg [31:0]  data;
reg [9:0]   address;
reg         start_rec = 0;
reg [31:0]  rec_mask_g1, rec_mask_g2;
integer     i,j;
reg [5:0]   selected_ch;
integer     random_period;
reg [31:0]  stim_mask_g1, stim_mask_g2;

//for modelsim to work this include file should be defined here
`include "recording_chk.vh"

initial begin
    start_rec    = 0 ;
    rec_mask_g1  = 0 ;
    rec_mask_g2  = 0 ;
    stim_mask_g1 = 0 ;
    stim_mask_g2 = 0 ;
    i           = 0;
    j           = 0;
    selected_ch = 0;
    #1200;
    spi_config(`ver);
    #100
    chip_id(data,`ver);
    $display("Chip ID: %4h",data);
    #100
    rec_mask_g1 = 32'hffffffff ;
    rec_mask_g2 = 32'hffffffff ;
    rec_ch_mask(rec_mask_g1,rec_mask_g2);
        
    for (i=0;i<5;i=i+1) begin
        $display("===================================Iteration: %4d===================================",i);
        #1000
        start_rec = 1;
        rec_on;
        random_period = $unsigned($random)/80000;
        #random_period;
        //$display("random period %d",random_period);
        start_rec = 0;
        rec_off; 
        #1000;
    end    
    tb_final_check;
end

//only functional simulation, it doesn't work in netlist simulation
initial begin
    //chk_idx_data_test_mode(imp_en,selected_ch);
    chk_rec_v1;
end 
