LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core IS

	COMPONENT VGA_SYNC IS
		PORT(	clock_25Mhz		: IN	STD_LOGIC;
				red, green, blue : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				horiz_sync_out, vert_sync_out	: OUT	STD_LOGIC;
				red_out, green_out, blue_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
				pixel_row, pixel_column: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
	END COMPONENT;
	
END de0core;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;

ENTITY game IS
	Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL PB1, PB2, ROM, Clock 			: IN std_logic;
     	  SIGNAL mouse_cursor_column 		: IN std_logic_vector(9 DOWNTO 0);
		  SIGNAL State						: IN std_logic_vector(2 downto 0);
		  SIGNAL Random					: IN std_logic_vector(9 DOWNTO 0);
        SIGNAL Red,Green,Blue 			: OUT std_logic_vector(3 downto 0);
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic;
		  SIGNAL pixel_row_out, pixel_column_out : OUT std_logic_vector(9 downto 0);		
		  SIGNAL life							: OUT std_logic_vector(2 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(5, 3);
		  SIGNAL energy						: OUT integer);
END game;

architecture behavior of game is

			-- Video Display Signals
SIGNAL red_data, green_data, blue_data : std_logic_vector(3 downto 0); 			
SIGNAL vert_sync_int, reset, Ball_on, Pipe_on,Pipe2_on, Direction			: std_logic;
SIGNAL Size 								: std_logic_vector(9 DOWNTO 0);
SIGNAL Pipe_Width, Pipe1_High, Pipe2_High : std_LOGIC_VECTOR(9 downto 0);  
SIGNAL Ball_Y_motion, Ball_X_motion 						: std_logic_vector(9 DOWNTO 0);
--SIGNAL Ball_Y_pos, Ball_X_pos				: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_X_pos				: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos          : std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(14,10);

SIGNAL Pipe1_X_pos          : std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(440, 10);
SIGNAL Pipe1_Y_pos          : std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0, 10);

SIGNAL Pipe2_X_pos          : std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(440, 10);
SIGNAL Pipe2_Y_pos          : std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(0, 10);
SIGNAL Pipe_Random				: std_logic_vector(9 DOWNTO 0);

SIGNAL pixel_row, pixel_column				: std_logic_vector(9 DOWNTO 0);
SIGNAL life_temp : std_logic_vector (2 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(5,3);
SIGNAL In_Pipe					:std_logic:= '0';
SIGNAL Life_Count				:std_logic:= '0';
SIGNAL Falling_Speed			:std_logic_vector(9 DOWNTO 0):= CONV_STD_LOGIC_VECTOR(3,10);
SIGNAL energy_temp : integer := 100;
SIGNAL Pipe_Speed				:integer:= 2;

BEGIN           
   SYNC: vga_sync
 		PORT MAP(clock_25Mhz => clock, 
				red => red_data, green => green_data, blue => blue_data,	
    	     	red_out => red, green_out => green, blue_out => blue,
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);

Size <= CONV_STD_LOGIC_VECTOR(8,10);
--Ball_X_pos <= CONV_STD_LOGIC_VECTOR(320,10);

		-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;
Pipe_Width <= CONV_STD_LOGIC_VECTOR(64,10);
Pipe1_High <= CONV_STD_LOGIC_VECTOR(150,10);--192
Pipe2_High <= CONV_STD_LOGIC_VECTOR(230,10);

Display: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size)
BEGIN
                                         -- Set Ball_on ='1' to display ball
				IF ('0' & Ball_X_pos <= pixel_column + Size) AND
                                        -- compare positive numbers only
             (Ball_X_pos + Size >= '0' & pixel_column) AND
             ('0' & Ball_Y_pos <= pixel_row + Size) AND
             (Ball_Y_pos + Size >= '0' & pixel_row ) THEN
                          Ball_on <= '1';
            ELSE
                          Ball_on <= '0';
              
            END IF;
              
				IF(Pipe1_X_pos < CONV_STD_LOGIC_VECTOR(700, 10) AND unsigned(Pipe1_X_pos) > unsigned(CONV_STD_LOGIC_VECTOR(650, 10))) THEN
						Pipe_Random <= Random;
				END IF;
				  
				IF(Pipe1_X_pos > CONV_STD_LOGIC_VECTOR(0, 10) AND unsigned(Pipe1_X_pos) > unsigned(CONV_STD_LOGIC_VECTOR(300, 10))) THEN
              IF (unsigned(Pipe1_X_pos + Pipe_Width) >= unsigned(pixel_column)) AND
              
              (unsigned(Pipe1_X_pos) <= unsigned(pixel_column)) AND
              
						((Pipe1_High >= pixel_row ) OR
						
						(Pipe1_High <= pixel_row))THEN
                           
                           Pipe_on <= '1';
              ELSE
                           Pipe_on <= '0';
              END IF;
				  
				ELSE
				  IF 	((Pipe1_X_pos + Pipe_Width >= pixel_column) AND
              
						(Pipe1_X_pos <= pixel_column)) AND
              
						((Pipe1_High >= pixel_row ) OR
						
						(Pipe1_High <= pixel_row))THEN
                           
                           Pipe_on <= '1';
              ELSE
                           Pipe_on <= '0';
              END IF;
				  
				END IF;
				  
              
              
pixel_row_out <= pixel_row;
pixel_column_out <= pixel_column;
END process Display;

RGB_SWITCH: Process(Ball_on, Clock)
BEGIN
              
              IF(rising_edge(Clock)) THEN
                           IF (Ball_on = '1') AND(State = "001") THEN
                                         -- Colors for pixel data on video signal
                                         Red_Data <=  "1111";
                                         -- Turn off Green and Blue when displaying ball
                                         Green_Data <= "0000";
                                         Blue_Data <=  "0000";
                           ELSIF (ROM = '1') THEN      --character
                                         Red_Data <= "0000";
                                         Green_Data <= "0000";
                                         Blue_Data <=  "1111";
                           ELSIF (Pipe_on = '1') AND(State = "001")THEN
                                         Red_Data <= "0000";
                                         Green_Data <= "1111";
                                         Blue_Data <=  "0000";
                           ELSIF (Pipe2_on = '1') AND(State = "001")THEN
                                         Red_Data <= "1111";
                                         Green_Data <= "0111";
                                         Blue_Data <=  "1111";
                           ELSE                        --background
                                         Red_Data <= "0101";
                                         Green_Data <= "1111";
                                         Blue_Data <=  "1111";
                           END IF;
              END IF;
              
END process RGB_SWITCH;

Move_Ball: process

BEGIN
			-- Move ball once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
if State = "001" then
			IF Ball_Y_motion < Falling_Speed THEN
				Ball_Y_motion <= Ball_Y_motion + CONV_STD_LOGIC_VECTOR(1,10);
			end if;
			
			-- Bounce off bottom
			IF ('0' & Ball_Y_pos) >= CONV_STD_LOGIC_VECTOR(474,10) - Size THEN
				Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(0,10);
			END IF;
			
			-- Move ball up if button pressed
			IF PB1 = '1' THEN
--				Ball_Y_pos <= Ball_Y_pos + CONV_STD_LOGIC_VECTOR(1,10);
				if energy_temp > 0 then
					Ball_Y_motion <= - Falling_Speed;
					energy_temp <= energy_temp - 1;
				end if;
			else
				if energy_temp < 100 then
				energy_temp <= energy_temp + 1;
				end if;
			END IF;
			energy <= energy_temp;
			
--			IF PB2 = '1' THEN
--			    Ball_Y_pos <= Ball_Y_pos - CONV_STD_LOGIC_VECTOR(1,10);
--			END IF;
			-- Bounce off top
			IF Ball_Y_pos <= Size + CONV_STD_LOGIC_VECTOR(6,10) THEN
				Ball_Y_motion <= Falling_Speed;
			END IF;
			
			-- Compute next ball Y position
			 Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion;
			 
			-- Compute next ball X position
			 IF mouse_cursor_column > 320 then
			 Ball_X_pos <= CONV_STD_LOGIC_VECTOR(320,10);
			 ELSIF mouse_cursor_column <= 319 AND mouse_cursor_column >=0 then
			 Ball_X_pos <= mouse_cursor_column;
			 END IF;
			 
			 IF 
			    (Ball_X_pos <= Pipe1_X_pos + Pipe_Width + Size AND Ball_X_pos >= Pipe1_X_pos - Size AND
				 Ball_Y_pos <= Pipe1_Y_pos + Pipe1_High + Size)
			 then
				In_Pipe <= '1';
			 else In_Pipe <= '0';
			 END IF;
			 
			 IF In_Pipe = '1' and Life_Count = '0' then
				life_temp <= life_temp - CONV_STD_LOGIC_VECTOR(1,3);
				life <= life_temp;
				Life_Count <= '1';
			 ELSIF In_Pipe = '0' then
				Life_Count <= '0';
			 END IF;
END IF;
END process Move_Ball;

Move_Pipe: process
BEGIN 
              -- Move PIPE once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
		IF State = "001" then-- <=512 and >446 broken
			Pipe1_X_pos <= Pipe1_X_pos - Pipe_Speed;
			Pipe2_X_pos <= Pipe2_X_pos - Pipe_Speed;
		END IF;
              
END process Move_Pipe;

END behavior;