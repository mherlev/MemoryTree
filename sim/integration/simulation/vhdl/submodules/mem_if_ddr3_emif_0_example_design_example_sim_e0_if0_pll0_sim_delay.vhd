-- (C) 2001-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions and other 
-- software and tools, and its AMPP partner logic functions, and any output 
-- files any of the foregoing (including device programming or simulation 
-- files), and any associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License Subscription 
-- Agreement, Altera MegaCore Function License Agreement, or other applicable 
-- license agreement, including, without limitation, that your use is for the 
-- sole purpose of programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the applicable 
-- agreement for further details.



Library ieee;
use ieee.std_logic_1164.all;

entity mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_sim_delay is
   generic (
     delay     : natural := 1);

   port (
     o   : out std_logic;
     i   : in  std_logic);
end mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_sim_delay;

architecture behavior of mem_if_ddr3_emif_0_example_design_example_sim_e0_if0_pll0_sim_delay is
begin
  o <= i after delay * 1 ps;
end behavior;

