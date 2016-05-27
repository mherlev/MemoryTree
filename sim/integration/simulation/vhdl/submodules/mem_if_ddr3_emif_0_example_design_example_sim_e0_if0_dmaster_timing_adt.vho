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
 USE work.all;


--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_timing_adt IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 in_data	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 in_valid	:	IN  STD_LOGIC;
		 out_data	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 out_ready	:	IN  STD_LOGIC;
		 out_valid	:	OUT  STD_LOGIC;
		 reset_n	:	IN  STD_LOGIC
	 ); 
 END mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_timing_adt;

 ARCHITECTURE RTL OF mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_timing_adt IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
 BEGIN

	out_data <= ( in_data(7 DOWNTO 0));
	out_valid <= in_valid;

 END RTL; --mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_dmaster_timing_adt
--synopsys translate_on
--VALID FILE
