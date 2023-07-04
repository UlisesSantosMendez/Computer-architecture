library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity coder7seg00 is
	port(
		 incontcd7: in std_logic_vector(3 downto 0);--transistores
		 in32cd7: in std_logic_vector(31 downto 0);
		 out7segcd: out std_logic_vector(6 downto 0));
end coder7seg00;

architecture coder7seg0 of coder7seg00 is
signal snibb0, snibb1,snibb2: std_logic_vector(3 downto 0);
signal snibb3, snibb4,snibb5: std_logic_vector(3 downto 0);
signal snibb6, snibb7: std_logic_vector(3 downto 0);
signal scode7seg0,scode7seg1,scode7seg2: std_logic_vector(6 downto 0);
signal scode7seg3,scode7seg4,scode7seg5: std_logic_vector(6 downto 0);
signal scode7seg6,scode7seg7: std_logic_vector(6 downto 0);
begin
snibb0 <= in32cd7(3 downto 0);
snibb1 <= in32cd7(7 downto 4);
snibb2 <= in32cd7(11 downto 8);
snibb3 <= in32cd7(15 downto 12);
snibb4 <= in32cd7(19 downto 16);
snibb5 <= in32cd7(23 downto 20);
snibb6 <= in32cd7(27 downto 24);
snibb7 <= in32cd7(31 downto 28);

	with snibb0 select
		scode7seg0 <= "1111110" when "0000",--0
					   "0110000" when "0001",--1
					   "1101101" when "0010",--2
					   "1111001" when "0011",--3
					   "0110011" when "0100",--4
					   "1011011" when "0101",--5
					   "1011111" when "0110",--6
					   "1110000" when "0111",--7
					   "1111111" when "1000",--8
					   "1110011" when "1001",--9
					   "1110111" when "1010",--A
					   "0011111" when "1011",--b
					   "1001110" when "1100",--C
					   "0111101" when "1101",--d
					   "1001111" when "1110",--E
					   "1000111" when "1111",--F
					   "0000000" when others;
------------------------------------------------------------------					   
		with snibb1 select
		scode7seg1 <= "1111110" when "0000",--0
					   "0110000" when "0001",--1
					   "1101101" when "0010",--2
					   "1111001" when "0011",--3
					   "0110011" when "0100",--4
					   "1011011" when "0101",--5
					   "1011111" when "0110",--6
					   "1110000" when "0111",--7
					   "1111111" when "1000",--8
					   "1110011" when "1001",--9
					   "1110111" when "1010",--A
					   "0011111" when "1011",--b
					   "1001110" when "1100",--C
					   "0111101" when "1101",--d
					   "1001111" when "1110",--E
					   "1000111" when "1111",--F
					   "0000000" when others;
------------------------------------------------------------------
		with snibb2 select
		scode7seg2 <= "1111110" when "0000",--0
					   "0110000" when "0001",--1
					   "1101101" when "0010",--2
					   "1111001" when "0011",--3
					   "0110011" when "0100",--4
					   "1011011" when "0101",--5
					   "1011111" when "0110",--6
					   "1110000" when "0111",--7
					   "1111111" when "1000",--8
					   "1110011" when "1001",--9
					   "1110111" when "1010",--A
					   "0011111" when "1011",--b
					   "1001110" when "1100",--C
					   "0111101" when "1101",--d
					   "1001111" when "1110",--E
					   "1000111" when "1111",--F
					   "0000000" when others;
------------------------------------------------------------------					   
		with snibb3 select
		scode7seg3 <= "1111110" when "0000",--0
					   "0110000" when "0001",--1
					   "1101101" when "0010",--2
					   "1111001" when "0011",--3
					   "0110011" when "0100",--4
					   "1011011" when "0101",--5
					   "1011111" when "0110",--6
					   "1110000" when "0111",--7
					   "1111111" when "1000",--8
					   "1110011" when "1001",--9
					   "1110111" when "1010",--A
					   "0011111" when "1011",--b
					   "1001110" when "1100",--C
					   "0111101" when "1101",--d
					   "1001111" when "1110",--E
					   "1000111" when "1111",--F
					   "0000000" when others;
------------------------------------------------------------------			   
		with snibb4 select
		scode7seg4 <= "1111110" when "0000",--0
					   "0110000" when "0001",--1
					   "1101101" when "0010",--2
					   "1111001" when "0011",--3
					   "0110011" when "0100",--4
					   "1011011" when "0101",--5
					   "1011111" when "0110",--6
					   "1110000" when "0111",--7
					   "1111111" when "1000",--8
					   "1110011" when "1001",--9
					   "1110111" when "1010",--A
					   "0011111" when "1011",--b
					   "1001110" when "1100",--C
					   "0111101" when "1101",--d
					   "1001111" when "1110",--E
					   "1000111" when "1111",--F
					   "0000000" when others;
------------------------------------------------------------------				   
		with snibb5 select
		scode7seg5 <= "1111110" when "0000",--0
					   "0110000" when "0001",--1
					   "1101101" when "0010",--2
					   "1111001" when "0011",--3
					   "0110011" when "0100",--4
					   "1011011" when "0101",--5
					   "1011111" when "0110",--6
					   "1110000" when "0111",--7
					   "1111111" when "1000",--8
					   "1110011" when "1001",--9
					   "1110111" when "1010",--A
					   "0011111" when "1011",--b
					   "1001110" when "1100",--C
					   "0111101" when "1101",--d
					   "1001111" when "1110",--E
					   "1000111" when "1111",--F
					   "0000000" when others;
------------------------------------------------------------------			   
		with snibb6 select
		scode7seg6 <= "1111110" when "0000",--0
					   "0110000" when "0001",--1
					   "1101101" when "0010",--2
					   "1111001" when "0011",--3
					   "0110011" when "0100",--4
					   "1011011" when "0101",--5
					   "1011111" when "0110",--6
					   "1110000" when "0111",--7
					   "1111111" when "1000",--8
					   "1110011" when "1001",--9
					   "1110111" when "1010",--A
					   "0011111" when "1011",--b
					   "1001110" when "1100",--C
					   "0111101" when "1101",--d
					   "1001111" when "1110",--E
					   "1000111" when "1111",--F
					   "0000000" when others;
------------------------------------------------------------------			   
		with snibb7 select
		scode7seg7 <= "1111110" when "0000",--0
					   "0110000" when "0001",--1
					   "1101101" when "0010",--2
					   "1111001" when "0011",--3
					   "0110011" when "0100",--4
					   "1011011" when "0101",--5
					   "1011111" when "0110",--6
					   "1110000" when "0111",--7
					   "1111111" when "1000",--8
					   "1110011" when "1001",--9
					   "1110111" when "1010",--A
					   "0011111" when "1011",--b
					   "1001110" when "1100",--C
					   "0111101" when "1101",--d
					   "1001111" when "1110",--E
					   "1000111" when "1111",--F
					   "0000000" when others;
------------------------------------------------------------------
	with incontcd7 select
		out7segcd <= scode7seg0 when "0001",
					 scode7seg1 when "0010",
					 scode7seg2 when "0100",
					 scode7seg3 when "1000",
					 "0000000" when others;					   
end coder7seg0;