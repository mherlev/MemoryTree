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

-- DATE "04/28/2016 19:21:00"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	noc IS
    PORT (
	\leafs[3].payload\ : OUT std_logic_vector(31 DOWNTO 0);
	\leafs[3].tag\ : OUT std_logic_vector(1 DOWNTO 0);
	\leafs[2].payload\ : OUT std_logic_vector(31 DOWNTO 0);
	\leafs[2].tag\ : OUT std_logic_vector(1 DOWNTO 0);
	\leafs[1].payload\ : OUT std_logic_vector(31 DOWNTO 0);
	\leafs[1].tag\ : OUT std_logic_vector(1 DOWNTO 0);
	\leafs[0].payload\ : OUT std_logic_vector(31 DOWNTO 0);
	\leafs[0].tag\ : OUT std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	\root.payload\ : IN std_logic_vector(31 DOWNTO 0);
	\root.tag\ : IN std_logic_vector(1 DOWNTO 0)
	);
END noc;

-- Design Ports Information
-- clk	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[7]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[9]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[10]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[11]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[12]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[13]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[16]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[17]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[18]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[19]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[20]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[21]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[22]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[23]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[24]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[25]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[26]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[27]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[28]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[29]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[30]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.payload[31]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.tag[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- root.tag[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[7]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[8]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[10]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[12]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[14]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[15]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[16]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[17]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[18]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[19]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[20]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[21]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[22]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[23]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[24]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[25]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[26]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[27]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[28]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[29]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[30]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].payload[31]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].tag[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[3].tag[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[6]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[8]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[9]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[11]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[12]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[13]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[16]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[17]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[18]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[19]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[20]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[21]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[22]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[23]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[24]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[25]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[26]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[27]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[28]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[29]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[30]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].payload[31]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].tag[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[2].tag[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[3]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[9]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[10]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[11]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[12]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[13]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[14]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[15]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[16]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[18]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[19]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[20]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[21]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[22]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[23]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[24]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[25]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[26]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[27]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[28]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[29]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[30]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].payload[31]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].tag[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[1].tag[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[6]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[9]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[11]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[12]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[13]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[14]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[15]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[16]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[17]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[18]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[19]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[20]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[21]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[22]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[23]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[24]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[25]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[26]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[27]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[28]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[29]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[30]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].payload[31]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].tag[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leafs[0].tag[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF noc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_leafs[3].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_leafs[3].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ww_leafs[2].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_leafs[2].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ww_leafs[1].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_leafs[1].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ww_leafs[0].payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_leafs[0].tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL \ww_root.payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_root.tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \root.payload[0]~input_o\ : std_logic;
SIGNAL \root.payload[1]~input_o\ : std_logic;
SIGNAL \root.payload[2]~input_o\ : std_logic;
SIGNAL \root.payload[3]~input_o\ : std_logic;
SIGNAL \root.payload[4]~input_o\ : std_logic;
SIGNAL \root.payload[5]~input_o\ : std_logic;
SIGNAL \root.payload[6]~input_o\ : std_logic;
SIGNAL \root.payload[7]~input_o\ : std_logic;
SIGNAL \root.payload[8]~input_o\ : std_logic;
SIGNAL \root.payload[9]~input_o\ : std_logic;
SIGNAL \root.payload[10]~input_o\ : std_logic;
SIGNAL \root.payload[11]~input_o\ : std_logic;
SIGNAL \root.payload[12]~input_o\ : std_logic;
SIGNAL \root.payload[13]~input_o\ : std_logic;
SIGNAL \root.payload[14]~input_o\ : std_logic;
SIGNAL \root.payload[15]~input_o\ : std_logic;
SIGNAL \root.payload[16]~input_o\ : std_logic;
SIGNAL \root.payload[17]~input_o\ : std_logic;
SIGNAL \root.payload[18]~input_o\ : std_logic;
SIGNAL \root.payload[19]~input_o\ : std_logic;
SIGNAL \root.payload[20]~input_o\ : std_logic;
SIGNAL \root.payload[21]~input_o\ : std_logic;
SIGNAL \root.payload[22]~input_o\ : std_logic;
SIGNAL \root.payload[23]~input_o\ : std_logic;
SIGNAL \root.payload[24]~input_o\ : std_logic;
SIGNAL \root.payload[25]~input_o\ : std_logic;
SIGNAL \root.payload[26]~input_o\ : std_logic;
SIGNAL \root.payload[27]~input_o\ : std_logic;
SIGNAL \root.payload[28]~input_o\ : std_logic;
SIGNAL \root.payload[29]~input_o\ : std_logic;
SIGNAL \root.payload[30]~input_o\ : std_logic;
SIGNAL \root.payload[31]~input_o\ : std_logic;
SIGNAL \root.tag[0]~input_o\ : std_logic;
SIGNAL \root.tag[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

\leafs[3].payload\ <= \ww_leafs[3].payload\;
\leafs[3].tag\ <= \ww_leafs[3].tag\;
\leafs[2].payload\ <= \ww_leafs[2].payload\;
\leafs[2].tag\ <= \ww_leafs[2].tag\;
\leafs[1].payload\ <= \ww_leafs[1].payload\;
\leafs[1].tag\ <= \ww_leafs[1].tag\;
\leafs[0].payload\ <= \ww_leafs[0].payload\;
\leafs[0].tag\ <= \ww_leafs[0].tag\;
ww_clk <= clk;
\ww_root.payload\ <= \root.payload\;
\ww_root.tag\ <= \root.tag\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X64_Y81_N2
\leafs[3].payload[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(0));

-- Location: IOOBUF_X89_Y9_N56
\leafs[3].payload[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(1));

-- Location: IOOBUF_X64_Y0_N53
\leafs[3].payload[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(2));

-- Location: IOOBUF_X62_Y81_N36
\leafs[3].payload[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(3));

-- Location: IOOBUF_X80_Y81_N53
\leafs[3].payload[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(4));

-- Location: IOOBUF_X50_Y81_N93
\leafs[3].payload[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(5));

-- Location: IOOBUF_X50_Y0_N76
\leafs[3].payload[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(6));

-- Location: IOOBUF_X30_Y81_N53
\leafs[3].payload[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(7));

-- Location: IOOBUF_X60_Y0_N2
\leafs[3].payload[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(8));

-- Location: IOOBUF_X58_Y0_N42
\leafs[3].payload[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(9));

-- Location: IOOBUF_X78_Y81_N53
\leafs[3].payload[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(10));

-- Location: IOOBUF_X50_Y81_N42
\leafs[3].payload[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(11));

-- Location: IOOBUF_X54_Y0_N2
\leafs[3].payload[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(12));

-- Location: IOOBUF_X4_Y0_N2
\leafs[3].payload[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(13));

-- Location: IOOBUF_X84_Y81_N2
\leafs[3].payload[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(14));

-- Location: IOOBUF_X89_Y37_N39
\leafs[3].payload[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(15));

-- Location: IOOBUF_X6_Y0_N19
\leafs[3].payload[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(16));

-- Location: IOOBUF_X70_Y81_N53
\leafs[3].payload[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(17));

-- Location: IOOBUF_X56_Y0_N2
\leafs[3].payload[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(18));

-- Location: IOOBUF_X28_Y81_N2
\leafs[3].payload[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(19));

-- Location: IOOBUF_X70_Y0_N36
\leafs[3].payload[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(20));

-- Location: IOOBUF_X54_Y81_N19
\leafs[3].payload[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(21));

-- Location: IOOBUF_X60_Y81_N2
\leafs[3].payload[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(22));

-- Location: IOOBUF_X26_Y0_N59
\leafs[3].payload[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(23));

-- Location: IOOBUF_X66_Y81_N76
\leafs[3].payload[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(24));

-- Location: IOOBUF_X89_Y35_N96
\leafs[3].payload[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(25));

-- Location: IOOBUF_X30_Y81_N19
\leafs[3].payload[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(26));

-- Location: IOOBUF_X74_Y81_N59
\leafs[3].payload[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(27));

-- Location: IOOBUF_X68_Y81_N53
\leafs[3].payload[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(28));

-- Location: IOOBUF_X38_Y0_N53
\leafs[3].payload[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(29));

-- Location: IOOBUF_X2_Y0_N42
\leafs[3].payload[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(30));

-- Location: IOOBUF_X38_Y0_N19
\leafs[3].payload[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].payload\(31));

-- Location: IOOBUF_X86_Y81_N19
\leafs[3].tag[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].tag\(0));

-- Location: IOOBUF_X89_Y35_N45
\leafs[3].tag[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[3].tag\(1));

-- Location: IOOBUF_X89_Y36_N56
\leafs[2].payload[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(0));

-- Location: IOOBUF_X34_Y81_N42
\leafs[2].payload[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(1));

-- Location: IOOBUF_X89_Y4_N79
\leafs[2].payload[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(2));

-- Location: IOOBUF_X6_Y0_N36
\leafs[2].payload[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(3));

-- Location: IOOBUF_X8_Y0_N36
\leafs[2].payload[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(4));

-- Location: IOOBUF_X60_Y0_N53
\leafs[2].payload[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(5));

-- Location: IOOBUF_X34_Y81_N76
\leafs[2].payload[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(6));

-- Location: IOOBUF_X28_Y0_N2
\leafs[2].payload[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(7));

-- Location: IOOBUF_X40_Y81_N2
\leafs[2].payload[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(8));

-- Location: IOOBUF_X64_Y0_N19
\leafs[2].payload[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(9));

-- Location: IOOBUF_X32_Y0_N36
\leafs[2].payload[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(10));

-- Location: IOOBUF_X64_Y81_N36
\leafs[2].payload[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(11));

-- Location: IOOBUF_X58_Y81_N59
\leafs[2].payload[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(12));

-- Location: IOOBUF_X84_Y81_N53
\leafs[2].payload[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(13));

-- Location: IOOBUF_X54_Y81_N2
\leafs[2].payload[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(14));

-- Location: IOOBUF_X70_Y81_N2
\leafs[2].payload[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(15));

-- Location: IOOBUF_X70_Y0_N53
\leafs[2].payload[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(16));

-- Location: IOOBUF_X32_Y0_N53
\leafs[2].payload[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(17));

-- Location: IOOBUF_X66_Y0_N76
\leafs[2].payload[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(18));

-- Location: IOOBUF_X89_Y38_N56
\leafs[2].payload[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(19));

-- Location: IOOBUF_X89_Y4_N62
\leafs[2].payload[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(20));

-- Location: IOOBUF_X38_Y81_N36
\leafs[2].payload[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(21));

-- Location: IOOBUF_X4_Y0_N19
\leafs[2].payload[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(22));

-- Location: IOOBUF_X72_Y81_N19
\leafs[2].payload[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(23));

-- Location: IOOBUF_X76_Y81_N53
\leafs[2].payload[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(24));

-- Location: IOOBUF_X89_Y38_N39
\leafs[2].payload[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(25));

-- Location: IOOBUF_X38_Y0_N2
\leafs[2].payload[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(26));

-- Location: IOOBUF_X52_Y81_N19
\leafs[2].payload[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(27));

-- Location: IOOBUF_X30_Y0_N2
\leafs[2].payload[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(28));

-- Location: IOOBUF_X88_Y81_N54
\leafs[2].payload[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(29));

-- Location: IOOBUF_X62_Y0_N19
\leafs[2].payload[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(30));

-- Location: IOOBUF_X72_Y81_N53
\leafs[2].payload[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].payload\(31));

