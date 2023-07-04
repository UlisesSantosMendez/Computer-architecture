library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagekey0200 is
	component osc00
		port(
			 cdiv: in std_logic_vector(4 downto 0);
			 oscout0: inout std_logic);
	end component;
	component contring00
		port(
			 clkr: in std_logic;
			 enr: in std_logic;
			 outr: inout std_logic_vector(3 downto 0));
	end component;
	component coder00
		port(
			 clkc: in std_logic;
			 enc: in std_logic;
		 	 inkeyc: in std_logic_vector(3 downto 0);
			 incontc: in std_logic_vector(3 downto 0); -- Monitorea el contador de anillo
			 outcoderc: out std_logic_vector(3 downto 0);
			 outpushc: out std_logic);
	end component;
	component lect00
		port(
			 clkrd: in std_logic;
			 enrd: in std_logic;
			 inpushrd: in std_logic;
			 incoderd: in std_logic_vector(3 downto 0);
			 out32rd: inout std_logic_vector(31 downto 0));
	end component;
	component cpntring7seg00
		port(
			 clkr7: in std_logic;
			 enr7: in std_logic;
			 outr7: inout std_logic_vector(3 downto 0));
	end component;
	component coder7seg00
		port(
			 incontcd7: in std_logic_vector(3 downto 0);
			 in32cd7: in std_logic_vector(31 downto 0);
			 out7segcd: out std_logic_vector(6 downto 0));
	end component;
end packagekey0200;