library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity muxram00 is
	port(
		 resetmux: in std_logic;
		 rwmux: in std_logic;
		 wordCodermux: in std_logic_vector(6 downto 0);
		 wordRammux: in std_logic_vector(6 downto 0);
		 outwordmux: out std_logic_vector(6 downto 0));
end muxram00;

architecture muxram0 of muxram00 is
signal scontrolmux: std_logic_vector(1 downto 0);
begin
scontrolmux <= (resetmux)&(rwmux);
	with scontrolmux select
		outwordmux <= wordCodermux when "10",
					  wordRammux when "11",
					  "0000000" when others;
end muxram0;