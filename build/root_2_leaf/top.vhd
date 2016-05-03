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

entity root_2_leaf is
  port(clk : in std_logic;
    reset : in std_logic);
end entity root_2_leaf;

architecture testbench of root_2_leaf is
  signal root_port : phit_r;
	signal leaf_ports : phit_arr;
	signal ocp_m : ocp_burst_m;
 begin
  noc : entity work.r2l_noc
  port map (clk,root_port,leaf_ports);
    
  root_module : entity work.root
  port map (clk,reset,root_port);
  
  leafs : for i in 0 to number_of_leafs-1 generate
	leaf_node : entity work.network_adapter
	port map(clk,reset,leaf_ports(i),ocp_m,open);
  end generate;
  
end testbench;
  
