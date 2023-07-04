library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;


entity contrig00 is

      port(
	  clkc: in std_logic;
	  enc: in std_logic;
	  outc: out std_logic_vector(3 downto 0)
	  
	  );

end contrig00;

architecture contrig0 of contrig00 is
signal sshift: std_logic_vector(3 downto 0);
begin 
     pcont: process(clkc)
	 begin
	      if (clkc'event and clkc ='1')then
		  case enc is
		        when '0' =>
				      outc <= (others => '0');
					  sshift<="1000";
				when '1' =>
				      sshift(3) <= sshift(0);
					  sshift(2 downto 0) <= sshift(3 downto 1);
					  outc <= sshift;
				when others =>null;
				
			end case;
        end if;
		
	end process pcont;
end contrig0;