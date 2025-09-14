# Enable capture of commands
 config_shell -echo true

###################Top Module Specification###########
set top_module "or1k_marocchino_top"
set max_route_layer "10"

#Set design file path variables
set script_dir [file dirname [info script]]
set ekit_dir   [file dirname ${script_dir}]
set rtl_dir "${ekit_dir}/rtl"
set sdc_files "${ekit_dir}/constraints/OpenRISC1k_func.sdc"
set output_dir "${ekit_dir}/output"

##set a consistant reporting format for timing
config_report timing -format "cell edge arrival delay arc_delay net_delay slew net_load load fanout location power_domain"

# Set DFT flow settings
# To run the tessent DFT flow, please set the dft_flow variable to "tessent" from "oasys" and update tessent_build path
# set dft_flow "oasys"
set dft_flow "tessent"
set tessent_build /EDA/Mentor/tessent/bin/tessent

#Source the script that sets the path variables for all input files
# source ${script_dir}/demo_chip_design_files.tcl

echo "\n-----------------------------"
echo "\nDone setting design variables"
echo "\n-----------------------------\n"

