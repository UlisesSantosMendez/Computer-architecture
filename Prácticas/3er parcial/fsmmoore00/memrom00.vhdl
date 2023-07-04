library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity memrom00 is
	port(
		 incontro: in std_logic_vector(5 downto 0);
		 outro: out std_logic_vector(5 downto 0));
end memrom00;

architecture memrom0 of memrom00 is
type arrayrom is array(0 to 63) of std_logic_vector(5 downto 0);
constant wordrom: arrayrom :=("000000",
							--  "000000",
							--  "000000",
							  "100000",
							  "010000",
							  "001000",
							  "000100",
							  "000010",
							  "000001",
							  "001111",
							  "111100",
							  "001111",
							  "001111",
							  "001111",
							  "000000",
							  "100000",
							  "010000",
							  "001000",
							  "000100",
							  "000010",
							  "000001",
							  "001111",
							  "111100",
							  "001111",
							  "001111",
							  "001111",
							  others => "111111");	-- FALTA CORREGIR EL ORDEN DE LA SECUENCIA SON 24 EN TOTAL	
begin
	outro <= wordrom(conv_integer(incontro));
end memrom0;