library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity contring00 is
	port(
		clkr: in std_logic;
		resetr: in std_logic;
		rwr: in std_logic;
		outr: inout std_logic_vector(3 downto 0));
end contring00;

architecture contring0 of contring00 is
signal sshift: std_logic_vector(3 downto 0);
signal scontrolr: std_logic_vector(1 downto 0);
begin
scontrolr  <= (resetr)&(rwr);
	pring: process(clkr)
	begin
		if(clkr'event and clkr = '1') then
			case scontrolr is
				when "00" => 
					sshift <= "1000";
					outr <= "0000";
				when "01" => 
					sshift <= "1000";
					outr <= "0000";
				when "10" =>
					sshift(3) <= sshift(0);
					sshift(2 downto 0) <= sshift(3 downto 1);
					outr <= sshift;
				when others => null;
			end case;
		end if;
	end process pring;
end contring0;