library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity coder00 is
	port(
		 clkc: in std_logic;
		 inkeyc: in std_logic_vector(3 downto 0);
		 resetc: in std_logic;
		 rwc: in std_logic;
		 incontc: in std_logic_vector(3 downto 0); -- Monitorea el contador de anillo
		 outcontc: inout std_logic_vector(5 downto 0);--Esto nos dice que el contador sera de 6 bits
		 outcoderc: out std_logic_vector(6 downto 0));
end coder00;

architecture coder0 of coder00 is
signal scontrolc: std_logic_vector(1 downto 0);
begin
scontrolc <= (resetc)&(rwc);
	pcoder: process(clkc)
	variable aux0: bit:='0';-- incont = "1000"
	variable aux1: bit:='0';-- incont = "0100"
	variable aux2: bit:='0';-- incont = "0010"
	variable aux3: bit:='0';-- incont = "0001"
	begin
	if(clkc'event and clkc ='1')then
		case scontrolc is
			when "00" =>
				aux0:='0';
				aux1:='0';
				aux2:='0';
				aux3:='0';
				outcontc <= "000000";
				outcoderc <= "0000000";	
			when "01" =>
				aux0:='0';
				aux1:='0';
				aux2:='0';
				aux3:='0';
				outcontc <= "000000";
				outcoderc <= "0000000";	
			when "10" => -- Modo escritura
				case incontc is
					when "1000" =>
						case inkeyc is
----------------------------------------------------------------
							when "0000" =>
								aux0:='0';
							when "0001" =>
								if(aux0 = '0')then
									aux0:='1';
									outcoderc <= "0110000";--1
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "0010" =>
								if(aux0 = '0')then
									aux0:='1';
									outcoderc <= "1101101";--2
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;	
								end if;
							when "0100" =>
								if(aux0 = '0')then
									aux0:='1';
									outcoderc <= "1111001";--3
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "1000" =>
								if(aux0 = '0')then
									aux0:='1';
									outcoderc <= "1110111";--A
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when others => null;
						end case;
--------------------------------------------------------------------			
					when "0100" =>
						case inkeyc is
							when "0000" =>
								aux1:='0';
							when "0001" =>
								if(aux1 = '0')then
									aux1:='1';
									outcoderc <= "0110011";--4
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "0010" =>
								if(aux1 = '0')then
									aux1:='1';
									outcoderc <= "1011011";--5
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "0100" =>
								if(aux1 = '0')then
									aux1:='1';
									outcoderc <= "1011111";--6
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "1000" =>
								if(aux1 = '0')then
									aux1:='1';
									outcoderc <= "0011111";--b
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when others => null;
						end case;
-----------------------------------------------------------------------------
					when "0010" =>
						case inkeyc is
							when "0000" =>
								aux2:='0';
							when "0001" =>
								if(aux2 = '0')then
									aux2:='1';
									outcoderc <= "1110001";--7
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "0010" =>
								if(aux2 = '0')then
									aux2:='1';
									outcoderc <= "1111111";--8
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "0100" =>
								if(aux2 = '0')then
									aux2:='1';
									outcoderc <= "1110011";--9
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "1000" =>
								if(aux2 = '0')then
									aux2:='1';
									outcoderc <= "1001110";--C
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when others => null;
						end case;
-----------------------------------------------------------------------------
					when "0001" =>
						case inkeyc is
							when "0000" =>
								aux3:='0';
							when "0001" =>
								if(aux3 = '0')then
									aux3:='1';
									outcoderc <= "1111110";--0
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;	
								end if;
							when "0010" =>
								if(aux3 = '0')then
									aux3:='1';
									outcoderc <= "1100011";--*
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "0100" =>
								if(aux3 = '0')then
									aux3:='1';
									outcoderc <= "0011101";--+
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when "1000" =>
								if(aux3 = '0')then
									aux3:='1';
									outcoderc <= "0000001";--/-/
									outcontc <= outcontc + '1';
								else
									outcontc <= outcontc;
								end if;
							when others => null;
						end case;
-----------------------------------------------------------------------------
					when others => null;
				end case;
			when others => null;
		end case;
	end if;--De clkc (end de la condicion del flanco)
	end process pcoder;
end coder0;