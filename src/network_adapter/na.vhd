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
-- Title: Network Adapter
-- Description: Type definitions and constants for Memory Tree
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MemoryTreePackage.all;
use work.ocp.all;

entity network_adapter is
		port (clk : in std_logic;
		rst : in std_logic;
		r2lnoc : in phit_r;
		ocp_m : in ocp_burst_m;
		ocp_s : out ocp_burst_s);
end network_adapter;

architecture rtl of network_adapter is
		type states is (idle, write,write_wait,read_wait, read);
		signal state, state_next : states;


begin

		process(state,ocp_m,r2lnoc)
		begin
			state_next <= state;
			case state is
			when idle =>
				if r2lnoc.tag = header_tag then
					if ocp_m.mcmd = ocp_cmd_wr then
						state_next <= write;
					elsif ocp_m.mcmd = ocp_cmd_rd then
						state_next <= read_wait;
					end if;
				end if;
			when others =>
				state_next <= idle;
			end case;
		end process;

		process (clk,reset)
		begin
				if rising_edge(clk) then
					if reset = '1' then
						state <= idle;
					else
						state <= state_next;
					end if;
				end if;
		end process;
end rtl;

