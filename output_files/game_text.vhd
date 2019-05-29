LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity game_text is
	port(	pixel_row, pixel_col: IN std_logic_vector(9 downto 0);
			state : IN std_logic_vector(2 downto 0);
			life : IN std_logic_vector(2 downto 0);
			energy : IN integer;
			character_address: OUT std_logic_vector(5 downto 0);
			font_row, font_col: OUT std_logic_vector(2 downto 0));
end entity;

architecture behaviour of game_text is
begin 
	process(pixel_col, pixel_row, state)
		variable v_font_row, v_font_col: std_logic_vector(2 downto 0);
		variable v_character_address: std_logic_vector(5 downto 0);
		variable SWITCH : std_logic;
	begin	
		if state = "100" then
				--GAMEOVER
				--G
				if(pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(7, 6);
				--A
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(1, 6);
				--M
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(13, 6);
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(288, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				--O
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(15, 6);
				--V
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(352, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(22, 6);
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				--R
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(18, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
			   else
					v_character_address := CONV_STD_LOGIC_VECTOR(32,6);
				end if;
		elsif state = "000" then
				--WELCOME
				--W
				if(pixel_col >= CONV_STD_LOGIC_VECTOR(64, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(128, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(127, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(23, 6);
					--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(128, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(127, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
					--L
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(127, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(12, 6);--14 N
					--C
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(127, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(3, 6);
					--O
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(127, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(15, 6);
					--M
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(127, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(13, 6);
					--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(512, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(127, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
					--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(513, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(577, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(127, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
					
				--TRAINING mode <left button> 27characters so starts at 95
				--T
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(95, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(111, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(20, 6);
				--R
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(111, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(18, 6);
					--A
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(143, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(1, 6);
					--I
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(143, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(159, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(9, 6);
					--N
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(159, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(175, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(14, 6);
				--I
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(175, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(9, 6);
					--N
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(207, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(14, 6);
				--G
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(207, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(7, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(224, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(238, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				--M  but (40
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(239, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(13, 6);
				--O
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(271, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(15, 6);
				--D
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(271, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(4, 6);
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(303, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(304, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(319, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				--(
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(319, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(335, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(40, 6);
				--L
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(335, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(351, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(12, 6);
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(351, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(367, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				--F
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(367, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(383, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(6, 6);
				--T
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(383, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(399, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(20, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(400, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(414, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				--B
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(415, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(431, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(2, 6);
				--U
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(431, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(447, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(21, 6);
				--T
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(447, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(463, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(20, 6);
				--T
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(463, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(479, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(20, 6);
				--O
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(479, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(495, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(15, 6);
				--N
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(495, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(511, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(14, 6);
				--)
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(511, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(527, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(41, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(528, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(543, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(271, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				--SINGLE-PLAYER MODE (RIGHT BUTTON) 33characters so starts at 47
				--S
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(47, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(19, 6);
				--I
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(63, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(79, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(9, 6);
				--N
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(79, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(95, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(14, 6);
				--G
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(95, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(111, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(7, 6);
				--L
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(111, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(12, 6);
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(127, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(143, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				-- -
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(143, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(159, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(45, 6);
				--P
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(159, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(175, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(16, 6);
				--L
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(175, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(12, 6);
			   --A
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(207, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(1, 6);
				--Y
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(207, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(25, 6);
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(223, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(239, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				--R
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(239, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(255, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(18, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(270, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				--M
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(271, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(13, 6);
				--O
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(303, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(15, 6);
				--D
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(303, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(319, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(4, 6);
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(319, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(335, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(336, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(350, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				--(
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(351, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(367, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(40, 6);
				--R
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(367, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(383, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(18, 6);
				--I
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(383, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(399, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(9, 6);
				--G
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(399, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(415, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(7, 6);
				--H
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(415, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(431, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(8, 6);
				--T
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(431, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(447, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(20, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(462, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				--B
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(463, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(479, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(2, 6);
				--U
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(479, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(495, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(21, 6);
				--T
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(495, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(511, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(20, 6);
				--T
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(511, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(527, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(20, 6);
				--O
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(527, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(543, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(15, 6);
				--N
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(543, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(559, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(14, 6);
				--)
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(560, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(576, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(41, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(577, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(593, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(287, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(303, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				else
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				end if;
				
				
			elsif state = "001" then
				
				
				--LIFE
				--L
				if(pixel_col >= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(31, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(12, 6);
				--I
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(31, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(9, 6);
				--F
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(512, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(31, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(6, 6);
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(512, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(544, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(31, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(545, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(575, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(31, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				--0
				elsif (pixel_col >= CONV_STD_LOGIC_VECTOR(576, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(608, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(31, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
						if (life <= CONV_STD_LOGIC_VECTOR(0,3)) then
						v_character_address := CONV_STD_LOGIC_VECTOR(48, 6);
						elsif (life <= CONV_STD_LOGIC_VECTOR(1,3)) then
						v_character_address := CONV_STD_LOGIC_VECTOR(49, 6);
						elsif (life <= CONV_STD_LOGIC_VECTOR(2,3)) then
						v_character_address := CONV_STD_LOGIC_VECTOR(50, 6);
						elsif (life <= CONV_STD_LOGIC_VECTOR(3,3)) then
						v_character_address := CONV_STD_LOGIC_VECTOR(51, 6);
						elsif (life <= CONV_STD_LOGIC_VECTOR(4,3)) then
						v_character_address := CONV_STD_LOGIC_VECTOR(52, 6);
						elsif (life <= CONV_STD_LOGIC_VECTOR(5,3)) then
						v_character_address := CONV_STD_LOGIC_VECTOR(53, 6);
						elsif (life <= CONV_STD_LOGIC_VECTOR(6,3)) then
						v_character_address := CONV_STD_LOGIC_VECTOR(54, 6);
						elsif (life <= CONV_STD_LOGIC_VECTOR(7,3)) then
						v_character_address := CONV_STD_LOGIC_VECTOR(55, 6);
						end if;
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(609, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(641, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(0, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(31, 10)) then
					v_font_row := pixel_row(4 downto 2);
					v_font_col := pixel_col(4 downto 2);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
										
				
				
				
				
				--ENERGY
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(416, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(432, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(47, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(63, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				--N
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(432, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(47, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(63, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(14, 6);
				--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(47, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(63, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
				--R
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(464, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(47, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(63, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(18, 6);
				--G
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(480, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(496, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(47, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(63, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(7, 6);
				--Y
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(496, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(512, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(47, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(63, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(25, 6);
				--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(513, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(529, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(47, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(63, 10)) then
					v_font_row := pixel_row(3 downto 1);
					v_font_col := pixel_col(3 downto 1);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				--******************************************************************************************
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(530, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(530 + energy, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(50, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(60, 10)) then
					v_font_row := pixel_row(9 downto 7);
					v_font_col := pixel_col(9 downto 7);
					v_character_address := CONV_STD_LOGIC_VECTOR(0, 6);
				
				else
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
				end if;
		elsif state = "010" then
			--PAUSE
			--P
				if(pixel_col >= CONV_STD_LOGIC_VECTOR(128, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(16, 6);
					
			--A
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(192, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(1, 6);
--					
			--U
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(256, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(21, 6);
			--S
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(320, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(19, 6);
			--E
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(384, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(5, 6);
			--SPACE
				elsif(pixel_col >= CONV_STD_LOGIC_VECTOR(448, 10)) and
					(pixel_col <= CONV_STD_LOGIC_VECTOR(512, 10)) and
					(pixel_row >= CONV_STD_LOGIC_VECTOR(191, 10)) and
					(pixel_row <= CONV_STD_LOGIC_VECTOR(255, 10)) then
					v_font_row := pixel_row(5 downto 3);
					v_font_col := pixel_col(5 downto 3);
					v_character_address := CONV_STD_LOGIC_VECTOR(32, 6);
			   else
					v_character_address := CONV_STD_LOGIC_VECTOR(32,6);
				end if;
	   else
			v_font_row := pixel_row(9 downto 7);
			v_font_col := pixel_col(9 downto 7);
			v_character_address := CONV_STD_LOGIC_VECTOR(32,6);
		end if;
		character_address <= v_character_address;
		font_row <= v_font_row;
		font_col <= v_font_col;
	end process;
end architecture behaviour;