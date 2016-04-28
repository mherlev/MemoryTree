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
-- Title: Router
-- Description: Router for Response NoC
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MemoryTreePackage.all;

entity noc is
	port (clk : in std_logic;
		root : in phit_r;
		leafs : out phit_arr);
end entity noc;

architecture structural of noc is
	constant number_of_links : integer := (1-(routers_per_level**number_of_levels))/(1-routers_per_level);
	
	type link_arr is array (0 to number_of_links-1) of phit_r;
	signal links : link_arr;

	constant number_of_out_links : integer := (1-(routers_per_level**(number_of_levels-1)))/(1-routers_per_level);
	type out_link_arr is array(0 to number_of_out_links-1) of router_output;
	signal outlinks : out_link_arr;
begin
	for i in 0 to number_of_levels-1 generate
		levels: for j in 0 to router_outputs*i-1 generate
			router_inst : entity work.routerport
			generic map(i)
			port map(clk, links(i*routers_per_level+j),outlinks(i*routers_per_level+j)
	
	for i in 0 to number_of_levels-1 generate
		levels: for j in 0 to router_outputs*i-1 generate
			links(i*routers_per_level + j + 1) <= outlinks(i+j/router_outputs)(j mod router_outputs)

	
end architecture structural;

