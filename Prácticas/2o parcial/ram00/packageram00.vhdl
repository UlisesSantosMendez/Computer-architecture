library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageram00 is
	component osc00
		port(
			 cdiv: in std_logic_vector(4 downto 0);
			 oscout0: inout std_logic);
	end component;
	
	component contring00 
		port(
			 clkr: in std_logic;
			 resetr: in std_logic;
			 rwr: in std_logic;
			 outr: inout std_logic_vector(3 downto 0));
	end component;
	
	component coder00 
		port(
			 clkc: in std_logic;
			 inkeyc: in std_logic_vector(3 downto 0);
			 resetc: in std_logic;
			 rwc: in std_logic;
			 incontc: in std_logic_vector(3 downto 0); -- Monitorea el contador de anillo
			 outcontc: inout std_logic_vector(5 downto 0);--Esto nos dice que el contador sera de 6 bits
			 outcoderc: out std_logic_vector(6 downto 0));
	end component;
	
	component memram00 
		port(
			 clkra: in std_logic;
			 resetra: in std_logic;
			 rwra: in std_logic;
			 incontWra: in std_logic_vector(5 downto 0);
			 incontRra: in std_logic_vector(5 downto 0);
			 inwordra: in std_logic_vector(6 downto 0);
			 outwordra: out std_logic_vector(6 downto 0));
	end component;
	
	component contRead00 
		port(
			 clkrd: in std_logic;
			 resetrd: in std_logic;
			 rwrd: in std_logic;
			 incontWrd: in std_logic_vector(5 downto 0);
			 outcontRrd: inout std_logic_vector(5 downto 0));
	end component;
	
	component muxram00 
		port(
			 resetmux: in std_logic;
			 rwmux: in std_logic;
			 wordCodermux: in std_logic_vector(6 downto 0);
			 wordRammux: in std_logic_vector(6 downto 0);
			 outwordmux: out std_logic_vector(6 downto 0));
	end component;
end packageram00;
