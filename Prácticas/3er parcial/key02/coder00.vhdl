library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity coder00 is
	port(
		 clkc: in std_logic;
		 enc: in std_logic;
		 inkeyc: in std_logic_vector(3 downto 0);
		 incontc: in std_logic_vector(3 downto 0); -- Monitorea el contador de anillo
		 outcoderc: out std_logic_vector(3 downto 0);
		 outpushc: out std_logic);
end coder00;

architecture coder0 of coder00 is
begin
	pcoder: process(clkc)
		variable var0: bit:='0';-- incont = "1000"
		variable var1: bit:='0';-- incont = "0100"
		variable var2: bit:='0';-- incont = "0010"
		variable var3: bit:='0';-- incont = "0001"
		begin
			case enc is
				when '0' =>
					outcoderc <= "0000";
					outpushc <= '0';-- habilita el modulo de lectura
					var0:='0';
					var1:='0';
					var2:='0';
					var3:='0';
				when '1' =>
---------------------------------------------------------------------------
---------------------------------------------------------------------------
					if(clkc'event and clkc = '1')then
						case incontc is
							when "1000" =>
								case inkeyc is
		----------------------------------------------------------------
									when "0000" =>
										var0:='0';
										outpushc <= '0';
									when "0001" =>
										if(var0 = '0')then
											var0:='1';
											outcoderc <= "0001";--1
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "0010" =>
										if(var0 = '0')then
											var0:='1';
											outcoderc <= "0010";--2
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "0100" =>
										if(var0 = '0')then
											var0:='1';
											outcoderc <= "0011";--3
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "1000" =>
										if(var0 = '0')then
											var0:='1';
											outcoderc <= "1010";--A
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when others => null;
								end case;
		--------------------------------------------------------------------			
							when "0100" =>
								case inkeyc is
									when "0000" =>
										var1:='0';
										outpushc <= '0';
									when "0001" =>
										if(var1 = '0')then
											var1:='1';
											outcoderc <= "0100";--4
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "0010" =>
										if(var1 = '0')then
											var1:='1';
											outcoderc <= "0101";--5
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "0100" =>
										if(var1 = '0')then
											var1:='1';
											outcoderc <= "0110";--6
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "1000" =>
										if(var1 = '0')then
											var1:='1';
											outcoderc <= "1011";--b
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when others => null;
								end case;
		-----------------------------------------------------------------------------
							when "0010" =>
								case inkeyc is
									when "0000" =>
										var2:='0';
										outpushc <= '0';
									when "0001" =>
										if(var2 = '0')then
											var2:='1';
											outcoderc <= "0111";--7
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "0010" =>
										if(var2 = '0')then
											var2:='1';
											outcoderc <= "1000";--8
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "0100" =>
										if(var2 = '0')then
											var2:='1';
											outcoderc <= "1001";--9
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "1000" =>
										if(var2 = '0')then
											var2:='1';
											outcoderc <= "1100";--C
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when others => null;
								end case;
		-----------------------------------------------------------------------------
							when "0001" =>
								case inkeyc is
									when "0000" =>
										var3:='0';
										outpushc <= '0';
									when "0001" =>
										if(var3 = '0')then
											var3:='1';
											outcoderc <= "0000";--0
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "0010" =>
										if(var3 = '0')then
											var3:='1';
											outcoderc <= "1101";--d
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "0100" =>
										if(var3 = '0')then
											var3:='1';
											outcoderc <= "1110";--E
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when "1000" =>
										if(var3 = '0')then
											var3:='1';
											outcoderc <= "1111";--F
											outpushc <= '1';
										else
											outpushc <= '0';
										end if;
									when others => null;
								end case;
		-----------------------------------------------------------------------------
							when others => null;
						end case;
					end if;
				when others => null;
			end case;
	end process pcoder;
end coder0;