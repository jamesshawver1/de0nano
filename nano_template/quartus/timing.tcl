project_open $::env(current_dir)

# Create timing netlist before calling
# any report functions
create_timing_netlist -speed 8
create_clock -period 50MHz -name CLK50MHZ [get_ports CLK50MHZ]

# Read SDC and update timing
read_sdc
update_timing_netlist

# Ready to call report functions
report_timing -npaths 1 -setup

# The following command is optional
delete_timing_netlist

project_close
