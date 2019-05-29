LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity disp_mux is
	port(character_address: OUT std_logic_vector(5 downto 0);
			pixel_row, pixel_col: IN std_logic_vector(9 downto 0);
			life : IN std_logic_vector(2 downto 0);
			SW0,BUTTON2: IN std_logic;
			energy : IN integer;
			font_row, font_col: OUT std_logic_vector(2 downto 0));
end entity;

architecture behaviour of disp_mux is

end architecture behaviour;