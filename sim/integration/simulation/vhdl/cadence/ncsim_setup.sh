
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
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="mem_if_ddr3_emif_0_example_design_example_sim"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="/data/local/altera/14.0/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS=""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/stratixv_ver/
mkdir -p ./libraries/stratixv_hssi_ver/
mkdir -p ./libraries/stratixv_pcie_hip_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/stratixv/
mkdir -p ./libraries/stratixv_hssi/
mkdir -p ./libraries/stratixv_pcie_hip/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_sequencer_mem.hex ./
  cp -f $QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_AC_ROM.hex ./
  cp -f $QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_inst_ROM.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog -sv  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim_ver     
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/stratixv_atoms_ncrypt.v"          -work stratixv_ver         
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.v"                         -work stratixv_ver         
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/stratixv_hssi_atoms_ncrypt.v"     -work stratixv_hssi_ver    
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.v"                    -work stratixv_hssi_ver    
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/stratixv_pcie_hip_atoms_ncrypt.v" -work stratixv_pcie_hip_ver
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.v"                -work stratixv_pcie_hip_ver
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"            -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"               -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"            -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"         -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                    -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                              -work lpm                  
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                             -work lpm                  
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                           -work sgate                
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                -work sgate                
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                 -work altera_mf            
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                            -work altera_mf            
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"              -work altera_lnsim         
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.vhd"                       -work stratixv             
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_components.vhd"                  -work stratixv             
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_components.vhd"             -work stratixv_hssi        
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.vhd"                  -work stratixv_hssi        
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_components.vhd"         -work stratixv_pcie_hip    
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.vhd"              -work stratixv_pcie_hip    
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog                                         "$QSYS_SIMDIR/submodules/alt_mem_ddrx_mm_st_converter.v"                                                                                      
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_addr_cmd.v"                                                                                             
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_addr_cmd_wrap.v"                                                                                        
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ddr2_odt_gen.v"                                                                                         
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ddr3_odt_gen.v"                                                                                         
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_lpddr2_addr_cmd.v"                                                                                      
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_odt_gen.v"                                                                                              
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rdwr_data_tmg.v"                                                                                        
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_arbiter.v"                                                                                              
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_burst_gen.v"                                                                                            
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_cmd_gen.v"                                                                                              
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_csr.v"                                                                                                  
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_buffer.v"                                                                                               
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_buffer_manager.v"                                                                                       
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_burst_tracking.v"                                                                                       
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_dataid_manager.v"                                                                                       
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_fifo.v"                                                                                                 
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_list.v"                                                                                                 
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rdata_path.v"                                                                                           
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_wdata_path.v"                                                                                           
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder.v"                                                                                          
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder_32_syn.v"                                                                                   
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder_64_syn.v"                                                                                   
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder.v"                                                                                          
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_32_syn.v"                                                                                   
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_64_syn.v"                                                                                   
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_decoder_wrapper.v"                                                                          
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_axi_st_converter.v"                                                                                     
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_input_if.v"                                                                                             
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rank_timer.v"                                                                                           
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_sideband.v"                                                                                             
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_tbp.v"                                                                                                  
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_timing_param.v"                                                                                         
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_controller.v"                                                                                           
  ncvlog      -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_controller_st_top.v"                                                                                    
  ncvlog -sv  -incdir "$QSYS_SIMDIR/submodules/" "$QSYS_SIMDIR/submodules/alt_mem_if_nextgen_ddr3_controller_core.sv"                                                                          
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_p2b_adapter.vho"                                        
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_b2p_adapter.vho"                                        
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_transacto.vho"                                          
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_p2b.vho"                                                
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_b2p.vho"                                                
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_fifo.vho"                                               
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_timing_adt.vho"                                         
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_avalon_st_jtag_interface.v"                                                                           
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_jtag_dc_streaming.v"                                                                                  
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_jtag_sld_node.v"                                                                                      
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_jtag_streaming.v"                                                                                     
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_pli_streaming.v"                                                                                      
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_avalon_st_clock_crosser.v"                                                                            
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_avalon_st_pipeline_base.v"                                                                            
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_avalon_st_idle_remover.v"                                                                             
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_avalon_st_idle_inserter.v"                                                                            
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/cadence/altera_avalon_st_pipeline_stage.sv"                                                                          
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/cadence/altera_merlin_slave_translator.sv"                                                                           
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/cadence/altera_merlin_master_translator.sv"                                                                          
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/driver_definitions.sv"                                                                                               
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/addr_gen.sv"                                                                                                         
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/burst_boundary_addr_gen.sv"                                                                                          
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/lfsr.sv"                                                                                                             
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/lfsr_wrapper.sv"                                                                                                     
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/rand_addr_gen.sv"                                                                                                    
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/rand_burstcount_gen.sv"                                                                                              
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/rand_num_gen.sv"                                                                                                     
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/rand_seq_addr_gen.sv"                                                                                                
  ncvlog                                         "$QSYS_SIMDIR/submodules/reset_sync.v"                                                                                                        
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/scfifo_wrapper.sv"                                                                                                   
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/seq_addr_gen.sv"                                                                                                     
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/template_addr_gen.sv"                                                                                                
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/template_stage.sv"                                                                                                   
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/driver_csr.sv"                                                                                                       
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/avalon_traffic_gen_avl_use_be_avl_use_burstbegin.sv"                                                                 
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/block_rw_stage_avl_use_be_avl_use_burstbegin.sv"                                                                     
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/driver_avl_use_be_avl_use_burstbegin.sv"                                                                             
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/driver_fsm_avl_use_be_avl_use_burstbegin.sv"                                                                         
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/read_compare_avl_use_be_avl_use_burstbegin.sv"                                                                       
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/single_rw_stage_avl_use_be_avl_use_burstbegin.sv"                                                                    
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_mm_interconnect_0.vhd"                                          
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/altera_mem_if_dll_stratixv.sv"                                                                                       
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/altera_mem_if_oct_stratixv.sv"                                                                                       
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_c0.vhd"                                                         
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster.vhd"                                                    
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0.vhd"                                                         
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_009.vho"                            
  ncvlog                                         "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst_test_bench.v"                                               
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router.vho"                                
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_no_ifdef_params.v"                                                                               
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/sequencer_trk_mgr.sv"                                                                                                
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux.vho"                             
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux_002.vho"                         
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/sequencer_scc_siii_wrapper.sv"                                                                                       
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_no_ifdef_params.v"                                                                                 
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_jumplogic.v"                                                                                              
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_demux.vho"                             
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_ram.v"                                                                                                    
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_di_buffer.v"                                                                                              
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_003.vho"                            
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/rw_manager_core.sv"                                                                                                  
  ncvlog                                         "$QSYS_SIMDIR/submodules/sequencer_scc_sv_phase_decode.v"                                                                                     
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                                                                      
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trks_translator.vhd"
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/sequencer_scc_sv_wrapper.sv"                                                                                         
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_seq_bridge.vho"                                              
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_bitcheck.v"                                                                                               
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_data_broadcast.v"                                                                                         
  ncvlog                                         "$QSYS_SIMDIR/submodules/sequencer_scc_reg_file.v"                                                                                            
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/sequencer_phy_mgr.sv"                                                                                                
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cpu_inst_instruction_master_translator.vhd"
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_008.vho"                            
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_rst.sv"                                                                                      
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_mem_s1_translator.vhd"           
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_006.vho"                            
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_trk_mm_bridge.vho"                                           
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_001.vho"                            
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cpu_inst_data_master_translator.vhd"       
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_read_datapath.v"                                                                                          
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux_001.vho"                           
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/rw_manager_generic.sv"                                                                                               
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0.vhd"                                       
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_lfsr12.v"                                                                                                 
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_seq_bridge_m0_translator.vhd"              
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_002.vho"                            
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux.vho"                               
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_lfsr72.v"                                                                                                 
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_005.vho"                            
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux_003.vho"                           
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_lfsr36.v"                                                                                                 
  ncvlog                                         "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst.v"                                                          
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_trk_mm_bridge_s0_translator.vhd"           
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_ddr3.v"                                                                                                   
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/sequencer_reg_file.sv"                                                                                               
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_irq_mapper.vho"                                              
  ncvlog                                         "$QSYS_SIMDIR/submodules/sequencer_scc_acv_phase_decode.v"                                                                                    
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trkm_translator.vhd"
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_mux_002.vho"                           
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_trk_mm_bridge_m0_translator.vhd"           
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_trk_mm_bridge_s0_agent_rsp_fifo.vho"       
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_004.vho"                            
  ncvlog                                         "$QSYS_SIMDIR/submodules/sequencer_scc_siii_phase_decode.v"                                                                                   
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux_001.vho"                         
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux_002.vho"                           
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_mux_001.vho"                           
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_dm_decoder.v"                                                                                             
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_data_decoder.v"                                                                                           
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_write_decoder.v"                                                                                          
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_mux.vho"                               
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_007.vho"                            
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux_003.vho"                         
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_reg.v"                                                                                             
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_phy_mgr_inst_avl_translator.vhd" 
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_pattern_fifo.v"                                                                                           
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_reg.v"                                                                                           
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_reg_file_inst_avl_translator.vhd"
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_ram_csr.v"                                                                                                
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/sequencer_data_mgr.sv"                                                                                               
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/sequencer_scc_mgr.sv"                                                                                                
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_di_buffer_wrap.v"                                                                                         
  ncvlog                                         "$QSYS_SIMDIR/submodules/rw_manager_datamux.v"                                                                                                
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/sequencer_scc_acv_wrapper.sv"                                                                                        
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/cadence/altera_merlin_burst_uncompressor.sv"                                                                         
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/cadence/altera_merlin_master_agent.sv"                                                                               
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/cadence/altera_merlin_traffic_limiter.sv"                                                                            
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/cadence/altera_merlin_slave_agent.sv"                                                                                
  ncvlog                                         "$QSYS_SIMDIR/submodules/afi_mux_ddr3_ddrx.v"                                                                                                 
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_p0.vho"                                                         
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_p0_sim_delay.vhd"                                               
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/read_fifo_hard_abstract_ddrx_lpddrx.sv"                                                                              
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_p0_altdqdqs.vhd"                                                
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/altdq_dqs2_stratixv.sv"                                                                                              
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/altdq_dqs2_abstract.sv"                                                                                              
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/altdq_dqs2_cal_delays.sv"                                                                                            
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0.vho"                                                       
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_sim_delay.vhd"                                             
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_reset_controller.v"                                                                                   
  ncvlog                                         "$QSYS_SIMDIR/submodules/cadence/altera_reset_synchronizer.v"                                                                                 
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_mm_interconnect_0.vhd"                                              
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_d0.vhd"                                                             
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0.vhd"                                                            
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/alt_mem_if_ddr3_mem_model_top_ddr3_mem_if_dm_pins_en_mem_if_dqsn_en.sv"                                              
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/alt_mem_if_common_ddr_mem_model_ddr3_mem_if_dm_pins_en_mem_if_dqsn_en.sv"                                            
  ncvlog -sv                                     "$QSYS_SIMDIR/submodules/altera_mem_if_checker_enable_vcdplus.sv"                                                                             
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0.vhd"                                                                
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.vhd"                                                                                      
  ncvhdl -v93                                    "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.vhd"                                                                                      
  ncvhdl -v93                                    "$QSYS_SIMDIR/mem_if_ddr3_emif_0_example_design_example_sim.vhd"                                                                              
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen -relax $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi

