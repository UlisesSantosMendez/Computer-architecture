library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageramEBR00.all;

entity ramEBR00 is
	port(
		 clk0: inout std_logic;
		 cdiv0: in std_logic_vector(4 downto 0);
		 re0,en0,rw0: in std_logic;
		 inData0: in std_logic_vector(7 downto 0);
		 outcont0: inout std_logic_vector(5 downto 0);
		 Q0: out std_logic_vector(7 downto 0));
end ramEBR00;

architecture ramEBR0 of ramEBR00 is
begin
	RAEBR00: osc00 port map(oscout0 => clk0,
							 cdiv => cdiv0);
	RAEBR01: contRead00 port map(clkcr => clk0,
							      recr => re0,
								  encr => en0,
								  rwcr => rw0,
								  outcontcr => outcont0);
	RAEBR02: ram_EBR_00 port map(Clock => clk0,
								  ClockEn => en0,
								  Reset => re0,
								  WE => rw0,
								  Address => outcont0,
								  Data => inData0,
								  Q => Q0);	  
end ramEBR0;