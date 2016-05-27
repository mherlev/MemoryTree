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

--synthesis_resources = mux21 8 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (107 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (107 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router;

 ARCHITECTURE RTL OF mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_21m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_22m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_33m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_34m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_23m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_24m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_35m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_36m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range164w344w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w278w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range167w342w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_0_303_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_1_324_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_2_345_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range164w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range167w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range164w344w(0) <= wire_w_sink_data_range164w(0) AND wire_w_lg_w_sink_data_range167w342w(0);
	wire_w1w(0) <= NOT s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_0_303_dataout;
	wire_w278w(0) <= NOT s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_2_345_dataout;
	wire_w_lg_w_sink_data_range167w342w(0) <= NOT wire_w_sink_data_range167w(0);
	s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_0_303_dataout <= ((((((NOT sink_data(50)) AND (NOT sink_data(51))) AND sink_data(52)) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND wire_w_lg_w_sink_data_range167w342w(0));
	s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_1_324_dataout <= wire_w_lg_w_sink_data_range164w344w(0);
	s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_2_345_dataout <= ((((((((((((NOT sink_data(44)) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND (NOT sink_data(48))) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND sink_data(52)) AND (NOT sink_data(53))) AND sink_data(54)) AND sink_data(55));
	sink_ready <= src_ready;
	src_channel <= ( "0" & "0" & "0" & "0" & "0" & s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_2_345_dataout & wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_33m_dataout & wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_34m_dataout);
	src_data <= ( sink_data(107 DOWNTO 95) & wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_35m_dataout & wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_36m_dataout & wire_w278w & sink_data(91 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range164w(0) <= sink_data(54);
	wire_w_sink_data_range167w(0) <= sink_data(55);
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_21m_dataout <= s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_0_303_dataout AND NOT(s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_1_324_dataout);
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_22m_dataout <= wire_w1w(0) OR s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_1_324_dataout;
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_33m_dataout <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_21m_dataout AND NOT(s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_2_345_dataout);
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_34m_dataout <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_22m_dataout AND NOT(s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_2_345_dataout);
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_23m_dataout <= wire_w1w(0) OR s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_1_324_dataout;
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_24m_dataout <= wire_w1w(0) OR s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_1_324_dataout;
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_35m_dataout <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_23m_dataout OR s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_2_345_dataout;
	wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_36m_dataout <= wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_data_24m_dataout OR s_wire_mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router_src_channel_2_345_dataout;

 END RTL; --mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_s0_mm_interconnect_0_router
--synopsys translate_on
--VALID FILE
