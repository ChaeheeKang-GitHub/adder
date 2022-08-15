library ieee;
use ieee.std_logic_1164.all;

entity fa is
port (
	a, b, cin : in std_logic;
	s, cout : out std_logic
);
end entity fa;

architecture arch_fa of fa is
begin
	processing_fa : process
	begin
		wait for 10 ns;
		cout <= ( a and b ) or ( b and cin ) or ( cin and a );
		s <= a xor b xor cin;
	end process;

end architecture arch_fa;

