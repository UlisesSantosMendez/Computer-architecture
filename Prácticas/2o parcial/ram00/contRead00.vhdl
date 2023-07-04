library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library lattice;
use lattice.all;

entity contRead00 is
	port(
		 clkrd: in std_logic;
		 resetrd: in std_logic;
		 rwrd: in std_logic;
		 incontWrd: in std_logic_vector(5 downto 0);
		 outcontRrd: inout std_logic_vector(5 downto 0));
end contRead00;

architecture contRead0 of contRead00 is
signal scontrolrd: std_logic_vector(1 downto 0);
begin
scontrolrd <= (resetrd)&(rwrd);
	pcontRead: process(clkrd)
	begin
		if(clkrd'event and clkrd='1')then
			case scontrolrd is
				when "00" =>
					outcontRrd <= "000000";
				when "01" =>
					outcontRrd <= "000000";
				when "10" =>
					outcontRrd <= "000000";
				when "11" =>
					if(outcontRrd < incontWrd)then
						outcontRrd <= outcontRrd+'1';
					else
						outcontRrd <= outcontRrd;
					end if;
				when others => null;
			end case;
		end if;
	end process pcontRead;
end contRead0;