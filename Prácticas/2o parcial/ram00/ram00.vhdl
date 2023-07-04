library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageram00.all;

entity ram00 is
	port(
		 clk0: inout std_logic;
		 cdiv0: in std_logic_vector(4 downto 0);
		 re0: in std_logic;
		 rw0: in std_logic; --Se dejaron dos contadores de lectura y de escritura
	     inkey0: in std_logic_vector(3 downto 0);
		 outr0: inout std_logic_vector(3 downto 0);
		 outcontW0: inout std_logic_vector(5 downto 0);
		 outcontR0: inout std_logic_vector(5 downto 0);
		 outcoder0: out std_logic_vector(6 downto 0);
		 outtransist0: out std_logic_vector(3 downto 0));
end ram00;

architecture ram0 of ram00 is
signal swordcoder, swordram: std_logic_vector(6 downto 0);
begin
outtransist0 <="0001";
	RA00: osc00 port map(oscout0 => clk0,
						  cdiv => cdiv0);
	
	RA01: contring00 port map(clkr => clk0,
							   resetr => re0,
							   rwr => rw0,
							   outr => outr0);
	
	RA02: coder00 port map(clkc => clk0,
							inkeyc => inkey0,
							resetc => re0,
							rwc => rw0,
							incontc => outr0,
							outcontc => outcontW0,
							outcoderc => swordcoder);
	
	RA03: memram00 port map(clkra => clk0,
							 resetra => re0,
							 rwra => rw0, 
							 incontWra => outcontW0,
							 incontRra => outcontR0,
							 inwordra => swordcoder,
							 outwordra => swordram);
	
	RA04: contRead00 port map(clkrd => clk0,
							   resetrd => re0,
							   rwrd => rw0,
							   incontWrd => outcontW0,
							   outcontRrd => outcontR0);
	
	RA05: muxram00 port map(resetmux => re0,
							 rwmux => rw0,
							 wordCodermux => swordcoder,
							 wordRammux => swordram,
							 outwordmux => outcoder0);
end ram0;