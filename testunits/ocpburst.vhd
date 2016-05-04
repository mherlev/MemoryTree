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
-- Title: Memory package
-- Description: Type definitions and constants for Memory Tree
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.ocp.all;

entity ocpburst_testbench is
port(clk : in std_logic;
reset : in std_logic;
ocp_m : out ocp_burst_m;
ocp_s : in ocp_burst_s);
end ocpburst_testbench;

architecture rtl of ocpburst_testbench is
	type states is (write,writing,write_response);
	signal state, state_next : states;

	signal counter, counter_next : unsigned(OCP_DATA_WIDTH-1 downto 0);
begin
	process(state,counter)
	begin
		state_next <= state;
		counter_next <= counter;
		ocp_m.mcmd <= ocp_cmd_idle;
		ocp_m.maddr <= (others => '0');
		ocp_m.mdata <= (others => '0');
		ocp_m.mdatabyteen <= (others => '0');
		ocp_m.mdatavalid <= '0';
		case state is
		when write =>
			ocp_m.mcmd <= ocp_cmd_wr;
			ocp_m.maddr <= std_logic_vector(counter(ocp_m.maddr'length-1 downto 0));
			ocp_m.mdata <= std_logic_vector(counter);
			ocp_m.mdatabyteen <= (others => '0');
			ocp_m.mdatavalid <= '1';
			if ocp_s.scmdaccept = '1' then
				state_next <= writing;
				counter_next <= counter + 1;
			end if;
		when writing =>
			ocp_m.mdata <= std_logic_vector(counter);
			ocp_m.mdatavalid <= '1';
			if counter = 3 then
					state_next <= write_response;
			end if;

		when write_response =>
				if ocp_s.SResp = OCP_RESP_DVA then
						state_next <= write;
				end if;
		when others =>
				state_next <= write;
		end case;
	end process;

	process(clk,reset)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				counter <= (others => '0');
				state <= write;
			else
				counter <= counter_next;
				state <= state_next;
			end if;
		end if;
	end process;
end rtl;
