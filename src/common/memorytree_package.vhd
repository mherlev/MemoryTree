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
-- Title: Memory package
-- Description: Type definitions and constants for Memory Tree
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

package MemoryTreePackage is
	constant tag_width : natural := 2;
	constant header_tag : std_logic_vector(tag_width-1 downto 0) := "10";
	constant payload_tag: std_logic_vector(tag_width-1 downto 0) := "11";
	constant empty_tag: std_logic_vector(tag_width-1 downto 0) := "00";
	constant tail_tag: std_logic_vector(tag_width-1 downto 0) := "01";

	constant payload_width : natural := 32+4;
	constant mem_index_top : natural := 31;

	type phit_r is record
		tag		: std_logic_vector(tag_width-1 downto 0);
		payload	: std_logic_vector(payload_width-1 downto 0);
	end record phit_r;

	constant number_of_levels : natural := 2;
	
	constant outputs_per_router : integer := 2;
	type router_output is array(0 to outputs_per_router-1) of phit_r;

	constant number_of_routers : integer := outputs_per_router**number_of_levels;
	
	constant number_of_leafs : integer := outputs_per_router**number_of_levels;
	type phit_arr is array(0 to number_of_leafs-1) of phit_r;
	
--	constant ocp_burst_length : integer := 16;
	
end;
