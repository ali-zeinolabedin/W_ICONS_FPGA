/*
 * Module: recording_chk
 * Author:  Ali Zeinolabedin 
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
//------------------------------------------------------------

// this function is used for verifying the recpording output
// the following function is extracting the channel idx, and Imp status during the sampling time
// to be added: input to indicate the impedance unit measurement
// Data is included via the analog model
// this task should be used for the contiuous recording not a single-channel recording

task chk_rec_v1; 
    reg [6:0]  adc1_stat,adc2_stat ;
    reg [17:0] channel_data_adc1,channel_data_adc2 ;
    reg [8:0] idx         ;
    reg       fail        ;
    reg [5:0] idx_gen     ;
    reg       test        ;
    reg       test1       ;
    reg test2;
    reg test3;
    reg enable ;
begin
    test1       = 1;
    adc1_stat   = 0;
    adc2_stat   = 0;
    idx         = 6;
    fail        = 0;
    idx_gen     = 0;
    test        = 0;
    channel_data_adc1 =0;
    channel_data_adc2 =0;
    test2  = 1;
    test3  = 0;
    
    while (1) begin 
        test        = 1;
        enable      = 0;
        @(posedge ADC_EN_S);
        enable = 1;
        // it is to make sure that it only goes through when start_rec is one and it has seen the first ADC_EN_S rising_edge
        //--> since start_rec goes 0 before the actual stop of recording then the following code never meets any peculiar case 
        //--> because it stops checking before rec_ctrl stops working 
        //--> this way makes the verification easier.
        if ( (start_rec == 1'b1) && enable ) begin
            test2  = 0;        
            
            //to skip the first bit
            test3  = 1;
            @(posedge CLK_REF_S );
            repeat (7) begin
                @(posedge CLK_REF_S );
                adc1_stat[idx] = ADC1_OUT_S;
                adc2_stat[idx] = ADC2_OUT_S;
                idx            = idx - 1;
            end
            idx        = 17;
            
            //ADC1 check: group 1
            //(imp_en[idx_gen] ==  channel_idx_adc1[6])  --> IMP to be added later
            $display ("---------------------------------------------------------------------------------------------");
            if ( adc1_stat[6] == 1'b1 ) begin
                $display (" Passed (ADC1)    : Rec. Ch [%2d] Enable stat  : [%2d]   , Imp Enable               : [%2d]",adc1_stat[4:0],adc1_stat[6],stim_mask_g1[adc1_stat[4:0]]);
                if ( (rec_mask_g1[adc1_stat[4:0]] == 1'b1 ) && (stim_mask_g1[adc1_stat[4:0]] == adc1_stat[5]) )  begin
                    tb_check_passed;
                    
                end else begin
                    
                    $display (" Failed (ADC1)    : Read Channel Index        : [%2d]   , Enable signal            : [%2d]   , Imp Enable: [%2d]",adc1_stat[4:0],rec_mask_g1[adc1_stat[4:0]],stim_mask_g1[adc1_stat[4:0]]);
                    //$display (" Failed (ADC1): Read Impedance Status: [%d], Expected Impedance Status: [%d]",channel_idx_adc1[6],imp_en[idx_gen]);
                    tb_check_failed;
                    fail = 1;
                end
            end
            
            //ADC2 check: group 2
            if ( adc2_stat[6] == 1'b1 ) begin
                $display (" Passed (ADC2)    : Rec. Ch [%2d] Enable stat  : [%2d]   , Imp Enable               : [%2d]",adc2_stat[4:0],adc2_stat[6],stim_mask_g1[adc1_stat[4:0]]);
                if ((rec_mask_g2[adc2_stat[4:0]] == 1'b1 ) && (stim_mask_g2[adc2_stat[4:0]] == adc2_stat[5]) ) begin
                    tb_check_passed;
                    
                end else begin
                    
                    $display (" Failed (ADC2)    : Read Channel Index        : [%2d]   , Enable signal         : [%2d]   , Imp Enable: [%2d]",adc2_stat[4:0],rec_mask_g2[adc2_stat[4:0]],stim_mask_g2[adc2_stat[4:0]]);
                    //$display (" Failed (ADC1): Read Impedance Status: [%d], Expected Impedance Status: [%d]",channel_idx_adc1[6],imp_en[idx_gen]);
                    tb_check_failed;
                    fail = 1;
                end
            end
            
            @(negedge ADC_EN_S );
            repeat (17) begin
                @(posedge CLK_REF_S );
                channel_data_adc1[idx] = ADC1_OUT_S;
                channel_data_adc2[idx] = ADC2_OUT_S;
                idx                    = idx - 1;
            end  
            test3 = 0;
            if (  adc1_stat[6] == 1'b1 ) begin
                if (stim_mask_g1[adc1_stat[4:0]] == 1'b0) begin 
                    if ( (channel_data_adc1 == (18'h0720+ 2'b10*adc1_stat[4:0])) ) begin
                        tb_check_passed;
                        $display (" Passed (ADC1)    : Read Channel data         : [%h], Expected Channel Index   : [%h]",channel_data_adc1,(18'h0720+ 2'b10*adc1_stat[4:0]));
                    end else begin
                        $display (" Failed (ADC1)    : Read Channel data         : [%h], Expected Channel Index   : [%h]",channel_data_adc1,(18'h0720+ 2'b10*adc1_stat[4:0]));
                        tb_check_failed;
                        fail = 1;
                    end
                end else begin
                    if ( (channel_data_adc1 == (18'h0320+ 2'b10*adc1_stat[4:0])) ) begin
                        tb_check_passed;
                        $display (" Passed (Imp-ADC1): Read Channel data         : [%h], Expected Channel Index   : [%h]",channel_data_adc1,(18'h0320+ 2'b10*adc1_stat[4:0]));
                    end else begin
                        $display (" Failed (Imp-ADC1): Read Channel data         : [%h], Expected Channel Index   : [%h]",channel_data_adc1,(18'h0320+ 2'b10*adc1_stat[4:0]));
                        tb_check_failed;
                        fail = 1;
                    end
                end
            end

            if (  adc2_stat[6] == 1'b1 ) begin
                if (stim_mask_g2[adc2_stat[4:0]] == 1'b0) begin 
                    if ( (channel_data_adc2 == (18'h0920+ 2'b10*adc2_stat[4:0])) ) begin
                        tb_check_passed;
                        $display (" Passed (ADC2)    : Read Channel data         : [%h], Expected Channel Index   : [%h]",channel_data_adc2,(18'h0920+ 2'b10*adc2_stat[4:0]));
                    end else begin
                        $display (" Failed (ADC2)    : Read Channel data         : [%h], Expected Channel Index   : [%h]",channel_data_adc2,(18'h0920+ 2'b10*adc2_stat[4:0]));
                        tb_check_failed; 
                        fail = 1;
                    end 
                end else begin
                    if ( (channel_data_adc2 == (18'h0220+ 2'b10*adc2_stat[4:0])) ) begin
                        tb_check_passed;
                        $display (" Passed (Imp-ADC2): Read Channel data         : [%h], Expected Channel Index   : [%h]",channel_data_adc2,(18'h0220+ 2'b10*adc2_stat[4:0]));
                    end else begin  
                        $display (" Failed (Imp-ADC2): Read Channel data         : [%h], Expected Channel Index   : [%h]",channel_data_adc2,(18'h0220+ 2'b10*adc2_stat[4:0]));
                        tb_check_failed; 
                        fail = 1;
                    end

                end           
            end
                   
            idx        = 6;
            idx_gen    = idx_gen +1;
            if (idx_gen == 32) begin
                idx_gen = 0;
            end

            test2 = start_rec; 
        end else begin 
            enable = 0;
        end
        
        test        = 0;
        test1       = 0;
        test2       = 0;
        adc1_stat   = 0;
        adc2_stat   = 0;
    end 
end
endtask 
