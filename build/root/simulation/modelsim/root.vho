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

-- DATE "05/02/2016 13:35:45"

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

ENTITY 	root IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	\r2l.payload\ : IN std_logic_vector(31 DOWNTO 0);
	\r2l.tag\ : IN std_logic_vector(1 DOWNTO 0)
	);
END root;

-- Design Ports Information
-- r2l.payload[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[8]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[9]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[11]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[12]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[13]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[14]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[15]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[16]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[17]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[18]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[19]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[20]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[21]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[22]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[23]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[24]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[25]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[26]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[27]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[28]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[29]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[30]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.payload[31]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.tag[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2l.tag[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF root IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \ww_r2l.payload\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_r2l.tag\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \r2l.payload[0]~input_o\ : std_logic;
SIGNAL \r2l.payload[1]~input_o\ : std_logic;
SIGNAL \r2l.payload[2]~input_o\ : std_logic;
SIGNAL \r2l.payload[3]~input_o\ : std_logic;
SIGNAL \r2l.payload[4]~input_o\ : std_logic;
SIGNAL \r2l.payload[5]~input_o\ : std_logic;
SIGNAL \r2l.payload[6]~input_o\ : std_logic;
SIGNAL \r2l.payload[7]~input_o\ : std_logic;
SIGNAL \r2l.payload[8]~input_o\ : std_logic;
SIGNAL \r2l.payload[9]~input_o\ : std_logic;
SIGNAL \r2l.payload[10]~input_o\ : std_logic;
SIGNAL \r2l.payload[11]~input_o\ : std_logic;
SIGNAL \r2l.payload[12]~input_o\ : std_logic;
SIGNAL \r2l.payload[13]~input_o\ : std_logic;
SIGNAL \r2l.payload[14]~input_o\ : std_logic;
SIGNAL \r2l.payload[15]~input_o\ : std_logic;
SIGNAL \r2l.payload[16]~input_o\ : std_logic;
SIGNAL \r2l.payload[17]~input_o\ : std_logic;
SIGNAL \r2l.payload[18]~input_o\ : std_logic;
SIGNAL \r2l.payload[19]~input_o\ : std_logic;
SIGNAL \r2l.payload[20]~input_o\ : std_logic;
SIGNAL \r2l.payload[21]~input_o\ : std_logic;
SIGNAL \r2l.payload[22]~input_o\ : std_logic;
SIGNAL \r2l.payload[23]~input_o\ : std_logic;
SIGNAL \r2l.payload[24]~input_o\ : std_logic;
SIGNAL \r2l.payload[25]~input_o\ : std_logic;
SIGNAL \r2l.payload[26]~input_o\ : std_logic;
SIGNAL \r2l.payload[27]~input_o\ : std_logic;
SIGNAL \r2l.payload[28]~input_o\ : std_logic;
SIGNAL \r2l.payload[29]~input_o\ : std_logic;
SIGNAL \r2l.payload[30]~input_o\ : std_logic;
SIGNAL \r2l.payload[31]~input_o\ : std_logic;
SIGNAL \r2l.tag[0]~input_o\ : std_logic;
SIGNAL \r2l.tag[1]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
\ww_r2l.payload\ <= \r2l.payload\;
\ww_r2l.tag\ <= \r2l.tag\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X34_Y81_N41
\r2l.payload[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(0),
	o => \r2l.payload[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\r2l.payload[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(1),
	o => \r2l.payload[1]~input_o\);

-- Location: IOIBUF_X62_Y81_N18
\r2l.payload[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(2),
	o => \r2l.payload[2]~input_o\);

-- Location: IOIBUF_X32_Y81_N52
\r2l.payload[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(3),
	o => \r2l.payload[3]~input_o\);

-- Location: IOIBUF_X66_Y81_N58
\r2l.payload[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(4),
	o => \r2l.payload[4]~input_o\);

-- Location: IOIBUF_X58_Y81_N92
\r2l.payload[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(5),
	o => \r2l.payload[5]~input_o\);

-- Location: IOIBUF_X88_Y81_N2
\r2l.payload[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(6),
	o => \r2l.payload[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\r2l.payload[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(7),
	o => \r2l.payload[7]~input_o\);

-- Location: IOIBUF_X72_Y81_N1
\r2l.payload[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(8),
	o => \r2l.payload[8]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\r2l.payload[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(9),
	o => \r2l.payload[9]~input_o\);

-- Location: IOIBUF_X62_Y81_N52
\r2l.payload[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(10),
	o => \r2l.payload[10]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\r2l.payload[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(11),
	o => \r2l.payload[11]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\r2l.payload[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(12),
	o => \r2l.payload[12]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\r2l.payload[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(13),
	o => \r2l.payload[13]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\r2l.payload[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(14),
	o => \r2l.payload[14]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\r2l.payload[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(15),
	o => \r2l.payload[15]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\r2l.payload[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(16),
	o => \r2l.payload[16]~input_o\);

-- Location: IOIBUF_X68_Y81_N1
\r2l.payload[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(17),
	o => \r2l.payload[17]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\r2l.payload[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(18),
	o => \r2l.payload[18]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\r2l.payload[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(19),
	o => \r2l.payload[19]~input_o\);

-- Location: IOIBUF_X74_Y81_N41
\r2l.payload[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(20),
	o => \r2l.payload[20]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\r2l.payload[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(21),
	o => \r2l.payload[21]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\r2l.payload[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(22),
	o => \r2l.payload[22]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\r2l.payload[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(23),
	o => \r2l.payload[23]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\r2l.payload[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(24),
	o => \r2l.payload[24]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\r2l.payload[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(25),
	o => \r2l.payload[25]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\r2l.payload[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(26),
	o => \r2l.payload[26]~input_o\);

-- Location: IOIBUF_X50_Y81_N75
\r2l.payload[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(27),
	o => \r2l.payload[27]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\r2l.payload[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(28),
	o => \r2l.payload[28]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\r2l.payload[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(29),
	o => \r2l.payload[29]~input_o\);

-- Location: IOIBUF_X86_Y81_N35
\r2l.payload[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(30),
	o => \r2l.payload[30]~input_o\);

-- Location: IOIBUF_X76_Y81_N52
\r2l.payload[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.payload\(31),
	o => \r2l.payload[31]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\r2l.tag[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.tag\(0),
	o => \r2l.tag[0]~input_o\);

-- Location: IOIBUF_X50_Y81_N92
\r2l.tag[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_r2l.tag\(1),
	o => \r2l.tag[1]~input_o\);

-- Location: IOIBUF_X34_Y81_N58
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X79_Y42_N3
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


