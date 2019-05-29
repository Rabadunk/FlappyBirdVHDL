LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY lsfr IS
	
	PORT(	CLOCK, SW2 : IN STD_LOGIC;
			RANDOM : OUT STD_LOGIC_VECTOR(9 DOWNTO 0));

END ENTITY lsfr;

ARCHITECTURE behaviour OF lsfr IS
	SIGNAL TEMP_RANDOM : STD_LOGIC_VECTOR(7 DOWNTO 0) := "11001000";
	BEGIN
		
		PROCESS(CLOCK)
			VARIABLE TAP : STD_LOGIC := '0';
			
		BEGIN
			IF RISING_EDGE(CLOCK) AND SW2 = '1' THEN
				TAP := TEMP_RANDOM(5) XOR TEMP_RANDOM(3) XOR TEMP_RANDOM(2) XOR TEMP_RANDOM(1);
				TEMP_RANDOM <= TAP & TEMP_RANDOM(7 DOWNTO 1);
				
				IF unsigned(TEMP_RANDOM) >= unsigned(CONV_STD_LOGIC_VECTOR(200, 8)) THEN
					RANDOM <= CONV_STD_LOGIC_VECTOR(200, 10);
					
				ELSIF unsigned(TEMP_RANDOM) <= unsigned(CONV_STD_LOGIC_VECTOR(0, 8)) THEN
					RANDOM <= CONV_STD_LOGIC_VECTOR(0, 10);
				
				ELSE
					RANDOM <= "00" & TEMP_RANDOM;
				
				END IF;
			END IF;
		END PROCESS;
END ARCHITECTURE behaviour;	
				
				
			
	