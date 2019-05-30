-- Bouncing pipe Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core_pipe IS
	COMPONENT VGA_SYNC IS
		PORT(	clock_25Mhz		: IN	STD_LOGIC;
				red, green, blue : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				horiz_sync_out, vert_sync_out	: OUT	STD_LOGIC;
				red_out, green_out, blue_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
				pixel_row, pixel_column: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
	END COMPONENT;
END de0core_pipe;

			-- Bouncing pipe Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;

ENTITY pipe IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL PB1, PB2, ROM, Clock 			: IN std_logic;
        SIGNAL Red,Green,Blue 			: OUT std_logic_vector(3 downto 0);
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic;
		  SIGNAL pixel_row_out, pixel_column_out : OUT std_logic_vector(9 downto 0));		
END pipe;

architecture behavior of pipe is

			-- Video Display Signals
SIGNAL red_data, green_data, blue_data : std_logic_vector(3 downto 0); 			
SIGNAL vert_sync_int, reset, pipe_on, Direction			: std_logic;
SIGNAL Size 								: std_logic_vector(9 DOWNTO 0);  
SIGNAL pipe_Y_motion, pipe_X_motion 						: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_X_pos				: std_logic_vector(9 DOWNTO 0);
SIGNAL pipe_Y_pos          : std_logic_vector(9 DOWNTO 0) := CONV_STD_LOGIC_VECTOR(14,10);
SIGNAL pixel_row, pixel_column				: std_logic_vector(9 DOWNTO 0);

BEGIN           
   SYNC: vga_sync
 		PORT MAP(clock_25Mhz => clock, 
				red => red_data, green => green_data, blue => blue_data,	
    	     	red_out => red, green_out => green, blue_out => blue,
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);

Size <= CONV_STD_LOGIC_VECTOR(8,10);
pipe_X_pos <= CONV_STD_LOGIC_VECTOR(500,10);

		-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;

pipe_Display: Process (pipe_X_pos, pipe_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set pipe_on ='1' to display pipe
 IF ('0' & pipe_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(pipe_X_pos + Size >= '0' & pixel_column) AND
 	('0' & pipe_Y_pos <= pixel_row + Size) AND
 	(pipe_Y_pos + Size >= '0' & pixel_row ) THEN
 		pipe_on <= '1';
 	ELSE
 		pipe_on <= '0';
		
	pixel_row_out <= pixel_row;
	pixel_column_out <= pixel_column;
END IF;
END process pipe_Display;

RGB_SWITCH: Process(pipe_on)
BEGIN
	
	IF (pipe_on = '1') THEN
		-- Colors for pixel data on video signal
		Red_Data <=  "1111";
		-- Turn off Green and Blue when displaying pipe
		Green_Data <= "0000";
		Blue_Data <=  "0000";
	ELSIF (ROM = '1') THEN
		Red_Data <= "0000";
		Green_Data <= "0000";
		Blue_Data <=  "1111";
	ELSE
		Red_Data <= "1111";
		Green_Data <= "1111";
		Blue_Data <=  "1111";
	END IF;
END process RGB_SWITCH;

Move_pipe: process
BEGIN
			-- Move pipe once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
			
			-- Compute next pipe Y position
			 pipe_Y_pos <= CONV_STD_LOGIC_VECTOR(250,10);
END process Move_pipe;

END behavior;

