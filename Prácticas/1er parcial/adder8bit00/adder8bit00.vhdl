library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder8bit00.all;

entity adder8bit00 is
	port(
		 Ai: in std_logic_vector(7 downto 0);
		 Bi: in std_logic_vector(7 downto 0);
		 SL: in std_logic;
		 So: out std_logic_vector(7 downto 0);
		 LED: out std_logic);
end adder8bit00;

architecture adder8bit0 of adder8bit00 is
signal SB,CS,SA: std_logic_vector(7 downto 0);
signal Sx: std_logic;
begin
--//////////////////////////////////////////////////////////////////////////////////
-----------------------------------XOR----------------------------------------------
--//////////////////////////////////////////////////////////////////////////////////
	A00: xor00 port map(Ax => SL,
						 Bx => Bi(0),
						 Yx => SB(0));
						 
	A01: xor00 port map(Ax => SL,
						 Bx => Bi(1),
						 Yx => SB(1));
						 
	A02: xor00 port map(Ax => SL,
						 Bx => Bi(2),
						 Yx => SB(2));
						 
	A03: xor00 port map(Ax => SL,
						 Bx => Bi(3),
						 Yx => SB(3));
						 
	A04: xor00 port map(Ax => SL,
						 Bx => Bi(4),
						 Yx => SB(4));

	A05: xor00 port map(Ax => SL,
						 Bx => Bi(5),
						 Yx => SB(5));
						
	A06: xor00 port map(Ax => SL,
						 Bx => Bi(6),
						 Yx => SB(6));
						
	A07: xor00 port map(Ax => SL,
						 Bx => Bi(7),
						 Yx => SB(7));
--///////////////////////////////////////////////////////////////////////////////
-------------------------------------FA------------------------------------------
--///////////////////////////////////////////////////////////////////////////////
--1	
	A08: fa00 port map(C00 => SL,
						A00 => Ai(0),
						B00 => SB(0),
						C01 => CS(0),
						S00 => SA(0));
--2						
	A09: fa00 port map(C00 => CS(0),
						A00 => Ai(1),
						B00 => SB(1),
						C01 => CS(1),
						S00 => SA(1));
--3						
	A10: fa00 port map(C00 => CS(1),
						A00 => Ai(2),
						B00 => SB(2),
						C01 => CS(2),
						S00 => SA(2));
--4						
	A11: fa00 port map(C00 => CS(2),
						A00 => Ai(3),
						B00 => SB(3),
						C01 => CS(3),
						S00 => SA(3));
--5						
	A12: fa00 port map(C00 => CS(3),
						A00 => Ai(4),
						B00 => SB(4),
						C01 => CS(4),
						S00 => SA(4));
--6						
	A13: fa00 port map(C00 => CS(4),
						A00 => Ai(5),
						B00 => SB(5),
						C01 => CS(5),
						S00 => SA(5));
--7						
	A14: fa00 port map(C00 => CS(5),
						A00 => Ai(6),
						B00 => SB(6),
						C01 => CS(6),
						S00 => SA(6));
--8						
	A15: fa00 port map(C00 => CS(6),
						A00 => Ai(7),
						B00 => SB(7),
						C01 => CS(7),
						S00 => SA(7));
--////////////////////////////////////////////////////////////////////////////--------------------------------AND------------------------------------------
--////////////////////////////////////////////////////////////////////////////

	A16: and00 port map(Aa => Sx,
						 Ba => SA(0),
						 Ya => So(0));
		
	A17: and00 port map(Aa => Sx,
						 Ba => SA(1),
						 Ya => So(1));
		
	A18: and00 port map(Aa => Sx,
						 Ba => SA(2),
						 Ya => So(2));
		
	A19: and00 port map(Aa => Sx,
						 Ba => SA(3),
						 Ya => So(3));
						 
	A20: and00 port map(Aa => Sx,
						 Ba => SA(4),
						 Ya => So(4));
						 
	A21: and00 port map(Aa => Sx,
						 Ba => SA(5),
						 Ya => So(5));
						 
	A22: and00 port map(Aa => Sx,
						 Ba => SA(6),
						 Ya => So(6));
						 
	A23: and00 port map(Aa => Sx,
						 Ba => SA(7),
						 Ya => So(7));
--////////////////////////////////////////////////////////////////////////////////
-----------------------------XNOR-------------------------------------------------
--////////////////////////////////////////////////////////////////////////////////

	A24: xnor00 port map(Axn => CS(7),
						  Bxn => CS(6),
						  Yxn => Sx);
--////////////////////////////////////////////////////////////////////////////////
--------------------------------------XOR----------------------------------------
--////////////////////////////////////////////////////////////////////////////////

	A25: xor00 port map(Ax => CS(6),
						 Bx => CS(7),
						 Yx => LED);
	
end adder8bit0;