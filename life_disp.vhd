LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity life_disp is
	port(character_address: OUT std_logic_vector(5 downto 0);
			pixel_row, pixel_col: IN std_logic_vector(9 downto 0);
			life : IN std_logic_vector(2 downto 0);
			font_row, font_col: OUT std_logic_vector(2 downto 0));
end entity;

architecture behaviour of life_disp is
begin 
	process(pixel_col, pixel_row)
		variable v_font_row, v_font_col: std_logic_vector(2 downto 0);
		variable v_character_address: std_logic_vector(5 downto 0);
	begin
	
				--W
				if(pixel_col >= CONV_STD_LOGIC_VECTOR(64, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(128, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(191, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(23, 6);
					--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(128, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(191, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				end if;
			
		character_address <= v_character_address;
		font_row <= v_font_row;
		font_col <= v_font_col;
	end process;
end architecture behaviour;