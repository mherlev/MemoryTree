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
-- Title: Top entity
-- Description: Top entity for simulating root and r2lnoc and na
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.MemoryTreePackage.all;
use work.root_package.all;
use work.ocp.all;
use work.avalon.all;


entity avalon_conversion is
  port(clk : in std_logic;
    reset : in std_logic);
end entity avalon_conversion;

architecture testbench of avalon_conversion is
  signal r2l_root_port : phit_r;
	signal r2l_leaf_ports : phit_arr;
	signal l2r_root_port : phit_r;
	signal l2r_leaf_ports : phit_arr;
	type ocp_m_array is array (0 to number_of_leafs-1) of ocp_burst_m;
	signal ocp_m : ocp_m_array;
	type ocp_s_array is array (0 to number_of_leafs-1) of ocp_burst_s;
	signal ocp_s : ocp_s_array;
	
	signal mem_m : ocp_mem_m;
	signal mem_s : ocp_mem_s;
	signal avl_mem_m : avl_m;
	signal avl_mem_s : avl_s;
 begin
  r2lnoc : entity work.r2l_noc
  port map (clk,r2l_root_port,r2l_leaf_ports);
  l2rnoc : entity work.l2r_noc
  port map (clk,l2r_root_port,l2r_leaf_ports);
  
  root_module : entity work.root
  port map (clk,reset,r2l_root_port,l2r_root_port,mem_m,mem_s,avl_mem_m,avl_mem_s);
  
  leafs : for i in 0 to number_of_leafs-1 generate
	leaf_node : entity work.network_adapter
	generic map(i)
	port map(clk,reset,r2l_leaf_ports(i),l2r_leaf_ports(i),ocp_m(i),ocp_s(i));
  end generate;
  
  burstmodule : for i in 0 to number_of_leafs-1 generate
	ocpburst : entity work.ocpburst_testbench
	port map(clk,reset, ocp_m(i), ocp_s(i));
  end generate;
--  ocpburst : entity work.ocpburst_testbench
--	port map(clk,reset, ocp_m(0), ocp_s(0));
  dram : entity work.dummy_dram_avalon
  port map(clk,reset,mem_m,mem_s,avl_mem_m,avl_mem_s);
  
end testbench;
  
