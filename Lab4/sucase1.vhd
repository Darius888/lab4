library ieee;
use ieee.std_logic_1164.all;
 
entity suif1 is
  port (
    i_bit0     : in  std_logic_vector(1 downto 0);
    o_bit0 	  : out std_logic_vector(2 downto 0)
);
end suif1;
 
architecture rtl of suif1 is
begin
	process(i_bit0)
	begin
		case i_bit0 is
		when "00" => o_bit0 <= "011";
		when "01" => o_bit0 <= "100";
		when "10" => o_bit0 <= "101";
		when "11" => o_bit0 <= "110";
		when others => null;
		end case;
	end process;
end rtl;