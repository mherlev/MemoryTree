library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.memorytree_package.all;
use work.root_package.all;

entity root is
	port(clk	: std_logic;
	reset	: std_logic;
	r2l : phit_r);
end root;

architecture rtl of root is
	signal counter, counter_next : unsigned(31 downto 0);
	signal ref : std_logic;
	signal postpone_transacion : std_logic;
begin
		ref_timer : entity work.refresh_timer
		port(clk,rest,ref,postpone_transaction);
		

end rtl;
