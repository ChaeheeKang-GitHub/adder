library ieee;
use ieee.std_logic_1164.all;

entity rca16 is
	port ( a, b : in std_logic_vector(15 downto 0);
		cin : in std_logic;
		s : out std_logic_vector(15 downto 0);
		cout : out std_logic );
end entity rca16;

architecture arch_rca16 of rca16 is

	signal carry : std_logic_vector(16 downto 0);

	component fa is
		port ( a, b, cin : in std_logic;
			s, cout : out std_logic);
	end component fa;

begin

	mapping_rca : for i in 0 to 15 generate
		map_loop : fa port map ( a(i), b(i), carry(i), s(i), carry(i+1) );
	end generate mapping_rca;

	carry(0) <= cin;
	cout <= carry(16);

end architecture arch_rca16;
