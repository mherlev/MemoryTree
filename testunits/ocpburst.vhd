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
use work.memorytreepackage.all;
use work.ocp.all;

entity ocpburst_testbench is
port(clk : in std_logic;
reset : in std_logic;
ocp_m : out ocp_burst_m;
ocp_s : in ocp_burst_s;
ok : out std_logic);
end ocpburst_testbench;

architecture rtl of ocpburst_testbench is
	type states is (write,writing,write_response,read_await_accept,read_await_resp,read);
	signal state, state_next : states;
	signal burst_count, burst_count_next : unsigned(OCP_DATA_WIDTH-1 downto 0) := (others => '0');
	signal addr_count, addr_count_next : unsigned(OCP_DATA_WIDTH-1 downto 0) := (others => '0');
	signal ok_int, ok_next : std_logic := '1';
begin
	ok <= ok_int;
	process(state,burst_count, addr_count,ocp_s,ok_int)
	begin
		state_next <= state;
		burst_count_next <= burst_count;
		addr_count_next <= addr_count;
		ocp_m.mcmd <= ocp_cmd_idle;
		ocp_m.maddr <= (others => '0');
		ocp_m.mdata <= (others => '0');
		ocp_m.mdatabyteen <= (others => '0');
		ocp_m.mdatavalid <= '0';
		ok_next <= ok_int;
		case state is
		when write =>
			ocp_m.mcmd <= ocp_cmd_wr;
			ocp_m.maddr <= std_logic_vector(addr_count(ocp_m.maddr'length-1 downto 0));
			ocp_m.mdata <= std_logic_vector(addr_count);
			ocp_m.mdatabyteen <= (others => '1');
			ocp_m.mdatavalid <= '1';
			if ocp_s.SCmdAccept = '1' then
				state_next <= writing;
				burst_count_next <= burst_count + to_unsigned(1,burst_count'length);
			end if;
		when writing =>
			burst_count_next <= burst_count+to_unsigned(1,burst_count'length);
			ocp_m.mdata <= std_logic_vector(addr_count);
			ocp_m.mdatabyteen <= (others => '1');
			ocp_m.mdatavalid <= '1';
			if burst_count = OCP_burst_length-1 then
				state_next <= write_response;
				burst_count_next <= (others => '0');
			end if;
		when write_response =>
			if ocp_s.SResp = OCP_RESP_DVA then
				state_next <= read_await_accept;
			end if;
		when read_await_accept =>
			ocp_m.MCmd <= OCP_CMD_RD;
			ocp_m.maddr <= std_logic_vector(addr_count(ocp_m.maddr'length-1 downto 0));
			if ocp_s.SCmdAccept = '1' then
				state_next <= read_await_resp;
				if ocp_s.SResp = OCP_RESP_DVA then
					state_next <= read;
					burst_count_next <= burst_count + to_unsigned(1,burst_count'length);
					if std_logic_vector(addr_count) /= ocp_m.MData then
						ok_next <= '0';
					end if;
				end if;
			end if;
		when read_await_resp =>
			if ocp_s.SResp = OCP_RESP_DVA then
				state_next <= read;
				burst_count_next <= burst_count + to_unsigned(1,burst_count'length);
				if std_logic_vector(addr_count) /= ocp_m.MData then
					ok_next <= '0';
				end if;
			end if;
		when read =>
			if std_logic_vector(addr_count) /= ocp_m.MData then
				ok_next <= '0';
			end if;
			burst_count_next <= burst_count + to_unsigned(1,burst_count'length);
			if burst_count = OCP_burst_length-1 then
				burst_count_next <= (others => '0');
				addr_count_next <= addr_count + to_unsigned(OCP_burst_length,addr_count'length);
				state_next <= write;
			end if;
		when others =>
			state_next <= write;
		end case;
	end process;

	process(clk,reset)
	begin
		if reset = '1' then
			state <= write;
			burst_count <= (others => '0');
			addr_count <= (others => '0');
			ok_int <= '1';
		elsif rising_edge(clk) then
			state <= state_next;
			burst_count <= burst_count_next;
			addr_count <= addr_count_next;
			ok_int <= ok_next;
		end if;
	end process;
end rtl;
