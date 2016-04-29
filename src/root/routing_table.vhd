library ieee;
use ieee.std_logic_1164.all;
library work;
use work.root_package.all;

entity routing_table is
		port (index : in unsigned(31 downto 0);
		core_id : out unsigned(31 downto 0));
end routing_table;


architecture list of routing_table is
	type routingtable_arr is array(0 to routing_table_size-1) of unsigned(31 downto 0);
	signal routingtable : routingtable_arr := (0,2,1,3);
begin
	core_id <= routingtable(to_integer(index));
end list;
