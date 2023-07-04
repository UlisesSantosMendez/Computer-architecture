library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity memrom00 is
	port(
		 incontro: in std_logic_vector(5 downto 0);
		 outro: out std_logic_vector(6 downto 0));
end memrom00;

architecture memrom0 of memrom00 is
type arrayrom is array(0 to 63) of std_logic_vector(6 downto 0);
constant wordrom: arrayrom :=("1111110",--0
							  "0110000",--1
							  "1101101",--2
							  "1111001",--3
							  "0110011",--4
							  "1011011",--5
							  "1011111",--6
							  "1110001",--7
							  "1111111",--8
							  "1110011",--9
							  "1110111",--A
							  "0011111",--b
							  "1001110",--C
							  "0111101",--d
							  "1001111",--E
							  "1000111",--F
							  others => "0000000");		
begin
	outro <= wordrom(conv_integer(incontro));
end memrom0;