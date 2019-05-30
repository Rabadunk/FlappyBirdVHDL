LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY game_fsm is
PORT (CLOCK:    IN STD_LOGIC;
		BTN1, BTN2, BTN3, SW0:   IN STD_LOGIC;
      RESET:    IN STD_LOGIC;
		LIFE: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		Game_RESET : OUT STD_LOGIC;
		STATE_OUT: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END game_fsm;

Architecture RTL of game_fsm is
	TYPE State_type IS (MENU, PLAY, PAUSE, GAMEOVER, TRAINING); 
	SIGNAL State : State_Type;
	SIGNAL Prev_State : State_Type;
	BEGIN
		PROCESS (CLOCK, RESET)
		BEGIN
			IF RESET = '1' THEN
				State <= MENU;
				STATE_OUT <= "000";
			
			ELSIF rising_edge(clock) THEN    
			 
				CASE State IS
				WHEN MENU => 
					Game_RESET <= '1';
					IF BTN1='0' THEN
						State <= PLAY;
						STATE_OUT <= "001";
						
					ELSIF BTN3='0' THEN
						State <= TRAINING;
						STATE_OUT <= "101";
						
					END IF; 
				WHEN PLAY => 
					Game_RESET <= '0';
					IF SW0='1' THEN
						Prev_State <= PLAY;
						State <= PAUSE;
						STATE_OUT <= "010";
						
					ELSIF LIFE = "000" THEN
						State <= GAMEOVER;
						STATE_OUT <= "100";
					END IF;

				WHEN PAUSE =>
					Game_RESET <= '0';
					IF SW0='0' AND Prev_State = PLAY THEN
						State <= PLAY;
						STATE_OUT <= "001";
					ELSIF SW0='0' AND Prev_State = TRAINING THEN
						State <= TRAINING;
						STATE_OUT <= "101";
					END IF;

				WHEN GAMEOVER =>
					IF BTN2='0' THEN
						State <= MENU;
						STATE_OUT <= "000";
					END IF;
					
				WHEN TRAINING => 
					Game_RESET <= '0';
					IF SW0='1' THEN 
						Prev_State <= TRAINING;
						State <= PAUSE;
						STATE_OUT <= "010";
						
					ELSIF LIFE = "000" THEN
						State <= GAMEOVER;
						STATE_OUT <= "100";
					END IF;
				 
				WHEN others =>
					State <= MENU;
					STATE_OUT <= "000";
				END CASE; 

			END IF;
		END PROCESS;

END ARCHITECTURE RTL;