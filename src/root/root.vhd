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
-- Title: Root entity
-- Description: Root entity for network functioning as frontend for memory 
--              controller
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.MemoryTreePackage.all;
use work.root_package.all;

entity root is
	port(clk	: in std_logic;
	reset	: in std_logic;
	r2l : out phit_r);
end root;

architecture rtl of root is
	type states is (active, idle);
	signal state, state_next : states;

	signal counter, counter_next : unsigned(31 downto 0) := (others => '0');
	signal ref : std_logic;
	signal postpone_transaction : std_logic;
	signal send : std_logic := '0';
	signal idx,idx_next : unsigned(1 downto 0) := (others => '0');
	signal core_id : unsigned(1 downto 0);
	signal route   : std_logic_vector
	                 (number_of_levels*outputs_per_router-1 downto 0);
	alias r2l_route is r2l.payload(3 downto 0);
	
begin
		ref_timer : entity work.refresh_timer
		port map(clk,reset,ref,postpone_transaction);
		
		sched_tab : entity work.schedule_table
		port map (idx,core_id);

		route_tab : entity work.routing_table
		port map(core_id, route);	

		process(state, idx,counter,ref,postpone_transaction)
		begin
			counter_next <= counter;
			state_next <= state;
			idx_next <= idx;
			send <= '0';
			r2l.tag <= empty_tag;
			case state is
			when active =>
				if postpone_transaction	= '0' then
					if counter = c_transaction-1 then
						idx_next <= idx+1;
						counter_next <= (others => '0');
						r2l_route <= route;
						r2l.tag <= header_tag;
					else
						counter_next <= counter + 1;
					end if;
				else
					state_next <= idle;
				end if;
			when idle =>
				if postpone_transaction = '0' then
					state_next <= active;
				end if;
			end case;
		end process;

		process(clk)
		begin
			if rising_edge(clk) then
				if reset = '1' then
					state <= active;
					idx <= (others => '0');
					counter <= (others => '0');
				else
					state <= state_next;
					idx <= idx_next;
					counter <= counter_next;
				end if;
			end if;
		end process;
end rtl;



