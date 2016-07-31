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
-- Title: Ping timer
-- Description: Timer responsible for periodically issuing pings
-- TODO : make more generic
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.root_package.all;

entity ping_timer is
	port(	clk	: in std_logic;
			rst : in std_logic;
			postpone_transaction : in std_logic;
			ping : out std_logic;
			ping_empty : out std_logic;
			dequeue : in std_logic;
			core_id : out std_logic_vector(1 downto 0)
	);
end ping_timer;

architecture rtl of ping_timer is
	signal counter, counter_next : signed(31 downto 0) := (others => '0');
	signal read_addr, read_addr_next, 
			idx, idx_next : unsigned(1 downto 0) := (others => '0');
begin
	sched_tab : entity work.schedule_table
	port map (read_addr,core_id);

	process(idx,counter,postpone_transaction,dequeue, read_addr)
	begin
		counter_next <= counter;
		idx_next <= idx;
		read_addr_next <= read_addr;
		ping <= '0';
		ping_empty <= '1';
		if read_addr /= idx then
			ping_empty <= '0';	
		end if;
		if counter = c_transaction-1 then
			counter_next <= (others => '0');
			ping <= '1';
		else
			counter_next <= counter + 1;
		end if;
		if dequeue = '1' then
				read_addr_next <= read_addr+1;
		end if;
		if postpone_transaction	= '0' then	
			if counter = c_transaction-1 then
				idx_next <= idx+1;
			end if;
		end if;

	end process;
	
	process(clk)
	begin
		if rst = '1' then
			counter <= (others => '0');
			idx <= (others => '0');
			read_addr <= (others => '0');
		elsif rising_edge(clk) then
			counter <= counter_next;
			idx <= idx_next;
			read_addr <= read_addr_next;
		end if;
	end process;

end rtl;

