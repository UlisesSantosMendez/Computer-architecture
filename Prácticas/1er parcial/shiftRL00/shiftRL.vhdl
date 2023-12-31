library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity shiftRL is
	port(
		 clks: in std_logic;
		 ens: in std_logic;
		 ins: in std_logic_vector(7 downto 0);
		 outs: inout std_logic_vector(7 downto 0));
end shiftRL;

architecture shift of shiftRL is
begin
	pshift: process (clks)
	begin
		if(clks'event and clks='1') then
			case ens is
				when '0' =>
					outs <= ins;
				when '1' =>
					outs(0) <= '0';
					outs(7 downto 1) <= outs(6 downto 0);
				when others => null;
			end case;
		end if;
	end process pshift;
end shift;