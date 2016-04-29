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
-- Title: Memory refresh timer
-- Description: Timer responsible for periodically issuing refresh commands to 
--              memory, and halting routing table progression while refreshing
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity refresh_timer is
	port(	clk	: in std_logic;
			rst : in std_logic;
			ref : out std_logic;
			postpone_transaction : out std_logic);
end refresh_timer;

architecture rtl of refresh_timer is
		signal counter, counter_next : unsigned(31 downto 0) := (others => '0');
		type states is (refresh1,refresh2, idle, halt);
		signal state, state_next : states := refresh1;
begin
	fsm : process(state)
	begin
		ref <= '0';
		postpone_transaction <= '0';
		state_next <= state;
		counter_next <= counter +1;
		case state is
		when refresh1 =>
			ref<= '1';
			postpone_transaction <= '1';
			state_next <= refresh2;
		when refresh2 =>
			ref<= '0';
			postpone_transaction <= '1';
			if counter = c_rfc - noc_latency then
				state_next <= idle;
			end if;
		when idle =>
			if counter = c_refi - noc_latency then
				state_next <= halt;
			end if;
		when halt =>
			if counter = c_refi then
				state_next <= refresh1;
				counter_next <= (others => '0');
			end if;
			postpone_transaction <= '1';
		end case;
	end process;

	registers : process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				state <= refresh1;
				counter <= (others => '0');
			else
				counter <= counter_next;
				state <= state_next;
			end if;
		end if;
	end process;
end rtl;

