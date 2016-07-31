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
-- TODO : Make schedule androuting generic
--		: Make signal names conform with documentation
--		: Write comments
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

	signal rst : std_logic;

	signal ref : std_logic := '0';
	signal postpone_transaction : std_logic := '0';

	--R2L declarations
	type r2l_states is (idle, send_ping, send_package_header, send_package);
	signal state, state_next : r2l_states := idle;
	
	signal r2l_next : phit_r := (others => (others => '0'));
	alias r2l_route is r2l_next.payload(3 downto 0);
	alias r2l_type is r2l_next.payload(payload_width-1);
	signal read_counter, read_counter_next : unsigned(31 downto 0) 
										   := (others => '0');
	
	type read_data_arr is array (ocp_burst_length-1 downto 0) 
					   of std_logic_vector(OCP_DATA_WIDTH-1 downto 0);	
	signal readdata : read_data_arr := (others => (others => '0'));

	signal r2s_fifo_dequeue : std_logic := '0';
	signal r2s_fifo_empty : std_logic;
	signal r2s_readdata : std_logic_vector(OCP_BURST_LENGTH*OCP_DATA_WIDTH-1 
							downto 0);
	signal core_id,core_id_next : std_logic_vector(1 downto 0) 
								:= (others => '0');
	signal r2s_id : std_logic_vector(core_id'length-1 downto 0) 
				  := (others => '0');

	signal ping_id : std_logic_vector(1 downto 0) := (others => '0');
	signal route   : std_logic_vector(number_of_levels*outputs_per_router-1 
						downto 0) 
				   		:= (others => '0');

	signal ping : std_logic := '0';
	signal ping_dequeue : std_logic := '0';
	signal ping_empty : std_logic;


	--L2R declarations
	type l2r_states is (idle,write_data,write_en, read_data);
	signal l2r_state, l2r_state_next : l2r_states := idle;
	signal write_counter, write_counter_next : unsigned(31 downto 0) := (others => '0');
	alias l2r_id is l2r.payload(OCP_BURST_ADDR_WIDTH+OCP_CMD_WIDTH+2-1 
						downto OCP_BURST_ADDR_WIDTH+OCP_CMD_WIDTH);
	alias l2r_cmd is l2r.payload(OCP_BURST_ADDR_WIDTH+OCP_CMD_WIDTH-1
						downto OCP_BURST_ADDR_WIDTH);

	signal cmd, cmd_next : std_logic_vector(OCP_CMD_WIDTH-1 downto 0) := OCP_CMD_IDLE;

	signal mem_fifo_data_enqueue : std_logic_vector(OCP_BURST_LENGTH-1 downto 0)
								 := (others => '0');
	signal mem_fifo_cmd_enqueue  : std_logic := '0';
	signal mem_fifo_addr_enqueue : std_logic := '0';
	signal mem_fifo_id_enqueue   : std_logic := '0';


	--MEM declarations
	type mem_states is (idle, read_wait_s,read_s, write_s,write_wait_s);
	signal mem_state, mem_state_next : mem_states := idle;
	
	
	signal cmder, cmder_next : std_logic_vector(core_id'length-1 downto 0) := (others => '0');
	signal r2s_id_next : std_logic_vector(core_id'length-1 downto 0) := (others => '0');
	
	signal r2s_fifo_enqueue : std_logic := '0';

	signal mem_fifo_empty : std_logic := '0';
	signal mem_fifo_data_dequeue : std_logic := '0';
	signal mem_cmd : std_logic_vector(OCP_CMD_WIDTH-1 downto 0) := OCP_CMD_IDLE;	

begin
	rst <= not calib_done;
	ref_timer : entity work.refresh_timer
	port map(clk,rst,ref,postpone_transaction, refresh_ack);
	
	refresh <= ref;

	route_tab : entity work.routing_table
	port map(core_id, route);	

	ping_time : entity work.ping_timer
	port map(clk,rst,postpone_transaction,ping, ping_empty, ping_dequeue,
				ping_id);
	
	avl_mem_m.size <= '1';

	-- R2S FIFO
	r2s_core_fifo : entity work.fifo
	generic map(2,fifo_depth)
	port map(clk, reset, r2s_id_next, r2s_id, r2s_fifo_dequeue,r2s_fifo_enqueue,
				r2s_fifo_empty);
	r2s_data_fifo : entity work.fifo
	generic map(AVL_DATA_WIDTH,fifo_depth)
	port map(clk, reset, avl_mem_s.rdata, r2s_readdata, r2s_fifo_dequeue, 
				r2s_fifo_enqueue,open);
	-- MEM FIFO
	mem_core_fifo : entity work.fifo
	generic map(2,fifo_depth)
	port map(clk, reset, cmder_next, r2s_id_next, mem_fifo_data_dequeue,
				mem_fifo_id_enqueue, mem_fifo_empty);
	mem_cmd_fifo : entity work.fifo
	generic map(OCP_CMD_WIDTH,fifo_depth)
	port map(clk, reset, cmd_next, mem_cmd, mem_fifo_data_dequeue,
				mem_fifo_cmd_enqueue, open);
	mem_addr_fifo : entity work.fifo
	generic map(OCP_BURST_ADDR_WIDTH,fifo_depth)
	port map(clk, reset, l2r.payload(OCP_BURST_ADDR_WIDTH-1 downto 0),
				avl_mem_m.addr(20 downto 0), mem_fifo_data_dequeue,
				mem_fifo_addr_enqueue, open);
	avl_mem_m.addr (23 downto 21) <= (others => '0');
	
	mem_fifo : for i in 0 to OCP_BURST_LENGTH-1 generate
		mem_fifo_data : entity work.fifo
		generic map(OCP_DATA_WIDTH,fifo_depth)
		port map(clk, reset, l2r.payload(OCP_DATA_WIDTH-1 downto 0), 
		avl_mem_m.wdata(OCP_DATA_WIDTH*(i+1)-1 downto OCP_DATA_WIDTH*i), 
		mem_fifo_data_dequeue,mem_fifo_data_enqueue(i),open);
		mem_fifo_be : entity work.fifo
		generic map(OCP_BYTE_WIDTH,fifo_depth)
		port map(clk, reset, 
		l2r.payload(payload_width-1 downto payload_width-OCP_BYTE_WIDTH), 
		avl_mem_m.be(OCP_BYTE_WIDTH*(i+1)-1 downto OCP_BYTE_WIDTH*i), 
		mem_fifo_data_dequeue,mem_fifo_data_enqueue(i),open);
	end generate;



	r2l_fsm : process(state, ping_id, route, 
			core_id, r2s_id, read_counter, 
			readdata, r2s_fifo_empty, ping)
	begin
		state_next <= state;
		r2l_next <= (others => (others => '0'));	
		core_id_next <= core_id;
		read_counter_next <= read_counter;
		r2s_fifo_dequeue <= '0';
		r2l_type <= '0';
		ping_dequeue <= '0';
		case state is
		when idle =>
			if ping = '1' then
				state_next <= send_ping;
				core_id_next <= ping_id;
			end if;
		when send_ping =>
			if ping_empty = '0' then
				r2l_next.tag <= header_tag;
				r2l_route <= route;
				r2l_type <= '1';
				ping_dequeue <= '1';
			end if;
			state_next <= idle;
			if r2s_fifo_empty = '0' then
				state_next <= send_package_header;
				core_id_next <= r2s_id;
			end if;
		when send_package_header =>
			r2l_next.tag <= header_tag;
			r2l_route <= route;
			state_next <= send_package;
		when send_package =>
			read_counter_next <= read_counter + 1;
			r2l_next.tag <= payload_tag;
			r2l_next.payload(OCP_DATA_WIDTH-1 downto 0) 
				<= readdata(to_integer(read_counter));
		
			if read_counter = OCP_BURST_LENGTH-1 then
				read_counter_next <= (others => '0');
				state_next <= idle;
				r2s_fifo_dequeue <= '1';
			end if;
		when others =>
			state_next <= idle;
		end case;
	end process;

	l2r_fsm : process(l2r_state,l2r,write_counter, cmd, cmder)
	begin
		write_counter_next <= write_counter;
		l2r_state_next <= l2r_state;

		cmd_next <= cmd;
		cmder_next <= cmder;
		mem_fifo_data_enqueue <= (others => '0');
		mem_fifo_cmd_enqueue  <='0';
    	mem_fifo_addr_enqueue <='0';
    	mem_fifo_id_enqueue   <='0';


		case l2r_state is
			when idle =>
				if l2r.tag = header_tag then
					cmder_next <= l2r_id;
					mem_fifo_addr_enqueue <= '1';
					mem_fifo_cmd_enqueue <= '1';
					if l2r_cmd = OCP_CMD_WR then
						l2r_state_next <= write_data;
						cmd_next <= OCP_CMD_WR;
					elsif l2r_cmd = OCP_CMD_RD then
						l2r_state_next <= read_data;
						cmd_next <= OCP_CMD_RD;
						mem_fifo_id_enqueue <= '1';
					end if;
				end if;
			when write_data =>
				write_counter_next <= write_counter 
									  + to_unsigned(1,write_counter'length);
				mem_fifo_data_enqueue(to_integer(write_counter)) <= '1';
				if write_counter = OCP_burst_length-1 then
					write_counter_next <= (others => '0');
					l2r_state_next <= idle;
					mem_fifo_id_enqueue <= '1';
					cmd_next <= OCP_CMD_WR;
				end if;
			when others =>
				l2r_state_next <= idle;
			end case;
	end process;
	

	mem_fsm : process(mem_state, cmd, avl_mem_s,
			r2s_readdata, cmder,r2s_id,
			mem_cmd, mem_fifo_empty)
	begin
		mem_state_next <= mem_state;
		avl_mem_m.write_req <= '0';
		avl_mem_m.read_req <= '0';
		avl_mem_m.burstbegin <= '0';
		r2s_fifo_enqueue <= '0';
		mem_fifo_data_dequeue <= '0';
		case mem_state is
		when idle =>
			if mem_fifo_empty = '0' then
				if avl_mem_s.ready = '1' then
					if mem_cmd = OCP_CMD_WR then
						avl_mem_m.write_req <= '1';
						avl_mem_m.burstbegin <= '1';
						mem_state_next <= write_wait_s;
					elsif mem_cmd = OCP_CMD_RD then
						avl_mem_m.read_req <= '1';
						avl_mem_m.burstbegin <= '1';
						mem_state_next <= read_wait_s;
					end if;
				end if;
			end if;
		when write_wait_s =>
			if avl_mem_s.ready = '1' then
				mem_state_next <= idle;
				mem_fifo_data_dequeue <= '1';
			end if;
		when read_wait_s =>
			if avl_mem_s.rdata_valid = '1' then
				mem_state_next <= idle;
				r2s_fifo_enqueue <= '1';
				mem_fifo_data_dequeue <= '1';
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
			read_counter <= (others => '0');
			cmder <= (others => '0');
		elsif rising_edge(clk) then
			state <= state_next;
			l2r_state <= l2r_state_next;
			write_counter <= write_counter_next;
			r2l <= r2l_next;
			mem_state <= mem_state_next;
			cmd <= cmd_next;
			core_id <= core_id_next;
			cmder <= cmder_next;
			read_counter <= read_counter_next;
		end if;
	end process;
	
	readdatamap : for i in 0 to ocp_burst_length-1 generate
		readdata(i) <= r2s_readdata((i+1)*OCP_DATA_WIDTH-1 
					   	downto i*OCP_DATA_WIDTH);
	end generate;

end rtl;