-- Location: IOOBUF_X36_Y81_N53
\leafs[2].tag[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].tag\(0));

-- Location: IOOBUF_X52_Y0_N19
\leafs[2].tag[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[2].tag\(1));

-- Location: IOOBUF_X50_Y81_N59
\leafs[1].payload[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(0));

-- Location: IOOBUF_X36_Y0_N2
\leafs[1].payload[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(1));

-- Location: IOOBUF_X38_Y81_N2
\leafs[1].payload[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(2));

-- Location: IOOBUF_X26_Y81_N42
\leafs[1].payload[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(3));

-- Location: IOOBUF_X54_Y0_N53
\leafs[1].payload[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(4));

-- Location: IOOBUF_X68_Y0_N53
\leafs[1].payload[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(5));

-- Location: IOOBUF_X89_Y6_N56
\leafs[1].payload[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(6));

-- Location: IOOBUF_X36_Y0_N53
\leafs[1].payload[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(7));

-- Location: IOOBUF_X66_Y81_N59
\leafs[1].payload[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(8));

-- Location: IOOBUF_X64_Y81_N53
\leafs[1].payload[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(9));

-- Location: IOOBUF_X34_Y81_N59
\leafs[1].payload[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(10));

-- Location: IOOBUF_X89_Y38_N5
\leafs[1].payload[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(11));

