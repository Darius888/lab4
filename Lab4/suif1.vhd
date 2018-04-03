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
		if i_bit0 = "00" then o_bit0 <= "011";
		elsif i_bit0 = "01" then o_bit0 <= "100";
		elsif i_bit0 = "10" then o_bit0 <= "101";
		else o_bit0 <= "110";
		end if;
	end process;
end rtl;
