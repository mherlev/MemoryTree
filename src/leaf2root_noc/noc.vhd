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
-- Title: NoC
-- Description: Leaf to Root NoC
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MemoryTreePackage.all;

entity l2r_noc is
	port (clk : in std_logic;
		root : out phit_r;
		leafs : in phit_arr);
end entity l2r_noc;

architecture structural of l2r_noc is
	--Calculate number of links needed
	constant number_of_links : integer 
							  := (1-(outputs_per_router**(number_of_levels+1)))
							  	 /(1-outputs_per_router);
	--Declare needed links
	type link_arr is array (0 to number_of_links-1) of phit_r;
	signal links : link_arr;

	--Calculate number of outputs from routers
	constant nominator : integer := (1-(outputs_per_router**(number_of_levels)));
	constant denominator : integer := (1-outputs_per_router);
	constant number_of_out_links : integer := nominator/denominator;
	--Declare output links
	type out_link_arr is array(0 to number_of_out_links-1) of router_output;
	signal outlinks : out_link_arr;
begin
	-- Instantiate routers
	routers : for i in 0 to number_of_levels-1 generate
		levels: for j in 0 to outputs_per_router**i-1 generate
			router_inst : entity work.l2r_router
			generic map(i)
			port map(clk,
			outlinks((1-outputs_per_router**i)/(1-outputs_per_router)+j),
			links((1-outputs_per_router**i)/(1-outputs_per_router)+j));
		end generate;
	end generate;

	--Map links onto routers using geometric sum
	mappings : for i in 0 to number_of_levels-1 generate
		maplevels: for j in 0 to outputs_per_router**i-1 generate
			kit : for k in 0 to outputs_per_router-1 generate
				outlinks((1-outputs_per_router**i)/(1-outputs_per_router)+j)(k) 
				<= links((1-outputs_per_router**(i+1))
				          /(1-outputs_per_router)+j*outputs_per_router+k);
			end generate;
		end generate;
	end generate;

	--Map root and leafs
	root <= links(0);

	leafmappings : for i in 1 to number_of_leafs generate
		links((1-outputs_per_router**(number_of_levels+1))
			   /(1-outputs_per_router)-i) <= leafs(number_of_leafs - i);
	end generate;
end structural;

