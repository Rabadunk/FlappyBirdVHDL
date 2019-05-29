LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY game_fsm is
PORT (CLOCK:    IN STD_LOGIC;
		BTN1, BTN2, BTN3, SW0:   IN STD_LOGIC;
      RESET:    IN STD_LOGIC;
		LIFE: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		STATE_OUT: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END game_fsm;

Architecture RTL of game_fsm is
	TYPE State_type IS (MENU, PLAY, PAUSE, GAMEOVER); 
	SIGNAL State : State_Type; 
	BEGIN
		PROCESS (CLOCK, RESET)
		BEGIN
			IF RESET = '1' THEN
			State <= MENU;
			STATE_OUT <= "000";
			
			ELSIF rising_edge(clock) THEN    
			 
				CASE State IS
				WHEN MENU => 
					IF BTN1='0' THEN 
						State <= PLAY;
						STATE_OUT <= "001";
					END IF; 
				 
				WHEN PLAY => 
					IF SW0='1' THEN 
						State <= PAUSE;
						STATE_OUT <= "010";
						
					ELSIF LIFE = "000" THEN
						State <= GAMEOVER;
						STATE_OUT <= "100";
						END IF;

				WHEN PAUSE =>
					IF SW0='0' THEN 
						State <= PLAY;
						STATE_OUT <= "001";	
					END IF;

				WHEN GAMEOVER =>
					IF BTN2='0' THEN
						State <= MENU;
						STATE_OUT <= "000";
					END IF;
				 
				WHEN others =>
					State <= MENU;
					STATE_OUT <= "000";
				END CASE; 

			END IF;
		END PROCESS;

END ARCHITECTURE RTL;