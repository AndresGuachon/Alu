----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:14:46 06/19/2022 
-- Design Name: 
-- Module Name:    ALU_8BITS - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_8BITS is
    Port ( a_i : in  STD_LOGIC_VECTOR (7 downto 0);
           b_i : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode_i : in  STD_LOGIC_VECTOR (1 downto 0);
           d_o : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU_8BITS;

architecture Behavioral of ALU_8BITS is

begin
process(a_i, b_i, opcode_i)
	begin
		case opcode_i is
			when "00" =>
				d_o <= std_logic_vector(unsigned(a_i)+unsigned(b_i));
			when "01" =>
				d_o <= std_logic_vector(unsigned(a_i)-unsigned(b_i));
			when "10" =>
				d_o <= a_i and b_i;
			when others =>
				d_o <= a_i or b_i;
			end case;
		end process;
		
end Behavioral;

