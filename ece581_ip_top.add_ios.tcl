proc get_port_names { port_collection } {
    global synopsys_program_name
    if { [info exists synopsys_program_name] } {
        return [join [get_attribute $port_collection full_name]]
    } else {
        return [get_db $port_collection .name]
    }
}

foreach i [get_port_names [get_ports {lav_A* lav_B* lav_c* lav_en* upf_clk* lav_reset*}] {
    insert_io $i l
}
foreach i [get_port_names [get_ports {lav_S* lav_Cout* lav_y2* lav_y2* lav_x1* lav_E* lav_done*}]] {
    insert_io $i r
} 
