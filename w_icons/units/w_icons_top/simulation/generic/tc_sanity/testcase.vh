


reg [31:0]  data;
reg [9:0]   address;
reg [31:0]  stim_mask_g1, stim_mask_g2;
reg [31:0]  rec_mask_g1, rec_mask_g2;

reg         start_rec = 0;


initial begin
    rec_mask_g1 = 0 ;
    rec_mask_g2 = 0 ;
    stim_mask_g1 = 0 ;
    stim_mask_g2 = 0 ;
    #1200;
    spi_config(`ver);
    #10;
    
    
    #100;
    chip_id(data,`ver);
    $display("Chip ID: %4h",data);
    #100;


    #100;
    stim_status(data,`ver);
    $display("Stimulator status: %4h",data);
    #100;

    #100;
    chip_id(data,`ver);
    $display("Chip ID: %4h",data);
    #100;

    $display("rec_stim_control status");
    rd_add(32'h14,`ver,`crc5);
    rd_data(data,`ver);
    $display("rec_stim_control status: %4h",data);

    $finish;
    data = 32'haaaaaaaa ;
   
    wr_data(data,`ver,`crc5);
    wr_add(32'h8c,`ver,`crc5);


    rd_add(32'h8c,`ver,`crc5);
    rd_data(data,`ver);


    rec_mask_g1 = 32'h00000001 ;
    rec_mask_g2 = 32'h00000000 ;
    rec_ch_mask(rec_mask_g1,rec_mask_g2);
    $display("Write rec mask1");
    address      = 10'h058;
    //write_data(address,rec_mask_g1,`nver);
    wr_data(rec_mask_g1,`ver,`crc5);
    wr_add(address,`ver,`crc5);
    $display("Write rec mask2");
    address      = 10'h05C;
    //write_data(address,rec_mask_g2,`nver);
    wr_data(rec_mask_g2,`ver,`crc5);
    wr_add(address,`ver,`crc5);

    #10000
    start_rec = 1;
    //rec_on;
    $display("Enable rec");
    address   = 10'h014;
    //read_data(address,data,`nver);
    rd_add(address,`ver,`crc5);
    rd_data(data,`ver);
    $display("\t data read: %4h",data);
    data[21]  = 1'b1;
    //write_data(address,data,`nver);
    wr_data(data,`ver,`crc5);
    wr_add(address,`ver,`crc5);

    #100000
    //disable record enable signal
    start_rec = 0;
    //rec_off;
    $display("Disable rec");
    address   = 10'h014;
    //read_data(address,data,`nver);
    rd_add(address,`ver,`crc5);
    rd_data(data,`ver);
    $display("\t data read: %4h",data);
    data[21]  = 1'b0;
    //write_data(address,data,`nver);
    wr_data(data,`ver,`crc5);
    wr_add(address,`ver,`crc5);

    //$display ("ERROR: timeout");
    //tb_check_failed;
    tb_final_check;
end

initial begin

    //$sdf_annotate("/home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/units/w_icons_top/rtl2gds/genus/WORK/w_icons_core.sdf", tb_w_icons_top.i_w_icons_top.i_w_icons_core);
end