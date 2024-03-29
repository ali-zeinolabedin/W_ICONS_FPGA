
integer     i ;
reg [31:0]  data;
reg [9:0]   address;
reg         crc5_status;
reg         test, test1;
reg [31:0]  err_st1, err_st2;
reg [31:0]  stim_mask_g1, stim_mask_g2;

initial begin
    // reset happens until 195ns
    address = 0;
    test = 0;
    test1 = 0; 
    stim_mask_g1 = 0 ;
    stim_mask_g2 = 0 ;
    #1200
    spi_config(`ver);
    #100
    chip_id(data,`ver);
    $display("Chip ID: %4h",data);
    #1000
    
    crc5_status = `crc5_error;
    // write non-random data with wrong CRC5 and read back error status indicated by ERR_CRC_S
    for (i=3; i< 25; i=i+1) begin
        //write data and address with wrong CRC5
        data    = 123+i;
        wr_data(data,`nver,crc5_status);
        if (crc5_status) begin
            if (ERR_CRC_S == 1) begin            
                read_data (10'h004,err_st1,`nver);
                read_data (10'h008,err_st2,`nver);
                if (crc5_val_failed({4'h2,data}) == err_st2[8:4]) begin
                    tb_check_passed;
                end else begin
                    //$display("Failed!: (data: [%8h]) Wrong CRC5 is read back as [%5h], Wrongly calculated CRC5 [%5h]",data,err_st2[8:4],crc5_val_failed(data));
                    tb_check_failed;
                end
            end else begin
                //sometimes for some values the crc5 wrong and correct ones are the same               
                if (crc5_val_failed({4'h2,data}) == crc5_val({4'h2,data})) begin
                    tb_check_passed;
                    $display("Coincident match=> Idx: [%4d]=> (data: %8h) Truly calculated CRC5 [%5h], Wrongly calculated CRC5 [%5h]",i,data,crc5_val({4'h2,data}),crc5_val_failed({4'h2,data}));
                end else begin
                    // this part should never happen
                    $display("Failed => Idx: [%4d]=> (data: %8h) Truly calculated CRC5 [%5h], Wrongly calculated CRC5 [%5h]",i,data,crc5_val({4'h2,data}),crc5_val_failed({4'h2,data}));
                    tb_check_failed;
                end
            end
        end 
        #1000;        
    end

    // write random data with wrong CRC5 and read back error status indicated by ERR_CRC_S
    for (i=3; i< 10; i=i+1) begin
        //write data and address with wrong CRC5
        data    = $random;
        wr_data(data,`nver,crc5_status);
        if (crc5_status) begin
            if (ERR_CRC_S == 1) begin            
                read_data (10'h004,err_st1,`nver);
                read_data (10'h008,err_st2,`nver);
                if (crc5_val_failed({4'h2,data}) == err_st2[8:4]) begin
                    tb_check_passed;
                end else begin
                    //$display("Failed!: (data: [%8h]) Wrong CRC5 is read back as [%5h], Wrongly calculated CRC5 [%5h]",data,err_st2[8:4],crc5_val_failed(data));
                    tb_check_failed;
                end
            end else begin
                //sometimes for some values the crc5 wrong and correct ones are the same               
                if (crc5_val_failed({4'h2,data}) == crc5_val({4'h2,data})) begin
                    tb_check_passed;
                    $display("Coincident match=> Idx: [%4d]=> (data: %8h) Truly calculated CRC5 [%5h], Wrongly calculated CRC5 [%5h]",i,data,crc5_val({4'h2,data}),crc5_val_failed({4'h2,data}));
                end else begin
                    // this part should never happen
                    $display("Failed => Idx: [%4d]=> (data: %8h) Truly calculated CRC5 [%5h], Wrongly calculated CRC5 [%5h]",i,data,crc5_val({4'h2,data}),crc5_val_failed({4'h2,data}));
                    tb_check_failed;
                end
            end
        end 
        #1000;        
    end

    #1000
    //write constant data with true CRC5 but the address with wrong CRC5 
    for (i=3; i< 215; i=i+1) begin //215
        //write data and address with wrong CRC5
        address    = i*4;
        wr_data(123,`nver,1'b0);
        wr_add(address,`nver,crc5_status);
        if (crc5_status) begin
            if (ERR_CRC_S == 1) begin            
                read_data (10'h004,err_st1,`nver);
                read_data (10'h008,err_st2,`nver);
                test = 1;
                if (crc5_val_failed({4'h1,22'b0,address}) == err_st2[8:4]) begin
                    tb_check_passed;
                end else begin
                    test1 = 1;
                    $display("Failed!: (add : [%8h]) Wrong CRC5 is read back as [%5h], Wrongly calculated CRC5 [%5h]",address,err_st2[8:4],crc5_val_failed({4'h1,22'b0,address}));
                    tb_check_failed;
                end
            end else begin
                //sometimes for some values the crc5 wrong and correct ones are the same               
                if (crc5_val_failed({4'h1,22'b0,address}) == crc5_val({4'h1,22'b0,address})) begin
                    tb_check_passed;
                    $display("Coincident match=> Idx: [%4d]=> (add : %8h) Truly calculated CRC5 [%5h], Wrongly calculated CRC5 [%5h]",i,address,crc5_val({4'h1,22'b0,address}),crc5_val_failed({4'h1,22'b0,address}));
                end else begin
                    // this part should never happen
                    $display("Failed => Idx: [%4d]=> (add : %8h) Truly calculated CRC5 [%5h], Wrongly calculated CRC5 [%5h]",i,address,crc5_val({4'h1,22'b0,address}),crc5_val_failed({4'h1,22'b0,address}));
                    tb_check_failed;
                end
            end
        end 
        #1000;        
    end

    #1000
    //write constant data with true CRC5 but the address with wrong CRC5 
    for (i=3; i< 215; i=i+1) begin //215
        //write data and address with wrong CRC5
        address    = i*4;
        data       = $random;
        wr_data(data,`nver,1'b0);
        wr_add(address,`nver,crc5_status);
        if (crc5_status) begin
            if (ERR_CRC_S == 1) begin            
                read_data (10'h004,err_st1,`nver);
                read_data (10'h008,err_st2,`nver);
                test = 1;
                if (crc5_val_failed({4'h1,22'b0,address}) == err_st2[8:4]) begin
                    tb_check_passed;
                end else begin
                    test1 = 1;
                    $display("Failed!: (add : [%8h]) Wrong CRC5 is read back as [%5h], Wrongly calculated CRC5 [%5h]",address,err_st2[8:4],crc5_val_failed({4'h1,22'b0,address}));
                    tb_check_failed;
                end
            end else begin
                //sometimes for some values the crc5 wrong and correct ones are the same               
                if (crc5_val_failed({4'h1,22'b0,address}) == crc5_val({4'h1,22'b0,address})) begin
                    tb_check_passed;
                    $display("Coincident match=> Idx: [%4d]=> (add : %8h) Truly calculated CRC5 [%5h], Wrongly calculated CRC5 [%5h]",i,address,crc5_val({4'h1,22'b0,address}),crc5_val_failed({4'h1,22'b0,address}));
                end else begin
                    // this part should never happen
                    $display("Failed => Idx: [%4d]=> (add : %8h) Truly calculated CRC5 [%5h], Wrongly calculated CRC5 [%5h]",i,address,crc5_val({4'h1,22'b0,address}),crc5_val_failed({4'h1,22'b0,address}));
                    tb_check_failed;
                end
            end
        end 
        #1000;        
    end

    #10000;
    tb_final_check;
end

