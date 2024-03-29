


reg [31:0]  data;
reg [9:0]   address;
reg [31:0]  stim_mask_g1, stim_mask_g2;

integer i = 0;

initial begin
    stim_mask_g1 = 0 ;
    stim_mask_g2 = 0 ;
    #1200;
    spi_config(`ver);
    #100;
    chip_id(data,`ver);
    $display("Chip ID: %4h",data);
    #100;

    //send the illega commands
    /*
    
    localparam [STATE_WIDTH-1:0] S_IDLE                   = 4'b0000; //'h0
    // --> legal user commands
    localparam [STATE_WIDTH-1:0] S_CMD_WR_ADD             = 4'b0001; //'h1
    localparam [STATE_WIDTH-1:0] S_CMD_WR_DATA            = 4'b0010; //'h2
    localparam [STATE_WIDTH-1:0] S_CMD_RD_ADD             = 4'b0011; //'h3
    localparam [STATE_WIDTH-1:0] S_CMD_RD_DATA            = 4'b0100; //'h4
    localparam [STATE_WIDTH-1:0] S_CONFIG                 = 4'b0101; //'h5
    localparam [STATE_WIDTH-1:0] S_CHIP_ID                = 4'b0110; //'h6
    localparam [STATE_WIDTH-1:0] S_STIM_ST                = 4'b0111; //'h7
    // <--
    localparam [STATE_WIDTH-1:0] S_CRC5_ERROR1            = 4'b1110; //'h14 this commands used internally and the user has no access to it
    localparam [STATE_WIDTH-1:0] S_CRC5_ERROR2            = 4'b1111; //'h15 this commands used internally and the user has no access to it
    */
    spi_illegal_cmd(4'h0000,`ver);
    #100;
    for (i = 9 ; i < 16; i=i+1) begin
        spi_illegal_cmd(i,`ver);
        #100;
    end

    $display("Sending illegal commands...");

    //$display ("ERROR: timeout");
    //tb_check_failed;
    tb_final_check;
    #10000;
end

initial begin

    //$sdf_annotate("/home/azeinolabedin/ASIC-W-ICONS/Cadence/w_icons/units/w_icons_top/rtl2gds/genus/WORK/w_icons_core.sdf", tb_w_icons_top.i_w_icons_top.i_w_icons_core);
end