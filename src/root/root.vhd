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
use work.ocp.all;

entity root is
	port(clk	: in std_logic;
	reset	: in std_logic;
	r2l : out phit_r;
	l2r : in phit_r;
	mem_m : out ocp_mem_m;
	mem_s : in ocp_mem_s);
end root;

architecture rtl of root is
	type states is (active, idle);
	signal state, state_next : states := active;

	type l2r_states is (idle,write_data,write_en, read_data);
	signal l2r_state, l2r_state_next : l2r_states := idle;
	type outbuffer_data_arr is array (ocp_burst_length-1 downto 0) of std_logic_vector(OCP_DATA_WIDTH-1 downto 0);	
	signal outbuffer_data, outbuffer_data_next : outbuffer_data_arr := (others => (others => '0'));
	type outbuffer_en_arr is array (ocp_burst_length*OCP_BYTE_WIDTH/OCP_DATA_WIDTH-1 downto 0) of std_logic_vector(OCP_DATA_WIDTH-1 downto 0);
	signal outbuffer_en, outbuffer_en_next : outbuffer_en_arr := (others => (others => '0'));
	signal outbuffer_addr, outbuffer_addr_next : std_logic_vector(OCP_BURST_ADDR_WIDTH-1 downto 0) := (others => '0');
	signal write_counter, write_counter_next : unsigned(31 downto 0) := (others => '0');

	signal write_buffer_data, write_buffer_data_next : outbuffer_data_arr;
	signal write_buffer_en, write_buffer_en_next : outbuffer_en_arr;
	signal write_buffer_addr, write_buffer_addr_next : std_logic_vector(OCP_BURST_ADDR_WIDTH-1 downto 0) := (others => '0');
	signal counter, counter_next : unsigned(31 downto 0) := (others => '0');
	signal ref : std_logic := '0';
	signal postpone_transaction : std_logic := '0';
	signal send : std_logic := '0';
	signal idx,idx_next : unsigned(1 downto 0) := (others => '0');
	signal core_id : unsigned(1 downto 0) := (others => '0');
	signal route   : std_logic_vector
	                 (number_of_levels*outputs_per_router-1 downto 0) := (others => '0');
	
	
	type mem_states is (idle, read_s, write_s);
	signal mem_state, mem_state_next : mem_states := idle;
	signal cmd, cmd_next : std_logic_vector(OCP_CMD_WIDTH-1 downto 0) := OCP_CMD_IDLE;
--	signal cmd_req, cmd_req_next : std_logic := '0';
	signal cmd_ack, cmd_ack_next : std_logic := '0';
	signal clr_cmd : std_logic := '0';
	
	
	
	
	signal r2l_next : phit_r := (others => (others => '0'));
	alias r2l_route is r2l_next.payload(3 downto 0);
begin
	ref_timer : entity work.refresh_timer
	port map(clk,reset,ref,postpone_transaction);
	
	sched_tab : entity work.schedule_table
	port map (idx,core_id);

	route_tab : entity work.routing_table
	port map(core_id, route);	

	process(state, idx,counter,ref,postpone_transaction,route)
	begin
--		r2l.payload <= (others => '0');
		counter_next <= counter;
		state_next <= state;
		idx_next <= idx;
		send <= '0';
		r2l_next <= (others => (others => '0'));	
	--r2l.tag <= empty_tag;
		case state is
		when active =>
			if postpone_transaction	= '0' then
				if counter = c_transaction-1 then
					idx_next <= idx+1;
					counter_next <= (others => '0');
					r2l_route <= route;
					r2l_next.tag <= header_tag;
				else
					counter_next <= counter + 1;
				end if;
			else
--				state_next <= idle;
			end if;
		when idle =>
			if postpone_transaction = '0' then
				state_next <= active;
			end if;
		end case;
	end process;

	process(l2r_state,l2r,write_counter,outbuffer_addr,outbuffer_data,outbuffer_en,cmd_ack,cmd)
	begin
		outbuffer_addr_next <= outbuffer_addr;
		outbuffer_data_next <= outbuffer_data;
		outbuffer_en_next <= outbuffer_en;
		write_counter_next <= write_counter;
		l2r_state_next <= l2r_state;

--		cmd_req_next  <= cmd_req;
		cmd_next <= cmd;
		case l2r_state is
			when idle =>
				if l2r.tag = header_tag then
					outbuffer_addr_next <= l2r.payload(OCP_BURST_ADDR_WIDTH-1 downto 0);	
					if l2r.payload(OCP_DATA_WIDTH-1 downto OCP_DATA_WIDTH-OCP_CMD_WIDTH) = OCP_CMD_WR then
						l2r_state_next <= write_data;
