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
-- Title: Routing table
-- Description: Container for routing table
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.MemoryTreePackage.all;
use work.root_package.all;

entity routing_table is
		port (core_id : in unsigned(1 downto 0);
		route : out std_logic_vector(3 downto 0));
end routing_table;


architecture list of routing_table is
	type routingtable_arr is array(0 to schedule_table_size-1) of std_logic_vector(number_of_levels*outputs_per_router-1 downto 0);
	signal routingtable : routingtable_arr := ("0101",
	"1001",
	"0110",
	"1010");
begin
	route <= routingtable(to_integer(core_id));
end list;
