--------------------------------------------------------------------------------
-- Copyright (c) 2016, Mathias Herlev
-- All rights reserved.
-- 
-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions are met:
-- 
-- 1. Redistributions of source code must retain the above copyright notice, 
-- this list of conditions and the following disclaimer.
-- 2. Redistributions in binary form must reproduce the above copyright notice,
-- this list of conditions and the following disclaimer in the documentation
-- and/or other materials provided with the distribution.
-- 
-- This software is provided by the copyright holders and contributors "as is" 
-- and any express or implied warranties, including, but not limited to, the
-- implied warranties of merchantability and fitness for a particular purpose 
-- are disclaimed. In no event shall the copyright owner or contributors be
-- liable for any direct, indirect, incidental, special, exemplary, or
-- consequential damages (including, but not limited to, procurement of
-- substitute goods or services; loss of use, data, or profits; or business 
-- interruption) however caused and on any theory of liability, whether in 
-- CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
-- POSSIBILITY OF SUCH DAMAGE.
--------------------------------------------------------------------------------
-- Title: L2R Router
-- Description: Router for L2R NoC
-- TODO: Tag size can be reduced
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MemoryTreePackage.all;

entity l2r_router is
	generic(routing_level : natural := 0);
	port(	clk		: in	std_logic;
			input	: in	router_output;
			output	: out	phit_r);
end entity l2r_router;

architecture structural of l2r_router is
	type or_array is array (0 to outputs_per_router-1) of phit_r;

	signal output_next : phit_r;
	signal or_arr, o_arr : or_array;
begin
	--Instantiate input ports
	ports : for i in 0 to outputs_per_router-1 generate
		outport : entity work.l2r_routerport
		generic map(routing_level*outputs_per_router+i)
		port map(clk, input(i), or_arr(i));
	end generate;
	--Or together tags
	o_arr(0) <= or_arr(0);
	ors : for i in 1 to outputs_per_router-1 generate
		o_arr(i).tag <= or_arr(i).tag or o_arr(i-1).tag;
		o_arr(i).payload <= or_arr(i).payload or o_arr(i-1).payload;
	end generate;

	output_next <= o_arr(outputs_per_router-1);
	process(clk)
	begin
		if rising_edge(clk) then
			output <= output_next;
		end if;
	end process;
end structural;


