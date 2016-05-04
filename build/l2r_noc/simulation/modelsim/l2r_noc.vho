-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "05/04/2016 14:22:55"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	l2r_noc IS
    PORT (
	\leafs[0].payload\ : IN std_logic_vector(31 DOWNTO 0);
	\leafs[0].tag\ : IN std_logic_vector(1 DOWNTO 0);
	\leafs[1].payload\ : IN std_logic_vector(31 DOWNTO 0);
	\leafs[1].tag\ : IN std_logic_vector(1 DOWNTO 0);
	\leafs[2].payload\ : IN std_logic_vector(31 DOWNTO 0);
	\leafs[2].tag\ : IN std_logic_vector(1 DOWNTO 0);
	\leafs[3].payload\ : IN std_logic_vector(31 DOWNTO 0);
	\leafs[3].tag\ : IN std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	\root.payload\ : OUT std_logic_vector(31 DOWNTO 0);
	\root.tag\ : OUT std_logic_vector(1 DOWNTO 0)
	);
END l2r_noc;

-- Design Ports Information
-- root.payload[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[1]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[7]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[8]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[9]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[10]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[12]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[13]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[14]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[15]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[16]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[17]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[18]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[19]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[20]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[21]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[22]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[23]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[24]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[25]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[26]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[27]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[28]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[29]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[30]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[31]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.tag[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.tag[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].tag[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].tag[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].tag[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].tag[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[7]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[8]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[8]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[9]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[10]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[11]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[11]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[12]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[12]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[12]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[13]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[13]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[14]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[14]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[14]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[15]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[15]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[15]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[16]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[16]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[16]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[16]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[17]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[17]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[17]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[17]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[18]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[18]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[18]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[18]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[19]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[19]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[19]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[19]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[20]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[20]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[20]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[20]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[21]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[21]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[21]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[21]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[22]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[22]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[22]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[22]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[23]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[23]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[23]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[23]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[24]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[24]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[24]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[24]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[25]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[25]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[25]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[25]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[26]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[26]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[26]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[26]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[27]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[27]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[27]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[27]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[28]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[28]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[28]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[28]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[29]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[29]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[29]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[29]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[30]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[30]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[30]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[30]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[31]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[31]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[31]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[31]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].tag[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].tag[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].tag[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].tag[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF l2r_noc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_leafs[0].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_leafs[0].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ww_leafs[1].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_leafs[1].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ww_leafs[2].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_leafs[2].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ww_leafs[3].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_leafs[3].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \ww_root.payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_root.tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \leafs[2].tag[1]~input_o\ : std_logic;
SIGNAL \leafs[3].tag[1]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[0]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[0]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[0]~input_o\ : std_logic;
SIGNAL \leafs[1].tag[1]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[0]~input_o\ : std_logic;
SIGNAL \leafs[0].tag[1]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[1]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[1]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[1]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[1]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[2]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[2]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[2]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[2]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[3]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[3]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[3]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[3]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[4]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[4]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[4]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[4]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[5]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[5]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[5]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[5]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[6]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[6]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[6]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[6]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[7]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[7]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[7]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[7]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[8]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[8]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[8]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[8]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[9]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[9]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[9]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[9]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[10]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[10]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[10]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[10]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[11]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[11]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[11]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[11]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[12]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[12]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[12]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[12]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[13]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[13]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[13]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[13]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[14]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[14]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[14]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[14]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[15]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[15]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[15]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[15]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[16]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[16]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[16]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[16]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[17]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[17]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[17]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[17]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[18]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[18]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[18]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[18]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[19]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[19]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[19]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[19]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[20]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[20]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[20]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[20]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[21]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[21]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[21]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[21]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[22]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[22]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[22]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[22]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[23]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[23]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[23]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[23]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[24]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[24]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[24]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[24]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[25]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[25]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[25]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[25]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[26]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[26]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[26]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[26]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[27]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[27]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[27]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[27]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[28]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[28]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[28]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[28]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[29]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[29]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[29]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[29]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[30]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[30]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[30]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[30]~input_o\ : std_logic;
SIGNAL \leafs[3].payload[31]~input_o\ : std_logic;
SIGNAL \leafs[2].payload[31]~input_o\ : std_logic;
SIGNAL \leafs[0].payload[31]~input_o\ : std_logic;
SIGNAL \leafs[1].payload[31]~input_o\ : std_logic;
SIGNAL \leafs[2].tag[0]~input_o\ : std_logic;
SIGNAL \leafs[3].tag[0]~input_o\ : std_logic;
SIGNAL \leafs[0].tag[0]~input_o\ : std_logic;
SIGNAL \leafs[1].tag[0]~input_o\ : std_logic;
SIGNAL \routers:1:levels:1:router_inst|o_arr[1].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \routers:1:levels:1:router_inst|o_arr[1].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \routers:0:levels:0:router_inst|output.payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \routers:1:levels:0:router_inst|output.payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \routers:1:levels:0:router_inst|o_arr[1].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \routers:0:levels:0:router_inst|output.tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \routers:1:levels:1:router_inst|output.payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \routers:1:levels:1:router_inst|output.tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \routers:1:levels:0:router_inst|output.tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \routers:0:levels:0:router_inst|o_arr[1].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \routers:0:levels:0:router_inst|o_arr[1].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \routers:1:levels:0:router_inst|o_arr[1].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_leafs[3].tag[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].tag[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].tag[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].tag[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].tag[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[3].payload[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].tag[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[2].payload[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].tag[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[1].payload[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].tag[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_leafs[0].payload[0]~input_o\ : std_logic;
SIGNAL \routers:1:levels:1:router_inst|ALT_INV_output.tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \routers:1:levels:0:router_inst|ALT_INV_output.tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \routers:1:levels:1:router_inst|ALT_INV_output.payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \routers:1:levels:0:router_inst|ALT_INV_output.payload\ : std_logic_vector(31 DOWNTO 0);

BEGIN

\ww_leafs[0].payload\ <= \leafs[0].payload\;
\ww_leafs[0].tag\ <= \leafs[0].tag\;
\ww_leafs[1].payload\ <= \leafs[1].payload\;
\ww_leafs[1].tag\ <= \leafs[1].tag\;
\ww_leafs[2].payload\ <= \leafs[2].payload\;
\ww_leafs[2].tag\ <= \leafs[2].tag\;
\ww_leafs[3].payload\ <= \leafs[3].payload\;
\ww_leafs[3].tag\ <= \leafs[3].tag\;
ww_clk <= clk;
\root.payload\ <= \ww_root.payload\;
\root.tag\ <= \ww_root.tag\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_leafs[3].tag[0]~input_o\ <= NOT \leafs[3].tag[0]~input_o\;
\ALT_INV_leafs[2].tag[0]~input_o\ <= NOT \leafs[2].tag[0]~input_o\;
\ALT_INV_leafs[1].tag[0]~input_o\ <= NOT \leafs[1].tag[0]~input_o\;
\ALT_INV_leafs[0].tag[0]~input_o\ <= NOT \leafs[0].tag[0]~input_o\;
\ALT_INV_leafs[3].payload[31]~input_o\ <= NOT \leafs[3].payload[31]~input_o\;
\ALT_INV_leafs[2].payload[31]~input_o\ <= NOT \leafs[2].payload[31]~input_o\;
\ALT_INV_leafs[1].payload[31]~input_o\ <= NOT \leafs[1].payload[31]~input_o\;
\ALT_INV_leafs[0].payload[31]~input_o\ <= NOT \leafs[0].payload[31]~input_o\;
\ALT_INV_leafs[3].payload[30]~input_o\ <= NOT \leafs[3].payload[30]~input_o\;
\ALT_INV_leafs[2].payload[30]~input_o\ <= NOT \leafs[2].payload[30]~input_o\;
\ALT_INV_leafs[1].payload[30]~input_o\ <= NOT \leafs[1].payload[30]~input_o\;
\ALT_INV_leafs[0].payload[30]~input_o\ <= NOT \leafs[0].payload[30]~input_o\;
\ALT_INV_leafs[3].payload[29]~input_o\ <= NOT \leafs[3].payload[29]~input_o\;
\ALT_INV_leafs[2].payload[29]~input_o\ <= NOT \leafs[2].payload[29]~input_o\;
\ALT_INV_leafs[1].payload[29]~input_o\ <= NOT \leafs[1].payload[29]~input_o\;
\ALT_INV_leafs[0].payload[29]~input_o\ <= NOT \leafs[0].payload[29]~input_o\;
\ALT_INV_leafs[3].payload[28]~input_o\ <= NOT \leafs[3].payload[28]~input_o\;
\ALT_INV_leafs[2].payload[28]~input_o\ <= NOT \leafs[2].payload[28]~input_o\;
\ALT_INV_leafs[1].payload[28]~input_o\ <= NOT \leafs[1].payload[28]~input_o\;
\ALT_INV_leafs[0].payload[28]~input_o\ <= NOT \leafs[0].payload[28]~input_o\;
\ALT_INV_leafs[3].payload[27]~input_o\ <= NOT \leafs[3].payload[27]~input_o\;
\ALT_INV_leafs[2].payload[27]~input_o\ <= NOT \leafs[2].payload[27]~input_o\;
\ALT_INV_leafs[1].payload[27]~input_o\ <= NOT \leafs[1].payload[27]~input_o\;
\ALT_INV_leafs[0].payload[27]~input_o\ <= NOT \leafs[0].payload[27]~input_o\;
\ALT_INV_leafs[3].payload[26]~input_o\ <= NOT \leafs[3].payload[26]~input_o\;
\ALT_INV_leafs[2].payload[26]~input_o\ <= NOT \leafs[2].payload[26]~input_o\;
\ALT_INV_leafs[1].payload[26]~input_o\ <= NOT \leafs[1].payload[26]~input_o\;
\ALT_INV_leafs[0].payload[26]~input_o\ <= NOT \leafs[0].payload[26]~input_o\;
\ALT_INV_leafs[3].payload[25]~input_o\ <= NOT \leafs[3].payload[25]~input_o\;
\ALT_INV_leafs[2].payload[25]~input_o\ <= NOT \leafs[2].payload[25]~input_o\;
\ALT_INV_leafs[1].payload[25]~input_o\ <= NOT \leafs[1].payload[25]~input_o\;
\ALT_INV_leafs[0].payload[25]~input_o\ <= NOT \leafs[0].payload[25]~input_o\;
\ALT_INV_leafs[3].payload[24]~input_o\ <= NOT \leafs[3].payload[24]~input_o\;
\ALT_INV_leafs[2].payload[24]~input_o\ <= NOT \leafs[2].payload[24]~input_o\;
\ALT_INV_leafs[1].payload[24]~input_o\ <= NOT \leafs[1].payload[24]~input_o\;
\ALT_INV_leafs[0].payload[24]~input_o\ <= NOT \leafs[0].payload[24]~input_o\;
\ALT_INV_leafs[3].payload[23]~input_o\ <= NOT \leafs[3].payload[23]~input_o\;
\ALT_INV_leafs[2].payload[23]~input_o\ <= NOT \leafs[2].payload[23]~input_o\;
\ALT_INV_leafs[1].payload[23]~input_o\ <= NOT \leafs[1].payload[23]~input_o\;
\ALT_INV_leafs[0].payload[23]~input_o\ <= NOT \leafs[0].payload[23]~input_o\;
\ALT_INV_leafs[3].payload[22]~input_o\ <= NOT \leafs[3].payload[22]~input_o\;
\ALT_INV_leafs[2].payload[22]~input_o\ <= NOT \leafs[2].payload[22]~input_o\;
\ALT_INV_leafs[1].payload[22]~input_o\ <= NOT \leafs[1].payload[22]~input_o\;
\ALT_INV_leafs[0].payload[22]~input_o\ <= NOT \leafs[0].payload[22]~input_o\;
\ALT_INV_leafs[3].payload[21]~input_o\ <= NOT \leafs[3].payload[21]~input_o\;
\ALT_INV_leafs[2].payload[21]~input_o\ <= NOT \leafs[2].payload[21]~input_o\;
\ALT_INV_leafs[1].payload[21]~input_o\ <= NOT \leafs[1].payload[21]~input_o\;
\ALT_INV_leafs[0].payload[21]~input_o\ <= NOT \leafs[0].payload[21]~input_o\;
\ALT_INV_leafs[3].payload[20]~input_o\ <= NOT \leafs[3].payload[20]~input_o\;
\ALT_INV_leafs[2].payload[20]~input_o\ <= NOT \leafs[2].payload[20]~input_o\;
\ALT_INV_leafs[1].payload[20]~input_o\ <= NOT \leafs[1].payload[20]~input_o\;
\ALT_INV_leafs[0].payload[20]~input_o\ <= NOT \leafs[0].payload[20]~input_o\;
\ALT_INV_leafs[3].payload[19]~input_o\ <= NOT \leafs[3].payload[19]~input_o\;
\ALT_INV_leafs[2].payload[19]~input_o\ <= NOT \leafs[2].payload[19]~input_o\;
\ALT_INV_leafs[1].payload[19]~input_o\ <= NOT \leafs[1].payload[19]~input_o\;
\ALT_INV_leafs[0].payload[19]~input_o\ <= NOT \leafs[0].payload[19]~input_o\;
\ALT_INV_leafs[3].payload[18]~input_o\ <= NOT \leafs[3].payload[18]~input_o\;
\ALT_INV_leafs[2].payload[18]~input_o\ <= NOT \leafs[2].payload[18]~input_o\;
\ALT_INV_leafs[1].payload[18]~input_o\ <= NOT \leafs[1].payload[18]~input_o\;
\ALT_INV_leafs[0].payload[18]~input_o\ <= NOT \leafs[0].payload[18]~input_o\;
\ALT_INV_leafs[3].payload[17]~input_o\ <= NOT \leafs[3].payload[17]~input_o\;
\ALT_INV_leafs[2].payload[17]~input_o\ <= NOT \leafs[2].payload[17]~input_o\;
\ALT_INV_leafs[1].payload[17]~input_o\ <= NOT \leafs[1].payload[17]~input_o\;
\ALT_INV_leafs[0].payload[17]~input_o\ <= NOT \leafs[0].payload[17]~input_o\;
\ALT_INV_leafs[3].payload[16]~input_o\ <= NOT \leafs[3].payload[16]~input_o\;
\ALT_INV_leafs[2].payload[16]~input_o\ <= NOT \leafs[2].payload[16]~input_o\;
\ALT_INV_leafs[1].payload[16]~input_o\ <= NOT \leafs[1].payload[16]~input_o\;
\ALT_INV_leafs[0].payload[16]~input_o\ <= NOT \leafs[0].payload[16]~input_o\;
\ALT_INV_leafs[3].payload[15]~input_o\ <= NOT \leafs[3].payload[15]~input_o\;
\ALT_INV_leafs[2].payload[15]~input_o\ <= NOT \leafs[2].payload[15]~input_o\;
\ALT_INV_leafs[1].payload[15]~input_o\ <= NOT \leafs[1].payload[15]~input_o\;
\ALT_INV_leafs[0].payload[15]~input_o\ <= NOT \leafs[0].payload[15]~input_o\;
\ALT_INV_leafs[3].payload[14]~input_o\ <= NOT \leafs[3].payload[14]~input_o\;
\ALT_INV_leafs[2].payload[14]~input_o\ <= NOT \leafs[2].payload[14]~input_o\;
\ALT_INV_leafs[1].payload[14]~input_o\ <= NOT \leafs[1].payload[14]~input_o\;
\ALT_INV_leafs[0].payload[14]~input_o\ <= NOT \leafs[0].payload[14]~input_o\;
\ALT_INV_leafs[3].payload[13]~input_o\ <= NOT \leafs[3].payload[13]~input_o\;
\ALT_INV_leafs[2].payload[13]~input_o\ <= NOT \leafs[2].payload[13]~input_o\;
\ALT_INV_leafs[1].payload[13]~input_o\ <= NOT \leafs[1].payload[13]~input_o\;
\ALT_INV_leafs[0].payload[13]~input_o\ <= NOT \leafs[0].payload[13]~input_o\;
\ALT_INV_leafs[3].payload[12]~input_o\ <= NOT \leafs[3].payload[12]~input_o\;
\ALT_INV_leafs[2].payload[12]~input_o\ <= NOT \leafs[2].payload[12]~input_o\;
\ALT_INV_leafs[1].payload[12]~input_o\ <= NOT \leafs[1].payload[12]~input_o\;
\ALT_INV_leafs[0].payload[12]~input_o\ <= NOT \leafs[0].payload[12]~input_o\;
\ALT_INV_leafs[3].payload[11]~input_o\ <= NOT \leafs[3].payload[11]~input_o\;
\ALT_INV_leafs[2].payload[11]~input_o\ <= NOT \leafs[2].payload[11]~input_o\;
\ALT_INV_leafs[1].payload[11]~input_o\ <= NOT \leafs[1].payload[11]~input_o\;
\ALT_INV_leafs[0].payload[11]~input_o\ <= NOT \leafs[0].payload[11]~input_o\;
\ALT_INV_leafs[3].payload[10]~input_o\ <= NOT \leafs[3].payload[10]~input_o\;
\ALT_INV_leafs[2].payload[10]~input_o\ <= NOT \leafs[2].payload[10]~input_o\;
\ALT_INV_leafs[1].payload[10]~input_o\ <= NOT \leafs[1].payload[10]~input_o\;
\ALT_INV_leafs[0].payload[10]~input_o\ <= NOT \leafs[0].payload[10]~input_o\;
\ALT_INV_leafs[3].payload[9]~input_o\ <= NOT \leafs[3].payload[9]~input_o\;
\ALT_INV_leafs[2].payload[9]~input_o\ <= NOT \leafs[2].payload[9]~input_o\;
\ALT_INV_leafs[1].payload[9]~input_o\ <= NOT \leafs[1].payload[9]~input_o\;
\ALT_INV_leafs[0].payload[9]~input_o\ <= NOT \leafs[0].payload[9]~input_o\;
\ALT_INV_leafs[3].payload[8]~input_o\ <= NOT \leafs[3].payload[8]~input_o\;
\ALT_INV_leafs[2].payload[8]~input_o\ <= NOT \leafs[2].payload[8]~input_o\;
\ALT_INV_leafs[1].payload[8]~input_o\ <= NOT \leafs[1].payload[8]~input_o\;
\ALT_INV_leafs[0].payload[8]~input_o\ <= NOT \leafs[0].payload[8]~input_o\;
\ALT_INV_leafs[3].payload[7]~input_o\ <= NOT \leafs[3].payload[7]~input_o\;
\ALT_INV_leafs[2].payload[7]~input_o\ <= NOT \leafs[2].payload[7]~input_o\;
\ALT_INV_leafs[1].payload[7]~input_o\ <= NOT \leafs[1].payload[7]~input_o\;
\ALT_INV_leafs[0].payload[7]~input_o\ <= NOT \leafs[0].payload[7]~input_o\;
\ALT_INV_leafs[3].payload[6]~input_o\ <= NOT \leafs[3].payload[6]~input_o\;
\ALT_INV_leafs[2].payload[6]~input_o\ <= NOT \leafs[2].payload[6]~input_o\;
\ALT_INV_leafs[1].payload[6]~input_o\ <= NOT \leafs[1].payload[6]~input_o\;
\ALT_INV_leafs[0].payload[6]~input_o\ <= NOT \leafs[0].payload[6]~input_o\;
\ALT_INV_leafs[3].payload[5]~input_o\ <= NOT \leafs[3].payload[5]~input_o\;
\ALT_INV_leafs[2].payload[5]~input_o\ <= NOT \leafs[2].payload[5]~input_o\;
\ALT_INV_leafs[1].payload[5]~input_o\ <= NOT \leafs[1].payload[5]~input_o\;
\ALT_INV_leafs[0].payload[5]~input_o\ <= NOT \leafs[0].payload[5]~input_o\;
\ALT_INV_leafs[3].payload[4]~input_o\ <= NOT \leafs[3].payload[4]~input_o\;
\ALT_INV_leafs[2].payload[4]~input_o\ <= NOT \leafs[2].payload[4]~input_o\;
\ALT_INV_leafs[1].payload[4]~input_o\ <= NOT \leafs[1].payload[4]~input_o\;
\ALT_INV_leafs[0].payload[4]~input_o\ <= NOT \leafs[0].payload[4]~input_o\;
\ALT_INV_leafs[3].payload[3]~input_o\ <= NOT \leafs[3].payload[3]~input_o\;
\ALT_INV_leafs[2].payload[3]~input_o\ <= NOT \leafs[2].payload[3]~input_o\;
\ALT_INV_leafs[1].payload[3]~input_o\ <= NOT \leafs[1].payload[3]~input_o\;
\ALT_INV_leafs[0].payload[3]~input_o\ <= NOT \leafs[0].payload[3]~input_o\;
\ALT_INV_leafs[3].payload[2]~input_o\ <= NOT \leafs[3].payload[2]~input_o\;
\ALT_INV_leafs[2].payload[2]~input_o\ <= NOT \leafs[2].payload[2]~input_o\;
\ALT_INV_leafs[1].payload[2]~input_o\ <= NOT \leafs[1].payload[2]~input_o\;
\ALT_INV_leafs[0].payload[2]~input_o\ <= NOT \leafs[0].payload[2]~input_o\;
\ALT_INV_leafs[3].payload[1]~input_o\ <= NOT \leafs[3].payload[1]~input_o\;
\ALT_INV_leafs[2].payload[1]~input_o\ <= NOT \leafs[2].payload[1]~input_o\;
\ALT_INV_leafs[1].payload[1]~input_o\ <= NOT \leafs[1].payload[1]~input_o\;
\ALT_INV_leafs[0].payload[1]~input_o\ <= NOT \leafs[0].payload[1]~input_o\;
\ALT_INV_leafs[3].tag[1]~input_o\ <= NOT \leafs[3].tag[1]~input_o\;
\ALT_INV_leafs[3].payload[0]~input_o\ <= NOT \leafs[3].payload[0]~input_o\;
\ALT_INV_leafs[2].tag[1]~input_o\ <= NOT \leafs[2].tag[1]~input_o\;
\ALT_INV_leafs[2].payload[0]~input_o\ <= NOT \leafs[2].payload[0]~input_o\;
\ALT_INV_leafs[1].tag[1]~input_o\ <= NOT \leafs[1].tag[1]~input_o\;
\ALT_INV_leafs[1].payload[0]~input_o\ <= NOT \leafs[1].payload[0]~input_o\;
\ALT_INV_leafs[0].tag[1]~input_o\ <= NOT \leafs[0].tag[1]~input_o\;
\ALT_INV_leafs[0].payload[0]~input_o\ <= NOT \leafs[0].payload[0]~input_o\;
\routers:1:levels:1:router_inst|ALT_INV_output.tag\(0) <= NOT \routers:1:levels:1:router_inst|output.tag\(0);
\routers:1:levels:0:router_inst|ALT_INV_output.tag\(0) <= NOT \routers:1:levels:0:router_inst|output.tag\(0);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(31) <= NOT \routers:1:levels:1:router_inst|output.payload\(31);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(31) <= NOT \routers:1:levels:0:router_inst|output.payload\(31);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(30) <= NOT \routers:1:levels:1:router_inst|output.payload\(30);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(30) <= NOT \routers:1:levels:0:router_inst|output.payload\(30);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(29) <= NOT \routers:1:levels:1:router_inst|output.payload\(29);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(29) <= NOT \routers:1:levels:0:router_inst|output.payload\(29);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(28) <= NOT \routers:1:levels:1:router_inst|output.payload\(28);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(28) <= NOT \routers:1:levels:0:router_inst|output.payload\(28);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(27) <= NOT \routers:1:levels:1:router_inst|output.payload\(27);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(27) <= NOT \routers:1:levels:0:router_inst|output.payload\(27);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(26) <= NOT \routers:1:levels:1:router_inst|output.payload\(26);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(26) <= NOT \routers:1:levels:0:router_inst|output.payload\(26);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(25) <= NOT \routers:1:levels:1:router_inst|output.payload\(25);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(25) <= NOT \routers:1:levels:0:router_inst|output.payload\(25);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(24) <= NOT \routers:1:levels:1:router_inst|output.payload\(24);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(24) <= NOT \routers:1:levels:0:router_inst|output.payload\(24);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(23) <= NOT \routers:1:levels:1:router_inst|output.payload\(23);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(23) <= NOT \routers:1:levels:0:router_inst|output.payload\(23);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(22) <= NOT \routers:1:levels:1:router_inst|output.payload\(22);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(22) <= NOT \routers:1:levels:0:router_inst|output.payload\(22);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(21) <= NOT \routers:1:levels:1:router_inst|output.payload\(21);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(21) <= NOT \routers:1:levels:0:router_inst|output.payload\(21);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(20) <= NOT \routers:1:levels:1:router_inst|output.payload\(20);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(20) <= NOT \routers:1:levels:0:router_inst|output.payload\(20);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(19) <= NOT \routers:1:levels:1:router_inst|output.payload\(19);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(19) <= NOT \routers:1:levels:0:router_inst|output.payload\(19);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(18) <= NOT \routers:1:levels:1:router_inst|output.payload\(18);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(18) <= NOT \routers:1:levels:0:router_inst|output.payload\(18);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(17) <= NOT \routers:1:levels:1:router_inst|output.payload\(17);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(17) <= NOT \routers:1:levels:0:router_inst|output.payload\(17);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(16) <= NOT \routers:1:levels:1:router_inst|output.payload\(16);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(16) <= NOT \routers:1:levels:0:router_inst|output.payload\(16);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(15) <= NOT \routers:1:levels:1:router_inst|output.payload\(15);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(15) <= NOT \routers:1:levels:0:router_inst|output.payload\(15);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(14) <= NOT \routers:1:levels:1:router_inst|output.payload\(14);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(14) <= NOT \routers:1:levels:0:router_inst|output.payload\(14);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(13) <= NOT \routers:1:levels:1:router_inst|output.payload\(13);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(13) <= NOT \routers:1:levels:0:router_inst|output.payload\(13);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(12) <= NOT \routers:1:levels:1:router_inst|output.payload\(12);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(12) <= NOT \routers:1:levels:0:router_inst|output.payload\(12);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(11) <= NOT \routers:1:levels:1:router_inst|output.payload\(11);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(11) <= NOT \routers:1:levels:0:router_inst|output.payload\(11);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(10) <= NOT \routers:1:levels:1:router_inst|output.payload\(10);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(10) <= NOT \routers:1:levels:0:router_inst|output.payload\(10);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(9) <= NOT \routers:1:levels:1:router_inst|output.payload\(9);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(9) <= NOT \routers:1:levels:0:router_inst|output.payload\(9);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(8) <= NOT \routers:1:levels:1:router_inst|output.payload\(8);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(8) <= NOT \routers:1:levels:0:router_inst|output.payload\(8);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(7) <= NOT \routers:1:levels:1:router_inst|output.payload\(7);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(7) <= NOT \routers:1:levels:0:router_inst|output.payload\(7);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(6) <= NOT \routers:1:levels:1:router_inst|output.payload\(6);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(6) <= NOT \routers:1:levels:0:router_inst|output.payload\(6);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(5) <= NOT \routers:1:levels:1:router_inst|output.payload\(5);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(5) <= NOT \routers:1:levels:0:router_inst|output.payload\(5);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(4) <= NOT \routers:1:levels:1:router_inst|output.payload\(4);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(4) <= NOT \routers:1:levels:0:router_inst|output.payload\(4);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(3) <= NOT \routers:1:levels:1:router_inst|output.payload\(3);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(3) <= NOT \routers:1:levels:0:router_inst|output.payload\(3);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(2) <= NOT \routers:1:levels:1:router_inst|output.payload\(2);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(2) <= NOT \routers:1:levels:0:router_inst|output.payload\(2);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(1) <= NOT \routers:1:levels:1:router_inst|output.payload\(1);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(1) <= NOT \routers:1:levels:0:router_inst|output.payload\(1);
\routers:1:levels:1:router_inst|ALT_INV_output.tag\(1) <= NOT \routers:1:levels:1:router_inst|output.tag\(1);
\routers:1:levels:1:router_inst|ALT_INV_output.payload\(0) <= NOT \routers:1:levels:1:router_inst|output.payload\(0);
\routers:1:levels:0:router_inst|ALT_INV_output.tag\(1) <= NOT \routers:1:levels:0:router_inst|output.tag\(1);
\routers:1:levels:0:router_inst|ALT_INV_output.payload\(0) <= NOT \routers:1:levels:0:router_inst|output.payload\(0);

-- Location: IOOBUF_X6_Y0_N53
\root.payload[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(0),
	devoe => ww_devoe,
	o => \ww_root.payload\(0));

-- Location: IOOBUF_X68_Y81_N19
\root.payload[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(1),
	devoe => ww_devoe,
	o => \ww_root.payload\(1));

-- Location: IOOBUF_X62_Y81_N36
\root.payload[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(2),
	devoe => ww_devoe,
	o => \ww_root.payload\(2));

-- Location: IOOBUF_X70_Y81_N53
\root.payload[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(3),
	devoe => ww_devoe,
	o => \ww_root.payload\(3));

-- Location: IOOBUF_X68_Y81_N2
\root.payload[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(4),
	devoe => ww_devoe,
	o => \ww_root.payload\(4));

-- Location: IOOBUF_X60_Y81_N19
\root.payload[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(5),
	devoe => ww_devoe,
	o => \ww_root.payload\(5));

-- Location: IOOBUF_X56_Y81_N19
\root.payload[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(6),
	devoe => ww_devoe,
	o => \ww_root.payload\(6));

-- Location: IOOBUF_X68_Y81_N53
\root.payload[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(7),
	devoe => ww_devoe,
	o => \ww_root.payload\(7));

-- Location: IOOBUF_X89_Y8_N22
\root.payload[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(8),
	devoe => ww_devoe,
	o => \ww_root.payload\(8));

-- Location: IOOBUF_X60_Y81_N2
\root.payload[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(9),
	devoe => ww_devoe,
	o => \ww_root.payload\(9));

-- Location: IOOBUF_X58_Y81_N76
\root.payload[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(10),
	devoe => ww_devoe,
	o => \ww_root.payload\(10));

-- Location: IOOBUF_X66_Y81_N93
\root.payload[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(11),
	devoe => ww_devoe,
	o => \ww_root.payload\(11));

-- Location: IOOBUF_X28_Y0_N53
\root.payload[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(12),
	devoe => ww_devoe,
	o => \ww_root.payload\(12));

-- Location: IOOBUF_X68_Y81_N36
\root.payload[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(13),
	devoe => ww_devoe,
	o => \ww_root.payload\(13));

-- Location: IOOBUF_X62_Y81_N2
\root.payload[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(14),
	devoe => ww_devoe,
	o => \ww_root.payload\(14));

-- Location: IOOBUF_X54_Y81_N53
\root.payload[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(15),
	devoe => ww_devoe,
	o => \ww_root.payload\(15));

-- Location: IOOBUF_X66_Y81_N59
\root.payload[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(16),
	devoe => ww_devoe,
	o => \ww_root.payload\(16));

-- Location: IOOBUF_X72_Y81_N19
\root.payload[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(17),
	devoe => ww_devoe,
	o => \ww_root.payload\(17));

-- Location: IOOBUF_X4_Y0_N36
\root.payload[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(18),
	devoe => ww_devoe,
	o => \ww_root.payload\(18));

-- Location: IOOBUF_X32_Y0_N19
\root.payload[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(19),
	devoe => ww_devoe,
	o => \ww_root.payload\(19));

-- Location: IOOBUF_X4_Y0_N53
\root.payload[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(20),
	devoe => ww_devoe,
	o => \ww_root.payload\(20));

-- Location: IOOBUF_X4_Y0_N2
\root.payload[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(21),
	devoe => ww_devoe,
	o => \ww_root.payload\(21));

-- Location: IOOBUF_X6_Y0_N36
\root.payload[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(22),
	devoe => ww_devoe,
	o => \ww_root.payload\(22));

-- Location: IOOBUF_X60_Y81_N53
\root.payload[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(23),
	devoe => ww_devoe,
	o => \ww_root.payload\(23));

-- Location: IOOBUF_X32_Y0_N36
\root.payload[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(24),
	devoe => ww_devoe,
	o => \ww_root.payload\(24));

-- Location: IOOBUF_X2_Y0_N93
\root.payload[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(25),
	devoe => ww_devoe,
	o => \ww_root.payload\(25));

-- Location: IOOBUF_X89_Y38_N56
\root.payload[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(26),
	devoe => ww_devoe,
	o => \ww_root.payload\(26));

-- Location: IOOBUF_X38_Y0_N36
\root.payload[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(27),
	devoe => ww_devoe,
	o => \ww_root.payload\(27));

-- Location: IOOBUF_X89_Y37_N22
\root.payload[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(28),
	devoe => ww_devoe,
	o => \ww_root.payload\(28));

-- Location: IOOBUF_X89_Y37_N56
\root.payload[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(29),
	devoe => ww_devoe,
	o => \ww_root.payload\(29));

-- Location: IOOBUF_X60_Y81_N36
\root.payload[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(30),
	devoe => ww_devoe,
	o => \ww_root.payload\(30));

-- Location: IOOBUF_X32_Y0_N2
\root.payload[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.payload\(31),
	devoe => ww_devoe,
	o => \ww_root.payload\(31));

-- Location: IOOBUF_X52_Y0_N36
\root.tag[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.tag\(0),
	devoe => ww_devoe,
	o => \ww_root.tag\(0));

-- Location: IOOBUF_X26_Y0_N76
\root.tag[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \routers:0:levels:0:router_inst|output.tag\(1),
	devoe => ww_devoe,
	o => \ww_root.tag\(1));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X62_Y81_N18
\leafs[2].tag[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].tag\(1),
	o => \leafs[2].tag[1]~input_o\);

-- Location: IOIBUF_X64_Y81_N1
\leafs[3].tag[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].tag\(1),
	o => \leafs[3].tag[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\leafs[3].payload[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(0),
	o => \leafs[3].payload[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\leafs[2].payload[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(0),
	o => \leafs[2].payload[0]~input_o\);

-- Location: LABCELL_X62_Y6_N15
\routers:1:levels:1:router_inst|o_arr[1].payload[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(0) = ( \leafs[2].payload[0]~input_o\ & ( ((\leafs[3].tag[1]~input_o\ & \leafs[3].payload[0]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[0]~input_o\ & ( (\leafs[3].tag[1]~input_o\ & 
-- \leafs[3].payload[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[3].payload[0]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[0]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(0));

-- Location: FF_X62_Y6_N17
\routers:1:levels:1:router_inst|output.payload[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(0));

-- Location: IOIBUF_X56_Y81_N35
\leafs[0].payload[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(0),
	o => \leafs[0].payload[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\leafs[1].tag[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].tag\(1),
	o => \leafs[1].tag[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\leafs[1].payload[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(0),
	o => \leafs[1].payload[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\leafs[0].tag[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].tag\(1),
	o => \leafs[0].tag[1]~input_o\);

-- Location: LABCELL_X61_Y6_N27
\routers:1:levels:0:router_inst|o_arr[1].payload[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(0) = ( \leafs[0].tag[1]~input_o\ & ( ((\leafs[1].tag[1]~input_o\ & \leafs[1].payload[0]~input_o\)) # (\leafs[0].payload[0]~input_o\) ) ) # ( !\leafs[0].tag[1]~input_o\ & ( (\leafs[1].tag[1]~input_o\ & 
-- \leafs[1].payload[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].payload[0]~input_o\,
	datab => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[1].payload[0]~input_o\,
	dataf => \ALT_INV_leafs[0].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(0));

-- Location: FF_X62_Y6_N53
\routers:1:levels:0:router_inst|output.payload[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \routers:1:levels:0:router_inst|o_arr[1].payload\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(0));

-- Location: LABCELL_X63_Y6_N36
\routers:1:levels:1:router_inst|o_arr[1].tag[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].tag\(1) = ( \leafs[3].tag[1]~input_o\ ) # ( !\leafs[3].tag[1]~input_o\ & ( \leafs[2].tag[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_leafs[2].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[3].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].tag\(1));

-- Location: FF_X63_Y6_N38
\routers:1:levels:1:router_inst|output.tag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].tag\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.tag\(1));

-- Location: LABCELL_X63_Y6_N45
\routers:1:levels:0:router_inst|o_arr[1].tag[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].tag\(1) = (\leafs[0].tag[1]~input_o\) # (\leafs[1].tag[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].tag\(1));

-- Location: FF_X63_Y6_N47
\routers:1:levels:0:router_inst|output.tag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].tag\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.tag\(1));

-- Location: LABCELL_X62_Y6_N12
\routers:0:levels:0:router_inst|o_arr[1].payload[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(0) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.payload\(0) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(0)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.payload\(0) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(0),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(0),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(0));

-- Location: FF_X62_Y6_N14
\routers:0:levels:0:router_inst|output.payload[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(0));

-- Location: IOIBUF_X58_Y81_N92
\leafs[0].payload[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(1),
	o => \leafs[0].payload[1]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\leafs[1].payload[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(1),
	o => \leafs[1].payload[1]~input_o\);

-- Location: LABCELL_X61_Y6_N51
\routers:1:levels:0:router_inst|o_arr[1].payload[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(1) = ( \leafs[1].payload[1]~input_o\ & ( \leafs[0].tag[1]~input_o\ & ( (\leafs[1].tag[1]~input_o\) # (\leafs[0].payload[1]~input_o\) ) ) ) # ( !\leafs[1].payload[1]~input_o\ & ( \leafs[0].tag[1]~input_o\ & 
-- ( \leafs[0].payload[1]~input_o\ ) ) ) # ( \leafs[1].payload[1]~input_o\ & ( !\leafs[0].tag[1]~input_o\ & ( \leafs[1].tag[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].payload[1]~input_o\,
	datac => \ALT_INV_leafs[1].tag[1]~input_o\,
	datae => \ALT_INV_leafs[1].payload[1]~input_o\,
	dataf => \ALT_INV_leafs[0].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(1));

-- Location: FF_X61_Y6_N52
\routers:1:levels:0:router_inst|output.payload[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(1));

-- Location: IOIBUF_X26_Y0_N92
\leafs[2].payload[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(1),
	o => \leafs[2].payload[1]~input_o\);

-- Location: IOIBUF_X70_Y81_N35
\leafs[3].payload[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(1),
	o => \leafs[3].payload[1]~input_o\);

-- Location: LABCELL_X64_Y6_N12
\routers:1:levels:1:router_inst|o_arr[1].payload[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(1) = ( \leafs[3].payload[1]~input_o\ & ( ((\leafs[2].payload[1]~input_o\ & \leafs[2].tag[1]~input_o\)) # (\leafs[3].tag[1]~input_o\) ) ) # ( !\leafs[3].payload[1]~input_o\ & ( 
-- (\leafs[2].payload[1]~input_o\ & \leafs[2].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].payload[1]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[2].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[3].payload[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(1));

-- Location: FF_X64_Y6_N13
\routers:1:levels:1:router_inst|output.payload[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(1));

-- Location: LABCELL_X64_Y6_N3
\routers:0:levels:0:router_inst|o_arr[1].payload[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(1) = ( \routers:1:levels:1:router_inst|output.payload\(1) & ( ((\routers:1:levels:0:router_inst|output.payload\(1) & \routers:1:levels:0:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:1:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:1:router_inst|output.payload\(1) & ( (\routers:1:levels:0:router_inst|output.payload\(1) & \routers:1:levels:0:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(1),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(1));

-- Location: FF_X64_Y6_N4
\routers:0:levels:0:router_inst|output.payload[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(1));

-- Location: IOIBUF_X62_Y81_N52
\leafs[2].payload[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(2),
	o => \leafs[2].payload[2]~input_o\);

-- Location: IOIBUF_X66_Y81_N41
\leafs[3].payload[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(2),
	o => \leafs[3].payload[2]~input_o\);

-- Location: LABCELL_X64_Y6_N27
\routers:1:levels:1:router_inst|o_arr[1].payload[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(2) = ( \leafs[3].payload[2]~input_o\ & ( ((\leafs[2].tag[1]~input_o\ & \leafs[2].payload[2]~input_o\)) # (\leafs[3].tag[1]~input_o\) ) ) # ( !\leafs[3].payload[2]~input_o\ & ( (\leafs[2].tag[1]~input_o\ & 
-- \leafs[2].payload[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[3].tag[1]~input_o\,
	datab => \ALT_INV_leafs[2].tag[1]~input_o\,
	datad => \ALT_INV_leafs[2].payload[2]~input_o\,
	dataf => \ALT_INV_leafs[3].payload[2]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(2));

-- Location: FF_X64_Y6_N29
\routers:1:levels:1:router_inst|output.payload[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(2));

-- Location: IOIBUF_X68_Y0_N52
\leafs[0].payload[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(2),
	o => \leafs[0].payload[2]~input_o\);

-- Location: IOIBUF_X70_Y81_N1
\leafs[1].payload[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(2),
	o => \leafs[1].payload[2]~input_o\);

-- Location: LABCELL_X64_Y2_N9
\routers:1:levels:0:router_inst|o_arr[1].payload[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(2) = ( \leafs[1].payload[2]~input_o\ & ( ((\leafs[0].payload[2]~input_o\ & \leafs[0].tag[1]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].payload[2]~input_o\ & ( 
-- (\leafs[0].payload[2]~input_o\ & \leafs[0].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].tag[1]~input_o\,
	datab => \ALT_INV_leafs[0].payload[2]~input_o\,
	datac => \ALT_INV_leafs[0].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[1].payload[2]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(2));

-- Location: FF_X64_Y2_N10
\routers:1:levels:0:router_inst|output.payload[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(2));

-- Location: LABCELL_X64_Y6_N18
\routers:0:levels:0:router_inst|o_arr[1].payload[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(2) = ( \routers:1:levels:0:router_inst|output.payload\(2) & ( ((\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(2))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(2) & ( (\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(2),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(2),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(2));

-- Location: FF_X64_Y6_N19
\routers:0:levels:0:router_inst|output.payload[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(2));

-- Location: IOIBUF_X89_Y38_N4
\leafs[0].payload[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(3),
	o => \leafs[0].payload[3]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\leafs[1].payload[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(3),
	o => \leafs[1].payload[3]~input_o\);

-- Location: LABCELL_X64_Y6_N57
\routers:1:levels:0:router_inst|o_arr[1].payload[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(3) = ( \leafs[1].tag[1]~input_o\ & ( ((\leafs[0].payload[3]~input_o\ & \leafs[0].tag[1]~input_o\)) # (\leafs[1].payload[3]~input_o\) ) ) # ( !\leafs[1].tag[1]~input_o\ & ( (\leafs[0].payload[3]~input_o\ & 
-- \leafs[0].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].payload[3]~input_o\,
	datac => \ALT_INV_leafs[0].tag[1]~input_o\,
	datad => \ALT_INV_leafs[1].payload[3]~input_o\,
	dataf => \ALT_INV_leafs[1].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(3));

-- Location: FF_X64_Y6_N59
\routers:1:levels:0:router_inst|output.payload[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(3));

-- Location: IOIBUF_X89_Y36_N21
\leafs[2].payload[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(3),
	o => \leafs[2].payload[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\leafs[3].payload[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(3),
	o => \leafs[3].payload[3]~input_o\);

-- Location: LABCELL_X64_Y6_N30
\routers:1:levels:1:router_inst|o_arr[1].payload[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(3) = ( \leafs[3].payload[3]~input_o\ & ( ((\leafs[2].payload[3]~input_o\ & \leafs[2].tag[1]~input_o\)) # (\leafs[3].tag[1]~input_o\) ) ) # ( !\leafs[3].payload[3]~input_o\ & ( 
-- (\leafs[2].payload[3]~input_o\ & \leafs[2].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].payload[3]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[2].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[3].payload[3]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(3));

-- Location: FF_X64_Y6_N31
\routers:1:levels:1:router_inst|output.payload[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(3));

-- Location: LABCELL_X64_Y6_N15
\routers:0:levels:0:router_inst|o_arr[1].payload[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(3) = ( \routers:1:levels:1:router_inst|output.payload\(3) & ( ((\routers:1:levels:0:router_inst|output.tag\(1) & \routers:1:levels:0:router_inst|output.payload\(3))) # 
-- (\routers:1:levels:1:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:1:router_inst|output.payload\(3) & ( (\routers:1:levels:0:router_inst|output.tag\(1) & \routers:1:levels:0:router_inst|output.payload\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(3),
	dataf => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(3),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(3));

-- Location: FF_X64_Y6_N16
\routers:0:levels:0:router_inst|output.payload[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(3));

-- Location: IOIBUF_X64_Y81_N35
\leafs[3].payload[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(4),
	o => \leafs[3].payload[4]~input_o\);

-- Location: IOIBUF_X64_Y81_N52
\leafs[2].payload[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(4),
	o => \leafs[2].payload[4]~input_o\);

-- Location: LABCELL_X64_Y6_N42
\routers:1:levels:1:router_inst|o_arr[1].payload[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(4) = ( \leafs[2].payload[4]~input_o\ & ( ((\leafs[3].payload[4]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[4]~input_o\ & ( 
-- (\leafs[3].payload[4]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[3].payload[4]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[2].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[4]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(4));

-- Location: FF_X64_Y6_N44
\routers:1:levels:1:router_inst|output.payload[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(4));

-- Location: IOIBUF_X89_Y4_N61
\leafs[1].payload[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(4),
	o => \leafs[1].payload[4]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\leafs[0].payload[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(4),
	o => \leafs[0].payload[4]~input_o\);

-- Location: LABCELL_X64_Y6_N21
\routers:1:levels:0:router_inst|o_arr[1].payload[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(4) = ( \leafs[0].tag[1]~input_o\ & ( ((\leafs[1].payload[4]~input_o\ & \leafs[1].tag[1]~input_o\)) # (\leafs[0].payload[4]~input_o\) ) ) # ( !\leafs[0].tag[1]~input_o\ & ( (\leafs[1].payload[4]~input_o\ & 
-- \leafs[1].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].payload[4]~input_o\,
	datac => \ALT_INV_leafs[0].payload[4]~input_o\,
	datad => \ALT_INV_leafs[1].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[0].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(4));

-- Location: FF_X64_Y6_N22
\routers:1:levels:0:router_inst|output.payload[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(4));

-- Location: LABCELL_X64_Y6_N33
\routers:0:levels:0:router_inst|o_arr[1].payload[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(4) = ( \routers:1:levels:0:router_inst|output.payload\(4) & ( ((\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(4))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(4) & ( (\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(4),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(4),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(4));

-- Location: FF_X64_Y6_N34
\routers:0:levels:0:router_inst|output.payload[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(4));

-- Location: IOIBUF_X30_Y0_N52
\leafs[3].payload[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(5),
	o => \leafs[3].payload[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\leafs[2].payload[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(5),
	o => \leafs[2].payload[5]~input_o\);

-- Location: LABCELL_X62_Y6_N33
\routers:1:levels:1:router_inst|o_arr[1].payload[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(5) = ( \leafs[2].payload[5]~input_o\ & ( ((\leafs[3].tag[1]~input_o\ & \leafs[3].payload[5]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[5]~input_o\ & ( (\leafs[3].tag[1]~input_o\ & 
-- \leafs[3].payload[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[3].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].payload[5]~input_o\,
	datad => \ALT_INV_leafs[2].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[5]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(5));

-- Location: FF_X62_Y6_N34
\routers:1:levels:1:router_inst|output.payload[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(5));

-- Location: IOIBUF_X40_Y0_N35
\leafs[0].payload[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(5),
	o => \leafs[0].payload[5]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\leafs[1].payload[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(5),
	o => \leafs[1].payload[5]~input_o\);

-- Location: LABCELL_X62_Y2_N39
\routers:1:levels:0:router_inst|o_arr[1].payload[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(5) = ( \leafs[0].tag[1]~input_o\ & ( \leafs[1].tag[1]~input_o\ & ( (\leafs[1].payload[5]~input_o\) # (\leafs[0].payload[5]~input_o\) ) ) ) # ( !\leafs[0].tag[1]~input_o\ & ( \leafs[1].tag[1]~input_o\ & ( 
-- \leafs[1].payload[5]~input_o\ ) ) ) # ( \leafs[0].tag[1]~input_o\ & ( !\leafs[1].tag[1]~input_o\ & ( \leafs[0].payload[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].payload[5]~input_o\,
	datac => \ALT_INV_leafs[1].payload[5]~input_o\,
	datae => \ALT_INV_leafs[0].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[1].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(5));

-- Location: FF_X62_Y2_N40
\routers:1:levels:0:router_inst|output.payload[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(5));

-- Location: LABCELL_X63_Y6_N48
\routers:0:levels:0:router_inst|o_arr[1].payload[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(5) = ( \routers:1:levels:0:router_inst|output.payload\(5) & ( ((\routers:1:levels:1:router_inst|output.payload\(5) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(5) & ( (\routers:1:levels:1:router_inst|output.payload\(5) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(5),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(5),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(5));

-- Location: FF_X63_Y6_N49
\routers:0:levels:0:router_inst|output.payload[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(5));

-- Location: IOIBUF_X89_Y6_N4
\leafs[3].payload[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(6),
	o => \leafs[3].payload[6]~input_o\);

-- Location: IOIBUF_X52_Y81_N35
\leafs[2].payload[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(6),
	o => \leafs[2].payload[6]~input_o\);

-- Location: LABCELL_X62_Y6_N36
\routers:1:levels:1:router_inst|o_arr[1].payload[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(6) = ( \leafs[2].payload[6]~input_o\ & ( ((\leafs[3].payload[6]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[6]~input_o\ & ( 
-- (\leafs[3].payload[6]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].payload[6]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[6]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(6));

-- Location: FF_X62_Y6_N38
\routers:1:levels:1:router_inst|output.payload[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(6));

-- Location: IOIBUF_X50_Y0_N58
\leafs[0].payload[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(6),
	o => \leafs[0].payload[6]~input_o\);

-- Location: IOIBUF_X54_Y81_N18
\leafs[1].payload[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(6),
	o => \leafs[1].payload[6]~input_o\);

-- Location: LABCELL_X61_Y6_N30
\routers:1:levels:0:router_inst|o_arr[1].payload[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(6) = ( \leafs[1].tag[1]~input_o\ & ( ((\leafs[0].tag[1]~input_o\ & \leafs[0].payload[6]~input_o\)) # (\leafs[1].payload[6]~input_o\) ) ) # ( !\leafs[1].tag[1]~input_o\ & ( (\leafs[0].tag[1]~input_o\ & 
-- \leafs[0].payload[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].tag[1]~input_o\,
	datab => \ALT_INV_leafs[0].payload[6]~input_o\,
	datac => \ALT_INV_leafs[1].payload[6]~input_o\,
	dataf => \ALT_INV_leafs[1].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(6));

-- Location: FF_X61_Y6_N31
\routers:1:levels:0:router_inst|output.payload[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(6));

-- Location: LABCELL_X62_Y6_N30
\routers:0:levels:0:router_inst|o_arr[1].payload[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(6) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.payload\(6) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(6)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.payload\(6) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(6),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(6),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(6));

-- Location: FF_X62_Y6_N32
\routers:0:levels:0:router_inst|output.payload[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(6));

-- Location: IOIBUF_X70_Y81_N18
\leafs[0].payload[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(7),
	o => \leafs[0].payload[7]~input_o\);

-- Location: IOIBUF_X64_Y81_N18
\leafs[1].payload[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(7),
	o => \leafs[1].payload[7]~input_o\);

-- Location: LABCELL_X64_Y6_N0
\routers:1:levels:0:router_inst|o_arr[1].payload[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(7) = ( \leafs[1].tag[1]~input_o\ & ( ((\leafs[0].tag[1]~input_o\ & \leafs[0].payload[7]~input_o\)) # (\leafs[1].payload[7]~input_o\) ) ) # ( !\leafs[1].tag[1]~input_o\ & ( (\leafs[0].tag[1]~input_o\ & 
-- \leafs[0].payload[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[0].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].payload[7]~input_o\,
	datad => \ALT_INV_leafs[1].payload[7]~input_o\,
	dataf => \ALT_INV_leafs[1].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(7));

-- Location: FF_X64_Y6_N2
\routers:1:levels:0:router_inst|output.payload[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(7));

-- Location: IOIBUF_X26_Y0_N58
\leafs[3].payload[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(7),
	o => \leafs[3].payload[7]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\leafs[2].payload[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(7),
	o => \leafs[2].payload[7]~input_o\);

-- Location: LABCELL_X64_Y6_N24
\routers:1:levels:1:router_inst|o_arr[1].payload[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(7) = ( \leafs[2].payload[7]~input_o\ & ( ((\leafs[3].payload[7]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[7]~input_o\ & ( 
-- (\leafs[3].payload[7]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].payload[7]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[7]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(7));

-- Location: FF_X64_Y6_N25
\routers:1:levels:1:router_inst|output.payload[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(7));

-- Location: LABCELL_X64_Y6_N51
\routers:0:levels:0:router_inst|o_arr[1].payload[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(7) = ( \routers:1:levels:1:router_inst|output.payload\(7) & ( ((\routers:1:levels:0:router_inst|output.tag\(1) & \routers:1:levels:0:router_inst|output.payload\(7))) # 
-- (\routers:1:levels:1:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:1:router_inst|output.payload\(7) & ( (\routers:1:levels:0:router_inst|output.tag\(1) & \routers:1:levels:0:router_inst|output.payload\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(7),
	dataf => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(7),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(7));

-- Location: FF_X64_Y6_N52
\routers:0:levels:0:router_inst|output.payload[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(7));

-- Location: IOIBUF_X8_Y0_N52
\leafs[0].payload[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(8),
	o => \leafs[0].payload[8]~input_o\);

-- Location: IOIBUF_X52_Y81_N1
\leafs[1].payload[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(8),
	o => \leafs[1].payload[8]~input_o\);

-- Location: LABCELL_X61_Y6_N3
\routers:1:levels:0:router_inst|o_arr[1].payload[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(8) = ( \leafs[0].tag[1]~input_o\ & ( ((\leafs[1].tag[1]~input_o\ & \leafs[1].payload[8]~input_o\)) # (\leafs[0].payload[8]~input_o\) ) ) # ( !\leafs[0].tag[1]~input_o\ & ( (\leafs[1].tag[1]~input_o\ & 
-- \leafs[1].payload[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].payload[8]~input_o\,
	datab => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[1].payload[8]~input_o\,
	dataf => \ALT_INV_leafs[0].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(8));

-- Location: FF_X61_Y6_N4
\routers:1:levels:0:router_inst|output.payload[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(8));

-- Location: IOIBUF_X6_Y0_N18
\leafs[2].payload[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(8),
	o => \leafs[2].payload[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\leafs[3].payload[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(8),
	o => \leafs[3].payload[8]~input_o\);

-- Location: LABCELL_X62_Y6_N57
\routers:1:levels:1:router_inst|o_arr[1].payload[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(8) = ( \leafs[3].payload[8]~input_o\ & ( ((\leafs[2].tag[1]~input_o\ & \leafs[2].payload[8]~input_o\)) # (\leafs[3].tag[1]~input_o\) ) ) # ( !\leafs[3].payload[8]~input_o\ & ( (\leafs[2].tag[1]~input_o\ & 
-- \leafs[2].payload[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datab => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[2].payload[8]~input_o\,
	dataf => \ALT_INV_leafs[3].payload[8]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(8));

-- Location: FF_X62_Y6_N59
\routers:1:levels:1:router_inst|output.payload[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(8));

-- Location: LABCELL_X62_Y6_N39
\routers:0:levels:0:router_inst|o_arr[1].payload[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(8) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.payload\(8) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(8)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.payload\(8) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(8),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(8),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(8));

-- Location: FF_X62_Y6_N40
\routers:0:levels:0:router_inst|output.payload[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(8));

-- Location: IOIBUF_X56_Y0_N18
\leafs[0].payload[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(9),
	o => \leafs[0].payload[9]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\leafs[1].payload[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(9),
	o => \leafs[1].payload[9]~input_o\);

-- Location: LABCELL_X62_Y5_N36
\routers:1:levels:0:router_inst|o_arr[1].payload[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(9) = ( \leafs[0].payload[9]~input_o\ & ( \leafs[1].payload[9]~input_o\ & ( (\leafs[0].tag[1]~input_o\) # (\leafs[1].tag[1]~input_o\) ) ) ) # ( !\leafs[0].payload[9]~input_o\ & ( 
-- \leafs[1].payload[9]~input_o\ & ( \leafs[1].tag[1]~input_o\ ) ) ) # ( \leafs[0].payload[9]~input_o\ & ( !\leafs[1].payload[9]~input_o\ & ( \leafs[0].tag[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].tag[1]~input_o\,
	datae => \ALT_INV_leafs[0].payload[9]~input_o\,
	dataf => \ALT_INV_leafs[1].payload[9]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(9));

-- Location: FF_X62_Y5_N38
\routers:1:levels:0:router_inst|output.payload[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(9));

-- Location: IOIBUF_X30_Y0_N35
\leafs[2].payload[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(9),
	o => \leafs[2].payload[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\leafs[3].payload[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(9),
	o => \leafs[3].payload[9]~input_o\);

-- Location: LABCELL_X62_Y5_N27
\routers:1:levels:1:router_inst|o_arr[1].payload[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(9) = ( \leafs[3].tag[1]~input_o\ & ( ((\leafs[2].tag[1]~input_o\ & \leafs[2].payload[9]~input_o\)) # (\leafs[3].payload[9]~input_o\) ) ) # ( !\leafs[3].tag[1]~input_o\ & ( (\leafs[2].tag[1]~input_o\ & 
-- \leafs[2].payload[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[2].payload[9]~input_o\,
	datad => \ALT_INV_leafs[3].payload[9]~input_o\,
	dataf => \ALT_INV_leafs[3].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(9));

-- Location: FF_X62_Y5_N29
\routers:1:levels:1:router_inst|output.payload[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(9));

-- Location: LABCELL_X62_Y5_N24
\routers:0:levels:0:router_inst|o_arr[1].payload[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(9) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(9))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(9)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(9),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(9),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(9));

-- Location: FF_X62_Y5_N25
\routers:0:levels:0:router_inst|output.payload[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(9));

-- Location: IOIBUF_X40_Y0_N1
\leafs[3].payload[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(10),
	o => \leafs[3].payload[10]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\leafs[2].payload[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(10),
	o => \leafs[2].payload[10]~input_o\);

-- Location: LABCELL_X62_Y5_N30
\routers:1:levels:1:router_inst|o_arr[1].payload[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(10) = ( \leafs[2].payload[10]~input_o\ & ( ((\leafs[3].payload[10]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[10]~input_o\ & ( 
-- (\leafs[3].payload[10]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[3].payload[10]~input_o\,
	datac => \ALT_INV_leafs[2].tag[1]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[10]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(10));

-- Location: FF_X62_Y5_N32
\routers:1:levels:1:router_inst|output.payload[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(10));

-- Location: IOIBUF_X38_Y0_N18
\leafs[0].payload[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(10),
	o => \leafs[0].payload[10]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\leafs[1].payload[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(10),
	o => \leafs[1].payload[10]~input_o\);

-- Location: LABCELL_X62_Y5_N57
\routers:1:levels:0:router_inst|o_arr[1].payload[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(10) = ( \leafs[1].payload[10]~input_o\ & ( ((\leafs[0].payload[10]~input_o\ & \leafs[0].tag[1]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].payload[10]~input_o\ & ( 
-- (\leafs[0].payload[10]~input_o\ & \leafs[0].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010101111100000000000011110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].payload[10]~input_o\,
	datad => \ALT_INV_leafs[0].tag[1]~input_o\,
	datae => \ALT_INV_leafs[1].payload[10]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(10));

-- Location: FF_X62_Y5_N59
\routers:1:levels:0:router_inst|output.payload[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(10));

-- Location: LABCELL_X62_Y5_N33
\routers:0:levels:0:router_inst|o_arr[1].payload[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(10) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(10))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(10)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(10),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(10),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(10));

-- Location: FF_X62_Y5_N34
\routers:0:levels:0:router_inst|output.payload[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(10));

-- Location: IOIBUF_X66_Y81_N75
\leafs[3].payload[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(11),
	o => \leafs[3].payload[11]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\leafs[2].payload[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(11),
	o => \leafs[2].payload[11]~input_o\);

-- Location: LABCELL_X63_Y6_N27
\routers:1:levels:1:router_inst|o_arr[1].payload[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(11) = ( \leafs[2].tag[1]~input_o\ & ( ((\leafs[3].payload[11]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].payload[11]~input_o\) ) ) # ( !\leafs[2].tag[1]~input_o\ & ( 
-- (\leafs[3].payload[11]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[3].payload[11]~input_o\,
	datac => \ALT_INV_leafs[2].payload[11]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(11));

-- Location: FF_X63_Y6_N29
\routers:1:levels:1:router_inst|output.payload[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(11));

-- Location: IOIBUF_X64_Y0_N1
\leafs[0].payload[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(11),
	o => \leafs[0].payload[11]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\leafs[1].payload[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(11),
	o => \leafs[1].payload[11]~input_o\);

-- Location: LABCELL_X64_Y2_N33
\routers:1:levels:0:router_inst|o_arr[1].payload[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(11) = ( \leafs[0].payload[11]~input_o\ & ( \leafs[1].payload[11]~input_o\ & ( (\leafs[0].tag[1]~input_o\) # (\leafs[1].tag[1]~input_o\) ) ) ) # ( !\leafs[0].payload[11]~input_o\ & ( 
-- \leafs[1].payload[11]~input_o\ & ( \leafs[1].tag[1]~input_o\ ) ) ) # ( \leafs[0].payload[11]~input_o\ & ( !\leafs[1].payload[11]~input_o\ & ( \leafs[0].tag[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].tag[1]~input_o\,
	datae => \ALT_INV_leafs[0].payload[11]~input_o\,
	dataf => \ALT_INV_leafs[1].payload[11]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(11));

-- Location: FF_X64_Y2_N35
\routers:1:levels:0:router_inst|output.payload[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(11));

-- Location: LABCELL_X63_Y6_N12
\routers:0:levels:0:router_inst|o_arr[1].payload[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(11) = ( \routers:1:levels:0:router_inst|output.payload\(11) & ( ((\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(11))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(11) & ( (\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(11),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(11),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(11));

-- Location: FF_X63_Y6_N13
\routers:0:levels:0:router_inst|output.payload[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(11));

-- Location: IOIBUF_X58_Y0_N92
\leafs[2].payload[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(12),
	o => \leafs[2].payload[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\leafs[3].payload[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(12),
	o => \leafs[3].payload[12]~input_o\);

-- Location: LABCELL_X63_Y6_N0
\routers:1:levels:1:router_inst|o_arr[1].payload[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(12) = ( \leafs[3].payload[12]~input_o\ & ( ((\leafs[2].tag[1]~input_o\ & \leafs[2].payload[12]~input_o\)) # (\leafs[3].tag[1]~input_o\) ) ) # ( !\leafs[3].payload[12]~input_o\ & ( 
-- (\leafs[2].tag[1]~input_o\ & \leafs[2].payload[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[2].payload[12]~input_o\,
	dataf => \ALT_INV_leafs[3].payload[12]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(12));

-- Location: FF_X63_Y6_N2
\routers:1:levels:1:router_inst|output.payload[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(12));

-- Location: IOIBUF_X56_Y0_N1
\leafs[1].payload[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(12),
	o => \leafs[1].payload[12]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\leafs[0].payload[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(12),
	o => \leafs[0].payload[12]~input_o\);

-- Location: LABCELL_X62_Y2_N57
\routers:1:levels:0:router_inst|o_arr[1].payload[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(12) = ( \leafs[0].tag[1]~input_o\ & ( \leafs[1].tag[1]~input_o\ & ( (\leafs[0].payload[12]~input_o\) # (\leafs[1].payload[12]~input_o\) ) ) ) # ( !\leafs[0].tag[1]~input_o\ & ( \leafs[1].tag[1]~input_o\ & 
-- ( \leafs[1].payload[12]~input_o\ ) ) ) # ( \leafs[0].tag[1]~input_o\ & ( !\leafs[1].tag[1]~input_o\ & ( \leafs[0].payload[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].payload[12]~input_o\,
	datac => \ALT_INV_leafs[0].payload[12]~input_o\,
	datae => \ALT_INV_leafs[0].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[1].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(12));

-- Location: FF_X62_Y2_N58
\routers:1:levels:0:router_inst|output.payload[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(12));

-- Location: LABCELL_X63_Y6_N15
\routers:0:levels:0:router_inst|o_arr[1].payload[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(12) = ( \routers:1:levels:0:router_inst|output.payload\(12) & ( ((\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(12))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(12) & ( (\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(12),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(12),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(12));

-- Location: FF_X63_Y6_N16
\routers:0:levels:0:router_inst|output.payload[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(12));

-- Location: IOIBUF_X50_Y0_N75
\leafs[0].payload[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(13),
	o => \leafs[0].payload[13]~input_o\);

-- Location: IOIBUF_X56_Y81_N52
\leafs[1].payload[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(13),
	o => \leafs[1].payload[13]~input_o\);

-- Location: LABCELL_X61_Y6_N18
\routers:1:levels:0:router_inst|o_arr[1].payload[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(13) = ( \leafs[1].payload[13]~input_o\ & ( \leafs[1].tag[1]~input_o\ ) ) # ( !\leafs[1].payload[13]~input_o\ & ( \leafs[1].tag[1]~input_o\ & ( (\leafs[0].payload[13]~input_o\ & \leafs[0].tag[1]~input_o\) ) 
-- ) ) # ( \leafs[1].payload[13]~input_o\ & ( !\leafs[1].tag[1]~input_o\ & ( (\leafs[0].payload[13]~input_o\ & \leafs[0].tag[1]~input_o\) ) ) ) # ( !\leafs[1].payload[13]~input_o\ & ( !\leafs[1].tag[1]~input_o\ & ( (\leafs[0].payload[13]~input_o\ & 
-- \leafs[0].tag[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[0].payload[13]~input_o\,
	datac => \ALT_INV_leafs[0].tag[1]~input_o\,
	datae => \ALT_INV_leafs[1].payload[13]~input_o\,
	dataf => \ALT_INV_leafs[1].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(13));

-- Location: FF_X61_Y6_N19
\routers:1:levels:0:router_inst|output.payload[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(13));

-- Location: IOIBUF_X89_Y8_N38
\leafs[3].payload[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(13),
	o => \leafs[3].payload[13]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\leafs[2].payload[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(13),
	o => \leafs[2].payload[13]~input_o\);

-- Location: LABCELL_X64_Y6_N48
\routers:1:levels:1:router_inst|o_arr[1].payload[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(13) = ( \leafs[2].payload[13]~input_o\ & ( ((\leafs[3].payload[13]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[13]~input_o\ & ( 
-- (\leafs[3].payload[13]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].payload[13]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[13]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(13));

-- Location: FF_X64_Y6_N50
\routers:1:levels:1:router_inst|output.payload[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(13));

-- Location: LABCELL_X64_Y6_N45
\routers:0:levels:0:router_inst|o_arr[1].payload[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(13) = ( \routers:1:levels:1:router_inst|output.payload\(13) & ( ((\routers:1:levels:0:router_inst|output.payload\(13) & \routers:1:levels:0:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:1:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:1:router_inst|output.payload\(13) & ( (\routers:1:levels:0:router_inst|output.payload\(13) & \routers:1:levels:0:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(13),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(13),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(13));

-- Location: FF_X64_Y6_N46
\routers:0:levels:0:router_inst|output.payload[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(13));

-- Location: IOIBUF_X26_Y0_N41
\leafs[3].payload[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(14),
	o => \leafs[3].payload[14]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\leafs[2].payload[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(14),
	o => \leafs[2].payload[14]~input_o\);

-- Location: LABCELL_X62_Y6_N0
\routers:1:levels:1:router_inst|o_arr[1].payload[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(14) = ( \leafs[2].payload[14]~input_o\ & ( ((\leafs[3].payload[14]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[14]~input_o\ & ( 
-- (\leafs[3].payload[14]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110011111100000000001100110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[3].payload[14]~input_o\,
	datac => \ALT_INV_leafs[2].tag[1]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	datae => \ALT_INV_leafs[2].payload[14]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(14));

-- Location: FF_X62_Y6_N2
\routers:1:levels:1:router_inst|output.payload[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(14));

-- Location: IOIBUF_X62_Y0_N18
\leafs[0].payload[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(14),
	o => \leafs[0].payload[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\leafs[1].payload[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(14),
	o => \leafs[1].payload[14]~input_o\);

-- Location: LABCELL_X62_Y2_N33
\routers:1:levels:0:router_inst|o_arr[1].payload[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(14) = ( \leafs[0].tag[1]~input_o\ & ( \leafs[1].payload[14]~input_o\ & ( (\leafs[0].payload[14]~input_o\) # (\leafs[1].tag[1]~input_o\) ) ) ) # ( !\leafs[0].tag[1]~input_o\ & ( 
-- \leafs[1].payload[14]~input_o\ & ( \leafs[1].tag[1]~input_o\ ) ) ) # ( \leafs[0].tag[1]~input_o\ & ( !\leafs[1].payload[14]~input_o\ & ( \leafs[0].payload[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].payload[14]~input_o\,
	datae => \ALT_INV_leafs[0].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[1].payload[14]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(14));

-- Location: FF_X62_Y2_N34
\routers:1:levels:0:router_inst|output.payload[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(14));

-- Location: LABCELL_X62_Y6_N6
\routers:0:levels:0:router_inst|o_arr[1].payload[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(14) = ( \routers:1:levels:0:router_inst|output.payload\(14) & ( ((\routers:1:levels:1:router_inst|output.payload\(14) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(14) & ( (\routers:1:levels:1:router_inst|output.payload\(14) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(14),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(14),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(14));

-- Location: FF_X62_Y6_N7
\routers:0:levels:0:router_inst|output.payload[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(14));

-- Location: IOIBUF_X72_Y0_N1
\leafs[0].payload[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(15),
	o => \leafs[0].payload[15]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\leafs[1].payload[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(15),
	o => \leafs[1].payload[15]~input_o\);

-- Location: LABCELL_X64_Y7_N3
\routers:1:levels:0:router_inst|o_arr[1].payload[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(15) = ( \leafs[1].tag[1]~input_o\ & ( ((\leafs[0].payload[15]~input_o\ & \leafs[0].tag[1]~input_o\)) # (\leafs[1].payload[15]~input_o\) ) ) # ( !\leafs[1].tag[1]~input_o\ & ( 
-- (\leafs[0].payload[15]~input_o\ & \leafs[0].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].payload[15]~input_o\,
	datac => \ALT_INV_leafs[0].tag[1]~input_o\,
	datad => \ALT_INV_leafs[1].payload[15]~input_o\,
	dataf => \ALT_INV_leafs[1].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(15));

-- Location: FF_X64_Y7_N5
\routers:1:levels:0:router_inst|output.payload[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(15));

-- Location: IOIBUF_X8_Y0_N35
\leafs[3].payload[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(15),
	o => \leafs[3].payload[15]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\leafs[2].payload[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(15),
	o => \leafs[2].payload[15]~input_o\);

-- Location: LABCELL_X64_Y7_N0
\routers:1:levels:1:router_inst|o_arr[1].payload[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(15) = ( \leafs[2].tag[1]~input_o\ & ( ((\leafs[3].payload[15]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].payload[15]~input_o\) ) ) # ( !\leafs[2].tag[1]~input_o\ & ( 
-- (\leafs[3].payload[15]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[3].payload[15]~input_o\,
	datac => \ALT_INV_leafs[2].payload[15]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(15));

-- Location: FF_X64_Y7_N1
\routers:1:levels:1:router_inst|output.payload[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(15));

-- Location: LABCELL_X64_Y7_N39
\routers:0:levels:0:router_inst|o_arr[1].payload[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(15) = ( \routers:1:levels:1:router_inst|output.tag\(1) & ( ((\routers:1:levels:0:router_inst|output.payload\(15) & \routers:1:levels:0:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:1:router_inst|output.payload\(15)) ) ) # ( !\routers:1:levels:1:router_inst|output.tag\(1) & ( (\routers:1:levels:0:router_inst|output.payload\(15) & \routers:1:levels:0:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(15),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(15),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(15));

-- Location: FF_X64_Y7_N40
\routers:0:levels:0:router_inst|output.payload[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(15));

-- Location: IOIBUF_X66_Y0_N58
\leafs[0].payload[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(16),
	o => \leafs[0].payload[16]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\leafs[1].payload[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(16),
	o => \leafs[1].payload[16]~input_o\);

-- Location: LABCELL_X64_Y2_N42
\routers:1:levels:0:router_inst|o_arr[1].payload[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(16) = ( \leafs[1].payload[16]~input_o\ & ( ((\leafs[0].payload[16]~input_o\ & \leafs[0].tag[1]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].payload[16]~input_o\ & ( 
-- (\leafs[0].payload[16]~input_o\ & \leafs[0].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000100010001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].payload[16]~input_o\,
	datab => \ALT_INV_leafs[0].tag[1]~input_o\,
	datac => \ALT_INV_leafs[1].tag[1]~input_o\,
	datae => \ALT_INV_leafs[1].payload[16]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(16));

-- Location: FF_X64_Y2_N43
\routers:1:levels:0:router_inst|output.payload[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(16));

-- Location: IOIBUF_X68_Y0_N18
\leafs[3].payload[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(16),
	o => \leafs[3].payload[16]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\leafs[2].payload[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(16),
	o => \leafs[2].payload[16]~input_o\);

-- Location: LABCELL_X63_Y6_N21
\routers:1:levels:1:router_inst|o_arr[1].payload[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(16) = ( \leafs[3].tag[1]~input_o\ & ( ((\leafs[2].tag[1]~input_o\ & \leafs[2].payload[16]~input_o\)) # (\leafs[3].payload[16]~input_o\) ) ) # ( !\leafs[3].tag[1]~input_o\ & ( (\leafs[2].tag[1]~input_o\ & 
-- \leafs[2].payload[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].payload[16]~input_o\,
	datad => \ALT_INV_leafs[2].payload[16]~input_o\,
	dataf => \ALT_INV_leafs[3].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(16));

-- Location: FF_X63_Y6_N22
\routers:1:levels:1:router_inst|output.payload[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(16));

-- Location: LABCELL_X63_Y6_N51
\routers:0:levels:0:router_inst|o_arr[1].payload[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(16) = ( \routers:1:levels:1:router_inst|output.payload\(16) & ( ((\routers:1:levels:0:router_inst|output.tag\(1) & \routers:1:levels:0:router_inst|output.payload\(16))) # 
-- (\routers:1:levels:1:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:1:router_inst|output.payload\(16) & ( (\routers:1:levels:0:router_inst|output.tag\(1) & \routers:1:levels:0:router_inst|output.payload\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(16),
	dataf => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(16),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(16));

-- Location: FF_X63_Y6_N52
\routers:0:levels:0:router_inst|output.payload[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(16));

-- Location: IOIBUF_X89_Y4_N78
\leafs[3].payload[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(17),
	o => \leafs[3].payload[17]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\leafs[2].payload[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(17),
	o => \leafs[2].payload[17]~input_o\);

-- Location: LABCELL_X62_Y6_N42
\routers:1:levels:1:router_inst|o_arr[1].payload[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(17) = ( \leafs[3].tag[1]~input_o\ & ( ((\leafs[2].tag[1]~input_o\ & \leafs[2].payload[17]~input_o\)) # (\leafs[3].payload[17]~input_o\) ) ) # ( !\leafs[3].tag[1]~input_o\ & ( (\leafs[2].tag[1]~input_o\ & 
-- \leafs[2].payload[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].payload[17]~input_o\,
	datad => \ALT_INV_leafs[2].payload[17]~input_o\,
	dataf => \ALT_INV_leafs[3].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(17));

-- Location: FF_X62_Y6_N43
\routers:1:levels:1:router_inst|output.payload[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(17));

-- Location: IOIBUF_X62_Y0_N52
\leafs[1].payload[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(17),
	o => \leafs[1].payload[17]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\leafs[0].payload[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(17),
	o => \leafs[0].payload[17]~input_o\);

-- Location: LABCELL_X64_Y2_N12
\routers:1:levels:0:router_inst|o_arr[1].payload[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(17) = ( \leafs[0].payload[17]~input_o\ & ( ((\leafs[1].payload[17]~input_o\ & \leafs[1].tag[1]~input_o\)) # (\leafs[0].tag[1]~input_o\) ) ) # ( !\leafs[0].payload[17]~input_o\ & ( 
-- (\leafs[1].payload[17]~input_o\ & \leafs[1].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].payload[17]~input_o\,
	datab => \ALT_INV_leafs[0].tag[1]~input_o\,
	datac => \ALT_INV_leafs[1].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[0].payload[17]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(17));

-- Location: FF_X64_Y2_N13
\routers:1:levels:0:router_inst|output.payload[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(17));

-- Location: LABCELL_X63_Y6_N42
\routers:0:levels:0:router_inst|o_arr[1].payload[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(17) = ( \routers:1:levels:0:router_inst|output.payload\(17) & ( ((\routers:1:levels:1:router_inst|output.payload\(17) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(17) & ( (\routers:1:levels:1:router_inst|output.payload\(17) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(17),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(17),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(17));

-- Location: FF_X63_Y6_N43
\routers:0:levels:0:router_inst|output.payload[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(17));

-- Location: IOIBUF_X34_Y0_N92
\leafs[3].payload[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(18),
	o => \leafs[3].payload[18]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\leafs[2].payload[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(18),
	o => \leafs[2].payload[18]~input_o\);

-- Location: LABCELL_X62_Y6_N48
\routers:1:levels:1:router_inst|o_arr[1].payload[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(18) = (!\leafs[2].tag[1]~input_o\ & (\leafs[3].payload[18]~input_o\ & (\leafs[3].tag[1]~input_o\))) # (\leafs[2].tag[1]~input_o\ & (((\leafs[3].payload[18]~input_o\ & \leafs[3].tag[1]~input_o\)) # 
-- (\leafs[2].payload[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datab => \ALT_INV_leafs[3].payload[18]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[2].payload[18]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(18));

-- Location: FF_X62_Y6_N50
\routers:1:levels:1:router_inst|output.payload[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(18));

-- Location: IOIBUF_X60_Y0_N35
\leafs[0].payload[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(18),
	o => \leafs[0].payload[18]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\leafs[1].payload[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(18),
	o => \leafs[1].payload[18]~input_o\);

-- Location: LABCELL_X62_Y2_N42
\routers:1:levels:0:router_inst|o_arr[1].payload[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(18) = ( \leafs[1].payload[18]~input_o\ & ( ((\leafs[0].tag[1]~input_o\ & \leafs[0].payload[18]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].payload[18]~input_o\ & ( 
-- (\leafs[0].tag[1]~input_o\ & \leafs[0].payload[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000100010001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].tag[1]~input_o\,
	datab => \ALT_INV_leafs[0].payload[18]~input_o\,
	datac => \ALT_INV_leafs[1].tag[1]~input_o\,
	datae => \ALT_INV_leafs[1].payload[18]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(18));

-- Location: FF_X62_Y2_N43
\routers:1:levels:0:router_inst|output.payload[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(18));

-- Location: LABCELL_X62_Y6_N24
\routers:0:levels:0:router_inst|o_arr[1].payload[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(18) = ( \routers:1:levels:0:router_inst|output.payload\(18) & ( ((\routers:1:levels:1:router_inst|output.payload\(18) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(18) & ( (\routers:1:levels:1:router_inst|output.payload\(18) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(18),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(18),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(18));

-- Location: FF_X62_Y6_N26
\routers:0:levels:0:router_inst|output.payload[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(18));

-- Location: IOIBUF_X72_Y81_N52
\leafs[3].payload[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(19),
	o => \leafs[3].payload[19]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\leafs[2].payload[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(19),
	o => \leafs[2].payload[19]~input_o\);

-- Location: LABCELL_X64_Y7_N18
\routers:1:levels:1:router_inst|o_arr[1].payload[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(19) = ( \leafs[2].payload[19]~input_o\ & ( ((\leafs[3].payload[19]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[19]~input_o\ & ( 
-- (\leafs[3].payload[19]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[3].payload[19]~input_o\,
	datab => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[19]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(19));

-- Location: FF_X64_Y7_N20
\routers:1:levels:1:router_inst|output.payload[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(19));

-- Location: IOIBUF_X89_Y35_N78
\leafs[1].payload[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(19),
	o => \leafs[1].payload[19]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\leafs[0].payload[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(19),
	o => \leafs[0].payload[19]~input_o\);

-- Location: LABCELL_X64_Y7_N45
\routers:1:levels:0:router_inst|o_arr[1].payload[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(19) = ( \leafs[1].tag[1]~input_o\ & ( ((\leafs[0].tag[1]~input_o\ & \leafs[0].payload[19]~input_o\)) # (\leafs[1].payload[19]~input_o\) ) ) # ( !\leafs[1].tag[1]~input_o\ & ( (\leafs[0].tag[1]~input_o\ & 
-- \leafs[0].payload[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[0].tag[1]~input_o\,
	datac => \ALT_INV_leafs[1].payload[19]~input_o\,
	datad => \ALT_INV_leafs[0].payload[19]~input_o\,
	dataf => \ALT_INV_leafs[1].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(19));

-- Location: FF_X64_Y7_N47
\routers:1:levels:0:router_inst|output.payload[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(19));

-- Location: LABCELL_X64_Y7_N42
\routers:0:levels:0:router_inst|o_arr[1].payload[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(19) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.payload\(19) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(19)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.payload\(19) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(19),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(19),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(19));

-- Location: FF_X64_Y7_N43
\routers:0:levels:0:router_inst|output.payload[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(19));

-- Location: IOIBUF_X68_Y0_N1
\leafs[2].payload[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(20),
	o => \leafs[2].payload[20]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\leafs[3].payload[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(20),
	o => \leafs[3].payload[20]~input_o\);

-- Location: LABCELL_X63_Y6_N54
\routers:1:levels:1:router_inst|o_arr[1].payload[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(20) = (!\leafs[2].tag[1]~input_o\ & (((\leafs[3].tag[1]~input_o\ & \leafs[3].payload[20]~input_o\)))) # (\leafs[2].tag[1]~input_o\ & (((\leafs[3].tag[1]~input_o\ & \leafs[3].payload[20]~input_o\)) # 
-- (\leafs[2].payload[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datab => \ALT_INV_leafs[2].payload[20]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[3].payload[20]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(20));

-- Location: FF_X63_Y6_N56
\routers:1:levels:1:router_inst|output.payload[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(20));

-- Location: IOIBUF_X58_Y81_N41
\leafs[1].payload[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(20),
	o => \leafs[1].payload[20]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\leafs[0].payload[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(20),
	o => \leafs[0].payload[20]~input_o\);

-- Location: LABCELL_X63_Y6_N18
\routers:1:levels:0:router_inst|o_arr[1].payload[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(20) = ( \leafs[0].tag[1]~input_o\ & ( ((\leafs[1].payload[20]~input_o\ & \leafs[1].tag[1]~input_o\)) # (\leafs[0].payload[20]~input_o\) ) ) # ( !\leafs[0].tag[1]~input_o\ & ( 
-- (\leafs[1].payload[20]~input_o\ & \leafs[1].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[1].payload[20]~input_o\,
	datac => \ALT_INV_leafs[0].payload[20]~input_o\,
	datad => \ALT_INV_leafs[1].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[0].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(20));

-- Location: FF_X63_Y6_N19
\routers:1:levels:0:router_inst|output.payload[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(20));

-- Location: LABCELL_X63_Y6_N39
\routers:0:levels:0:router_inst|o_arr[1].payload[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(20) = ( \routers:1:levels:0:router_inst|output.payload\(20) & ( ((\routers:1:levels:1:router_inst|output.payload\(20) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(20) & ( (\routers:1:levels:1:router_inst|output.payload\(20) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(20),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(20),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(20));

-- Location: FF_X63_Y6_N41
\routers:0:levels:0:router_inst|output.payload[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(20));

-- Location: IOIBUF_X54_Y0_N1
\leafs[3].payload[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(21),
	o => \leafs[3].payload[21]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\leafs[2].payload[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(21),
	o => \leafs[2].payload[21]~input_o\);

-- Location: LABCELL_X62_Y6_N21
\routers:1:levels:1:router_inst|o_arr[1].payload[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(21) = ( \leafs[2].payload[21]~input_o\ & ( \leafs[3].tag[1]~input_o\ & ( (\leafs[3].payload[21]~input_o\) # (\leafs[2].tag[1]~input_o\) ) ) ) # ( !\leafs[2].payload[21]~input_o\ & ( 
-- \leafs[3].tag[1]~input_o\ & ( \leafs[3].payload[21]~input_o\ ) ) ) # ( \leafs[2].payload[21]~input_o\ & ( !\leafs[3].tag[1]~input_o\ & ( \leafs[2].tag[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].payload[21]~input_o\,
	datae => \ALT_INV_leafs[2].payload[21]~input_o\,
	dataf => \ALT_INV_leafs[3].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(21));

-- Location: FF_X62_Y6_N22
\routers:1:levels:1:router_inst|output.payload[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(21));

-- Location: IOIBUF_X66_Y0_N41
\leafs[1].payload[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(21),
	o => \leafs[1].payload[21]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\leafs[0].payload[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(21),
	o => \leafs[0].payload[21]~input_o\);

-- Location: LABCELL_X63_Y6_N30
\routers:1:levels:0:router_inst|o_arr[1].payload[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(21) = ( \leafs[0].payload[21]~input_o\ & ( ((\leafs[1].payload[21]~input_o\ & \leafs[1].tag[1]~input_o\)) # (\leafs[0].tag[1]~input_o\) ) ) # ( !\leafs[0].payload[21]~input_o\ & ( 
-- (\leafs[1].payload[21]~input_o\ & \leafs[1].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[1].payload[21]~input_o\,
	datac => \ALT_INV_leafs[1].tag[1]~input_o\,
	datad => \ALT_INV_leafs[0].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[0].payload[21]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(21));

-- Location: FF_X63_Y6_N31
\routers:1:levels:0:router_inst|output.payload[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(21));

-- Location: LABCELL_X63_Y6_N6
\routers:0:levels:0:router_inst|o_arr[1].payload[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(21) = ( \routers:1:levels:0:router_inst|output.payload\(21) & ( ((\routers:1:levels:1:router_inst|output.payload\(21) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(21) & ( (\routers:1:levels:1:router_inst|output.payload\(21) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(21),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(21),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(21));

-- Location: FF_X63_Y6_N7
\routers:0:levels:0:router_inst|output.payload[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(21));

-- Location: IOIBUF_X89_Y8_N55
\leafs[0].payload[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(22),
	o => \leafs[0].payload[22]~input_o\);

-- Location: IOIBUF_X54_Y81_N35
\leafs[1].payload[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(22),
	o => \leafs[1].payload[22]~input_o\);

-- Location: LABCELL_X61_Y6_N15
\routers:1:levels:0:router_inst|o_arr[1].payload[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(22) = ( \leafs[1].payload[22]~input_o\ & ( ((\leafs[0].tag[1]~input_o\ & \leafs[0].payload[22]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].payload[22]~input_o\ & ( 
-- (\leafs[0].tag[1]~input_o\ & \leafs[0].payload[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000100010001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].tag[1]~input_o\,
	datab => \ALT_INV_leafs[0].payload[22]~input_o\,
	datac => \ALT_INV_leafs[1].tag[1]~input_o\,
	datae => \ALT_INV_leafs[1].payload[22]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(22));

-- Location: FF_X61_Y6_N16
\routers:1:levels:0:router_inst|output.payload[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(22));

-- Location: IOIBUF_X58_Y81_N58
\leafs[3].payload[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(22),
	o => \leafs[3].payload[22]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\leafs[2].payload[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(22),
	o => \leafs[2].payload[22]~input_o\);

-- Location: LABCELL_X62_Y6_N54
\routers:1:levels:1:router_inst|o_arr[1].payload[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(22) = ( \leafs[2].payload[22]~input_o\ & ( ((\leafs[3].tag[1]~input_o\ & \leafs[3].payload[22]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[22]~input_o\ & ( 
-- (\leafs[3].tag[1]~input_o\ & \leafs[3].payload[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].tag[1]~input_o\,
	datab => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[3].payload[22]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[22]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(22));

-- Location: FF_X62_Y6_N55
\routers:1:levels:1:router_inst|output.payload[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(22));

-- Location: LABCELL_X63_Y6_N33
\routers:0:levels:0:router_inst|o_arr[1].payload[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(22) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.payload\(22) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(22)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.payload\(22) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(22),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(22),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(22));

-- Location: FF_X63_Y6_N34
\routers:0:levels:0:router_inst|output.payload[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(22));

-- Location: IOIBUF_X28_Y0_N18
\leafs[0].payload[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(23),
	o => \leafs[0].payload[23]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\leafs[1].payload[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(23),
	o => \leafs[1].payload[23]~input_o\);

-- Location: LABCELL_X62_Y5_N12
\routers:1:levels:0:router_inst|o_arr[1].payload[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(23) = ( \leafs[1].payload[23]~input_o\ & ( ((\leafs[0].tag[1]~input_o\ & \leafs[0].payload[23]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].payload[23]~input_o\ & ( 
-- (\leafs[0].tag[1]~input_o\ & \leafs[0].payload[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].tag[1]~input_o\,
	datac => \ALT_INV_leafs[1].tag[1]~input_o\,
	datad => \ALT_INV_leafs[0].payload[23]~input_o\,
	dataf => \ALT_INV_leafs[1].payload[23]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(23));

-- Location: FF_X62_Y5_N14
\routers:1:levels:0:router_inst|output.payload[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(23));

-- Location: IOIBUF_X54_Y0_N52
\leafs[2].payload[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(23),
	o => \leafs[2].payload[23]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\leafs[3].payload[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(23),
	o => \leafs[3].payload[23]~input_o\);

-- Location: LABCELL_X62_Y5_N3
\routers:1:levels:1:router_inst|o_arr[1].payload[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(23) = ( \leafs[2].tag[1]~input_o\ & ( \leafs[3].payload[23]~input_o\ & ( (\leafs[3].tag[1]~input_o\) # (\leafs[2].payload[23]~input_o\) ) ) ) # ( !\leafs[2].tag[1]~input_o\ & ( 
-- \leafs[3].payload[23]~input_o\ & ( \leafs[3].tag[1]~input_o\ ) ) ) # ( \leafs[2].tag[1]~input_o\ & ( !\leafs[3].payload[23]~input_o\ & ( \leafs[2].payload[23]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].payload[23]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	datae => \ALT_INV_leafs[2].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[3].payload[23]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(23));

-- Location: FF_X62_Y5_N5
\routers:1:levels:1:router_inst|output.payload[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(23));

-- Location: LABCELL_X62_Y5_N15
\routers:0:levels:0:router_inst|o_arr[1].payload[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(23) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(23))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(23)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(23),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(23),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(23));

-- Location: FF_X62_Y5_N16
\routers:0:levels:0:router_inst|output.payload[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(23));

-- Location: IOIBUF_X89_Y37_N4
\leafs[2].payload[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(24),
	o => \leafs[2].payload[24]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\leafs[3].payload[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(24),
	o => \leafs[3].payload[24]~input_o\);

-- Location: LABCELL_X64_Y7_N27
\routers:1:levels:1:router_inst|o_arr[1].payload[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(24) = ( \leafs[2].tag[1]~input_o\ & ( ((\leafs[3].payload[24]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].payload[24]~input_o\) ) ) # ( !\leafs[2].tag[1]~input_o\ & ( 
-- (\leafs[3].payload[24]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[2].payload[24]~input_o\,
	datac => \ALT_INV_leafs[3].payload[24]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(24));

-- Location: FF_X64_Y7_N29
\routers:1:levels:1:router_inst|output.payload[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(24));

-- Location: IOIBUF_X89_Y35_N44
\leafs[0].payload[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(24),
	o => \leafs[0].payload[24]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\leafs[1].payload[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(24),
	o => \leafs[1].payload[24]~input_o\);

-- Location: LABCELL_X64_Y7_N54
\routers:1:levels:0:router_inst|o_arr[1].payload[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(24) = ( \leafs[1].payload[24]~input_o\ & ( ((\leafs[0].payload[24]~input_o\ & \leafs[0].tag[1]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].payload[24]~input_o\ & ( 
-- (\leafs[0].payload[24]~input_o\ & \leafs[0].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].payload[24]~input_o\,
	datad => \ALT_INV_leafs[0].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[1].payload[24]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(24));

-- Location: FF_X64_Y7_N56
\routers:1:levels:0:router_inst|output.payload[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(24));

-- Location: LABCELL_X64_Y7_N24
\routers:0:levels:0:router_inst|o_arr[1].payload[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(24) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.payload\(24) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(24)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.payload\(24) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(24),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(24),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(24));

-- Location: FF_X64_Y7_N26
\routers:0:levels:0:router_inst|output.payload[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(24));

-- Location: IOIBUF_X54_Y81_N1
\leafs[0].payload[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(25),
	o => \leafs[0].payload[25]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\leafs[1].payload[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(25),
	o => \leafs[1].payload[25]~input_o\);

-- Location: LABCELL_X61_Y6_N42
\routers:1:levels:0:router_inst|o_arr[1].payload[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(25) = ( \leafs[1].payload[25]~input_o\ & ( \leafs[0].tag[1]~input_o\ & ( (\leafs[0].payload[25]~input_o\) # (\leafs[1].tag[1]~input_o\) ) ) ) # ( !\leafs[1].payload[25]~input_o\ & ( 
-- \leafs[0].tag[1]~input_o\ & ( \leafs[0].payload[25]~input_o\ ) ) ) # ( \leafs[1].payload[25]~input_o\ & ( !\leafs[0].tag[1]~input_o\ & ( \leafs[1].tag[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].payload[25]~input_o\,
	datae => \ALT_INV_leafs[1].payload[25]~input_o\,
	dataf => \ALT_INV_leafs[0].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(25));

-- Location: FF_X61_Y6_N43
\routers:1:levels:0:router_inst|output.payload[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(25));

-- Location: IOIBUF_X40_Y0_N18
\leafs[2].payload[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(25),
	o => \leafs[2].payload[25]~input_o\);

-- Location: IOIBUF_X52_Y81_N52
\leafs[3].payload[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(25),
	o => \leafs[3].payload[25]~input_o\);

-- Location: LABCELL_X62_Y6_N27
\routers:1:levels:1:router_inst|o_arr[1].payload[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(25) = ( \leafs[3].payload[25]~input_o\ & ( ((\leafs[2].payload[25]~input_o\ & \leafs[2].tag[1]~input_o\)) # (\leafs[3].tag[1]~input_o\) ) ) # ( !\leafs[3].payload[25]~input_o\ & ( 
-- (\leafs[2].payload[25]~input_o\ & \leafs[2].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[3].tag[1]~input_o\,
	datac => \ALT_INV_leafs[2].payload[25]~input_o\,
	datad => \ALT_INV_leafs[2].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[3].payload[25]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(25));

-- Location: FF_X62_Y6_N29
\routers:1:levels:1:router_inst|output.payload[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(25));

-- Location: LABCELL_X62_Y6_N45
\routers:0:levels:0:router_inst|o_arr[1].payload[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(25) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(25))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(25)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(25),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(25),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(25));

-- Location: FF_X62_Y6_N46
\routers:0:levels:0:router_inst|output.payload[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(25));

-- Location: IOIBUF_X89_Y9_N4
\leafs[1].payload[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(26),
	o => \leafs[1].payload[26]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\leafs[0].payload[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(26),
	o => \leafs[0].payload[26]~input_o\);

-- Location: LABCELL_X64_Y7_N12
\routers:1:levels:0:router_inst|o_arr[1].payload[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(26) = ( \leafs[0].payload[26]~input_o\ & ( ((\leafs[1].tag[1]~input_o\ & \leafs[1].payload[26]~input_o\)) # (\leafs[0].tag[1]~input_o\) ) ) # ( !\leafs[0].payload[26]~input_o\ & ( 
-- (\leafs[1].tag[1]~input_o\ & \leafs[1].payload[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[1].payload[26]~input_o\,
	datad => \ALT_INV_leafs[0].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[0].payload[26]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(26));

-- Location: FF_X64_Y7_N14
\routers:1:levels:0:router_inst|output.payload[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(26));

-- Location: IOIBUF_X72_Y0_N35
\leafs[3].payload[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(26),
	o => \leafs[3].payload[26]~input_o\);

-- Location: IOIBUF_X72_Y81_N35
\leafs[2].payload[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(26),
	o => \leafs[2].payload[26]~input_o\);

-- Location: LABCELL_X64_Y7_N15
\routers:1:levels:1:router_inst|o_arr[1].payload[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(26) = ( \leafs[2].payload[26]~input_o\ & ( ((\leafs[3].payload[26]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[26]~input_o\ & ( 
-- (\leafs[3].payload[26]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[3].payload[26]~input_o\,
	datac => \ALT_INV_leafs[2].tag[1]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[26]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(26));

-- Location: FF_X64_Y7_N17
\routers:1:levels:1:router_inst|output.payload[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(26));

-- Location: LABCELL_X64_Y7_N57
\routers:0:levels:0:router_inst|o_arr[1].payload[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(26) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.payload\(26) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(26)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.payload\(26) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(26),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(26),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(26));

-- Location: FF_X64_Y7_N58
\routers:0:levels:0:router_inst|output.payload[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(26));

-- Location: IOIBUF_X52_Y0_N1
\leafs[2].payload[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(27),
	o => \leafs[2].payload[27]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\leafs[3].payload[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(27),
	o => \leafs[3].payload[27]~input_o\);

-- Location: LABCELL_X62_Y5_N18
\routers:1:levels:1:router_inst|o_arr[1].payload[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(27) = ( \leafs[2].tag[1]~input_o\ & ( \leafs[3].tag[1]~input_o\ & ( (\leafs[3].payload[27]~input_o\) # (\leafs[2].payload[27]~input_o\) ) ) ) # ( !\leafs[2].tag[1]~input_o\ & ( \leafs[3].tag[1]~input_o\ & 
-- ( \leafs[3].payload[27]~input_o\ ) ) ) # ( \leafs[2].tag[1]~input_o\ & ( !\leafs[3].tag[1]~input_o\ & ( \leafs[2].payload[27]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100110011001100110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[2].payload[27]~input_o\,
	datab => \ALT_INV_leafs[3].payload[27]~input_o\,
	datae => \ALT_INV_leafs[2].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[3].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(27));

-- Location: FF_X62_Y5_N20
\routers:1:levels:1:router_inst|output.payload[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(27));

-- Location: IOIBUF_X40_Y0_N52
\leafs[0].payload[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(27),
	o => \leafs[0].payload[27]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\leafs[1].payload[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(27),
	o => \leafs[1].payload[27]~input_o\);

-- Location: LABCELL_X62_Y5_N45
\routers:1:levels:0:router_inst|o_arr[1].payload[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(27) = ( \leafs[1].payload[27]~input_o\ & ( ((\leafs[0].tag[1]~input_o\ & \leafs[0].payload[27]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].payload[27]~input_o\ & ( 
-- (\leafs[0].tag[1]~input_o\ & \leafs[0].payload[27]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].payload[27]~input_o\,
	datad => \ALT_INV_leafs[1].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[1].payload[27]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(27));

-- Location: FF_X62_Y5_N47
\routers:1:levels:0:router_inst|output.payload[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(27));

-- Location: LABCELL_X62_Y5_N42
\routers:0:levels:0:router_inst|o_arr[1].payload[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(27) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(27))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(27)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.tag\(1) & \routers:1:levels:1:router_inst|output.payload\(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(27),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(27),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(27));

-- Location: FF_X62_Y5_N43
\routers:0:levels:0:router_inst|output.payload[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(27));

-- Location: IOIBUF_X72_Y0_N52
\leafs[3].payload[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(28),
	o => \leafs[3].payload[28]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\leafs[2].payload[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(28),
	o => \leafs[2].payload[28]~input_o\);

-- Location: LABCELL_X64_Y7_N30
\routers:1:levels:1:router_inst|o_arr[1].payload[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(28) = ( \leafs[2].tag[1]~input_o\ & ( ((\leafs[3].payload[28]~input_o\ & \leafs[3].tag[1]~input_o\)) # (\leafs[2].payload[28]~input_o\) ) ) # ( !\leafs[2].tag[1]~input_o\ & ( 
-- (\leafs[3].payload[28]~input_o\ & \leafs[3].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[3].payload[28]~input_o\,
	datac => \ALT_INV_leafs[2].payload[28]~input_o\,
	datad => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(28));

-- Location: FF_X64_Y7_N32
\routers:1:levels:1:router_inst|output.payload[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(28));

-- Location: IOIBUF_X36_Y0_N35
\leafs[0].payload[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(28),
	o => \leafs[0].payload[28]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\leafs[1].payload[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(28),
	o => \leafs[1].payload[28]~input_o\);

-- Location: LABCELL_X64_Y7_N51
\routers:1:levels:0:router_inst|o_arr[1].payload[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(28) = ( \leafs[1].payload[28]~input_o\ & ( ((\leafs[0].tag[1]~input_o\ & \leafs[0].payload[28]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].payload[28]~input_o\ & ( 
-- (\leafs[0].tag[1]~input_o\ & \leafs[0].payload[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].tag[1]~input_o\,
	datad => \ALT_INV_leafs[0].payload[28]~input_o\,
	dataf => \ALT_INV_leafs[1].payload[28]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(28));

-- Location: FF_X64_Y7_N53
\routers:1:levels:0:router_inst|output.payload[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(28));

-- Location: LABCELL_X64_Y7_N48
\routers:0:levels:0:router_inst|o_arr[1].payload[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(28) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.payload\(28) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(28)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.payload\(28) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(28),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(28),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(28));

-- Location: FF_X64_Y7_N49
\routers:0:levels:0:router_inst|output.payload[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(28));

-- Location: IOIBUF_X89_Y37_N38
\leafs[1].payload[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(29),
	o => \leafs[1].payload[29]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\leafs[0].payload[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(29),
	o => \leafs[0].payload[29]~input_o\);

-- Location: LABCELL_X64_Y7_N36
\routers:1:levels:0:router_inst|o_arr[1].payload[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(29) = ( \leafs[1].tag[1]~input_o\ & ( ((\leafs[0].payload[29]~input_o\ & \leafs[0].tag[1]~input_o\)) # (\leafs[1].payload[29]~input_o\) ) ) # ( !\leafs[1].tag[1]~input_o\ & ( 
-- (\leafs[0].payload[29]~input_o\ & \leafs[0].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[1].payload[29]~input_o\,
	datac => \ALT_INV_leafs[0].payload[29]~input_o\,
	datad => \ALT_INV_leafs[0].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[1].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(29));

-- Location: FF_X64_Y7_N38
\routers:1:levels:0:router_inst|output.payload[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(29));

-- Location: IOIBUF_X2_Y0_N58
\leafs[2].payload[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(29),
	o => \leafs[2].payload[29]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\leafs[3].payload[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(29),
	o => \leafs[3].payload[29]~input_o\);

-- Location: LABCELL_X64_Y7_N9
\routers:1:levels:1:router_inst|o_arr[1].payload[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(29) = ( \leafs[3].tag[1]~input_o\ & ( \leafs[2].tag[1]~input_o\ & ( (\leafs[3].payload[29]~input_o\) # (\leafs[2].payload[29]~input_o\) ) ) ) # ( !\leafs[3].tag[1]~input_o\ & ( \leafs[2].tag[1]~input_o\ & 
-- ( \leafs[2].payload[29]~input_o\ ) ) ) # ( \leafs[3].tag[1]~input_o\ & ( !\leafs[2].tag[1]~input_o\ & ( \leafs[3].payload[29]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[2].payload[29]~input_o\,
	datac => \ALT_INV_leafs[3].payload[29]~input_o\,
	datae => \ALT_INV_leafs[3].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[2].tag[1]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(29));

-- Location: FF_X64_Y7_N11
\routers:1:levels:1:router_inst|output.payload[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(29));

-- Location: LABCELL_X64_Y7_N33
\routers:0:levels:0:router_inst|o_arr[1].payload[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(29) = ( \routers:1:levels:1:router_inst|output.tag\(1) & ( ((\routers:1:levels:0:router_inst|output.payload\(29) & \routers:1:levels:0:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:1:router_inst|output.payload\(29)) ) ) # ( !\routers:1:levels:1:router_inst|output.tag\(1) & ( (\routers:1:levels:0:router_inst|output.payload\(29) & \routers:1:levels:0:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(29),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(29),
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(29));

-- Location: FF_X64_Y7_N34
\routers:0:levels:0:router_inst|output.payload[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(29));

-- Location: IOIBUF_X56_Y81_N1
\leafs[2].payload[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(30),
	o => \leafs[2].payload[30]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\leafs[3].payload[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(30),
	o => \leafs[3].payload[30]~input_o\);

-- Location: LABCELL_X62_Y6_N9
\routers:1:levels:1:router_inst|o_arr[1].payload[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(30) = ( \leafs[3].payload[30]~input_o\ & ( ((\leafs[2].tag[1]~input_o\ & \leafs[2].payload[30]~input_o\)) # (\leafs[3].tag[1]~input_o\) ) ) # ( !\leafs[3].payload[30]~input_o\ & ( 
-- (\leafs[2].tag[1]~input_o\ & \leafs[2].payload[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[3].tag[1]~input_o\,
	datac => \ALT_INV_leafs[2].tag[1]~input_o\,
	datad => \ALT_INV_leafs[2].payload[30]~input_o\,
	dataf => \ALT_INV_leafs[3].payload[30]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(30));

-- Location: FF_X62_Y6_N10
\routers:1:levels:1:router_inst|output.payload[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(30));

-- Location: IOIBUF_X54_Y0_N35
\leafs[0].payload[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(30),
	o => \leafs[0].payload[30]~input_o\);

-- Location: IOIBUF_X52_Y81_N18
\leafs[1].payload[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(30),
	o => \leafs[1].payload[30]~input_o\);

-- Location: LABCELL_X61_Y6_N6
\routers:1:levels:0:router_inst|o_arr[1].payload[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(30) = ( \leafs[0].tag[1]~input_o\ & ( ((\leafs[1].tag[1]~input_o\ & \leafs[1].payload[30]~input_o\)) # (\leafs[0].payload[30]~input_o\) ) ) # ( !\leafs[0].tag[1]~input_o\ & ( (\leafs[1].tag[1]~input_o\ & 
-- \leafs[1].payload[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].payload[30]~input_o\,
	datab => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[1].payload[30]~input_o\,
	dataf => \ALT_INV_leafs[0].tag[1]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(30));

-- Location: FF_X62_Y6_N4
\routers:1:levels:0:router_inst|output.payload[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \routers:1:levels:0:router_inst|o_arr[1].payload\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(30));

-- Location: LABCELL_X63_Y6_N3
\routers:0:levels:0:router_inst|o_arr[1].payload[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(30) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.payload\(30) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.payload\(30)) ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.payload\(30) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(30),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(30),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(30));

-- Location: FF_X63_Y6_N5
\routers:0:levels:0:router_inst|output.payload[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(30));

-- Location: IOIBUF_X68_Y0_N35
\leafs[3].payload[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].payload\(31),
	o => \leafs[3].payload[31]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\leafs[2].payload[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].payload\(31),
	o => \leafs[2].payload[31]~input_o\);

-- Location: LABCELL_X64_Y6_N54
\routers:1:levels:1:router_inst|o_arr[1].payload[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].payload\(31) = ( \leafs[2].payload[31]~input_o\ & ( ((\leafs[3].tag[1]~input_o\ & \leafs[3].payload[31]~input_o\)) # (\leafs[2].tag[1]~input_o\) ) ) # ( !\leafs[2].payload[31]~input_o\ & ( 
-- (\leafs[3].tag[1]~input_o\ & \leafs[3].payload[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_leafs[2].tag[1]~input_o\,
	datac => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[3].payload[31]~input_o\,
	dataf => \ALT_INV_leafs[2].payload[31]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].payload\(31));

-- Location: FF_X64_Y6_N56
\routers:1:levels:1:router_inst|output.payload[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].payload\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.payload\(31));

-- Location: IOIBUF_X52_Y0_N18
\leafs[0].payload[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].payload\(31),
	o => \leafs[0].payload[31]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\leafs[1].payload[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].payload\(31),
	o => \leafs[1].payload[31]~input_o\);

-- Location: LABCELL_X62_Y2_N12
\routers:1:levels:0:router_inst|o_arr[1].payload[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].payload\(31) = ( \leafs[0].tag[1]~input_o\ & ( \leafs[1].payload[31]~input_o\ & ( (\leafs[0].payload[31]~input_o\) # (\leafs[1].tag[1]~input_o\) ) ) ) # ( !\leafs[0].tag[1]~input_o\ & ( 
-- \leafs[1].payload[31]~input_o\ & ( \leafs[1].tag[1]~input_o\ ) ) ) # ( \leafs[0].tag[1]~input_o\ & ( !\leafs[1].payload[31]~input_o\ & ( \leafs[0].payload[31]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].payload[31]~input_o\,
	datae => \ALT_INV_leafs[0].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[1].payload[31]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].payload\(31));

-- Location: FF_X62_Y2_N14
\routers:1:levels:0:router_inst|output.payload[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].payload\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.payload\(31));

-- Location: LABCELL_X63_Y6_N9
\routers:0:levels:0:router_inst|o_arr[1].payload[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].payload\(31) = ( \routers:1:levels:0:router_inst|output.payload\(31) & ( ((\routers:1:levels:1:router_inst|output.payload\(31) & \routers:1:levels:1:router_inst|output.tag\(1))) # 
-- (\routers:1:levels:0:router_inst|output.tag\(1)) ) ) # ( !\routers:1:levels:0:router_inst|output.payload\(31) & ( (\routers:1:levels:1:router_inst|output.payload\(31) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	datac => \routers:1:levels:1:router_inst|ALT_INV_output.payload\(31),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.payload\(31),
	combout => \routers:0:levels:0:router_inst|o_arr[1].payload\(31));

-- Location: FF_X63_Y6_N10
\routers:0:levels:0:router_inst|output.payload[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].payload\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.payload\(31));

-- Location: IOIBUF_X89_Y6_N21
\leafs[2].tag[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[2].tag\(0),
	o => \leafs[2].tag[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\leafs[3].tag[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[3].tag\(0),
	o => \leafs[3].tag[0]~input_o\);

-- Location: LABCELL_X64_Y6_N9
\routers:1:levels:1:router_inst|o_arr[1].tag[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:1:router_inst|o_arr[1].tag\(0) = ( \leafs[2].tag[1]~input_o\ & ( \leafs[3].tag[0]~input_o\ & ( (\leafs[2].tag[0]~input_o\) # (\leafs[3].tag[1]~input_o\) ) ) ) # ( !\leafs[2].tag[1]~input_o\ & ( \leafs[3].tag[0]~input_o\ & ( 
-- \leafs[3].tag[1]~input_o\ ) ) ) # ( \leafs[2].tag[1]~input_o\ & ( !\leafs[3].tag[0]~input_o\ & ( \leafs[2].tag[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111101010101010101010101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[3].tag[1]~input_o\,
	datad => \ALT_INV_leafs[2].tag[0]~input_o\,
	datae => \ALT_INV_leafs[2].tag[1]~input_o\,
	dataf => \ALT_INV_leafs[3].tag[0]~input_o\,
	combout => \routers:1:levels:1:router_inst|o_arr[1].tag\(0));

-- Location: FF_X64_Y6_N11
\routers:1:levels:1:router_inst|output.tag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:1:router_inst|o_arr[1].tag\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:1:router_inst|output.tag\(0));

-- Location: IOIBUF_X89_Y6_N55
\leafs[0].tag[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[0].tag\(0),
	o => \leafs[0].tag[0]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\leafs[1].tag[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_leafs[1].tag\(0),
	o => \leafs[1].tag[0]~input_o\);

-- Location: LABCELL_X64_Y6_N39
\routers:1:levels:0:router_inst|o_arr[1].tag[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:1:levels:0:router_inst|o_arr[1].tag\(0) = ( \leafs[1].tag[0]~input_o\ & ( ((\leafs[0].tag[0]~input_o\ & \leafs[0].tag[1]~input_o\)) # (\leafs[1].tag[1]~input_o\) ) ) # ( !\leafs[1].tag[0]~input_o\ & ( (\leafs[0].tag[0]~input_o\ & 
-- \leafs[0].tag[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001101110011011100000101000001010011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_leafs[0].tag[0]~input_o\,
	datab => \ALT_INV_leafs[1].tag[1]~input_o\,
	datac => \ALT_INV_leafs[0].tag[1]~input_o\,
	datae => \ALT_INV_leafs[1].tag[0]~input_o\,
	combout => \routers:1:levels:0:router_inst|o_arr[1].tag\(0));

-- Location: FF_X64_Y6_N41
\routers:1:levels:0:router_inst|output.tag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:1:levels:0:router_inst|o_arr[1].tag\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:1:levels:0:router_inst|output.tag\(0));

-- Location: LABCELL_X63_Y6_N24
\routers:0:levels:0:router_inst|o_arr[1].tag[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].tag\(0) = ( \routers:1:levels:0:router_inst|output.tag\(1) & ( ((\routers:1:levels:1:router_inst|output.tag\(0) & \routers:1:levels:1:router_inst|output.tag\(1))) # (\routers:1:levels:0:router_inst|output.tag\(0)) 
-- ) ) # ( !\routers:1:levels:0:router_inst|output.tag\(1) & ( (\routers:1:levels:1:router_inst|output.tag\(0) & \routers:1:levels:1:router_inst|output.tag\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(0),
	datac => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(0),
	datad => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].tag\(0));

-- Location: FF_X63_Y6_N25
\routers:0:levels:0:router_inst|output.tag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].tag\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.tag\(0));

-- Location: LABCELL_X63_Y6_N57
\routers:0:levels:0:router_inst|o_arr[1].tag[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \routers:0:levels:0:router_inst|o_arr[1].tag\(1) = ( \routers:1:levels:1:router_inst|output.tag\(1) ) # ( !\routers:1:levels:1:router_inst|output.tag\(1) & ( \routers:1:levels:0:router_inst|output.tag\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \routers:1:levels:0:router_inst|ALT_INV_output.tag\(1),
	dataf => \routers:1:levels:1:router_inst|ALT_INV_output.tag\(1),
	combout => \routers:0:levels:0:router_inst|o_arr[1].tag\(1));

-- Location: FF_X63_Y6_N58
\routers:0:levels:0:router_inst|output.tag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \routers:0:levels:0:router_inst|o_arr[1].tag\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \routers:0:levels:0:router_inst|output.tag\(1));

-- Location: LABCELL_X43_Y39_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


