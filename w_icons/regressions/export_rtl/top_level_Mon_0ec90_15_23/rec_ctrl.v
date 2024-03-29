/*
 * Module: rec_ctrl
 * Author: Ali Zeinolabedin
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 */
`timescale 1ns/1ps

module rec_ctrl (
    clk_i,
    reset_n_i,
    stim_mask_en0_sync_i,
    stim_mask_en1_sync_i,
    stim_mask_en2_sync_i,
    stim_mask_en3_sync_i,
    stim_mask_en4_sync_i,
    stim_mask_en5_sync_i,
    stim_mask_en6_sync_i,
    stim_mask_en7_sync_i,
    clk_discharge_main_i,
    gdischarge_o,
    pw_discharge_i,
    rec_sync_en_i,
    adc_en_o,
    sample_out_o,
    adc_res1_i,
    adc_res2_i,
    rec_data1_o,
    rec_data2_o,
    adc_idx_o,
    imp_en_g1_sync_i,
    imp_en_g2_sync_i,
    en_rec_sync_g1_i,
    en_rec_sync_g2_i
);

    input         clk_i;
    input         reset_n_i;
    input         stim_mask_en0_sync_i;
    input         stim_mask_en1_sync_i;
    input         stim_mask_en2_sync_i;
    input         stim_mask_en3_sync_i;
    input         stim_mask_en4_sync_i;
    input         stim_mask_en5_sync_i;
    input         stim_mask_en6_sync_i;
    input         stim_mask_en7_sync_i;
    input         clk_discharge_main_i;
    output        gdischarge_o;
    input  [19:0] pw_discharge_i;
    input         rec_sync_en_i;
    output        adc_en_o;
    output        sample_out_o;
    input         adc_res1_i;
    input         adc_res2_i;
    output        rec_data1_o;
    output        rec_data2_o;
    output  [4:0] adc_idx_o;
    input  [31:0] imp_en_g1_sync_i;
    input  [31:0] imp_en_g2_sync_i;
    input  [31:0] en_rec_sync_g1_i;
    input  [31:0] en_rec_sync_g2_i;
    reg  [4:0]  initial_dly;
    reg  [5:0]  adc_seq;
    reg         sample_out_o;
    reg         sample_out_adc1_1d,sample_out_adc2_1d;
    reg         adc_en_o;
    reg  [4:0]  adc_idx;
    wire [4:0]  adc_idx_o;
    reg  [7:0]  imp_adc1_idx;  //{adc1_idx -> [4:0],  imp ->[5]}
    reg         imp_adc1_idx_1d;
    reg  [7:0]  imp_adc2_idx;  //{adc2_idx -> [4:0],  imp ->[5]}
    reg         imp_adc2_idx_1d;
    reg  [19:0] discharge_cnt;
    wire        gdischarge_o; 
    wire        stim_mask_en;
    reg   [1:0] stim_discharge;
    reg  [31:0] en_g1_1d;
    reg  [31:0] en_g2_1d;
    reg  [31:0] rec_change_g1;
    reg  [31:0] rec_change_g2;
    wire        change_g1_g2;


    assign stim_mask_en = (stim_mask_en7_sync_i | stim_mask_en6_sync_i | stim_mask_en5_sync_i | stim_mask_en4_sync_i | stim_mask_en3_sync_i | stim_mask_en2_sync_i | stim_mask_en1_sync_i | stim_mask_en0_sync_i);

    always @(posedge clk_i or negedge reset_n_i) 
    begin
        if (reset_n_i == 1'b0) begin
            initial_dly     <= 'b0;
            adc_seq         <= 'b0;
            adc_idx         <= 'b0;   

        end else begin
            if (initial_dly < 6'd30  ) begin
                adc_seq   <= 'b0;
                initial_dly     <=  initial_dly + 1'b1;

            end else begin
                if (rec_sync_en_i) begin
                    if (adc_seq < 6'd33) begin
                        adc_seq    <= adc_seq + 1'b1;
                    end else begin
                        adc_seq     <= 'b0;
                        adc_idx     <= adc_idx + 1'b1;
                        if (adc_idx == 5'd31) begin
                            adc_idx <= 'b0;   
                        end
                    end           
                end else begin
                    adc_seq   <= 'b0;
                    adc_idx   <= 'b0;  
                end 
            end
        end 
    end
    assign adc_idx_o = adc_idx;
    
    // control the adc_idx_serial
    always @(posedge clk_i or negedge reset_n_i) 
    begin
        if (reset_n_i == 1'b0) begin
            imp_adc1_idx          <= 'b0;
            imp_adc2_idx          <= 'b0;
            imp_adc1_idx_1d       <= 'b0;  
            imp_adc2_idx_1d       <= 'b0;
            adc_en_o              <= 'b0;
            
        end else begin
            if (en_rec_sync_g1_i[adc_idx] && rec_sync_en_i) begin
                if ( adc_seq == 6'h0 ) begin
                    imp_adc1_idx  <= {1'b1,imp_en_g1_sync_i[adc_idx],adc_idx,gdischarge_o};                   
                end else if ( (adc_seq > 6'h0) && ((adc_seq <= 6'h9)) ) begin 
                    imp_adc1_idx      <= imp_adc1_idx << 1;                   
                end
            end

            if (en_rec_sync_g2_i[adc_idx] && rec_sync_en_i) begin
                if ( adc_seq == 6'h0 ) begin
                    imp_adc2_idx  <= {1'b1,imp_en_g2_sync_i[adc_idx],adc_idx,gdischarge_o};
                end else if ( (adc_seq > 6'h0) && ((adc_seq <= 6'h9)) ) begin 
                    imp_adc2_idx      <= imp_adc2_idx << 1;
                end
            end

            imp_adc1_idx_1d  <= imp_adc1_idx[7];
            imp_adc2_idx_1d  <= imp_adc2_idx[7];  

            if ( (en_rec_sync_g1_i[adc_idx] || en_rec_sync_g2_i[adc_idx]) && rec_sync_en_i) begin
                if ( adc_seq == 6'h0 ) begin
                    adc_en_o      <= 1'b1;
                end else if (adc_seq == 6'h10) begin
                    adc_en_o      <= 1'b0;
                end
            end else begin
                adc_en_o      <= 1'b0;
            end 

            if (~rec_sync_en_i) begin
                imp_adc1_idx          <= 'b0;
                imp_adc2_idx          <= 'b0;
            end
        end
    end
    
    always @(*) begin
        sample_out_o = 'b0;
        if (rec_sync_en_i) begin
            if (adc_seq>=16) begin
                sample_out_o = 1'b0;
            end else begin
                sample_out_o = 1'b1;
            end
        end else begin
            sample_out_o = 1'b0;
        end
    end

    assign rec_data1_o = sample_out_adc1_1d ?  imp_adc1_idx_1d : adc_res1_i ;
    assign rec_data2_o = sample_out_adc2_1d ?  imp_adc2_idx_1d : adc_res2_i ;

    always @(posedge clk_i or negedge reset_n_i) 
    begin
        if (reset_n_i == 1'b0) begin
            sample_out_adc1_1d   <= 'b1;
            sample_out_adc2_1d   <= 'b1;

        end else begin
            if (en_rec_sync_g1_i[adc_idx] && rec_sync_en_i ) begin
                sample_out_adc1_1d   <= sample_out_o;
            end else begin
                sample_out_adc1_1d <= 1'b1;
            end 

            if (en_rec_sync_g2_i[adc_idx] && rec_sync_en_i ) begin
                sample_out_adc2_1d   <= sample_out_o;
            end else begin
                sample_out_adc2_1d <= 1'b1;
            end
        end
    end

    //discharge pulse generation
    // control the adc_idx_serial
    always @(posedge clk_discharge_main_i or negedge reset_n_i) 
    begin
        if (reset_n_i == 1'b0) begin
            
            discharge_cnt  <= 'b0;
            stim_discharge <= 2'b0;
            en_g1_1d       <= 'b0;
            en_g2_1d       <= 'b0;
            rec_change_g1  <= 'b0;
            rec_change_g2  <= 'b0;
            
            
        end else begin
            // for when recording is activated
            if (rec_sync_en_i) begin
                if ( discharge_cnt < pw_discharge_i ) begin
                    discharge_cnt <= discharge_cnt + 1'b1;
                end else  begin
                    discharge_cnt <= 'b0;
                end 
            end else begin
                discharge_cnt <= pw_discharge_i - 1'b1;
            end

            //for when stimulation is disabled
            if (stim_mask_en) begin
                stim_discharge <= 2'd1;
            end else if ( (stim_mask_en==1'b0) && (stim_discharge == 2'd1) ) begin
                stim_discharge <= 2'd2;
            end else if ( (stim_mask_en==1'b0) && (stim_discharge == 2'd2) ) begin
                stim_discharge <= 2'd0;    
            end

            //for when recording is ongoing and a user activate another channels
            if (rec_sync_en_i) begin
                en_g1_1d       <= en_rec_sync_g1_i;
                en_g2_1d       <= en_rec_sync_g2_i;
                // to detected the rising edge on any bits of en_rec_sync_g1/g2_i : F= A & ~(A_1d)
                rec_change_g1  <= en_rec_sync_g1_i & ~(en_g1_1d) ;
                rec_change_g2  <= en_rec_sync_g2_i & ~(en_g2_1d) ;
              
            end else begin
                en_g1_1d       <= 'b0;
                en_g2_1d       <= 'b0;
            end
        end
    end
    assign change_g1_g2 = (|rec_change_g1) || (|rec_change_g2);
    assign gdischarge_o = ((discharge_cnt == pw_discharge_i) || (stim_discharge==2'd2) || change_g1_g2) ? 1'b1 : 1'b0;
  
endmodule
