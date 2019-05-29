library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity sevenseg_decoder is
	port(digit : in std_logic_vector(3 downto 0);
			LED_out : out std_logic_vector(6 downto 0));
end entity sevenseg_decoder;

architecture behaviour of sevenseg_decoder is
	signal temp : std_logic_vector(6 downto 0);
begin
	temp <=	"1111001" when digit = "0001" else --1
				"0100100" when digit = "0010" else --2
				"0110000" when digit = "0011" else --3
				"0011001" when digit = "0100" else --4
				"0010010" when digit = "0101" else --5
				"0000010" when digit = "0110" else --6
				"1111000" when digit = "0111" else --7
				"0000000" when digit = "1000" else --8
				"0010000" when digit = "1001" else --9
				"1000000";
	LED_out <= temp;
end architecture behaviour;