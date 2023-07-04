library ieee;
use ieee.std_logic_1164.all;
--library lattice;
--use lattice.all;

entity andTB00 is
end andTB00;

architecture andTB0 of andTB00 is
	component and00
	port(
		 Aa: in std_logic;
		 Ba: in std_logic;
		 Ya: out std_logic);
	end component;
signal sAa, sBa, sYa: std_logic;
begin
---------------------------------------
	AN00: and00 port map(Aa => sAa,
						  Ba => sBa,
						  Ya => sYa);
---------------------------------------
estimulos: process
begin
-------------------
	sAa <= '0';
	sBa <= '0';
	wait for 50 ns;
--------------------
	sAa <= '0';
	sBa <= '1';
	wait for 50 ns;
---------------------	
	sAa <= '1';
	sBa <= '0';
	wait for 50 ns;
----------------------	
	sAa <= '1';
	sBa <= '1';
	wait for 50 ns;
-----------------------	
	sAa <= '0';
	sBa <= '1';
	wait for 50 ns;
----------------------
end process;
---------------------------------------
end andTB0;