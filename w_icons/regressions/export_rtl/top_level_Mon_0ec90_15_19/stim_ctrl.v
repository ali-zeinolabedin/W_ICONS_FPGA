/* ICGLUE GENERATED FILE - manual changes out of prepared *icglue keep begin/end* blocks will be overwritten */
/* icglue keep begin head */
/*
 * Module      : stim_ctrl
 * Author      : smaz-brn
 * Project Name: W_ICONS
 * Company     : Blackrock Neurotech
 *
 */
/* icglue keep end */
`timescale 1ns/1ps

module stim_ctrl (
    pulse_wc_i,
    pulse_gap_i,
    pulse_wa_i,
    pulse_num_i,
    pol_i,
    monophasic_en_i,
    //range_i,
    stim_en_i,
    clk_i,
    reset_n_i,
    interval_i,
    anode_en_o,
    cathode_en_o
);
    /* icglue keep begin parameters *//* icglue keep end */

    input  [13:0] pulse_wc_i;
    input  [13:0] pulse_gap_i;
    input  [13:0] pulse_wa_i;
    input  [11:0] pulse_num_i;
    input         pol_i;
    input         monophasic_en_i;
    //input         range_i;
    input         stim_en_i;
    input         reset_n_i;
    input         clk_i;
    input [15:0]  interval_i;
    output        anode_en_o;
    output        cathode_en_o;
    /* icglue keep begin declarations */
    wire [13:0] pulsew1;
    wire [13:0] pulsew2;
    reg  [15:0] cnt_singlepulse;
    reg  [11:0] cnt_pulsenum;
    wire        enable_window;
    reg         enable_window_chk;
    reg         enable_window_chk_lock;
    wire [3:0]  check_zero;
    
    localparam                   STATE_WIDTH   = 3;
    reg [STATE_WIDTH-1:0] state, nxt_state;
    
    localparam [STATE_WIDTH-1:0] S_IDLE        = 3'b000; //'h0
    localparam [STATE_WIDTH-1:0] S_INTERVAL    = 3'b001; //'h0
    localparam [STATE_WIDTH-1:0] S_W1          = 3'b010; //'h1
    localparam [STATE_WIDTH-1:0] S_GAP         = 3'b011; //'h2
    localparam [STATE_WIDTH-1:0] S_W2          = 3'b100; //'h3
    //localparam [STATE_WIDTH-1:0] S_PULSENUM    = 3'b101; //'h4


    assign pulsew1 = (pol_i ? pulse_wa_i : pulse_wc_i);
    assign pulsew2 = (pol_i ? pulse_wc_i : pulse_wa_i);

    assign anode_en_o   = ((pol_i) ? (state == S_W1) : (state == S_W2) );
    assign cathode_en_o = ((pol_i) ? (state == S_W2) : (state == S_W1) );

    assign check_zero   = {(pulsew1 == 14'b0),(pulse_gap_i == 14'b0),(pulsew2 == 14'b0),(interval_i == 16'b0)};

    
    //FSM
    always @(posedge clk_i or negedge reset_n_i) begin
        if(reset_n_i == 1'b0) begin
            state                   <= S_IDLE;
            cnt_singlepulse         <= 'b0;
            cnt_pulsenum            <= 'b0;
            enable_window_chk_lock  <= 'b0;
            enable_window_chk       <= 'b0;
        end else begin
            state           <= nxt_state;

            if ( (state == S_INTERVAL) || (state == S_W1) || (state == S_GAP) || (state == S_W2))begin
                cnt_singlepulse <= cnt_singlepulse + 1'b1;
            end 
           
            // reset the counter for the next state
            if ( ((cnt_singlepulse == (interval_i-1'b1)) && (state == S_INTERVAL)) ||
                 ((cnt_singlepulse[13:0] == (pulsew1-1'b1)) && (state == S_W1)) ||
                 ((cnt_singlepulse[13:0] == (pulse_gap_i-1'b1)) && (state == S_GAP)) || 
                 ((cnt_singlepulse[13:0] == (pulsew2-1'b1)) && (state == S_W2)) ) begin
                cnt_singlepulse <= 'b0;    
            end

            //increase the cnt_pulsenum in every iteration for Non-zero W2
            if ( ((cnt_singlepulse[13:0] == (pulsew2-1'b1)) && (state == S_W2)) ) begin
                cnt_pulsenum    <=  cnt_pulsenum + 1'b1;   
            end

            // for zero W2 only
            if ( ((cnt_singlepulse[13:0] == (pulse_gap_i-1'b1)) && (state == S_GAP)) && (check_zero == 4'b0010) ) begin
                cnt_pulsenum    <=  cnt_pulsenum + 1'b1;   
            end

            // for zero W2 and gap
            if ( ((cnt_singlepulse[13:0] == (pulsew1-1'b1)) && (state == S_W1)) && (check_zero == 4'b0110) ) begin
                cnt_pulsenum    <=  cnt_pulsenum + 1'b1;   
            end

            // for zero W2 and interval
            if ( ((cnt_singlepulse[13:0] == (pulse_gap_i-1'b1)) && (state == S_GAP)) && (check_zero == 4'b0011) ) begin
                cnt_pulsenum    <=  cnt_pulsenum + 1'b1;   
            end

            // to stop stimulation for the cases when W2 is non-zero
            if ((cnt_pulsenum == (pulse_num_i-1'b1)) && (state == S_W2) && (cnt_singlepulse[13:0] == (pulsew2-1'b1)) && (check_zero != 4'b0010)) begin
                cnt_pulsenum      <=   'b0;  
                //stop the stimulator after pulse_num_i
                enable_window_chk <=  1'b0; 
                state             <= S_IDLE;
            end

            //  to stop stimulation for the cases when W2 is zero
            if ((cnt_pulsenum == (pulse_num_i-1'b1)) && (state == S_GAP) && (cnt_singlepulse[13:0] == (pulse_gap_i-1'b1)) && (check_zero == 4'b0010)) begin
                cnt_pulsenum      <=   'b0;  
                //stop the stimulator after pulse_num_i
                enable_window_chk <=  1'b0; 
                state             <= S_IDLE;
            end

            //  to stop stimulation for the cases when W2 and gap are zero
            if ((cnt_pulsenum == (pulse_num_i-1'b1)) && (state == S_W1) && (cnt_singlepulse[13:0] == (pulsew1-1'b1)) && (check_zero == 4'b0110)) begin
                cnt_pulsenum      <=   'b0;  
                //stop the stimulator after pulse_num_i
                enable_window_chk <=  1'b0; 
                state             <= S_IDLE;
            end


            //  to stop stimulation for the cases when W2 and interval are zero
            if ((cnt_pulsenum == (pulse_num_i-1'b1)) && (state == S_GAP) && (cnt_singlepulse[13:0] == (pulse_gap_i-1'b1)) && (check_zero == 4'b0011)) begin
                cnt_pulsenum      <=   'b0;  
                //stop the stimulator after pulse_num_i
                enable_window_chk <=  1'b0; 
                state             <= S_IDLE;
            end

            // stim_en_i should be disabled to make the enable_window_chk 0 again
            if (stim_en_i  & (enable_window_chk_lock == 1'b0) )begin
                enable_window_chk      <= 1'b1;
                enable_window_chk_lock <= 1'b1;
           
            end else if (stim_en_i == 1'b0) begin
                enable_window_chk      <= 1'b0;
                enable_window_chk_lock <= 1'b0;
                cnt_pulsenum           <= 'b0;
            end
        end
    end

    assign enable_window = stim_en_i & enable_window_chk;

    always @(*) begin
        nxt_state = state;
        
        case(state)
            S_IDLE: begin
                if ( enable_window == 1'b0) begin
                    nxt_state = S_IDLE;
                end else begin
                    // case where only interval_i is zero 
                    if (check_zero == 4'b0001) begin           // when W1 is zero go to GAP
                        nxt_state = S_W1;
                    
                    // Invalid Cases where W1 and W2 are zero, these cases are not generating any stimulation patterns/ cases where either W1 or W2 are non-sero and the rest are zero
                    end else if ( (check_zero == 4'b1010) || (check_zero == 4'b1011) || (check_zero == 4'b1110) || (check_zero == 4'b1111) || (check_zero == 4'b1101) || (check_zero == 4'b0111) ) begin
                        nxt_state = S_IDLE;

                    // Cases where W1 and interval are both zero: monophasic
                    end else if ((check_zero == 4'b1001) && (monophasic_en_i == 1'b1)) begin
                        nxt_state = S_GAP;

                    // Cases where gap and interval both are zero/ Cases where W2 and interval both are zero
                    end else if ( (check_zero == 4'b0101) || ((check_zero == 4'b0011) && (monophasic_en_i == 1'b1)) ) begin
                        nxt_state = S_W1;

                    // if monophasic cases are not allowed but the parameters are wrongly set by the user: nothing happens
                    end else if ((monophasic_en_i == 1'b0) && ((check_zero == 4'b0011) || (check_zero == 4'b1001))) begin
                        nxt_state = S_IDLE;
                    
                    // Normal Case and other remaining cases where interval is not zero
                    end else begin
                        if  ( ((check_zero == 4'b1000) || (check_zero == 4'b1100) || (check_zero == 4'b0010) || (check_zero == 4'b0110) ) && (monophasic_en_i == 1'b0) ) begin
                            nxt_state = S_IDLE;
                        end else begin
                            nxt_state = S_INTERVAL;
                        end
                    end
                end
            end

            S_INTERVAL: begin
                if (cnt_singlepulse == (interval_i-1'b1) ) begin
                    
                    // Cases where W1 is zero: monophasic
                    if (check_zero == 4'b1000) begin
                        nxt_state = S_GAP;
                    
                    // Cases where W1 and gap both zero: monophasic
                    end else if (check_zero == 4'b1100) begin
                        nxt_state = S_W2;

                    // Cases where W2 and gap both zero: monophasic
                    end else if (check_zero == 4'b0110) begin
                        nxt_state = S_W1;

                    //for when W1 is non-zero
                    end else begin          
                        nxt_state = S_W1;
                    end
                   
                end else begin
                    nxt_state = S_INTERVAL;
                end              
            end

            S_W1: begin
                if (cnt_singlepulse[13:0] == (pulsew1-1'b1) ) begin
                    if ( (check_zero == 4'b0100) || (check_zero == 4'b0101) )  begin 
                        nxt_state = S_W2;

                    // Cases where W2 and gap both zero: monophasic
                    end else if (check_zero == 4'b0110) begin
                        nxt_state = S_INTERVAL;
                    
                    end else begin
                        nxt_state = S_GAP;
                    end 
                end else begin
                    nxt_state = S_W1;
                end             
            end

            S_GAP: begin
                if ( cnt_singlepulse[13:0] == (pulse_gap_i-1'b1) ) begin
                    if ( (check_zero == 4'b0010) ) begin
                        nxt_state = S_INTERVAL;
                    
                    // Cases where W2 and gap both zero: monophasic
                    end else if (check_zero == 4'b0011) begin
                        nxt_state = S_W1;

                    end else begin
                        nxt_state = S_W2;
                    end
                end else begin
                    nxt_state = S_GAP;
                end             
            end

            S_W2: begin
                if (cnt_singlepulse[13:0] == (pulsew2-1'b1) ) begin
                    if ( enable_window == 1'b0) begin
                        nxt_state = S_IDLE;
                    end else begin
                        // when interval is zero go to W1 directly/ when both interval and gap are zero
                        if ((check_zero == 4'b0001) || (check_zero == 4'b0101) ) begin           
                             nxt_state = S_W1;
                        
                        // Cases where W1 and interval are both zero: monophasic
                        end else if (check_zero == 4'b1001) begin
                            nxt_state = S_GAP;

                        // Normal Case    
                        end else begin
                            nxt_state = S_INTERVAL;
                        end
                    end
                end else begin
                    nxt_state = S_W2;
                end   
            end        
            
            default: nxt_state = S_IDLE;       
        endcase
    end



    /* icglue keep end */
endmodule
