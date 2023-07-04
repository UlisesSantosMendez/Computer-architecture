library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagerom00.all;

entity rom00 is
	port(
		 clk0: inout std_logic;
		 cdiv0: in std_logic_vector(4 downto 0);
		 en0: in std_logic;
		 outcontrd0: inout std_logic_vector(5 downto 0);
		 outrom0: out std_logic_vector(6 downto 0);
		 outtransist0: out std_logic_vector(3 downto 0));
end rom00;

architecture rom0 of rom00 is
begin
outtransist0 <= "0001";
	RO00: osc00 port map(oscout0 => clk0,
						  cdiv => cdiv0);
	
	RO01: contRead00 port map(clkrd =>clk0,
							   enrd => en0,
							   outcontrd => outcontrd0);
	
	RO02: memrom00 port map(incontro => outcontrd0,
							 outro => outrom0);
end rom0;