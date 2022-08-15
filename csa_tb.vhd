library ieee;
use ieee.std_logic_1164.all;

entity csa_tb is
end entity csa_tb;

architecture arch_csa_tb of csa_tb is
	signal a_s, b_s, s_s : std_logic_vector(15 downto 0);
	signal cin_s, cout_s : std_logic;
	
	component csa16 is 
		 port (a, b : in std_logic_vector(15 downto 0);
		    cin : in std_logic;
		    s : out std_logic_vector(15 downto 0);
		    cout : out std_logic);
	end component csa16;
begin
	mapping_csa : csa16 port map ( a_s, b_s, cin_s, s_s, cout_s);
	
	tb : process
		constant period : time := 200 ns;
		
	begin
		a_s <= "0000111100001111";
		b_s <= "1111000011110000";
		cin_s <= '0';
		wait for period;

		a_s <= "0000111100001111";
		b_s <= "1111000011110000";
		cin_s <= '1';
		wait for period;
	end process tb;
	
end architecture arch_csa_tb;
