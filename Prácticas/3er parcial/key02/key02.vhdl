library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagekey0200.all;

entity key02 is
	port(
		 clk0: inout std_logic;
		 cdiv0: in std_logic_vector(4 downto 0);
		 en0: in std_logic;
		 inkey0: in std_logic_vector(3 downto 0);
		 outr0: inout std_logic_vector(3 downto 0);
		 out320: inout std_logic_vector(31 downto 0);
		 outr70: inout std_logic_vector(3 downto 0);
		 out7seg0: out std_logic_vector(6 downto 0));
end key02;

architecture key0 of key02 is
signal scodehexa: std_logic_vector(3 downto 0);signal spush: std_logic;
begin
	K0200: osc00 port map(oscout0 => clk0,
						   cdiv => cdiv0);
	
	K0201: contring00 port map(clkr => clk0,
								enr => en0,
								outr => outr0);
	
	K0202: coder00 port map(clkc => clk0,
							 enc => en0,
							 inkeyc => inkey0,
							 incontc => outr0,
							 outcoderc => scodehexa,
							 outpushc => spush);
	
	K0203: lect00 port map(clkrd => clk0,
							enrd => en0,
							inpushrd => spush,
							incoderd => scodehexa,
							out32rd => out320);
	
	K0204: cpntring7seg00 port map(clkr7 => clk0,
									enr7 => en0,
									outr7 => outr70);
--------------
	K0205: coder7seg00 port map(incontcd7 => outr70,
								 in32cd7 => out320,
								 out7segcd => out7seg0);
---------------	
end key0;