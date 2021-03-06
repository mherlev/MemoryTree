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
-- Title: DRAM dummy
-- Description: DRAM dummy
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.MemoryTreePackage.all;
use work.root_package.all;
use work.ocp.all;
use work.avalon.all;
use work.root_package.all;

entity dummy_dram_avalon is
port(clk : in std_logic;
		reset : in std_logic;
		mem_m : in ocp_mem_m;
		mem_s : out ocp_mem_s;
		avl_mem_m	: in avl_m;
		avl_mem_s	: out avl_s
);
end dummy_dram_avalon;

architecture behav of dummy_dram_avalon is
	type ramfile is array(63 downto 0) of std_logic_vector(mem_m.MData'length-1 downto 0);
	signal ram : ramfile := (others => (others => '0'));
	signal counter, counter_next : unsigned(31 downto 0);
	signal rd_data, wr_data : std_logic_vector(mem_m.MData'length-1 downto 0);
	type states is (idle, opening, processing, closing);
	signal state, state_next : states;
	signal en : std_logic;
	signal rnw, rnw_next : std_logic := '0';
begin


	process(state, counter, rd_data, mem_m,avl_mem_m,rnw)
	begin
		counter_next <= counter;
		state_next <= state;
		mem_s.SData<= (others => '0');
		mem_s.SResp <= OCP_RESP_NULL;
		mem_s.SCmdAccept <= '0';
		en <= '0';
		avl_mem_s.ready <= '0';
		avl_mem_s.rdata <= (others => '0');
		avl_mem_s.rdata_valid <= '0';
		rnw_next <= rnw;
		case state is
		when idle =>
			avl_mem_s.ready <= '1';
--			if Mem_m.MCmd /= OCP_CMD_IDLE then
--				state_next <= opening;
--				counter_next <= counter + 1;
--			els
			if avl_mem_m.burstbegin = '1' AND (avl_mem_m.read_req = '1' OR avl_mem_m.write_req = '1') then
				avl_mem_s.ready <= '0';
				state_next <= opening;
				counter_next <= counter + 1;
				if avl_mem_m.read_req = '1' then
					rnw_next <= '1';
				else
					rnw_next <= '0';
				end if;
			end if;
		when opening =>
			counter_next <= counter + 1;
			if counter = c_transaction-1 then
				state_next <= processing;
--				if Mem_m.MCmd = OCP_CMD_WR then
--					en <= '1';
--				els
					Mem_s.SData <= rd_data;		

			end if;
		when processing =>
			avl_mem_s.ready <= '1';
			counter_next <= counter + 1;
			Mem_s.SData <= rd_data;
--			Mem_s.SResp <= OCP_RESP_DVA;
			if rnw = '0' then
				en <= '1';
			else
				avl_mem_s.rdata_valid <= '1';
				avl_mem_s.rdata <= rd_data;

			end if;
--			if mem_m.MRespAccept = '1' then
				state_next <= idle;
				counter_next <= (others => '0');
--			end if;
		when closing =>
			counter_next <= counter + 1;
			if counter >= c_transaction-1 then
				state_next <= idle;
				counter_next <= (others => '0');
			end if;
		when others =>
			state_next <= idle;
		end case;
	end process;
	
	
	process(clk)
	begin
		if reset = '1' then 
			counter <= (others => '0');
			state <= idle;
			rnw <= '0';
		elsif rising_edge(clk) then
			rnw <= rnw_next;
			state <= state_next;
			counter <= counter_next;
			rd_data <= ram(to_integer(unsigned(avl_mem_m.addr)));
			if en = '1' then
				ram(to_integer(unsigned(mem_m.MAddr))) <= avl_Mem_m.wdata;
			end if;
		end if;
	end process;	
end behav;
