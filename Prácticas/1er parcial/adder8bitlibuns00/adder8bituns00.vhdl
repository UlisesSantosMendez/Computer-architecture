library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library machxo2;
use machxo2.all;
library lattice;
use lattice.all;

entity adder8bituns00 is
	port(Ai: in std_logic_vector(7 downto 0);
		 Bi: in std_logic_vector(7 downto 0);
		 SL: in std_logic;
		 So: out std_logic_vector(7 downto 0));
end adder8bituns00;

architecture adder8bituns0 of adder8bituns00 is
begin
	with SL select
	So <= Ai + Bi when '0',
		  Ai - Bi when '1',
		  "00000000" when others;
end adder8bituns0;