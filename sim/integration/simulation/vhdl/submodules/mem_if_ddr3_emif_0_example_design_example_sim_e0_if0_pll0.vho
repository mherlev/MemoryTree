--IP Functional Simulation Model
--VERSION_BEGIN 14.0 cbx_mgl 2014:06:05:10:17:12:SJ cbx_simgen 2014:06:05:09:45:41:SJ  VERSION_END


-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY altera_lnsim;
 USE altera_lnsim.altera_lnsim_components.all;

--synthesis_resources = generic_pll 8 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0 IS 
	 PORT 
	 ( 
		 afi_clk	:	OUT  STD_LOGIC;
		 afi_half_clk	:	OUT  STD_LOGIC;
		 global_reset_n	:	IN  STD_LOGIC;
		 pll_addr_cmd_clk	:	OUT  STD_LOGIC;
		 pll_avl_clk	:	OUT  STD_LOGIC;
		 pll_c2p_write_clk	:	OUT  STD_LOGIC;
		 pll_config_clk	:	OUT  STD_LOGIC;
		 pll_hr_clk	:	OUT  STD_LOGIC;
		 pll_locked	:	OUT  STD_LOGIC;
		 pll_mem_clk	:	OUT  STD_LOGIC;
		 pll_p2c_read_clk	:	OUT  STD_LOGIC;
		 pll_ref_clk	:	IN  STD_LOGIC;
		 pll_write_clk	:	OUT  STD_LOGIC;
		 pll_write_clk_pre_phy_clk	:	OUT  STD_LOGIC
	 ); 
 END mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0;

 ARCHITECTURE RTL OF mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll10_66_outclk	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll10_66_rst	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_locked	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_outclk	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_rst	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll2_54_outclk	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll2_54_rst	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll3_56_outclk	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll3_56_rst	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll6_58_outclk	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll6_58_rst	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll7_60_outclk	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll7_60_rst	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll8_62_outclk	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll8_62_rst	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll9_64_outclk	:	STD_LOGIC;
	 SIGNAL  wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll9_64_rst	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_global_reset_n1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_gnd :	STD_LOGIC;
 BEGIN

	wire_w_lg_global_reset_n1w(0) <= NOT global_reset_n;
	afi_clk <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_outclk;
	afi_half_clk <= s_wire_gnd;
	pll_addr_cmd_clk <= '0';
	pll_avl_clk <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll6_58_outclk;
	pll_c2p_write_clk <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll10_66_outclk;
	pll_config_clk <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll7_60_outclk;
	pll_hr_clk <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll8_62_outclk;
	pll_locked <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_locked;
	pll_mem_clk <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll2_54_outclk;
	pll_p2c_read_clk <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll9_64_outclk;
	pll_write_clk <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll3_56_outclk;
	pll_write_clk_pre_phy_clk <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll3_56_outclk;
	s_wire_gnd <= '0';
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll10_66_rst <= wire_w_lg_global_reset_n1w(0);
	mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll10_66 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "2500 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "100.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk,
		outclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll10_66_outclk,
		refclk => pll_ref_clk,
		rst => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll10_66_rst
	  );
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_rst <= wire_w_lg_global_reset_n1w(0);
	mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "5000 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "100.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk,
		fboutclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk,
		locked => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_locked,
		outclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_outclk,
		refclk => pll_ref_clk,
		rst => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_rst
	  );
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll2_54_rst <= wire_w_lg_global_reset_n1w(0);
	mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll2_54 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "1250 ps",
		phase_shift => "156 ps",
		reference_clock_frequency => "100.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk,
		outclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll2_54_outclk,
		refclk => pll_ref_clk,
		rst => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll2_54_rst
	  );
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll3_56_rst <= wire_w_lg_global_reset_n1w(0);
	mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll3_56 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "1250 ps",
		phase_shift => "469 ps",
		reference_clock_frequency => "100.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk,
		outclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll3_56_outclk,
		refclk => pll_ref_clk,
		rst => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll3_56_rst
	  );
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll6_58_rst <= wire_w_lg_global_reset_n1w(0);
	mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll6_58 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "10000 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "100.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk,
		outclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll6_58_outclk,
		refclk => pll_ref_clk,
		rst => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll6_58_rst
	  );
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll7_60_rst <= wire_w_lg_global_reset_n1w(0);
	mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll7_60 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "40000 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "100.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk,
		outclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll7_60_outclk,
		refclk => pll_ref_clk,
		rst => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll7_60_rst
	  );
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll8_62_rst <= wire_w_lg_global_reset_n1w(0);
	mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll8_62 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "2500 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "100.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk,
		outclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll8_62_outclk,
		refclk => pll_ref_clk,
		rst => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll8_62_rst
	  );
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll9_64_rst <= wire_w_lg_global_reset_n1w(0);
	mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll9_64 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "2500 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "100.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll1_52_fboutclk,
		outclk => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll9_64_outclk,
		refclk => pll_ref_clk,
		rst => wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_generic_pll_pll9_64_rst
	  );

 END RTL; --mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0
--synopsys translate_on
--VALID FILE
