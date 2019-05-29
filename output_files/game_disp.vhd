-- Display the words "up" or "down" 

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity game_disp is
	port(	pixel_row, pixel_col: IN std_logic_vector(9 downto 0);
			life : IN std_logic_vector(2 downto 0);
			SW0,BUTTON2: IN std_logic;
			energy : IN integer;
			font_row, font_col: OUT std_logic_vector(2 downto 0);
			character_address: OUT std_logic_vector(5 downto 0));
end entity;

architecture behaviour of game_disp is
begin 
	process(pixel_col, pixel_row)
		variable v_font_row, v_font_col: std_logic_vector(2 downto 0);
		variable v_character_address: std_logic_vector(5 downto 0);
		variable SWITCH : std_logic;
		variable STATE : std_logic_vector(2 downto 0);
	begin	
		if BUTTON2 = '1' then
			STATE := "100";
		end if;
		if life = "000" then
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
		elsif(SW0 = '1') and (STATE = "100")then	
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
		elsif (SW0 = '0')then
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