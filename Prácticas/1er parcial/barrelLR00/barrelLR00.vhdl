library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagebarrelLR00.all;

entity barrelLR00 is
	port(
		 clk0: inout std_logic;
		 cdiv0: in std_logic_vector(4 downto 0);
		 en0: in std_logic;
		 incr0: in std_logic_vector(3 downto 0);
		 in0: in std_logic_vector(7 downto 0);
		 out0: inout std_logic_vector(7 downto 0));
end barrelLR00;

architecture barrelLR0 of barrelLR00 is
begin
	BLR00: osc00 port map(oscout0 => clk0,
						   cdiv => cdiv0);
	BLR01: barrelLR port map(clks => clk0,
							 ens => en0,
							 incs => incr0,
							 ins => in0,
							 outs => out0);
end barrelLR0;