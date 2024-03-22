#modA RTL SDC

#Create_clock
#set upf_clk
set upf_clk_period 1.0

create_clock -name upf_clk -period 1.0 -waveform {0 0.5} [get_ports upf_clk]
set_clock_transition 0.05 [get_clocks upf_clk]
set_clock_latency 0.02 [get_clocks upf_clk]
set_clock_uncertainty 0.02 -setup [get_clocks upf_clk]
set_clock_uncertainty 0.01 -hold [get_clocks upf_clk]

# 30% of clock period for input delay
set_input_delay -max [expr 0.1 * $upf_clk_period] -clock upf_clk [get_ports {lav_in1 lav_in2 lav_c lav_en}]  
set_input_delay -min [expr 0.1 * $upf_clk_period] -clock upf_clk [get_ports {lav_in1 lav_in2 lav_c lav_en}]  

#60% of clock periold for output delay
set_output_delay -max [expr 0.1 * $upf_clk_period] -clock upf_clk [all_outputs]
set_output_delay -min [expr 0.1 * $upf_clk_period] -clock upf_clk [all_outputs]

#
#set_max_delay [expr 0.9 * upf_clk_period] -from [all_inputs] -to [get_ports {P Q X Z}] 
set_input_transition 0.01 [get_ports {lav_in1 lav_in2 lav_c lav_en}] 
set_drive 0.002 [get_ports {lav_in1 lav_in2 lav_c lav_en}] 

set_load 0.05 [get_ports {lav_in1 lav_in2 lav_c lav_en}]

if { [info exists synopsys_program_name ] && ($synopsys_program_name == "icc2_shell") } {
    puts " Creating ICC2 MCMM "
    create_mode func
    create_corner slow
    create_scenario -mode func -corner slow -name func_slow
    current_scenario func_slow
    set_operating_conditions ss0p75v125c
    read_parasitic_tech -tlup $tlu_dir/saed32nm_1p9m_Cmax.tluplus -layermap $tlu_dir/saed32nm_tf_itf_tluplus.map -name Cmax
    read_parasitic_tech -tlup $tlu_dir/saed32nm_1p9m_Cmin.tluplus -layermap $tlu_dir/saed32nm_tf_itf_tluplus.map -name Cmin
 
    set_parasitic_parameters -early_spec Cmax -early_temperature 125
    set_parasitic_parameters -late_spec Cmax -late_temperature 125
    set_scenario_status func_slow -active true -hold true -setup true
}
