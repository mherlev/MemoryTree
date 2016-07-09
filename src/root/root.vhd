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
use work.avalon.all;


entity root is
	port(clk	: in std_logic;
	reset	: in std_logic;
	r2l : out phit_r;
	l2r : in phit_r;
	mem_m : out ocp_mem_m;
	mem_s : in ocp_mem_s;
	avl_mem_m	: out avl_m;
	avl_mem_s	: in avl_s;
	calib_done	: in std_logic;
	calib_success	: in std_logic;
	refresh : out std_logic;
	refresh_ack : in std_logic);
end root;

architecture rtl of root is
	constant fifo_depth : integer := 3;
	constant fifo_addr_width : integer := 2;
	type r2l_states is (idle, send_ping, send_package_header, send_package);
	signal state, state_next : r2l_states := idle;

	type l2r_states is (idle,write_data,write_en, read_data);
	signal l2r_state, l2r_state_next : l2r_states := idle;
	type outbuffer_data_arr is array (ocp_burst_length-1 downto 0) of std_logic_vector(OCP_DATA_WIDTH-1 downto 0);	
	signal outbuffer_data, outbuffer_data_next : outbuffer_data_arr := (others => (others => '0'));
	type outbuffer_en_arr is array (ocp_burst_length-1 downto 0) of std_logic_vector(OCP_BYTE_WIDTH-1 downto 0);
	signal outbuffer_en, outbuffer_en_next : outbuffer_en_arr := (others => (others => '0'));
	signal outbuffer_addr, outbuffer_addr_next : std_logic_vector(OCP_BURST_ADDR_WIDTH-1 downto 0) := (others => '0');
	signal write_counter, write_counter_next : unsigned(31 downto 0) := (others => '0');

	signal ref : std_logic := '0';
	signal postpone_transaction : std_logic := '0';
	signal send : std_logic := '0';
	signal ping_id : std_logic_vector(1 downto 0) := (others => '0');
	signal core_id,core_id_next : std_logic_vector(1 downto 0) := (others => '0');
	signal route   : std_logic_vector
	                 (number_of_levels*outputs_per_router-1 downto 0) := (others => '0');
	
	
	type mem_states is (idle, read_wait_s,read_s, write_s,write_wait_s);
	signal mem_state, mem_state_next : mem_states := idle;
	signal cmd, cmd_next : std_logic_vector(OCP_CMD_WIDTH-1 downto 0) := OCP_CMD_IDLE;
	signal cmd_ack, cmd_ack_next : std_logic := '0';
	signal clr_cmd : std_logic := '0';
	
	
	signal pinged, pinged_next : std_logic_vector(core_id'length-1 downto 0) := (others => '0');
	signal cmder, cmder_next : std_logic_vector(core_id'length-1 downto 0) := (others => '0');
	signal r2s, r2s_next : std_logic_vector(core_id'length-1 downto 0) := (others => '0');
	
	
	signal read_data_buffer : std_logic_vector(OCP_BURST_LENGTH*OCP_DATA_WIDTH-1 downto 0);
	
	signal r2l_next : phit_r := (others => (others => '0'));
	alias r2l_route is r2l_next.payload(3 downto 0);
	alias r2l_type is r2l_next.payload(payload_width-1);
	signal read_counter, read_counter_next : unsigned(31 downto 0) := (others => '0');
	
	signal readbuffer_data : outbuffer_data_arr := (others => (others => '0'));

	signal r2l_fifo_wen : std_logic := '0';
	signal r2l_fifo_ren : std_logic := '0';
	signal r2l_fifo_data_en : std_logic_vector(OCP_BURST_LENGTH-1 downto 0) := (others => '0');

--	signal r2s_waddr	  : unsigned(fifo_addr_width-1 downto 0) := (others => '0');
--	signal r2s_raddr	  : unsigned(fifo_addr_width-1 downto 0) := (others => '0');
	signal mem_fifo_wen : std_logic := '0';
	signal mem_fifo_ren : std_logic := '0';	
--	signal mem_waddr	  : unsigned(fifo_addr_width-1 downto 0) := (others => '0');
--	signal mem_raddr	  : unsigned(fifo_addr_width-1 downto 0) := (others => '0');
	signal mem_cmd 	  : std_logic_vector(OCP_CMD_WIDTH-1 downto 0) := (others => '0');	

	signal write_dat : std_logic_vector(OCP_DATA_WIDTH*OCP_BURST_LENGTH-1 downto 0) := (others => '0');	
	signal write_ben : std_logic_vector(OCP_BYTE_WIDTH*OCP_BURST_LENGTH-1 downto 0) := (others => '0');
	signal rst : std_logic;

	signal mem_fifo_empty : std_logic;
	signal r2s_fifo_empty : std_logic;
begin
	rst <= not calib_done;
	ref_timer : entity work.refresh_timer
	port map(clk,rst,ref,postpone_transaction, refresh_ack);
	
	refresh <= ref;

	route_tab : entity work.routing_table
	port map(core_id, route);	

	ping_time : entity work.ping_timer
	port map(clk,rst,postpone_transaction,ping_id);
	
--	avl_mem_m.addr <= (others => '0');
--	avl_mem_m.be <= (others => '0');
	avl_mem_m.size <= '1';
--	avl_mem_m.wdata <= (others => '0');

	r2l_core_fifo : entity work.fifo
	generic map(2,fifo_depth)
	port map(clk, reset, open, open, r2s_next, r2s, r2l_fifo_ren,r2l_fifo_wen,r2s_fifo_empty);
	r2l_data_fifo : entity work.fifo
	generic map(AVL_DATA_WIDTH,fifo_depth)
	port map(clk, reset, open, open, avl_mem_s.rdata,read_data_buffer,r2l_fifo_ren,r2l_fifo_wen,open);
	mem_core_fifo : entity work.fifo
	generic map(2,fifo_depth)
	port map(clk, reset, open, open, cmder_next,r2s_next,mem_fifo_ren,mem_fifo_wen,mem_fifo_empty);
	mem_cmd_fifo : entity work.fifo
	generic map(OCP_CMD_WIDTH,fifo_depth)
	port map(clk, reset, open, open, cmd_next,mem_cmd,mem_fifo_ren,mem_fifo_wen,open);
	mem_addr_fifo : entity work.fifo
	generic map(OCP_BURST_ADDR_WIDTH,fifo_depth)
	port map(clk, reset, open, open, outbuffer_addr_next, avl_mem_m.addr(23 downto 3), mem_fifo_ren,mem_fifo_wen,open);
	avl_mem_m.addr (2 downto 0) <= (others => '0');
	mem_data_fifo : entity work.fifo
	generic map(OCP_DATA_WIDTH*OCP_BURST_LENGTH,fifo_depth)
	port map(clk, reset, open, open, write_dat, avl_mem_m.wdata, mem_fifo_ren,mem_fifo_wen,open);
	mem_ben_fifo : entity work.fifo
	generic map(OCP_BYTE_WIDTH*OCP_BURST_LENGTH,fifo_depth)
	port map(clk, reset, open, open, write_ben, avl_mem_m.be, mem_fifo_ren,mem_fifo_wen,open);
	
	r2l_fsm : process(state, ping_id, route, pinged,core_id, r2s, read_counter, readbuffer_data, r2s_fifo_empty) --, r2s_waddr, r2s_raddr)
	begin
		state_next <= state;
		r2l_next <= (others => (others => '0'));	
		pinged_next <= pinged;
		core_id_next <= core_id;
		read_counter_next <= read_counter;
		r2l_fifo_ren <= '0';
		r2l_type <= '0';
		case state is
		when idle =>
			if ping_id /= pinged then
				core_id_next <= ping_id;
				state_next <= send_ping;
			end if;
		when send_ping =>
			r2l_next.tag <= header_tag;
			r2l_route <= route;
			r2l_type <= '1';
			pinged_next <= core_id;
			state_next <= idle;
--			if r2s_waddr /= r2s_raddr then
			if r2s_fifo_empty = '0' then
				state_next <= send_package_header;
				core_id_next <= r2s;
			end if;
		when send_package_header =>
			r2l_next.tag <= header_tag;
			r2l_route <= route;
			state_next <= send_package;
		when send_package =>
			read_counter_next <= read_counter + 1;
			r2l_next.tag <= payload_tag;
			r2l_next.payload(OCP_DATA_WIDTH-1 downto 0) <= readbuffer_data(to_integer(read_counter));
			if read_counter = OCP_BURST_LENGTH-1 then
				read_counter_next <= (others => '0');
				state_next <= idle;
				r2l_fifo_ren <= '1';
			end if;
		when others =>
			state_next <= idle;
		end case;
	end process;

	l2r_fsm : process(l2r_state,l2r,write_counter,outbuffer_addr,outbuffer_data,outbuffer_en,cmd_ack,cmd,cmder,pinged)
	begin
		outbuffer_addr_next <= outbuffer_addr;
		outbuffer_data_next <= outbuffer_data;
		outbuffer_en_next <= outbuffer_en;
		write_counter_next <= write_counter;
		l2r_state_next <= l2r_state;

		cmd_next <= cmd;
		cmder_next <= cmder;
		mem_fifo_wen <= '0';
		
		case l2r_state is
			when idle =>
				if l2r.tag = header_tag then
					cmder_next <= l2r.payload(OCP_BURST_ADDR_WIDTH+OCP_CMD_WIDTH+2-1 downto OCP_BURST_ADDR_WIDTH+OCP_CMD_WIDTH);
					outbuffer_addr_next <= l2r.payload(OCP_BURST_ADDR_WIDTH-1 downto 0);	
					
					if l2r.payload(OCP_BURST_ADDR_WIDTH+OCP_CMD_WIDTH-1 downto OCP_BURST_ADDR_WIDTH) = OCP_CMD_WR then
						l2r_state_next <= write_data;
					elsif l2r.payload(OCP_BURST_ADDR_WIDTH+OCP_CMD_WIDTH-1 downto OCP_BURST_ADDR_WIDTH) = OCP_CMD_RD then
						mem_fifo_wen <= '1';
						l2r_state_next <= read_data;
						cmd_next <= OCP_CMD_RD;
					end if;
				end if;
			when write_data =>
				write_counter_next <= write_counter + to_unsigned(1,write_counter'length);
				outbuffer_data_next(to_integer(write_counter)) <= l2r.payload(OCP_DATA_WIDTH-1 downto 0);
				outbuffer_en_next(to_integer(write_counter)) <= l2r.payload(payload_width-1 downto payload_width-OCP_BYTE_WIDTH);
				if write_counter = OCP_burst_length-1 then
					l2r_state_next <= write_en;
					write_counter_next <= (others => '0');
				end if;
			when write_en =>
				l2r_state_next <= idle;
				cmd_next <= OCP_CMD_WR;
				mem_fifo_wen <= '1';
			when others =>
				l2r_state_next <= idle;
			end case;
	end process;
	

	mem_fsm : process(mem_state, cmd, avl_mem_s,outbuffer_data,outbuffer_en,outbuffer_addr, read_data_buffer, cmder,r2s,
			--mem_waddr,mem_raddr,
			mem_cmd, mem_fifo_empty)
	begin
		mem_state_next <= mem_state;
--		mem_m.MCmd <= OCP_CMD_IDLE;
--		mem_m.MRespAccept <= '0';
		avl_mem_m.write_req <= '0';
		avl_mem_m.read_req <= '0';
		avl_mem_m.burstbegin <= '0';

		r2l_fifo_wen <= '0';

		mem_fifo_ren <= '0';

		case mem_state is
		when idle =>
--		if mem_waddr /= mem_raddr then
		if mem_fifo_empty = '0' then
			if avl_mem_s.ready = '1' then
				if mem_cmd = OCP_CMD_WR then
					avl_mem_m.write_req <= '1';
					avl_mem_m.burstbegin <= '1';
--					mem_state_next <= write_s;
					mem_state_next <= write_wait_s;
				elsif mem_cmd = OCP_CMD_RD then
					avl_mem_m.read_req <= '1';
					avl_mem_m.burstbegin <= '1';
					mem_state_next <= read_wait_s;
				end if;
		end if;
		end if;
		when write_s =>
			if avl_mem_s.ready = '0' then
				mem_state_next <= write_wait_s;
--				mem_fifo_ren <= '1';
			else
--				avl_mem_m.write_req <= '1';
--				avl_mem_m.burstbegin <= '1';
			end if;
		when write_wait_s =>
--			avl_mem_m.write_req <= '1';
--			avl_mem_m.burstbegin <= '1';
			if avl_mem_s.ready = '1' then
				mem_state_next <= idle;
				mem_fifo_ren <= '1';
			end if;
		when read_s =>
--			mem_m.MCmd <= OCP_CMD_RD;
--			avl_mem_m.read_req <= '1';
--			avl_mem_m.burstbegin <= '1';

--			if mem_s.SResp /= OCP_RESP_NULL then
--				mem_state_next <= idle;
--				mem_m.MRespAccept <= '1';
--				r2l_fifo_wen <= '1';
--				mem_fifo_ren <= '1';
--			els
			if avl_mem_s.ready = '1' then
				mem_state_next <= read_wait_s;
--				mem_m.MRespAccept <= '1';
--				r2l_fifo_wen <= '1';
--				mem_fifo_ren <= '1';
			end if;
		when read_wait_s =>
--			mem_m.MCmd <= OCP_CMD_RD;
--			avl_mem_m.read_req <= '1';
--			avl_mem_m.burstbegin <= '1';

--			if mem_s.SResp /= OCP_RESP_NULL then
--				mem_state_next <= idle;
--				mem_m.MRespAccept <= '1';
--				r2l_fifo_wen <= '1';
--				mem_fifo_ren <= '1';
--			els
			if avl_mem_s.rdata_valid = '1' then
				mem_state_next <= idle;
--				mem_m.MRespAccept <= '1';
				r2l_fifo_wen <= '1';
				mem_fifo_ren <= '1';
			end if;
		when others =>
			mem_state_next <= idle;
		end case;
	end process;
	
	
	
	
	
	process(clk)
	begin
		if reset = '1' then
			state <= idle;

			write_counter <= (others => '0');
			l2r_state <= idle;
			r2l <= (others => (others => '0'));
			mem_state <= idle;
			cmd <= OCP_CMD_IDLE;

			
			outbuffer_data <= (others => (others => '0'));
			outbuffer_en <= (others => (others => '0'));
			outbuffer_addr <= (others => '0');
			
			read_counter <= (others => '0');
			
			pinged <= (others => '1');
			cmder <= (others => '0');
		elsif rising_edge(clk) then

			state <= state_next;
			l2r_state <= l2r_state_next;
			write_counter <= write_counter_next;
			outbuffer_data <= outbuffer_data_next;
			outbuffer_en <= outbuffer_en_next;
			outbuffer_addr <= outbuffer_addr_next;
			r2l <= r2l_next;
			mem_state <= mem_state_next;
			cmd <= cmd_next;
			core_id <= core_id_next;
			pinged <= pinged_next;
			cmder <= cmder_next;
			read_counter <= read_counter_next;
		end if;
	end process;
	
	readdatamap : for i in 0 to ocp_burst_length-1 generate
		readbuffer_data(i)  <= read_data_buffer((i+1)*OCP_DATA_WIDTH-1 downto i*OCP_DATA_WIDTH);
	end generate;
	
	outdatamap2 : for i in 0 to ocp_burst_length-1 generate
		write_dat((i+1)*OCP_DATA_WIDTH-1 downto i*OCP_DATA_WIDTH) <= outbuffer_data(i);
	end generate;
	outenmap2 : for i in 0 to ocp_burst_length-1 generate
		write_ben((i+1)*OCP_BYTE_WIDTH-1 downto i*OCP_BYTE_WIDTH) <= outbuffer_en(i);
	end generate;

end rtl;



