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
-- Title: FIFO
-- Description: Ringbuffer FIFO without full signal
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity fifo is
	generic(data_width : integer := 32;
		   depth : integer:=2);
	port(clk : in std_logic;
		rst : in std_logic;
		data_i : in std_logic_vector(data_width-1 downto 0);
		data_o : out std_logic_vector(data_width-1 downto 0);
		dequeue : in std_logic;
		enqueue : in std_logic;
		empty : out std_logic);
end entity;

architecture rtl of fifo is
	type ram is array(depth-1 downto 0) of std_logic_vector(data_width-1 downto 0);
	signal fifo : ram := (others => (others => '0'));
	signal read_addr_int : unsigned(integer(ceil(log2(real(depth))))-1 downto 0)  := (others => '0');
	signal write_addr_int : unsigned(integer(ceil(log2(real(depth))))-1 downto 0) := (others => '0');
begin

	process(clk, rst, fifo, read_addr_int, write_addr_int)
	begin
--		if read_addr_int = write_addr_int then
--			empty <= '1';
--		else
--			empty <= '0';
--		end if;
		if rst = '1' then 
			write_addr_int <= (others => '0');
			read_addr_int <= (others => '0');
		elsif rising_edge(clk) then
			data_o <= fifo(to_integer(read_addr_int));
			if read_addr_int = write_addr_int then
				empty <= '1';
			else
				empty <= '0';
			end if;
			if dequeue = '1' then
				if read_addr_int = depth-1 then
					read_addr_int <= (others => '0');
				else
					read_addr_int <= read_addr_int + 1;
				end if;
			end if;
			if enqueue = '1' then
				fifo(to_integer(write_addr_int)) <= data_i;
				if write_addr_int = depth-1 then
					write_addr_int <= (others => '0');
				else
					write_addr_int <= write_addr_int + 1;
				end if;
			end if;
		end if;
--		data_o <= fifo(to_integer(read_addr_int));
	end process;
end rtl;
