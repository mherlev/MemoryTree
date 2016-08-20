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
-- Title: Schedule table
-- Description: Schedule table for memory tree
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.memorytreepackage.all;
use work.root_package.all;
entity schedule_table is 
		port (index : in unsigned(id_width-1 downto 0);
		core_id : out std_logic_vector(id_width-1 downto 0));
end schedule_table;

architecture list of schedule_table is
--	type scheduletable_arr is array(0 to schedule_table_size-1) of std_logic_vector(id_width-1 downto 0);
	type scheduletable_arr is array(0 to num_of_cores-1) of std_logic_vector(id_width-1 downto 0);
	signal scheduletable : scheduletable_arr := (
	std_logic_vector(to_unsigned(0,id_width)), --"00",
	std_logic_vector(to_unsigned(1,id_width)), --"01",
	std_logic_vector(to_unsigned(2,id_width)), --"10",
	std_logic_vector(to_unsigned(3,id_width)), --"11"
	std_logic_vector(to_unsigned(4,id_width)), --"00",
	std_logic_vector(to_unsigned(5,id_width)), --"01",
	std_logic_vector(to_unsigned(6,id_width)), --"10",
	std_logic_vector(to_unsigned(7,id_width)) --"11"
		);
begin
	core_id <= scheduletable(to_integer(index));
end list;
