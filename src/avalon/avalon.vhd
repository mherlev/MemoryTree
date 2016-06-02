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
-- Title: Avalon package
-- Description: Type definitions and constants for Avalon
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

package avalon is

    constant AVL_ADDR_WIDTH : integer := 24;
    constant AVL_DATA_WIDTH : integer := 128;
    constant AVL_BYTE_WIDTH : integer := 16;
	 
	type avl_m is record
        addr		: std_logic_vector(AVL_ADDR_WIDTH-1 downto 0);
        be			: std_logic_vector(AVL_BYTE_WIDTH-1 downto 0);
        burstbegin	: std_logic;
        read_req	: std_logic;
        size		: std_logic;
        wdata		: std_logic_vector(AVL_DATA_WIDTH-1 downto 0);
        write_req	: std_logic;
    end record;

    type avl_s is record
        rdata       : std_logic_vector(AVL_DATA_WIDTH-1 downto 0);
        rdata_valid	: std_logic;
        ready		: std_logic;
    end record;
 
end package;