-- Location: IOOBUF_X89_Y8_N56
\leafs[1].payload[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(12));

-- Location: IOOBUF_X58_Y0_N93
\leafs[1].payload[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(13));

-- Location: IOOBUF_X72_Y0_N2
\leafs[1].payload[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(14));

-- Location: IOOBUF_X72_Y81_N2
\leafs[1].payload[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(15));

-- Location: IOOBUF_X62_Y81_N19
\leafs[1].payload[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(16));

-- Location: IOOBUF_X56_Y0_N53
\leafs[1].payload[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(17));

-- Location: IOOBUF_X60_Y81_N19
\leafs[1].payload[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(18));

-- Location: IOOBUF_X36_Y0_N36
\leafs[1].payload[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(19));

-- Location: IOOBUF_X86_Y81_N2
\leafs[1].payload[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(20));

-- Location: IOOBUF_X2_Y0_N76
\leafs[1].payload[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(21));

-- Location: IOOBUF_X66_Y81_N42
\leafs[1].payload[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(22));

-- Location: IOOBUF_X28_Y81_N36
\leafs[1].payload[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(23));

-- Location: IOOBUF_X60_Y81_N36
\leafs[1].payload[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(24));

-- Location: IOOBUF_X32_Y81_N36
\leafs[1].payload[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(25));

