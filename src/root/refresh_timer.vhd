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

