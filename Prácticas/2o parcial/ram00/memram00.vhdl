library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library lattice;
use lattice.all;

entity memram00 is
	port(
		 clkra: in std_logic;
		 resetra: in std_logic;
		 rwra: in std_logic;
		 incontWra: in std_logic_vector(5 downto 0);
		 incontRra: in std_logic_vector(5 downto 0);
		 inwordra: in std_logic_vector(6 downto 0);
		 outwordra: out std_logic_vector(6 downto 0));
end memram00;


architecture memram0 of memram00 is
type arrayram is array(0 to 63) of std_logic_vector(6 downto 0);
signal swordram: arrayram;
signal scontrolra: std_logic_vector(1 downto 0);
begin
scontrolra <= (resetra)&(rwra);
	pram:process(clkra)
	begin
		if(clkra'event and clkra='1')then
			case scontrolra is				
				when "00" =>
					outwordra <= "0000000";
				when "01" =>
					outwordra <= "0000000";
				when "10" =>
					swordram(conv_integer(incontWra)) <= inwordra;
				when "11" =>
					outwordra <= swordram(conv_integer(incontRra));
				when others => null;
			end case;
		end if;
	end process pram;
end memram0;