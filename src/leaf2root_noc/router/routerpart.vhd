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
-- Title: Router
-- Description: Router for Leaf 2 Root NoC
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MemoryTreePackage.all;

entity l2r_routerport is
	generic(routing_index : natural := 0);
	port(	clk		: in	std_logic;
			input	: in	phit_r;
			output	: out	phit_r);
end entity l2r_routerport;

architecture rtl of l2r_routerport is
	type states is (idle, active);
	signal state, state_next : states := idle;

	signal data, data_next : phit_r;
	signal en : std_logic := '0';
begin
--	data_next <= input;
--	output.payload <= data.payload;
--  output.tag <= en & data.tag(0);
	fsm : process(state, input)
	begin
			output <= (others => (others =>'0'));
			if input.tag = header_tag or input.tag = payload_tag then
					output <= input;
			end if;
--		state_next <= state;
--		en <= '0';
--		case state is
--		when idle =>
--		  	output <= (others => (others => '0'));
--			if input.tag = header_tag then
--				state_next <= active;
--				en <= '1';
--			end if;
--		when active =>
--			en <= '1';
--			output <= data;
--			if input.tag = empty_tag or input.tag = tail_tag then
--				state_next <= idle;
--				en <= '0';
--			end if;
--		when others =>
--			state_next <= idle;
--		end case;
	end process fsm;

--	registers : process(clk)
--	begin
--		if rising_edge(clk) then
--			state <= state_next;
--			if en = '1' then
--				data <= data_next;
--			end if;
--		end if;
--	end process registers;
--
end rtl;

