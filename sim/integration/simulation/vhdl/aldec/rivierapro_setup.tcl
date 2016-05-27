
# (C) 2001-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 14.0 200 linux 2016.05.21.21:54:18

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "mem_if_ddr3_emif_0_example_design_example_sim"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/data/local/altera/14.0/quartus/"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_sequencer_mem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_AC_ROM.hex ./
  file copy -force $QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_inst_ROM.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                       ./libraries/altera_ver           
vmap       altera_ver            ./libraries/altera_ver           
ensure_lib                       ./libraries/lpm_ver              
vmap       lpm_ver               ./libraries/lpm_ver              
ensure_lib                       ./libraries/sgate_ver            
vmap       sgate_ver             ./libraries/sgate_ver            
ensure_lib                       ./libraries/altera_mf_ver        
vmap       altera_mf_ver         ./libraries/altera_mf_ver        
ensure_lib                       ./libraries/altera_lnsim_ver     
vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver     
ensure_lib                       ./libraries/stratixv_ver         
vmap       stratixv_ver          ./libraries/stratixv_ver         
ensure_lib                       ./libraries/stratixv_hssi_ver    
vmap       stratixv_hssi_ver     ./libraries/stratixv_hssi_ver    
ensure_lib                       ./libraries/stratixv_pcie_hip_ver
vmap       stratixv_pcie_hip_ver ./libraries/stratixv_pcie_hip_ver
ensure_lib                       ./libraries/altera               
vmap       altera                ./libraries/altera               
ensure_lib                       ./libraries/lpm                  
vmap       lpm                   ./libraries/lpm                  
ensure_lib                       ./libraries/sgate                
vmap       sgate                 ./libraries/sgate                
ensure_lib                       ./libraries/altera_mf            
vmap       altera_mf             ./libraries/altera_mf            
ensure_lib                       ./libraries/altera_lnsim         
vmap       altera_lnsim          ./libraries/altera_lnsim         
ensure_lib                       ./libraries/stratixv             
vmap       stratixv              ./libraries/stratixv             
ensure_lib                       ./libraries/stratixv_hssi        
vmap       stratixv_hssi         ./libraries/stratixv_hssi        
ensure_lib                       ./libraries/stratixv_pcie_hip    
vmap       stratixv_pcie_hip     ./libraries/stratixv_pcie_hip    


# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                    -work altera_ver           
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                             -work lpm_ver              
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                -work sgate_ver            
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                            -work altera_mf_ver        
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                        -work altera_lnsim_ver     
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/stratixv_atoms_ncrypt.v"          -work stratixv_ver         
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.v"                       -work stratixv_ver         
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/stratixv_hssi_atoms_ncrypt.v"     -work stratixv_hssi_ver    
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.v"                  -work stratixv_hssi_ver    
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/stratixv_pcie_hip_atoms_ncrypt.v" -work stratixv_pcie_hip_ver
  vlog  "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.v"              -work stratixv_pcie_hip_ver
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"              -work altera               
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"          -work altera               
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"             -work altera               
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"          -work altera               
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"       -work altera               
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                  -work altera               
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                            -work lpm                  
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                           -work lpm                  
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                         -work sgate                
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                              -work sgate                
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"               -work altera_mf            
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                          -work altera_mf            
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"            -work altera_lnsim         
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.vhd"                     -work stratixv             
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_components.vhd"                -work stratixv             
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_components.vhd"           -work stratixv_hssi        
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.vhd"                -work stratixv_hssi        
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_components.vhd"       -work stratixv_pcie_hip    
  vcom  "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.vhd"            -work stratixv_pcie_hip    
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog                                       "$QSYS_SIMDIR/submodules/alt_mem_ddrx_mm_st_converter.v"                                                                                      
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_addr_cmd.v"                                                                                             
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_addr_cmd_wrap.v"                                                                                        
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ddr2_odt_gen.v"                                                                                         
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ddr3_odt_gen.v"                                                                                         
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_lpddr2_addr_cmd.v"                                                                                      
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_odt_gen.v"                                                                                              
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rdwr_data_tmg.v"                                                                                        
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_arbiter.v"                                                                                              
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_burst_gen.v"                                                                                            
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_cmd_gen.v"                                                                                              
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_csr.v"                                                                                                  
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_buffer.v"                                                                                               
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_buffer_manager.v"                                                                                       
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_burst_tracking.v"                                                                                       
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_dataid_manager.v"                                                                                       
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_fifo.v"                                                                                                 
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_list.v"                                                                                                 
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rdata_path.v"                                                                                           
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_wdata_path.v"                                                                                           
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder.v"                                                                                          
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder_32_syn.v"                                                                                   
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder_64_syn.v"                                                                                   
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder.v"                                                                                          
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_32_syn.v"                                                                                   
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_64_syn.v"                                                                                   
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_decoder_wrapper.v"                                                                          
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_axi_st_converter.v"                                                                                     
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_input_if.v"                                                                                             
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rank_timer.v"                                                                                           
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_sideband.v"                                                                                             
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_tbp.v"                                                                                                  
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_timing_param.v"                                                                                         
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_controller.v"                                                                                           
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_controller_st_top.v"                                                                                    
  vlog  \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_if_nextgen_ddr3_controller_core.sv"                                                                          
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_p2b_adapter.vho"                                        
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_b2p_adapter.vho"                                        
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_transacto.vho"                                          
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_p2b.vho"                                                
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_b2p.vho"                                                
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_fifo.vho"                                               
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_timing_adt.vho"                                         
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_avalon_st_jtag_interface.v"                                                                             
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_jtag_dc_streaming.v"                                                                                    
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_jtag_sld_node.v"                                                                                        
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_jtag_streaming.v"                                                                                       
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_pli_streaming.v"                                                                                        
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_avalon_st_clock_crosser.v"                                                                              
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_avalon_st_pipeline_base.v"                                                                              
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_avalon_st_idle_remover.v"                                                                               
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_avalon_st_idle_inserter.v"                                                                              
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_avalon_st_pipeline_stage.sv"                                                                            
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_merlin_slave_translator.sv"                                                                             
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_merlin_master_translator.sv"                                                                            
  vlog                                       "$QSYS_SIMDIR/submodules/driver_definitions.sv"                                                                                               
  vlog                                       "$QSYS_SIMDIR/submodules/addr_gen.sv"                                                                                                         
  vlog                                       "$QSYS_SIMDIR/submodules/burst_boundary_addr_gen.sv"                                                                                          
  vlog                                       "$QSYS_SIMDIR/submodules/lfsr.sv"                                                                                                             
  vlog                                       "$QSYS_SIMDIR/submodules/lfsr_wrapper.sv"                                                                                                     
  vlog                                       "$QSYS_SIMDIR/submodules/rand_addr_gen.sv"                                                                                                    
  vlog                                       "$QSYS_SIMDIR/submodules/rand_burstcount_gen.sv"                                                                                              
  vlog                                       "$QSYS_SIMDIR/submodules/rand_num_gen.sv"                                                                                                     
  vlog                                       "$QSYS_SIMDIR/submodules/rand_seq_addr_gen.sv"                                                                                                
  vlog                                       "$QSYS_SIMDIR/submodules/reset_sync.v"                                                                                                        
  vlog                                       "$QSYS_SIMDIR/submodules/scfifo_wrapper.sv"                                                                                                   
  vlog                                       "$QSYS_SIMDIR/submodules/seq_addr_gen.sv"                                                                                                     
  vlog                                       "$QSYS_SIMDIR/submodules/template_addr_gen.sv"                                                                                                
  vlog                                       "$QSYS_SIMDIR/submodules/template_stage.sv"                                                                                                   
  vlog                                       "$QSYS_SIMDIR/submodules/driver_csr.sv"                                                                                                       
  vlog                                       "$QSYS_SIMDIR/submodules/avalon_traffic_gen_avl_use_be_avl_use_burstbegin.sv"                                                                 
  vlog                                       "$QSYS_SIMDIR/submodules/block_rw_stage_avl_use_be_avl_use_burstbegin.sv"                                                                     
  vlog                                       "$QSYS_SIMDIR/submodules/driver_avl_use_be_avl_use_burstbegin.sv"                                                                             
  vlog                                       "$QSYS_SIMDIR/submodules/driver_fsm_avl_use_be_avl_use_burstbegin.sv"                                                                         
  vlog                                       "$QSYS_SIMDIR/submodules/read_compare_avl_use_be_avl_use_burstbegin.sv"                                                                       
  vlog                                       "$QSYS_SIMDIR/submodules/single_rw_stage_avl_use_be_avl_use_burstbegin.sv"                                                                    
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_mm_interconnect_0.vhd"                                          
  vlog                                       "$QSYS_SIMDIR/submodules/altera_mem_if_dll_stratixv.sv"                                                                                       
  vlog                                       "$QSYS_SIMDIR/submodules/altera_mem_if_oct_stratixv.sv"                                                                                       
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_c0.vhd"                                                         
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster.vhd"                                                    
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0.vhd"                                                         
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_009.vho"                            
  vlog                                       "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst_test_bench.v"                                               
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router.vho"                                
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_no_ifdef_params.v"                                                                               
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_trk_mgr.sv"                                                                                                
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux.vho"                             
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux_002.vho"                         
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_scc_siii_wrapper.sv"                                                                                       
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_no_ifdef_params.v"                                                                                 
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_jumplogic.v"                                                                                              
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_demux.vho"                             
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_ram.v"                                                                                                    
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_di_buffer.v"                                                                                              
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_003.vho"                            
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_core.sv"                                                                                                  
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_scc_sv_phase_decode.v"                                                                                     
  vlog                                       "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                                                                      
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trks_translator.vhd"
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_scc_sv_wrapper.sv"                                                                                         
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_seq_bridge.vho"                                              
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_bitcheck.v"                                                                                               
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_data_broadcast.v"                                                                                         
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_scc_reg_file.v"                                                                                            
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_phy_mgr.sv"                                                                                                
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cpu_inst_instruction_master_translator.vhd"
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_008.vho"                            
  vlog                                       "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_rst.sv"                                                                                      
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_mem_s1_translator.vhd"           
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_006.vho"                            
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_trk_mm_bridge.vho"                                           
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_001.vho"                            
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cpu_inst_data_master_translator.vhd"       
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_read_datapath.v"                                                                                          
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux_001.vho"                           
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_generic.sv"                                                                                               
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0.vhd"                                       
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_lfsr12.v"                                                                                                 
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_seq_bridge_m0_translator.vhd"              
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_002.vho"                            
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux.vho"                               
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_lfsr72.v"                                                                                                 
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_005.vho"                            
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux_003.vho"                           
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_lfsr36.v"                                                                                                 
  vlog                                       "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst.v"                                                          
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_trk_mm_bridge_s0_translator.vhd"           
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_ddr3.v"                                                                                                   
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_reg_file.sv"                                                                                               
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_irq_mapper.vho"                                              
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_scc_acv_phase_decode.v"                                                                                    
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trkm_translator.vhd"
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_mux_002.vho"                           
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_trk_mm_bridge_m0_translator.vhd"           
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_trk_mm_bridge_s0_agent_rsp_fifo.vho"       
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_004.vho"                            
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_scc_siii_phase_decode.v"                                                                                   
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux_001.vho"                         
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux_002.vho"                           
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_mux_001.vho"                           
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_dm_decoder.v"                                                                                             
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_data_decoder.v"                                                                                           
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_write_decoder.v"                                                                                          
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_mux.vho"                               
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_007.vho"                            
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux_003.vho"                         
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_reg.v"                                                                                             
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_phy_mgr_inst_avl_translator.vhd" 
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_pattern_fifo.v"                                                                                           
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_reg.v"                                                                                           
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_reg_file_inst_avl_translator.vhd"
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_ram_csr.v"                                                                                                
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_data_mgr.sv"                                                                                               
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_scc_mgr.sv"                                                                                                
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_di_buffer_wrap.v"                                                                                         
  vlog                                       "$QSYS_SIMDIR/submodules/rw_manager_datamux.v"                                                                                                
  vlog                                       "$QSYS_SIMDIR/submodules/sequencer_scc_acv_wrapper.sv"                                                                                        
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_merlin_burst_uncompressor.sv"                                                                           
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_merlin_master_agent.sv"                                                                                 
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_merlin_traffic_limiter.sv"                                                                              
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_merlin_slave_agent.sv"                                                                                  
  vlog                                       "$QSYS_SIMDIR/submodules/afi_mux_ddr3_ddrx.v"                                                                                                 
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_p0.vho"                                                         
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_p0_sim_delay.vhd"                                               
  vlog                                       "$QSYS_SIMDIR/submodules/read_fifo_hard_abstract_ddrx_lpddrx.sv"                                                                              
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_p0_altdqdqs.vhd"                                                
  vlog                                       "$QSYS_SIMDIR/submodules/altdq_dqs2_stratixv.sv"                                                                                              
  vlog                                       "$QSYS_SIMDIR/submodules/altdq_dqs2_abstract.sv"                                                                                              
  vlog                                       "$QSYS_SIMDIR/submodules/altdq_dqs2_cal_delays.sv"                                                                                            
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0.vho"                                                       
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_sim_delay.vhd"                                             
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_reset_controller.v"                                                                                     
  vlog                                       "$QSYS_SIMDIR/submodules/aldec/altera_reset_synchronizer.v"                                                                                   
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_mm_interconnect_0.vhd"                                              
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_d0.vhd"                                                             
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0.vhd"                                                            
  vlog                                       "$QSYS_SIMDIR/submodules/alt_mem_if_ddr3_mem_model_top_ddr3_mem_if_dm_pins_en_mem_if_dqsn_en.sv"                                              
  vlog                                       "$QSYS_SIMDIR/submodules/alt_mem_if_common_ddr_mem_model_ddr3_mem_if_dm_pins_en_mem_if_dqsn_en.sv"                                            
  vlog                                       "$QSYS_SIMDIR/submodules/altera_mem_if_checker_enable_vcdplus.sv"                                                                             
  vcom                                       "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0.vhd"                                                                
  vcom                                       "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.vhd"                                                                                      
  vcom                                       "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.vhd"                                                                                      
  vcom                                       "$QSYS_SIMDIR/mem_if_ddr3_emif_0_example_design_example_sim.vhd"                                                                              
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixv_ver -L stratixv_hssi_ver -L stratixv_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L stratixv -L stratixv_hssi -L stratixv_pcie_hip $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixv_ver -L stratixv_hssi_ver -L stratixv_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L stratixv -L stratixv_hssi -L stratixv_pcie_hip $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
