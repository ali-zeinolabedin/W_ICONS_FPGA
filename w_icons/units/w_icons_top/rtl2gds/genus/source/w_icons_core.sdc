create_clock -name REFCLK -period 33.333 -waveform {0 16.67} [get_ports {clk_ref_i}]
create_clock -name SPICLK -period 50 -waveform {0 25} [get_ports {spi_clk_i}]

#create_generated_clock -name ck2x -divide_by 2 -source ckGen/ckin ckGen/ck2x

#create_clock -name I1 -period 20  [get_ports {I1}]
#create_clock -name I2 -period 20  [get_ports {I2}]

#set_input_delay  -clock  [all_inputs -no_clocks]
#set_output_delay -clock clk1 2 [all_outputs]
set_input_delay  -clock SPICLK 10  [get_ports {spi_cs_i  spi_mosi_i}]
set_output_delay -clock SPICLK 10 [get_ports {spi_miso_o}]

set_input_delay -clock REFCLK 2 [get_ports {adc_res*_i dft_testmode_i reset_i stim_xen_i}]
set_output_delay -clock REFCLK 2 [get_ports {stim*o adc*o sample_out_o rec*o anod*o cath*o en*o err_sync_o}]

set_clock_latency -min 1 [all_clocks]
set_clock_latency -max 2 [all_clocks]

set_clock_uncertainty -from [get_clocks REFCLK] -to [get_clocks REFCLK] .100
set_clock_uncertainty -from [get_clocks SPICLK] -to [get_clocks SPICLK] .100

#set_case_analysis 0 [get_ports TE]

set_driving_cell -lib_cell BUFFD4BWP7T [all_inputs -no_clocks]
set_load 1.5 -pin_load [all_outputs]