--						cmd_next <= OCP_CMD_WR;
					elsif l2r.payload(OCP_DATA_WIDTH-1 downto OCP_DATA_WIDTH-OCP_CMD_WIDTH) = OCP_CMD_RD then
						l2r_state_next <= read_data;
						cmd_next <= OCP_CMD_RD;
--						cmd_req_next <= '1';
					end if;
				end if;
			when write_data =>
				write_counter_next <= write_counter + to_unsigned(1,write_counter'length);
				outbuffer_data_next(to_integer(write_counter)) <= l2r.payload;
				if write_counter = OCP_burst_length-1 then
					l2r_state_next <= write_en;
					write_counter_next <= (others => '0');
				end if;
			when write_en =>
				write_counter_next <= write_counter + to_unsigned(1,write_counter'length);
				outbuffer_en_next(to_integer(write_counter)) <= l2r.payload;
				if write_counter = OCP_burst_length*OCP_BYTE_WIDTH/OCP_DATA_WIDTH-1 then
					l2r_state_next <= idle;
					write_counter_next <= (others => '0');
					cmd_next <= OCP_CMD_WR;
--					cmd_req_next <= '1';
				end if;
			when others =>
				l2r_state_next <= idle;
			end case;
	end process;
	
	mem_m.MAddr <= outbuffer_addr;
	process(mem_state, cmd, mem_s,write_buffer_data,write_buffer_en,outbuffer_data,outbuffer_en,write_buffer_addr,outbuffer_addr)
	begin
		mem_state_next <= mem_state;
		mem_m.MCmd <= OCP_CMD_IDLE;
		mem_m.MRespAccept <= '0';
		clr_cmd <= '0';
		write_buffer_data_next <= write_buffer_data;
		write_buffer_en_next <= write_buffer_en;
		write_buffer_addr_next <= write_buffer_addr;
		case mem_state is
		when idle =>
			if cmd = OCP_CMD_WR then
				write_buffer_data_next <= outbuffer_data;
				write_buffer_en_next <= outbuffer_en;

				write_buffer_addr_next <= outbuffer_addr;
				mem_state_next <= write_s;
				clr_cmd <= '1';
			elsif cmd = OCP_CMD_RD then
				write_buffer_addr_next <= outbuffer_addr;
				mem_state_next <= read_s;
				clr_cmd <= '1';
			end if;
		when write_s =>
			mem_m.MCmd <= OCP_CMD_WR;
			if mem_s.SResp /= OCP_RESP_NULL then
				mem_state_next <= idle;
				mem_m.MRespAccept <= '1';
			end if;
		when read_s =>
			mem_m.MCmd <= OCP_CMD_RD;
			if mem_s.SResp /= OCP_RESP_NULL then
				mem_state_next <= idle;
				mem_m.MRespAccept <= '1';
			end if;
		when others =>
			mem_state_next <= idle;
		end case;
	end process;
	
	
	
	
	
	process(clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				state <= active;
				idx <= (others => '0');
				write_counter <= (others => '0');
				l2r_state <= idle;
				r2l <= (others => (others => '0'));
				mem_state <= idle;
				cmd <= OCP_CMD_IDLE;
				counter <= to_unsigned(c_transaction-1,counter'length);
				outbuffer_data <= (others => (others => '0'));
				outbuffer_en <= (others => (others => '0'));
				outbuffer_addr <= (others => '0');
			else
				state <= state_next;
				idx <= idx_next;
				counter <= counter_next;
				l2r_state <= l2r_state_next;
				write_counter <= write_counter_next;
				outbuffer_data <= outbuffer_data_next;
				outbuffer_en <= outbuffer_en_next;
				outbuffer_addr <= outbuffer_addr_next;
				r2l <= r2l_next;
				mem_state <= mem_state_next;
				
				write_buffer_addr <= write_buffer_addr_next;
				write_buffer_data <= write_buffer_data_next;
				write_buffer_en <= write_buffer_en_next;
	
				cmd <= cmd_next;
				if clr_cmd = '1' then
				cmd <= OCP_CMD_IDLE;
				end if;
			end if;
		end if;
	end process;
	
	
	
	
	outdatamap : for i in 0 to ocp_burst_length-1 generate
		mem_m.MData((i+1)*OCP_DATA_WIDTH-1 downto i*OCP_DATA_WIDTH) <= write_buffer_data(i);
	end generate;
	outenmap : for i in 0 to ocp_burst_length*OCP_BYTE_WIDTH/OCP_DATA_WIDTH-1 generate
		mem_m.MByteEn((i+1)*OCP_DATA_WIDTH-1 downto i*OCP_DATA_WIDTH) <= write_buffer_en(i);
	end generate;


end rtl;



