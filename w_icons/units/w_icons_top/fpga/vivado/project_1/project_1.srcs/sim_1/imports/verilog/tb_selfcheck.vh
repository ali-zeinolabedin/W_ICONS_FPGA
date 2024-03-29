/*
 * Module: tb_selfcheck.vh
 * Author: Ali Zeinolabedin
 */
 
integer errors;
integer checks_done;
integer discharge;
reg     offensive;
integer stim_chk;
integer stim_err;

initial begin
    errors      = 0;
    checks_done = 0;
    offensive   = 1'b0;
    discharge   = 0;
    stim_chk    = 0;
    stim_err    = 0;
end

task tb_final_check;
    begin
        $display ("");
        if (checks_done <= 0) begin
            if (offensive == 1'b1) begin
                $display (" #####   ####  ### ### ##  ## ##### #####  ");
                $display (" ##  ## ##  ## ####### ### ## ##    ##  ## ");
                $display (" ##  ## ###### ## # ## ###### ####  ##  ## ");
                $display (" ##  ## ##  ## ## # ## ## ### ##    ##  ## ");
                $display (" #####  ##  ## ##   ## ##  ## ##### #####  ");
                $display ("");
            end
            /* unknown */
            $display (" ##  ## ##  ## ## ## ##  ##  ####  ##   ## ##  ## ");
            $display (" ##  ## ### ## ####  ### ## ##  ## ## # ## ### ## ");
            $display (" ##  ## ###### ###   ###### ##  ## ## # ## ###### ");
            $display (" ##  ## ## ### ####  ## ### ##  ## ####### ## ### ");
            $display ("  ####  ##  ## ## ## ##  ##  ####   ## ##  ##  ## ");
            $display ("");
            $display ("TBCHECK: UNWNOWN");
        end else if (errors == 0) begin
            if (offensive == 1'b1) begin
                $display (" #####  ##    ####   ####  #####  ##  ##         ##   ## ##### ##    ##    ");
                $display (" ##  ## ##   ##  ## ##  ## ##  ## ##  ##         ## # ## ##    ##    ##    ");
                $display (" #####  ##   ##  ## ##  ## ##  ##  ####          ## # ## ####  ##    ##    ");
                $display (" ##  ## ##   ##  ## ##  ## ##  ##   ##           ####### ##    ##    ##    ");
                $display (" #####  ##### ####   ####  #####    ##            ## ##  ##### ##### ##### ");
                $display ("");
            end
            /* passed */
            $write("%c[1;34m",27);
            $display (" #####   ####   ##### ##### ##### #####  ");
            $display (" ##  ## ##  ## ##    ##     ##    ##  ## ");
            $display (" #####  ######  ####  ####  ####  ##  ## ");
            $display (" ##     ##  ##     ##    ## ##    ##  ## ");
            $display (" ##     ##  ## ##### #####  ##### #####  ");
            $display ("");
            $display ("TBCHECK: PASSED");
            $write("%c[0m",27);
        end else begin
            if (offensive == 1'b1) begin
                $display (" ##### ##  ##  ####  ## ## #### ##  ##  ##### ");
                $display (" ##    ##  ## ##  ## ####   ##  ### ## ##     ");
                $display (" ####  ##  ## ##     ###    ##  ###### ## ### ");
                $display (" ##    ##  ## ##  ## ####   ##  ## ### ##  ## ");
                $display (" ##     ####   ####  ## ## #### ##  ##  ####  ");
                $display ("");
            end
            /* failed */
            $write("%c[1;31m",27);
            $display (" ##### ####  #### ##    ##### #####  ");
            $display (" ##   ##  ##  ##  ##    ##    ##  ## ");
            $display (" #### ######  ##  ##    ####  ##  ## ");
            $display (" ##   ##  ##  ##  ##    ##    ##  ## ");
            $display (" ##   ##  ## #### ##### ##### #####  ");
            $display ("");
            $display ("TBCHECK: FAILED");
            $write("%c[0m",27);
        end
        $finish;
    end
endtask

task tb_final_check_offensive;
    begin
        offensive = 1'b1;
        tb_final_check;
    end
endtask

task tb_check_failed;
    begin
        errors = errors+1;
        checks_done = checks_done+1;
    end
endtask

task tb_check_passed;
    checks_done = checks_done+1;
endtask

task tb_check_discharge;
    discharge = discharge+1;
endtask

task tb_stim_check;
    stim_chk = stim_chk+1;
endtask

task tb_stim_err;
    stim_err = stim_err+1;
endtask