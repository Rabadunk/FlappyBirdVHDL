LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;


COMPONENT game_disp IS
	PORT(	pixel_row, pixel_col: IN STD_LOGIC_VECTOR(9 downto 0);
			life : IN STD_LOGIC_VECTOR(2 downto 0);
			SW0,BUTTON2: IN STD_LOGIC;
			energy : IN INTEGER;
			font_row, font_col: OUT STD_LOGIC_VECTOR(2 downto 0)
			character_address: OUT STD_LOGIC_VECTOR(5 downto 0));
END COMPONENT;


ENTITY text_fsm is
PORT (clock:    IN STD_LOGIC;
      P:        IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      reset:    IN STD_LOGIC;
      R :       OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END text_fsm;

Architecture RTL of text_fsm is
TYPE State_type IS (MENU, PLAY); 
	SIGNAL State : State_Type;   
							   
BEGIN 
  PROCESS (clock, reset) 
  BEGIN 
    If (reset = ‘1’) THEN          
	State <= MENU;
 
    ELSIF rising_edge(clock) THEN    
 
	CASE State IS
 
		WHEN MENU => 
			IF P="010" THEN 
				State <= PLAY;
			END IF; 
 
		WHEN PLAY => 
			IF P="000" THEN 
				State <= MENU; 
			END IF; 
 
		WHEN others =>
			State <= MENU;
	END CASE; 
    END IF; 
  END PROCESS;

END rtl;