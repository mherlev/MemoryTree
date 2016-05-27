
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
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="mem_if_ddr3_emif_0_example_design_example_sim"
QSYS_SIMDIR="./../../"
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
if [[ `vcs -platform` != *"amd64"* ]]; then
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
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                       -work altera_ver           
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                                -work lpm_ver              
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                   -work sgate_ver            
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                               -work altera_mf_ver        
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                           -work altera_lnsim_ver     
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/stratixv_atoms_ncrypt.v"          -work stratixv_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.v"                          -work stratixv_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/stratixv_hssi_atoms_ncrypt.v"     -work stratixv_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.v"                     -work stratixv_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/stratixv_pcie_hip_atoms_ncrypt.v" -work stratixv_pcie_hip_ver
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.v"                 -work stratixv_pcie_hip_ver
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                 -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"             -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"                -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"             -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"          -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                     -work altera               
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                               -work lpm                  
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                              -work lpm                  
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                            -work sgate                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                 -work sgate                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                  -work altera_mf            
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                             -work altera_mf            
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"               -work altera_lnsim         
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_atoms.vhd"                        -work stratixv             
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_components.vhd"                   -work stratixv             
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_components.vhd"              -work stratixv_hssi        
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_hssi_atoms.vhd"                   -work stratixv_hssi        
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_components.vhd"          -work stratixv_pcie_hip    
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/stratixv_pcie_hip_atoms.vhd"               -work stratixv_pcie_hip    
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/alt_mem_ddrx_mm_st_converter.v"                                                                                      
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_addr_cmd.v"                                                                                             
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_addr_cmd_wrap.v"                                                                                        
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ddr2_odt_gen.v"                                                                                         
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ddr3_odt_gen.v"                                                                                         
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_lpddr2_addr_cmd.v"                                                                                      
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_odt_gen.v"                                                                                              
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rdwr_data_tmg.v"                                                                                        
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_arbiter.v"                                                                                              
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_burst_gen.v"                                                                                            
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_cmd_gen.v"                                                                                              
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_csr.v"                                                                                                  
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_buffer.v"                                                                                               
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_buffer_manager.v"                                                                                       
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_burst_tracking.v"                                                                                       
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_dataid_manager.v"                                                                                       
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_fifo.v"                                                                                                 
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_list.v"                                                                                                 
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rdata_path.v"                                                                                           
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_wdata_path.v"                                                                                           
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder.v"                                                                                          
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder_32_syn.v"                                                                                   
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_decoder_64_syn.v"                                                                                   
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder.v"                                                                                          
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_32_syn.v"                                                                                   
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_64_syn.v"                                                                                   
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_ecc_encoder_decoder_wrapper.v"                                                                          
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_axi_st_converter.v"                                                                                     
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_input_if.v"                                                                                             
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_rank_timer.v"                                                                                           
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_sideband.v"                                                                                             
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_tbp.v"                                                                                                  
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_timing_param.v"                                                                                         
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_controller.v"                                                                                           
  vlogan +v2k           \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_ddrx_controller_st_top.v"                                                                                    
  vlogan +v2k -sverilog \"+incdir+$QSYS_SIMDIR/submodules/\" "$QSYS_SIMDIR/submodules/alt_mem_if_nextgen_ddr3_controller_core.sv"                                                                          
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_p2b_adapter.vho"                                        
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_b2p_adapter.vho"                                        
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_transacto.vho"                                          
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_p2b.vho"                                                
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_b2p.vho"                                                
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_fifo.vho"                                               
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_timing_adt.vho"                                         
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_avalon_st_jtag_interface.v"                                                                          
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_jtag_dc_streaming.v"                                                                                 
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_jtag_sld_node.v"                                                                                     
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_jtag_streaming.v"                                                                                    
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_pli_streaming.v"                                                                                     
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_avalon_st_clock_crosser.v"                                                                           
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_avalon_st_pipeline_base.v"                                                                           
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_avalon_st_idle_remover.v"                                                                            
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_avalon_st_idle_inserter.v"                                                                           
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/synopsys/altera_avalon_st_pipeline_stage.sv"                                                                         
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_slave_translator.sv"                                                                          
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_master_translator.sv"                                                                         
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/driver_definitions.sv"                                                                                               
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/addr_gen.sv"                                                                                                         
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/burst_boundary_addr_gen.sv"                                                                                          
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/lfsr.sv"                                                                                                             
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/lfsr_wrapper.sv"                                                                                                     
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/rand_addr_gen.sv"                                                                                                    
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/rand_burstcount_gen.sv"                                                                                              
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/rand_num_gen.sv"                                                                                                     
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/rand_seq_addr_gen.sv"                                                                                                
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/reset_sync.v"                                                                                                        
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/scfifo_wrapper.sv"                                                                                                   
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/seq_addr_gen.sv"                                                                                                     
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/template_addr_gen.sv"                                                                                                
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/template_stage.sv"                                                                                                   
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/driver_csr.sv"                                                                                                       
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/avalon_traffic_gen_avl_use_be_avl_use_burstbegin.sv"                                                                 
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/block_rw_stage_avl_use_be_avl_use_burstbegin.sv"                                                                     
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/driver_avl_use_be_avl_use_burstbegin.sv"                                                                             
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/driver_fsm_avl_use_be_avl_use_burstbegin.sv"                                                                         
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/read_compare_avl_use_be_avl_use_burstbegin.sv"                                                                       
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/single_rw_stage_avl_use_be_avl_use_burstbegin.sv"                                                                    
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_mm_interconnect_0.vhd"                                          
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/altera_mem_if_dll_stratixv.sv"                                                                                       
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/altera_mem_if_oct_stratixv.sv"                                                                                       
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_c0.vhd"                                                         
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster.vhd"                                                    
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0.vhd"                                                         
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_009.vho"                            
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst_test_bench.v"                                               
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router.vho"                                
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_no_ifdef_params.v"                                                                               
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/sequencer_trk_mgr.sv"                                                                                                
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux.vho"                             
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux_002.vho"                         
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/sequencer_scc_siii_wrapper.sv"                                                                                       
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_no_ifdef_params.v"                                                                                 
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_jumplogic.v"                                                                                              
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_demux.vho"                             
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_ram.v"                                                                                                    
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_di_buffer.v"                                                                                              
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_003.vho"                            
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/rw_manager_core.sv"                                                                                                  
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/sequencer_scc_sv_phase_decode.v"                                                                                     
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_mem_no_ifdef_params.sv"                                                                      
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trks_translator.vhd"
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/sequencer_scc_sv_wrapper.sv"                                                                                         
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_seq_bridge.vho"                                              
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_bitcheck.v"                                                                                               
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_data_broadcast.v"                                                                                         
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/sequencer_scc_reg_file.v"                                                                                            
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/sequencer_phy_mgr.sv"                                                                                                
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cpu_inst_instruction_master_translator.vhd"
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_008.vho"                            
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_rst.sv"                                                                                      
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_mem_s1_translator.vhd"           
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_006.vho"                            
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_trk_mm_bridge.vho"                                           
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_001.vho"                            
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cpu_inst_data_master_translator.vhd"       
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_read_datapath.v"                                                                                          
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux_001.vho"                           
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/rw_manager_generic.sv"                                                                                               
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0.vhd"                                       
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_lfsr12.v"                                                                                                 
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_seq_bridge_m0_translator.vhd"              
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_002.vho"                            
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux.vho"                               
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_lfsr72.v"                                                                                                 
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_005.vho"                            
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux_003.vho"                           
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_lfsr36.v"                                                                                                 
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/altera_mem_if_sequencer_cpu_no_ifdef_params_sim_cpu_inst.v"                                                          
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_trk_mm_bridge_s0_translator.vhd"           
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_ddr3.v"                                                                                                   
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/sequencer_reg_file.sv"                                                                                               
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_irq_mapper.vho"                                              
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/sequencer_scc_acv_phase_decode.v"                                                                                    
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_trk_mgr_inst_trkm_translator.vhd"
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_mux_002.vho"                           
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_trk_mm_bridge_m0_translator.vhd"           
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_trk_mm_bridge_s0_agent_rsp_fifo.vho"       
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_004.vho"                            
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/sequencer_scc_siii_phase_decode.v"                                                                                   
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux_001.vho"                         
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_rsp_mux_002.vho"                           
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_mux_001.vho"                           
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_dm_decoder.v"                                                                                             
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_data_decoder.v"                                                                                           
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_write_decoder.v"                                                                                          
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_mux.vho"                               
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_007.vho"                            
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_cmd_demux_003.vho"                         
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_ac_ROM_reg.v"                                                                                             
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_phy_mgr_inst_avl_translator.vhd" 
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_pattern_fifo.v"                                                                                           
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_inst_ROM_reg.v"                                                                                           
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_sequencer_reg_file_inst_avl_translator.vhd"
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_ram_csr.v"                                                                                                
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/sequencer_data_mgr.sv"                                                                                               
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/sequencer_scc_mgr.sv"                                                                                                
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_di_buffer_wrap.v"                                                                                         
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/rw_manager_datamux.v"                                                                                                
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/sequencer_scc_acv_wrapper.sv"                                                                                        
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_burst_uncompressor.sv"                                                                        
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_master_agent.sv"                                                                              
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_traffic_limiter.sv"                                                                           
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_slave_agent.sv"                                                                               
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/afi_mux_ddr3_ddrx.v"                                                                                                 
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_p0.vho"                                                         
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_p0_sim_delay.vhd"                                               
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/read_fifo_hard_abstract_ddrx_lpddrx.sv"                                                                              
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_p0_altdqdqs.vhd"                                                
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/altdq_dqs2_stratixv.sv"                                                                                              
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/altdq_dqs2_abstract.sv"                                                                                              
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/altdq_dqs2_cal_delays.sv"                                                                                            
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0.vho"                                                       
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_sim_delay.vhd"                                             
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_reset_controller.v"                                                                                  
  vlogan +v2k                                                "$QSYS_SIMDIR/submodules/synopsys/altera_reset_synchronizer.v"                                                                                
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_mm_interconnect_0.vhd"                                              
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_d0.vhd"                                                             
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0_if0.vhd"                                                            
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/alt_mem_if_ddr3_mem_model_top_ddr3_mem_if_dm_pins_en_mem_if_dqsn_en.sv"                                              
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/alt_mem_if_common_ddr_mem_model_ddr3_mem_if_dm_pins_en_mem_if_dqsn_en.sv"                                            
  vlogan +v2k -sverilog                                      "$QSYS_SIMDIR/submodules/altera_mem_if_checker_enable_vcdplus.sv"                                                                             
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/mem_if_ddr3_emif_0_example_design_example_sim_e0.vhd"                                                                
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.vhd"                                                                                      
  vhdlan -xlrm                                               "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.vhd"                                                                                      
  vhdlan -xlrm                                               "$QSYS_SIMDIR/mem_if_ddr3_emif_0_example_design_example_sim.vhd"                                                                              
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi

