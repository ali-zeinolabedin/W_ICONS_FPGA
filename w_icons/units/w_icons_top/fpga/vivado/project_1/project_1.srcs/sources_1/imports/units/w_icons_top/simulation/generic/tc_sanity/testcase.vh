


reg [31:0]  data;
reg [9:0]   address;
reg [31:0]  stim_mask_g1, stim_mask_g2;

initial begin
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


    data = 32'hAAAAAAAA ;
   
    wr_data(data,`ver,`crc5);
    wr_add(32'h70,`ver,`crc5);


    rd_add(32'h70,`ver,`crc5);
    rd_data(data,`ver);

    //$display ("ERROR: timeout");
    //tb_check_failed;
    tb_final_check;
end

initial begin

    //$sdf_annotate("/home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/units/w_icons_top/rtl2gds/genus/WORK/w_icons_core.sdf", tb_w_icons_top.i_w_icons_top.i_w_icons_core);
end