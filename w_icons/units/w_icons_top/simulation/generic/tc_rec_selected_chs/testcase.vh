

reg [31:0]  data;
reg [9:0]   address;
reg         start_rec = 0;
reg [31:0]  rec_mask_g1, rec_mask_g2;
integer     i,j;
reg [5:0]   selected_ch;
reg [31:0] stim_mask_g1, stim_mask_g2;

`include "recording_chk.vh"

initial begin
    start_rec   = 0;
    rec_mask_g1 = 0 ;
    rec_mask_g2 = 0 ;
    stim_mask_g1 = 0 ;
    stim_mask_g2 = 0 ;
    i         = 0;
    j         = 0;
    selected_ch = 0;
    #1200;
    spi_config(`ver);
    #100
    chip_id(data,`ver);
    $display("Chip ID: %4h",data);
    #100
    rec_mask_g1 = 32'hffffffff ;
    rec_mask_g2 = 32'hffffffff ;
    // set the recording to all channels
    // write_data(10'h014,32'h10000000,`ver);
    // enable record enable signal
    // write_data(10'h014,32'h10200000,`ver);
    rec_ch_mask(rec_mask_g1,rec_mask_g2 );
    #100;
    rec_ch_mask(32'h0, 32'h0);
    #100;
    rec_mask_g1 = 32'hffffffff ;
    rec_mask_g2 = 32'hffffffff ;
    rec_ch_mask(rec_mask_g1,rec_mask_g2);



    #1000
    //start_rec is only for the task recording_chk:chk_idx_data
    start_rec = 1;
    rec_on;
    #100000
    //disable record enable signal
    start_rec = 0;
    rec_off;
    
    #10000
    rec_mask_g1 = 32'h12345678 ;
    rec_mask_g2 = 32'habcdef90 ;
    rec_ch_mask(rec_mask_g1,rec_mask_g2);
    #10000
    start_rec = 1;
    rec_on;
    #100000
    //disable record enable signal
    start_rec = 0;
    rec_off;
    //write_data(10'h014,32'h10000000,`ver);
   
    
    for (i=0;i<10;i=i+1) begin  //5000
        rec_mask_g1 = $random ;
        rec_mask_g2 = $random ;
        rec_ch_mask(rec_mask_g1,rec_mask_g2);
        rec_amp_mask(rec_mask_g1,rec_mask_g2);
        #1000
        start_rec = 1;
        rec_on;
        #20000
        start_rec = 0;
        rec_off;
    end
    tb_final_check;
end

//only functional simulation, it doesn't work in netlist simulation
initial begin
    chk_rec_v1;
end 