-- Location: IOOBUF_X89_Y6_N22
\leafs[1].payload[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(26));

-- Location: IOOBUF_X26_Y81_N93
\leafs[1].payload[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(27));

-- Location: IOOBUF_X80_Y81_N2
\leafs[1].payload[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(28));

-- Location: IOOBUF_X72_Y81_N36
\leafs[1].payload[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(29));

-- Location: IOOBUF_X78_Y81_N36
\leafs[1].payload[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(30));

-- Location: IOOBUF_X82_Y81_N42
\leafs[1].payload[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].payload\(31));

-- Location: IOOBUF_X62_Y0_N2
\leafs[1].tag[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].tag\(0));

-- Location: IOOBUF_X70_Y0_N2
\leafs[1].tag[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[1].tag\(1));

-- Location: IOOBUF_X70_Y81_N19
\leafs[0].payload[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(0));

-- Location: IOOBUF_X89_Y8_N22
\leafs[0].payload[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(1));

-- Location: IOOBUF_X36_Y81_N36
\leafs[0].payload[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(2));

-- Location: IOOBUF_X28_Y81_N53
\leafs[0].payload[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(3));

-- Location: IOOBUF_X89_Y8_N39
\leafs[0].payload[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(4));

-- Location: IOOBUF_X66_Y81_N93
\leafs[0].payload[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(5));

-- Location: IOOBUF_X89_Y36_N5
\leafs[0].payload[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(6));

-- Location: IOOBUF_X62_Y81_N53
\leafs[0].payload[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(7));

-- Location: IOOBUF_X28_Y0_N53
\leafs[0].payload[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(8));

-- Location: IOOBUF_X60_Y81_N53
\leafs[0].payload[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(9));

-- Location: IOOBUF_X32_Y81_N2
\leafs[0].payload[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(10));

-- Location: IOOBUF_X89_Y35_N79
\leafs[0].payload[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(11));

-- Location: IOOBUF_X26_Y0_N93
\leafs[0].payload[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(12));

-- Location: IOOBUF_X76_Y81_N19
\leafs[0].payload[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(13));

-- Location: IOOBUF_X60_Y0_N19
\leafs[0].payload[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(14));

-- Location: IOOBUF_X74_Y81_N42
\leafs[0].payload[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(15));

-- Location: IOOBUF_X8_Y0_N2
\leafs[0].payload[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(16));

-- Location: IOOBUF_X64_Y0_N36
\leafs[0].payload[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(17));

-- Location: IOOBUF_X80_Y81_N19
\leafs[0].payload[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(18));

-- Location: IOOBUF_X32_Y81_N53
\leafs[0].payload[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(19));

