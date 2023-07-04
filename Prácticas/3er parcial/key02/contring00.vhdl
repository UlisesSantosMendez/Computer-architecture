library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity contring00 is
	port(
		 clkr: in std_logic;
		 enr: in std_logic;
		 outr: inout std_logic_vector(3 downto 0));
end contring00;

architecture contring0 of contring00 is
begin
	pring: process(clkr)
	begin
		case enr is
			when '0' =>
				outr <= "1000";
			when '1' =>
				if(clkr'event and clkr = '1') then
					outr(3) <= outr(0); -- El bit 0 se le regresa al bit 3
					outr(2 downto 0) <= outr(3 downto 1);
				end if;
			when others => null;
		end case;
	end process pring;
end contring0;