library ieee;
use ieee.std_logic_1164.all;
use work.fa;

entity fa_tb is
end entity fa_tb;

architecture arch_fa_tb of fa_tb is
signal a_s, b_s, cin_s : std_logic;
signal s_s, cout_s : std_logic;
component fa is
	port ( a, b, cin : in std_logic;
		s, cout : out std_logic );
end component fa;
begin
	fa0: fa port map( a_s, b_s, cin_s, s_s, cout_s);

	a_s_in0 : process
	begin
		a_s <= '0';
		wait for 20 ns;
		a_s <= '1';
		wait for 20 ns;
	end process;

	b_s_in0 : process
	begin
		b_s <= '0';
		wait for 40 ns;
		b_s <= '1';
		wait for 40 ns;
	end process;

	cin_s_in0 : process
	begin
		cin_s <= '0';
		wait for 80 ns;
		cin_s <= '1';
		wait for 80 ns;
	end process;

end architecture arch_fa_tb;
