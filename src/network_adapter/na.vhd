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
-- Title: Network Adapter
-- Description: Network adapater for memeory tree
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.MemoryTreePackage.all;
use work.ocp.all;

entity network_adapter is
		generic(core_id : integer := 0);
		port (clk : in std_logic;
		rst : in std_logic;
		r2lnoc : in phit_r;
		l2rnoc : out phit_r;
		ocp_m : in ocp_burst_m;
		ocp_s : out ocp_burst_s);
end network_adapter;

architecture rtl of network_adapter is
	type states is (idle, writedata,writebyteen,read_wait, read);
	signal state, state_next : states := idle;
    signal counter, counter_next  : unsigned(31 downto 0) := (others => '0');

	constant ShiftRegLength : integer := ocp_burst_length*OCP_BYTE_WIDTH;
	signal ByteEnShiftReg,ByteEnShiftReg_next : std_logic_vector(ShiftRegLength-1 downto 0) := (others => '0');
begin
	process(state,ocp_m,r2lnoc,counter,ByteEnShiftReg)
	begin
		l2rnoc.payload <= (others=>'0');
		l2rnoc.tag <= empty_tag;
		state_next <= state;
		counter_next <= counter;
		ocp_s.SCmdAccept <= '0';
		ocp_s.SResp <= OCP_RESP_NULL;
		ocp_s.SData <= (others => '0');
		ocp_s.SDataAccept <= '0';
		ByteEnShiftReg_next <= ByteEnShiftReg;
		case state is
		when idle =>
			if r2lnoc.tag = header_tag then
				if ocp_m.mcmd = ocp_cmd_wr then
					state_next <= WriteData;
					l2rnoc.tag <= header_tag;
					l2rnoc.payload <= (others => '0');
					l2rnoc.payload(payload_width-1 downto ocp_m.MAddr'length+OCP_CMD_WIDTH) <= std_logic_vector(to_unsigned(core_id,payload_width-(ocp_m.MAddr'length+OCP_CMD_WIDTH)));
					l2rnoc.payload(ocp_m.MAddr'length+OCP_CMD_WIDTH-1 downto ocp_m.MAddr'length) <= ocp_m.MCmd;
					l2rnoc.payload(ocp_m.MAddr'length-1 downto 0) <= ocp_m.MAddr;
				elsif ocp_m.mcmd = ocp_cmd_rd then
					state_next <= read_wait;
					ocp_s.SCmdAccept <= '1';
					l2rnoc.tag <= header_tag;
					l2rnoc.payload <= (others => '0');
					l2rnoc.payload(payload_width-1 downto ocp_m.MAddr'length+OCP_CMD_WIDTH) <= std_logic_vector(to_unsigned(core_id,payload_width-(ocp_m.MAddr'length+OCP_CMD_WIDTH)));
					l2rnoc.payload(ocp_m.MAddr'length+OCP_CMD_WIDTH-1 downto ocp_m.MAddr'length) <= ocp_m.MCmd;
					l2rnoc.payload(ocp_m.MAddr'length-1 downto 0) <= ocp_m.MAddr;
				end if;
			end if;
		when WriteData =>
	    	counter_next <= counter+1;
			l2rnoc.payload <= ocp_m.MDataByteEn & ocp_m.MData;
			l2rnoc.tag <= payload_tag;
--			ByteEnShiftReg_next <= ocp_m.MDataByteEn & ByteEnShiftReg(ShiftRegLength-1 downto OCP_BYTE_WIDTH);
			if counter = 0 then
				ocp_s.SCmdAccept <= '1';
			elsif counter = ocp_burst_length-1 then
		    	state_next <= writebyteen;
				counter_next <= (others => '0');
--				state_next <= idle;
				end if;
		when WriteByteEn =>
--	    	counter_next <= counter+1;
--			l2rnoc.payload <= ByteEnShiftReg(OCP_DATA_WIDTH-1 downto 0);
--			l2rnoc.tag <= payload_tag;
--			ByteEnShiftReg_next <= std_logic_vector(to_unsigned(0,OCP_DATA_WIDTH)) & ByteEnShiftReg(ShiftRegLength-1 downto OCP_DATA_WIDTH);
--			if counter = 0 then
				ocp_s.SResp <= OCP_RESP_DVA;
--			elsif counter = ocp_burst_length/8-1 then
		    	state_next <= idle;
				counter_next <= (others => '0');
--			end if;

		when read_wait =>
			--TODO
			if r2lnoc.tag = header_tag then
				state_next <= read;
				counter_next <= (others => '0');
			end if;
				
		when read =>
			--TODO Complete this
			ocp_s.SResp <= OCP_RESP_DVA;
			counter_next <= counter + to_unsigned(1, counter'length);
			ocp_s.SData <= r2lnoc.payload(OCP_DATA_WIDTH-1 downto 0);
			if counter = ocp_burst_length-1 then
				state_next <= idle;
				counter_next <= (others => '0');
			end if;
		when others =>
			state_next <= idle;
		end case;
	end process;

	process (clk,rst)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				state <= idle;
				counter <= (others => '0');
				ByteEnShiftReg <= (others => '0');
			else
				state <= state_next;
				counter <= counter_next;
				ByteEnShiftReg <= ByteEnShiftReg_next;
			end if;
		end if;
	end process;
end rtl;