-- Location: IOOBUF_X52_Y0_N36
\leafs[0].payload[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(20));

-- Location: IOOBUF_X34_Y81_N93
\leafs[0].payload[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(21));

-- Location: IOOBUF_X66_Y0_N93
\leafs[0].payload[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(22));

-- Location: IOOBUF_X72_Y0_N36
\leafs[0].payload[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(23));

-- Location: IOOBUF_X64_Y0_N2
\leafs[0].payload[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(24));

-- Location: IOOBUF_X26_Y81_N76
\leafs[0].payload[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(25));

-- Location: IOOBUF_X89_Y8_N5
\leafs[0].payload[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(26));

-- Location: IOOBUF_X54_Y81_N53
\leafs[0].payload[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(27));

-- Location: IOOBUF_X62_Y0_N36
\leafs[0].payload[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(28));

-- Location: IOOBUF_X30_Y0_N53
\leafs[0].payload[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(29));

-- Location: IOOBUF_X38_Y0_N36
\leafs[0].payload[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(30));

-- Location: IOOBUF_X34_Y0_N93
\leafs[0].payload[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].payload\(31));

-- Location: IOOBUF_X6_Y0_N2
\leafs[0].tag[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].tag\(0));

-- Location: IOOBUF_X40_Y81_N19
\leafs[0].tag[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_leafs[0].tag\(1));

-- Location: IOIBUF_X70_Y81_N35
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X78_Y81_N18
\root.payload[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(0),
	o => \root.payload[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\root.payload[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(1),
	o => \root.payload[1]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\root.payload[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(2),
	o => \root.payload[2]~input_o\);

-- Location: IOIBUF_X82_Y81_N58
\root.payload[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(3),
	o => \root.payload[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\root.payload[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(4),
	o => \root.payload[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\root.payload[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(5),
	o => \root.payload[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\root.payload[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(6),
	o => \root.payload[6]~input_o\);

-- Location: IOIBUF_X80_Y81_N35
\root.payload[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(7),
	o => \root.payload[7]~input_o\);

-- Location: IOIBUF_X84_Y81_N35
\root.payload[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(8),
	o => \root.payload[8]~input_o\);

-- Location: IOIBUF_X52_Y81_N52
\root.payload[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(9),
	o => \root.payload[9]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\root.payload[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(10),
	o => \root.payload[10]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\root.payload[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(11),
	o => \root.payload[11]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\root.payload[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(12),
	o => \root.payload[12]~input_o\);

-- Location: IOIBUF_X64_Y81_N18
\root.payload[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(13),
	o => \root.payload[13]~input_o\);

-- Location: IOIBUF_X28_Y81_N18
\root.payload[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(14),
	o => \root.payload[14]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\root.payload[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(15),
	o => \root.payload[15]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\root.payload[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(16),
	o => \root.payload[16]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\root.payload[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(17),
	o => \root.payload[17]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\root.payload[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(18),
	o => \root.payload[18]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\root.payload[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(19),
	o => \root.payload[19]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\root.payload[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(20),
	o => \root.payload[20]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\root.payload[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(21),
	o => \root.payload[21]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\root.payload[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(22),
	o => \root.payload[22]~input_o\);

-- Location: IOIBUF_X78_Y81_N1
\root.payload[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(23),
	o => \root.payload[23]~input_o\);

-- Location: IOIBUF_X52_Y81_N35
\root.payload[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(24),
	o => \root.payload[24]~input_o\);

-- Location: IOIBUF_X82_Y81_N92
\root.payload[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(25),
	o => \root.payload[25]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\root.payload[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(26),
	o => \root.payload[26]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\root.payload[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(27),
	o => \root.payload[27]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\root.payload[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(28),
	o => \root.payload[28]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\root.payload[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(29),
	o => \root.payload[29]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\root.payload[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(30),
	o => \root.payload[30]~input_o\);

-- Location: IOIBUF_X50_Y81_N75
\root.payload[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.payload\(31),
	o => \root.payload[31]~input_o\);

-- Location: IOIBUF_X30_Y81_N35
\root.tag[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.tag\(0),
	o => \root.tag[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\root.tag[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_root.tag\(1),
	o => \root.tag[1]~input_o\);

-- Location: LABCELL_X45_Y44_N0
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


