-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/29/2019 16:46:20"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	miniproject IS
    PORT (
	horiz_sync_out : OUT std_logic;
	clk : IN std_logic;
	sw : IN std_logic_vector(2 DOWNTO 0);
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	bt0 : IN std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	vert_sync_out : OUT std_logic;
	blue : OUT std_logic_vector(3 DOWNTO 0);
	green : OUT std_logic_vector(3 DOWNTO 0);
	red : OUT std_logic_vector(3 DOWNTO 0);
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END miniproject;

-- Design Ports Information
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt0	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF miniproject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sw : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_bt0 : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|v_font_row[2]~23clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst7|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst7|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst7|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst7|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst7|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \inst7|Selector0~0_combout\ : std_logic;
SIGNAL \inst7|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst7|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst7|Selector1~0_combout\ : std_logic;
SIGNAL \inst7|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst7|mouse_state.LOAD_COMMAND2~feeder_combout\ : std_logic;
SIGNAL \inst7|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst7|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst7|send_char~0_combout\ : std_logic;
SIGNAL \inst7|send_char~q\ : std_logic;
SIGNAL \inst7|output_ready~0_combout\ : std_logic;
SIGNAL \inst7|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst7|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst7|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst7|LessThan0~0_combout\ : std_logic;
SIGNAL \inst7|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst7|output_ready~q\ : std_logic;
SIGNAL \inst7|Selector3~0_combout\ : std_logic;
SIGNAL \inst7|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst7|INCNT~2_combout\ : std_logic;
SIGNAL \inst7|INCNT[3]~0_combout\ : std_logic;
SIGNAL \inst7|INCNT~1_combout\ : std_logic;
SIGNAL \inst7|INCNT~3_combout\ : std_logic;
SIGNAL \inst7|INCNT~4_combout\ : std_logic;
SIGNAL \inst7|LessThan1~0_combout\ : std_logic;
SIGNAL \inst7|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst7|READ_CHAR~q\ : std_logic;
SIGNAL \inst7|PACKET_CHAR1[0]~4_combout\ : std_logic;
SIGNAL \inst7|iready_set~0_combout\ : std_logic;
SIGNAL \inst7|iready_set~1_combout\ : std_logic;
SIGNAL \inst7|iready_set~q\ : std_logic;
SIGNAL \inst7|Selector4~0_combout\ : std_logic;
SIGNAL \inst7|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst7|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst7|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst7|Selector6~0_combout\ : std_logic;
SIGNAL \inst7|Selector6~1_combout\ : std_logic;
SIGNAL \inst7|send_data~q\ : std_logic;
SIGNAL \inst7|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst7|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst7|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst7|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst7|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst7|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst7|WideOr4~combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~1\ : std_logic;
SIGNAL \inst|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~3\ : std_logic;
SIGNAL \inst|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~5\ : std_logic;
SIGNAL \inst|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~7\ : std_logic;
SIGNAL \inst|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~9\ : std_logic;
SIGNAL \inst|SYNC|Add0~11\ : std_logic;
SIGNAL \inst|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~13\ : std_logic;
SIGNAL \inst|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~15\ : std_logic;
SIGNAL \inst|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~17\ : std_logic;
SIGNAL \inst|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[8]~1_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~1\ : std_logic;
SIGNAL \inst|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~3\ : std_logic;
SIGNAL \inst|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[2]~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~5\ : std_logic;
SIGNAL \inst|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[3]~5_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~7\ : std_logic;
SIGNAL \inst|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[4]~6_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~9\ : std_logic;
SIGNAL \inst|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[5]~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~11\ : std_logic;
SIGNAL \inst|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[6]~9_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~13\ : std_logic;
SIGNAL \inst|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[7]~10_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~15\ : std_logic;
SIGNAL \inst|SYNC|Add1~17\ : std_logic;
SIGNAL \inst|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[9]~7_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[7]~3_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[8]~11_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst|SYNC|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|SYNC|video_on_h[0]~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \bt0~input_o\ : std_logic;
SIGNAL \inst9|Selector0~0_combout\ : std_logic;
SIGNAL \inst9|State.MENU~q\ : std_logic;
SIGNAL \inst9|Selector3~3_combout\ : std_logic;
SIGNAL \inst9|Selector2~0_combout\ : std_logic;
SIGNAL \inst9|State.PAUSE~q\ : std_logic;
SIGNAL \inst9|Selector3~2_combout\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst|life_temp[0]~1_combout\ : std_logic;
SIGNAL \inst|Add4~17\ : std_logic;
SIGNAL \inst|Add4~18_combout\ : std_logic;
SIGNAL \inst7|PACKET_COUNT[1]~0_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[2]~24_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR1[0]~2_combout\ : std_logic;
SIGNAL \inst7|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \inst7|SHIFTIN[7]~2_combout\ : std_logic;
SIGNAL \inst7|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR1[0]~3_combout\ : std_logic;
SIGNAL \inst7|Equal4~0_combout\ : std_logic;
SIGNAL \inst7|left_button~0_combout\ : std_logic;
SIGNAL \inst7|left_button~q\ : std_logic;
SIGNAL \inst|Add9~0_combout\ : std_logic;
SIGNAL \inst9|STATE_OUT[2]~0_combout\ : std_logic;
SIGNAL \inst9|STATE_OUT[2]~2_combout\ : std_logic;
SIGNAL \inst|Add14~0_combout\ : std_logic;
SIGNAL \inst|Add14~1_combout\ : std_logic;
SIGNAL \inst9|STATE_OUT[2]~1_combout\ : std_logic;
SIGNAL \inst9|STATE_OUT[2]~3_combout\ : std_logic;
SIGNAL \inst9|Selector5~0_combout\ : std_logic;
SIGNAL \inst11|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Add9~1\ : std_logic;
SIGNAL \inst|Add9~2_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[1]~2_combout\ : std_logic;
SIGNAL \inst|Add9~3\ : std_logic;
SIGNAL \inst|Add9~4_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~1_combout\ : std_logic;
SIGNAL \inst|Add9~5\ : std_logic;
SIGNAL \inst|Add9~6_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[3]~0_combout\ : std_logic;
SIGNAL \inst|Add9~7\ : std_logic;
SIGNAL \inst|Add9~8_combout\ : std_logic;
SIGNAL \inst|Add9~9\ : std_logic;
SIGNAL \inst|Add9~10_combout\ : std_logic;
SIGNAL \inst|Add9~11\ : std_logic;
SIGNAL \inst|Add9~12_combout\ : std_logic;
SIGNAL \inst|LessThan13~0_combout\ : std_logic;
SIGNAL \inst|Add9~13\ : std_logic;
SIGNAL \inst|Add9~14_combout\ : std_logic;
SIGNAL \inst|LessThan13~1_combout\ : std_logic;
SIGNAL \inst|LessThan16~0_combout\ : std_logic;
SIGNAL \inst|LessThan22~0_combout\ : std_logic;
SIGNAL \inst|LessThan16~1_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[6]~2_combout\ : std_logic;
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|energy_temp[31]~2_combout\ : std_logic;
SIGNAL \inst|Add6~11\ : std_logic;
SIGNAL \inst|Add6~12_combout\ : std_logic;
SIGNAL \inst|energy_temp[6]~5_combout\ : std_logic;
SIGNAL \inst|Add6~13\ : std_logic;
SIGNAL \inst|Add6~14_combout\ : std_logic;
SIGNAL \inst|Add6~15\ : std_logic;
SIGNAL \inst|Add6~16_combout\ : std_logic;
SIGNAL \inst|Add6~17\ : std_logic;
SIGNAL \inst|Add6~18_combout\ : std_logic;
SIGNAL \inst|Add6~19\ : std_logic;
SIGNAL \inst|Add6~20_combout\ : std_logic;
SIGNAL \inst|Add6~21\ : std_logic;
SIGNAL \inst|Add6~22_combout\ : std_logic;
SIGNAL \inst|Add6~23\ : std_logic;
SIGNAL \inst|Add6~24_combout\ : std_logic;
SIGNAL \inst|Add6~25\ : std_logic;
SIGNAL \inst|Add6~26_combout\ : std_logic;
SIGNAL \inst|Add6~27\ : std_logic;
SIGNAL \inst|Add6~28_combout\ : std_logic;
SIGNAL \inst|Add6~29\ : std_logic;
SIGNAL \inst|Add6~30_combout\ : std_logic;
SIGNAL \inst|Add6~31\ : std_logic;
SIGNAL \inst|Add6~32_combout\ : std_logic;
SIGNAL \inst|Add6~33\ : std_logic;
SIGNAL \inst|Add6~34_combout\ : std_logic;
SIGNAL \inst|Add6~35\ : std_logic;
SIGNAL \inst|Add6~36_combout\ : std_logic;
SIGNAL \inst|Add6~37\ : std_logic;
SIGNAL \inst|Add6~38_combout\ : std_logic;
SIGNAL \inst|Add6~39\ : std_logic;
SIGNAL \inst|Add6~40_combout\ : std_logic;
SIGNAL \inst|Add6~41\ : std_logic;
SIGNAL \inst|Add6~42_combout\ : std_logic;
SIGNAL \inst|Add6~43\ : std_logic;
SIGNAL \inst|Add6~44_combout\ : std_logic;
SIGNAL \inst|Add6~45\ : std_logic;
SIGNAL \inst|Add6~46_combout\ : std_logic;
SIGNAL \inst|Add6~47\ : std_logic;
SIGNAL \inst|Add6~48_combout\ : std_logic;
SIGNAL \inst|Add6~49\ : std_logic;
SIGNAL \inst|Add6~50_combout\ : std_logic;
SIGNAL \inst|Add6~51\ : std_logic;
SIGNAL \inst|Add6~52_combout\ : std_logic;
SIGNAL \inst|Add6~53\ : std_logic;
SIGNAL \inst|Add6~54_combout\ : std_logic;
SIGNAL \inst|Add6~55\ : std_logic;
SIGNAL \inst|Add6~56_combout\ : std_logic;
SIGNAL \inst|Add6~57\ : std_logic;
SIGNAL \inst|Add6~58_combout\ : std_logic;
SIGNAL \inst|Add6~59\ : std_logic;
SIGNAL \inst|Add6~60_combout\ : std_logic;
SIGNAL \inst|Add6~61\ : std_logic;
SIGNAL \inst|Add6~62_combout\ : std_logic;
SIGNAL \inst|energy_temp[31]~0_combout\ : std_logic;
SIGNAL \inst|LessThan14~6_combout\ : std_logic;
SIGNAL \inst|LessThan14~5_combout\ : std_logic;
SIGNAL \inst|LessThan14~3_combout\ : std_logic;
SIGNAL \inst|LessThan14~1_combout\ : std_logic;
SIGNAL \inst|LessThan14~2_combout\ : std_logic;
SIGNAL \inst|LessThan14~0_combout\ : std_logic;
SIGNAL \inst|LessThan14~4_combout\ : std_logic;
SIGNAL \inst|LessThan14~7_combout\ : std_logic;
SIGNAL \inst|energy_temp[31]~1_combout\ : std_logic;
SIGNAL \inst|energy_temp[31]~3_combout\ : std_logic;
SIGNAL \inst|Add6~1\ : std_logic;
SIGNAL \inst|Add6~2_combout\ : std_logic;
SIGNAL \inst|Add6~3\ : std_logic;
SIGNAL \inst|Add6~4_combout\ : std_logic;
SIGNAL \inst|energy_temp[2]~4_combout\ : std_logic;
SIGNAL \inst|Add6~5\ : std_logic;
SIGNAL \inst|Add6~6_combout\ : std_logic;
SIGNAL \inst|Add6~7\ : std_logic;
SIGNAL \inst|Add6~8_combout\ : std_logic;
SIGNAL \inst|Add6~9\ : std_logic;
SIGNAL \inst|Add6~10_combout\ : std_logic;
SIGNAL \inst|energy_temp[5]~6_combout\ : std_logic;
SIGNAL \inst|LessThan14~9_combout\ : std_logic;
SIGNAL \inst|LessThan14~8_combout\ : std_logic;
SIGNAL \inst|LessThan14~10_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[6]~3_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~1_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~4_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[9]~5_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[9]~6_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[9]~7_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[6]~8_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[9]~9_combout\ : std_logic;
SIGNAL \inst|Add9~15\ : std_logic;
SIGNAL \inst|Add9~17\ : std_logic;
SIGNAL \inst|Add9~18_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~0_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~18_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~19_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~17_combout\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~16_combout\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~15_combout\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~14_combout\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~13_combout\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~12_combout\ : std_logic;
SIGNAL \inst|Add4~13\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~11_combout\ : std_logic;
SIGNAL \inst|Add4~15\ : std_logic;
SIGNAL \inst|Add4~16_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion~10_combout\ : std_logic;
SIGNAL \inst|Add9~16_combout\ : std_logic;
SIGNAL \inst|LessThan22~1_combout\ : std_logic;
SIGNAL \inst|Pipe1_X_pos[1]~5_combout\ : std_logic;
SIGNAL \inst|Add15~1_cout\ : std_logic;
SIGNAL \inst|Add15~2_combout\ : std_logic;
SIGNAL \inst|Add15~3\ : std_logic;
SIGNAL \inst|Add15~4_combout\ : std_logic;
SIGNAL \inst|Pipe1_X_pos[3]~4_combout\ : std_logic;
SIGNAL \inst|Add15~5\ : std_logic;
SIGNAL \inst|Add15~6_combout\ : std_logic;
SIGNAL \inst|Pipe1_X_pos[4]~3_combout\ : std_logic;
SIGNAL \inst|Add15~7\ : std_logic;
SIGNAL \inst|Add15~8_combout\ : std_logic;
SIGNAL \inst|Pipe1_X_pos[5]~2_combout\ : std_logic;
SIGNAL \inst|Add15~9\ : std_logic;
SIGNAL \inst|Add15~10_combout\ : std_logic;
SIGNAL \inst|Add15~11\ : std_logic;
SIGNAL \inst|Add15~12_combout\ : std_logic;
SIGNAL \inst|Pipe1_X_pos[7]~1_combout\ : std_logic;
SIGNAL \inst|Add15~13\ : std_logic;
SIGNAL \inst|Add15~14_combout\ : std_logic;
SIGNAL \inst|Pipe1_X_pos[8]~0_combout\ : std_logic;
SIGNAL \inst|Add15~15\ : std_logic;
SIGNAL \inst|Add15~16_combout\ : std_logic;
SIGNAL \inst|Add12~1_cout\ : std_logic;
SIGNAL \inst|Add12~3\ : std_logic;
SIGNAL \inst|Add12~5\ : std_logic;
SIGNAL \inst|Add12~7\ : std_logic;
SIGNAL \inst|Add12~9\ : std_logic;
SIGNAL \inst|Add12~11\ : std_logic;
SIGNAL \inst|Add12~12_combout\ : std_logic;
SIGNAL \inst|Add10~1\ : std_logic;
SIGNAL \inst|Add10~3\ : std_logic;
SIGNAL \inst|Add10~5\ : std_logic;
SIGNAL \inst|Add10~6_combout\ : std_logic;
SIGNAL \inst|Add10~4_combout\ : std_logic;
SIGNAL \inst|Add10~2_combout\ : std_logic;
SIGNAL \inst|Add10~0_combout\ : std_logic;
SIGNAL \inst|Add11~1\ : std_logic;
SIGNAL \inst|Add11~3\ : std_logic;
SIGNAL \inst|Add11~5\ : std_logic;
SIGNAL \inst|Add11~7\ : std_logic;
SIGNAL \inst|Add11~9\ : std_logic;
SIGNAL \inst|Add11~10_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[9]~25_combout\ : std_logic;
SIGNAL \inst7|RECV_UART~4_combout\ : std_logic;
SIGNAL \inst7|LessThan9~0_combout\ : std_logic;
SIGNAL \inst7|Equal3~0_combout\ : std_logic;
SIGNAL \inst7|RECV_UART~5_combout\ : std_logic;
SIGNAL \inst7|RECV_UART~6_combout\ : std_logic;
SIGNAL \inst7|cursor_column~1_combout\ : std_logic;
SIGNAL \inst7|cursor_column~2_combout\ : std_logic;
SIGNAL \inst7|cursor_column~4_combout\ : std_logic;
SIGNAL \inst7|cursor_row[8]~2_combout\ : std_logic;
SIGNAL \inst7|cursor_row[8]~3_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[8]~27\ : std_logic;
SIGNAL \inst7|new_cursor_column[9]~28_combout\ : std_logic;
SIGNAL \inst7|cursor_column[1]~0_combout\ : std_logic;
SIGNAL \inst7|cursor_column~10_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[0]~11\ : std_logic;
SIGNAL \inst7|new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \inst7|cursor_column~9_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[1]~13\ : std_logic;
SIGNAL \inst7|new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \inst7|cursor_column~8_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[2]~15\ : std_logic;
SIGNAL \inst7|new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \inst7|cursor_column~7_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[3]~17\ : std_logic;
SIGNAL \inst7|new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \inst7|cursor_column~6_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[4]~19\ : std_logic;
SIGNAL \inst7|new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \inst7|cursor_column~5_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[5]~21\ : std_logic;
SIGNAL \inst7|new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \inst7|cursor_column~12_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[6]~23\ : std_logic;
SIGNAL \inst7|new_cursor_column[7]~24_combout\ : std_logic;
SIGNAL \inst7|cursor_column~11_combout\ : std_logic;
SIGNAL \inst7|new_cursor_column[7]~25\ : std_logic;
SIGNAL \inst7|new_cursor_column[8]~26_combout\ : std_logic;
SIGNAL \inst7|cursor_column~3_combout\ : std_logic;
SIGNAL \inst|LessThan17~0_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[0]~0_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[0]~1_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[0]~2_combout\ : std_logic;
SIGNAL \inst|Add12~10_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos~3_combout\ : std_logic;
SIGNAL \inst|Add12~8_combout\ : std_logic;
SIGNAL \inst|Add12~6_combout\ : std_logic;
SIGNAL \inst|LessThan17~1_combout\ : std_logic;
SIGNAL \inst|LessThan17~2_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos~4_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos~5_combout\ : std_logic;
SIGNAL \inst|Add12~4_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos~6_combout\ : std_logic;
SIGNAL \inst|Add12~2_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos~7_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos~8_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos~9_combout\ : std_logic;
SIGNAL \inst|LessThan21~1_cout\ : std_logic;
SIGNAL \inst|LessThan21~3_cout\ : std_logic;
SIGNAL \inst|LessThan21~5_cout\ : std_logic;
SIGNAL \inst|LessThan21~7_cout\ : std_logic;
SIGNAL \inst|LessThan21~9_cout\ : std_logic;
SIGNAL \inst|LessThan21~11_cout\ : std_logic;
SIGNAL \inst|LessThan21~13_cout\ : std_logic;
SIGNAL \inst|LessThan21~14_combout\ : std_logic;
SIGNAL \inst|Add11~8_combout\ : std_logic;
SIGNAL \inst|Add11~6_combout\ : std_logic;
SIGNAL \inst|Add11~4_combout\ : std_logic;
SIGNAL \inst|Add11~2_combout\ : std_logic;
SIGNAL \inst|Add11~0_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos~10_combout\ : std_logic;
SIGNAL \inst|LessThan20~1_cout\ : std_logic;
SIGNAL \inst|LessThan20~3_cout\ : std_logic;
SIGNAL \inst|LessThan20~5_cout\ : std_logic;
SIGNAL \inst|LessThan20~7_cout\ : std_logic;
SIGNAL \inst|LessThan20~9_cout\ : std_logic;
SIGNAL \inst|LessThan20~11_cout\ : std_logic;
SIGNAL \inst|LessThan20~13_cout\ : std_logic;
SIGNAL \inst|LessThan20~15_cout\ : std_logic;
SIGNAL \inst|LessThan20~16_combout\ : std_logic;
SIGNAL \inst|Move_Ball~0_combout\ : std_logic;
SIGNAL \inst|Move_Ball~1_combout\ : std_logic;
SIGNAL \inst|In_Pipe~q\ : std_logic;
SIGNAL \inst|Life_Count~q\ : std_logic;
SIGNAL \inst|life[2]~0_combout\ : std_logic;
SIGNAL \inst9|Selector3~1_combout\ : std_logic;
SIGNAL \inst9|Selector1~0_combout\ : std_logic;
SIGNAL \inst9|State.PLAY~q\ : std_logic;
SIGNAL \inst9|Selector3~4_combout\ : std_logic;
SIGNAL \inst9|Selector3~5_combout\ : std_logic;
SIGNAL \inst9|Selector3~6_combout\ : std_logic;
SIGNAL \inst9|State.GAMEOVER~q\ : std_logic;
SIGNAL \inst9|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~15_cout\ : std_logic;
SIGNAL \inst|LessThan0~16_combout\ : std_logic;
SIGNAL \inst|RGB_SWITCH~6_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|LessThan2~15_cout\ : std_logic;
SIGNAL \inst|LessThan2~17_cout\ : std_logic;
SIGNAL \inst|LessThan2~18_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|RGB_SWITCH~2_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|LessThan3~15_cout\ : std_logic;
SIGNAL \inst|LessThan3~16_combout\ : std_logic;
SIGNAL \inst|RGB_SWITCH~3_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|LessThan1~15_cout\ : std_logic;
SIGNAL \inst|LessThan1~17_cout\ : std_logic;
SIGNAL \inst|LessThan1~18_combout\ : std_logic;
SIGNAL \inst|RGB_SWITCH~4_combout\ : std_logic;
SIGNAL \inst|RGB_SWITCH~5_combout\ : std_logic;
SIGNAL \inst|blue_data~5_combout\ : std_logic;
SIGNAL \inst|blue_data~0_combout\ : std_logic;
SIGNAL \inst|blue_data~1_combout\ : std_logic;
SIGNAL \inst|blue_data~2_combout\ : std_logic;
SIGNAL \inst|LessThan7~1_cout\ : std_logic;
SIGNAL \inst|LessThan7~3_cout\ : std_logic;
SIGNAL \inst|LessThan7~5_cout\ : std_logic;
SIGNAL \inst|LessThan7~7_cout\ : std_logic;
SIGNAL \inst|LessThan7~9_cout\ : std_logic;
SIGNAL \inst|LessThan7~11_cout\ : std_logic;
SIGNAL \inst|LessThan7~13_cout\ : std_logic;
SIGNAL \inst|LessThan7~15_cout\ : std_logic;
SIGNAL \inst|LessThan7~16_combout\ : std_logic;
SIGNAL \inst|LessThan9~1_cout\ : std_logic;
SIGNAL \inst|LessThan9~3_cout\ : std_logic;
SIGNAL \inst|LessThan9~5_cout\ : std_logic;
SIGNAL \inst|LessThan9~7_cout\ : std_logic;
SIGNAL \inst|LessThan9~9_cout\ : std_logic;
SIGNAL \inst|LessThan9~11_cout\ : std_logic;
SIGNAL \inst|LessThan9~13_cout\ : std_logic;
SIGNAL \inst|LessThan9~15_cout\ : std_logic;
SIGNAL \inst|LessThan9~16_combout\ : std_logic;
SIGNAL \inst|LessThan8~1_cout\ : std_logic;
SIGNAL \inst|LessThan8~3_cout\ : std_logic;
SIGNAL \inst|LessThan8~5_cout\ : std_logic;
SIGNAL \inst|LessThan8~7_cout\ : std_logic;
SIGNAL \inst|LessThan8~9_cout\ : std_logic;
SIGNAL \inst|LessThan8~11_cout\ : std_logic;
SIGNAL \inst|LessThan8~13_cout\ : std_logic;
SIGNAL \inst|LessThan8~15_cout\ : std_logic;
SIGNAL \inst|LessThan8~17_cout\ : std_logic;
SIGNAL \inst|LessThan8~18_combout\ : std_logic;
SIGNAL \inst|LessThan6~1_cout\ : std_logic;
SIGNAL \inst|LessThan6~3_cout\ : std_logic;
SIGNAL \inst|LessThan6~5_cout\ : std_logic;
SIGNAL \inst|LessThan6~7_cout\ : std_logic;
SIGNAL \inst|LessThan6~9_cout\ : std_logic;
SIGNAL \inst|LessThan6~11_cout\ : std_logic;
SIGNAL \inst|LessThan6~13_cout\ : std_logic;
SIGNAL \inst|LessThan6~15_cout\ : std_logic;
SIGNAL \inst|LessThan6~17_cout\ : std_logic;
SIGNAL \inst|LessThan6~18_combout\ : std_logic;
SIGNAL \inst|blue_data~3_combout\ : std_logic;
SIGNAL \inst|blue_data~4_combout\ : std_logic;
SIGNAL \inst11|Equal3~0_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~0_combout\ : std_logic;
SIGNAL \inst11|LessThan123~4_combout\ : std_logic;
SIGNAL \inst11|LessThan9~1_combout\ : std_logic;
SIGNAL \inst11|LessThan127~0_combout\ : std_logic;
SIGNAL \inst11|LessThan123~0_combout\ : std_logic;
SIGNAL \inst11|LessThan123~1_combout\ : std_logic;
SIGNAL \inst11|LessThan123~3_combout\ : std_logic;
SIGNAL \inst11|LessThan10~0_combout\ : std_logic;
SIGNAL \inst11|LessThan10~1_combout\ : std_logic;
SIGNAL \inst11|process_0~80_combout\ : std_logic;
SIGNAL \inst11|process_0~115_combout\ : std_logic;
SIGNAL \inst11|process_0~72_combout\ : std_logic;
SIGNAL \inst11|LessThan123~2_combout\ : std_logic;
SIGNAL \inst11|process_0~82_combout\ : std_logic;
SIGNAL \inst11|process_0~166_combout\ : std_logic;
SIGNAL \inst11|LessThan115~2_combout\ : std_logic;
SIGNAL \inst11|LessThan55~0_combout\ : std_logic;
SIGNAL \inst11|process_0~81_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~3_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~4_combout\ : std_logic;
SIGNAL \inst11|process_0~88_combout\ : std_logic;
SIGNAL \inst11|process_0~83_combout\ : std_logic;
SIGNAL \inst11|process_0~186_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~3_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~7_combout\ : std_logic;
SIGNAL \inst11|LessThan112~0_combout\ : std_logic;
SIGNAL \inst11|LessThan138~0_combout\ : std_logic;
SIGNAL \inst11|process_0~86_combout\ : std_logic;
SIGNAL \inst11|process_0~87_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~11_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~12_combout\ : std_logic;
SIGNAL \inst11|LessThan118~0_combout\ : std_logic;
SIGNAL \inst11|LessThan118~1_combout\ : std_logic;
SIGNAL \inst11|LessThan115~3_combout\ : std_logic;
SIGNAL \inst11|LessThan112~1_combout\ : std_logic;
SIGNAL \inst11|process_0~91_combout\ : std_logic;
SIGNAL \inst11|LessThan111~0_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~1_combout\ : std_logic;
SIGNAL \inst11|LessThan120~1_combout\ : std_logic;
SIGNAL \inst11|process_0~94_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~123_combout\ : std_logic;
SIGNAL \inst11|process_0~113_combout\ : std_logic;
SIGNAL \inst11|process_0~114_combout\ : std_logic;
SIGNAL \inst11|process_0~112_combout\ : std_logic;
SIGNAL \inst11|LessThan9~0_combout\ : std_logic;
SIGNAL \inst11|process_0~100_combout\ : std_logic;
SIGNAL \inst11|process_0~101_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~5_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~6_combout\ : std_logic;
SIGNAL \inst11|LessThan125~0_combout\ : std_logic;
SIGNAL \inst11|process_0~97_combout\ : std_logic;
SIGNAL \inst11|LessThan127~1_combout\ : std_logic;
SIGNAL \inst11|process_0~180_combout\ : std_logic;
SIGNAL \inst11|LessThan45~0_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~99_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~98_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~100_combout\ : std_logic;
SIGNAL \inst11|process_0~108_combout\ : std_logic;
SIGNAL \inst11|process_0~109_combout\ : std_logic;
SIGNAL \inst11|LessThan41~0_combout\ : std_logic;
SIGNAL \inst11|process_0~111_combout\ : std_logic;
SIGNAL \inst11|process_0~98_combout\ : std_logic;
SIGNAL \inst11|process_0~99_combout\ : std_logic;
SIGNAL \inst11|process_0~95_combout\ : std_logic;
SIGNAL \inst11|process_0~102_combout\ : std_logic;
SIGNAL \inst11|process_0~103_combout\ : std_logic;
SIGNAL \inst11|process_0~104_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~124_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~8_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~9_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~10_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~14_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~15_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~13_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~20_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~21_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~22_combout\ : std_logic;
SIGNAL \inst11|process_0~93_combout\ : std_logic;
SIGNAL \inst11|process_0~189_combout\ : std_logic;
SIGNAL \inst11|process_0~96_combout\ : std_logic;
SIGNAL \inst11|process_0~92_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~19_combout\ : std_logic;
SIGNAL \inst|energy[6]~0_combout\ : std_logic;
SIGNAL \inst|energy[5]~1_combout\ : std_logic;
SIGNAL \inst|energy[2]~2_combout\ : std_logic;
SIGNAL \inst11|Add0~1\ : std_logic;
SIGNAL \inst11|Add0~3\ : std_logic;
SIGNAL \inst11|Add0~5\ : std_logic;
SIGNAL \inst11|Add0~7\ : std_logic;
SIGNAL \inst11|Add0~9\ : std_logic;
SIGNAL \inst11|Add0~11\ : std_logic;
SIGNAL \inst11|Add0~13\ : std_logic;
SIGNAL \inst11|Add0~14_combout\ : std_logic;
SIGNAL \inst11|Add0~12_combout\ : std_logic;
SIGNAL \inst11|Add0~10_combout\ : std_logic;
SIGNAL \inst11|Add0~8_combout\ : std_logic;
SIGNAL \inst11|Add0~6_combout\ : std_logic;
SIGNAL \inst11|Add0~4_combout\ : std_logic;
SIGNAL \inst11|Add0~2_combout\ : std_logic;
SIGNAL \inst11|Add0~0_combout\ : std_logic;
SIGNAL \inst|energy[0]~3_combout\ : std_logic;
SIGNAL \inst11|LessThan128~1_cout\ : std_logic;
SIGNAL \inst11|LessThan128~3_cout\ : std_logic;
SIGNAL \inst11|LessThan128~5_cout\ : std_logic;
SIGNAL \inst11|LessThan128~7_cout\ : std_logic;
SIGNAL \inst11|LessThan128~9_cout\ : std_logic;
SIGNAL \inst11|LessThan128~11_cout\ : std_logic;
SIGNAL \inst11|LessThan128~13_cout\ : std_logic;
SIGNAL \inst11|LessThan128~15_cout\ : std_logic;
SIGNAL \inst11|LessThan128~17_cout\ : std_logic;
SIGNAL \inst11|LessThan128~18_combout\ : std_logic;
SIGNAL \inst11|process_0~183_combout\ : std_logic;
SIGNAL \inst11|process_0~184_combout\ : std_logic;
SIGNAL \inst11|process_0~185_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~20_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~21_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~15_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~1_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~16_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~0_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~17_combout\ : std_logic;
SIGNAL \inst11|LessThan120~0_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~13_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|LessThan6~0_combout\ : std_logic;
SIGNAL \inst11|LessThan6~1_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~14_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~18_combout\ : std_logic;
SIGNAL \inst11|Equal1~0_combout\ : std_logic;
SIGNAL \inst11|process_0~137_combout\ : std_logic;
SIGNAL \inst11|LessThan125~1_combout\ : std_logic;
SIGNAL \inst11|LessThan25~0_combout\ : std_logic;
SIGNAL \inst11|LessThan24~0_combout\ : std_logic;
SIGNAL \inst11|process_0~116_combout\ : std_logic;
SIGNAL \inst11|LessThan37~0_combout\ : std_logic;
SIGNAL \inst11|LessThan32~0_combout\ : std_logic;
SIGNAL \inst11|LessThan32~1_combout\ : std_logic;
SIGNAL \inst11|process_0~142_combout\ : std_logic;
SIGNAL \inst11|process_0~143_combout\ : std_logic;
SIGNAL \inst11|v_character_address~41_combout\ : std_logic;
SIGNAL \inst11|process_0~146_combout\ : std_logic;
SIGNAL \inst11|process_0~147_combout\ : std_logic;
SIGNAL \inst11|process_0~207_combout\ : std_logic;
SIGNAL \inst11|process_0~117_combout\ : std_logic;
SIGNAL \inst11|process_0~191_combout\ : std_logic;
SIGNAL \inst11|process_0~200_combout\ : std_logic;
SIGNAL \inst11|process_0~133_combout\ : std_logic;
SIGNAL \inst11|process_0~75_combout\ : std_logic;
SIGNAL \inst11|process_0~131_combout\ : std_logic;
SIGNAL \inst11|process_0~132_combout\ : std_logic;
SIGNAL \inst11|process_0~199_combout\ : std_logic;
SIGNAL \inst11|LessThan34~0_combout\ : std_logic;
SIGNAL \inst11|process_0~163_combout\ : std_logic;
SIGNAL \inst11|LessThan44~0_combout\ : std_logic;
SIGNAL \inst11|process_0~135_combout\ : std_logic;
SIGNAL \inst11|v_character_address~75_combout\ : std_logic;
SIGNAL \inst11|LessThan38~0_combout\ : std_logic;
SIGNAL \inst11|process_0~134_combout\ : std_logic;
SIGNAL \inst11|process_0~210_combout\ : std_logic;
SIGNAL \inst11|v_character_address~76_combout\ : std_logic;
SIGNAL \inst11|process_0~118_combout\ : std_logic;
SIGNAL \inst11|process_0~202_combout\ : std_logic;
SIGNAL \inst11|process_0~136_combout\ : std_logic;
SIGNAL \inst11|v_character_address~78_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~10_combout\ : std_logic;
SIGNAL \inst11|process_0~160_combout\ : std_logic;
SIGNAL \inst11|process_0~205_combout\ : std_logic;
SIGNAL \inst11|process_0~187_combout\ : std_logic;
SIGNAL \inst11|v_character_address~69_combout\ : std_logic;
SIGNAL \inst11|process_0~119_combout\ : std_logic;
SIGNAL \inst11|process_0~193_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~70_combout\ : std_logic;
SIGNAL \inst11|process_0~124_combout\ : std_logic;
SIGNAL \inst11|process_0~140_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~71_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~11_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~4_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~5_combout\ : std_logic;
SIGNAL \inst11|process_0~129_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~6_combout\ : std_logic;
SIGNAL \inst11|process_0~128_combout\ : std_logic;
SIGNAL \inst11|process_0~209_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~7_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~8_combout\ : std_logic;
SIGNAL \inst11|process_0~78_combout\ : std_logic;
SIGNAL \inst11|process_0~173_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~9_combout\ : std_logic;
SIGNAL \inst11|process_0~126_combout\ : std_logic;
SIGNAL \inst11|process_0~127_combout\ : std_logic;
SIGNAL \inst11|process_0~169_combout\ : std_logic;
SIGNAL \inst11|process_0~130_combout\ : std_logic;
SIGNAL \inst11|process_0~161_combout\ : std_logic;
SIGNAL \inst11|process_0~162_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~192_combout\ : std_logic;
SIGNAL \inst11|LessThan56~0_combout\ : std_logic;
SIGNAL \inst11|process_0~120_combout\ : std_logic;
SIGNAL \inst11|process_0~195_combout\ : std_logic;
SIGNAL \inst11|process_0~208_combout\ : std_logic;
SIGNAL \inst11|process_0~121_combout\ : std_logic;
SIGNAL \inst11|process_0~194_combout\ : std_logic;
SIGNAL \inst11|v_character_address~32_combout\ : std_logic;
SIGNAL \inst11|process_0~122_combout\ : std_logic;
SIGNAL \inst11|process_0~123_combout\ : std_logic;
SIGNAL \inst11|process_0~196_combout\ : std_logic;
SIGNAL \inst11|v_character_address~33_combout\ : std_logic;
SIGNAL \inst11|process_0~197_combout\ : std_logic;
SIGNAL \inst11|process_0~198_combout\ : std_logic;
SIGNAL \inst11|process_0~125_combout\ : std_logic;
SIGNAL \inst11|process_0~84_combout\ : std_logic;
SIGNAL \inst11|process_0~165_combout\ : std_logic;
SIGNAL \inst11|process_0~164_combout\ : std_logic;
SIGNAL \inst11|v_character_address~72_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~73_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~193_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~12_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~22_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~2_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~23_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~23clkctrl_outclk\ : std_logic;
SIGNAL \inst11|v_font_row[0]~24_combout\ : std_logic;
SIGNAL \inst11|v_font_row[0]~25_combout\ : std_logic;
SIGNAL \inst11|v_font_row[1]~26_combout\ : std_logic;
SIGNAL \inst11|v_font_row[1]~27_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~28_combout\ : std_logic;
SIGNAL \inst11|v_font_row[2]~29_combout\ : std_logic;
SIGNAL \inst11|v_character_address~65_combout\ : std_logic;
SIGNAL \inst11|v_character_address~66_combout\ : std_logic;
SIGNAL \inst11|v_character_address~67_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~20_combout\ : std_logic;
SIGNAL \inst11|process_0~192_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~30_combout\ : std_logic;
SIGNAL \inst11|v_character_address~38_combout\ : std_logic;
SIGNAL \inst11|v_character_address~62_combout\ : std_logic;
SIGNAL \inst11|v_character_address~31_combout\ : std_logic;
SIGNAL \inst11|v_character_address~34_combout\ : std_logic;
SIGNAL \inst11|v_character_address~35_combout\ : std_logic;
SIGNAL \inst11|v_character_address~36_combout\ : std_logic;
SIGNAL \inst11|v_character_address~37_combout\ : std_logic;
SIGNAL \inst11|v_character_address~39_combout\ : std_logic;
SIGNAL \inst11|process_0~138_combout\ : std_logic;
SIGNAL \inst11|LessThan88~0_combout\ : std_logic;
SIGNAL \inst11|process_0~204_combout\ : std_logic;
SIGNAL \inst11|v_character_address~58_combout\ : std_logic;
SIGNAL \inst11|process_0~139_combout\ : std_logic;
SIGNAL \inst11|process_0~150_combout\ : std_logic;
SIGNAL \inst11|v_character_address~59_combout\ : std_logic;
SIGNAL \inst11|v_character_address~57_combout\ : std_logic;
SIGNAL \inst11|process_0~148_combout\ : std_logic;
SIGNAL \inst11|process_0~149_combout\ : std_logic;
SIGNAL \inst11|v_character_address~44_combout\ : std_logic;
SIGNAL \inst11|process_0~155_combout\ : std_logic;
SIGNAL \inst11|process_0~151_combout\ : std_logic;
SIGNAL \inst11|process_0~152_combout\ : std_logic;
SIGNAL \inst11|process_0~153_combout\ : std_logic;
SIGNAL \inst11|process_0~154_combout\ : std_logic;
SIGNAL \inst11|v_character_address~50_combout\ : std_logic;
SIGNAL \inst11|process_0~158_combout\ : std_logic;
SIGNAL \inst11|v_character_address~53_combout\ : std_logic;
SIGNAL \inst11|v_character_address~54_combout\ : std_logic;
SIGNAL \inst11|process_0~159_combout\ : std_logic;
SIGNAL \inst11|process_0~203_combout\ : std_logic;
SIGNAL \inst11|v_character_address~55_combout\ : std_logic;
SIGNAL \inst11|process_0~201_combout\ : std_logic;
SIGNAL \inst11|v_character_address~45_combout\ : std_logic;
SIGNAL \inst11|process_0~156_combout\ : std_logic;
SIGNAL \inst11|v_character_address~51_combout\ : std_logic;
SIGNAL \inst11|process_0~157_combout\ : std_logic;
SIGNAL \inst11|v_character_address~46_combout\ : std_logic;
SIGNAL \inst11|v_character_address~47_combout\ : std_logic;
SIGNAL \inst11|v_character_address~48_combout\ : std_logic;
SIGNAL \inst11|v_character_address~242_combout\ : std_logic;
SIGNAL \inst11|v_character_address~49_combout\ : std_logic;
SIGNAL \inst11|v_character_address~52_combout\ : std_logic;
SIGNAL \inst11|v_character_address~56_combout\ : std_logic;
SIGNAL \inst11|v_character_address~60_combout\ : std_logic;
SIGNAL \inst11|process_0~144_combout\ : std_logic;
SIGNAL \inst11|process_0~145_combout\ : std_logic;
SIGNAL \inst11|v_character_address~42_combout\ : std_logic;
SIGNAL \inst11|v_character_address~40_combout\ : std_logic;
SIGNAL \inst11|process_0~141_combout\ : std_logic;
SIGNAL \inst11|v_character_address~43_combout\ : std_logic;
SIGNAL \inst11|v_character_address~61_combout\ : std_logic;
SIGNAL \inst11|v_character_address~63_combout\ : std_logic;
SIGNAL \inst11|process_0~206_combout\ : std_logic;
SIGNAL \inst11|v_character_address~64_combout\ : std_logic;
SIGNAL \inst11|process_0~188_combout\ : std_logic;
SIGNAL \inst11|process_0~90_combout\ : std_logic;
SIGNAL \inst11|process_0~89_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~24_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~247_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~23_combout\ : std_logic;
SIGNAL \inst11|v_character_address~21_combout\ : std_logic;
SIGNAL \inst11|v_character_address~14_combout\ : std_logic;
SIGNAL \inst11|v_character_address~15_combout\ : std_logic;
SIGNAL \inst11|v_character_address~241_combout\ : std_logic;
SIGNAL \inst11|process_0~71_combout\ : std_logic;
SIGNAL \inst11|process_0~70_combout\ : std_logic;
SIGNAL \inst11|v_character_address~12_combout\ : std_logic;
SIGNAL \inst11|process_0~76_combout\ : std_logic;
SIGNAL \inst11|process_0~77_combout\ : std_logic;
SIGNAL \inst11|process_0~73_combout\ : std_logic;
SIGNAL \inst11|process_0~74_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~13_combout\ : std_logic;
SIGNAL \inst11|process_0~79_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~16_combout\ : std_logic;
SIGNAL \inst11|process_0~85_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~17_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~18_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~19_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~22_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~248_combout\ : std_logic;
SIGNAL \inst11|process_0~190_combout\ : std_logic;
SIGNAL \inst11|process_0~110_combout\ : std_logic;
SIGNAL \inst11|process_0~105_combout\ : std_logic;
SIGNAL \inst11|process_0~106_combout\ : std_logic;
SIGNAL \inst11|process_0~107_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~25_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~26_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~27_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~28_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~29_combout\ : std_logic;
SIGNAL \inst11|v_character_address[0]~68_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~105_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~106_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~114_combout\ : std_logic;
SIGNAL \inst11|process_0~172_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~115_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~107_combout\ : std_logic;
SIGNAL \inst11|process_0~170_combout\ : std_logic;
SIGNAL \inst11|process_0~171_combout\ : std_logic;
SIGNAL \inst11|process_0~216_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~110_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~111_combout\ : std_logic;
SIGNAL \inst11|v_character_address~108_combout\ : std_logic;
SIGNAL \inst11|v_character_address~109_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~112_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~113_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~116_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~101_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~102_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~103_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~104_combout\ : std_logic;
SIGNAL \inst11|process_0~215_combout\ : std_logic;
SIGNAL \inst11|v_character_address~95_combout\ : std_logic;
SIGNAL \inst11|v_character_address~74_combout\ : std_logic;
SIGNAL \inst11|v_character_address~89_combout\ : std_logic;
SIGNAL \inst11|process_0~214_combout\ : std_logic;
SIGNAL \inst11|v_character_address~90_combout\ : std_logic;
SIGNAL \inst11|v_character_address~91_combout\ : std_logic;
SIGNAL \inst11|process_0~168_combout\ : std_logic;
SIGNAL \inst11|v_character_address~92_combout\ : std_logic;
SIGNAL \inst11|process_0~212_combout\ : std_logic;
SIGNAL \inst11|v_character_address~82_combout\ : std_logic;
SIGNAL \inst11|process_0~211_combout\ : std_logic;
SIGNAL \inst11|v_character_address~81_combout\ : std_logic;
SIGNAL \inst11|process_0~213_combout\ : std_logic;
SIGNAL \inst11|process_0~167_combout\ : std_logic;
SIGNAL \inst11|v_character_address~83_combout\ : std_logic;
SIGNAL \inst11|v_character_address~84_combout\ : std_logic;
SIGNAL \inst11|v_character_address~85_combout\ : std_logic;
SIGNAL \inst11|v_character_address~80_combout\ : std_logic;
SIGNAL \inst11|v_character_address~86_combout\ : std_logic;
SIGNAL \inst11|v_character_address~87_combout\ : std_logic;
SIGNAL \inst11|v_character_address~88_combout\ : std_logic;
SIGNAL \inst11|v_character_address~77_combout\ : std_logic;
SIGNAL \inst11|v_character_address~79_combout\ : std_logic;
SIGNAL \inst11|v_character_address~93_combout\ : std_logic;
SIGNAL \inst11|v_character_address~94_combout\ : std_logic;
SIGNAL \inst11|v_character_address~96_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~97_combout\ : std_logic;
SIGNAL \inst11|v_character_address[1]~117_combout\ : std_logic;
SIGNAL \inst11|v_character_address~244_combout\ : std_logic;
SIGNAL \inst11|v_character_address~154_combout\ : std_logic;
SIGNAL \inst11|v_character_address~155_combout\ : std_logic;
SIGNAL \inst11|v_character_address~156_combout\ : std_logic;
SIGNAL \inst11|v_character_address~131_combout\ : std_logic;
SIGNAL \inst11|v_character_address~129_combout\ : std_logic;
SIGNAL \inst11|v_character_address~130_combout\ : std_logic;
SIGNAL \inst11|v_character_address~132_combout\ : std_logic;
SIGNAL \inst11|process_0~175_combout\ : std_logic;
SIGNAL \inst11|v_character_address~133_combout\ : std_logic;
SIGNAL \inst11|v_character_address~150_combout\ : std_logic;
SIGNAL \inst11|v_character_address~134_combout\ : std_logic;
SIGNAL \inst11|v_character_address~135_combout\ : std_logic;
SIGNAL \inst11|process_0~217_combout\ : std_logic;
SIGNAL \inst11|v_character_address~146_combout\ : std_logic;
SIGNAL \inst11|v_character_address~145_combout\ : std_logic;
SIGNAL \inst11|process_0~218_combout\ : std_logic;
SIGNAL \inst11|v_character_address~147_combout\ : std_logic;
SIGNAL \inst11|v_character_address~148_combout\ : std_logic;
SIGNAL \inst11|process_0~174_combout\ : std_logic;
SIGNAL \inst11|v_character_address~143_combout\ : std_logic;
SIGNAL \inst11|v_character_address~136_combout\ : std_logic;
SIGNAL \inst11|v_character_address~137_combout\ : std_logic;
SIGNAL \inst11|v_character_address~138_combout\ : std_logic;
SIGNAL \inst11|v_character_address~139_combout\ : std_logic;
SIGNAL \inst11|v_character_address~140_combout\ : std_logic;
SIGNAL \inst11|v_character_address~141_combout\ : std_logic;
SIGNAL \inst11|v_character_address~142_combout\ : std_logic;
SIGNAL \inst11|v_character_address~144_combout\ : std_logic;
SIGNAL \inst11|v_character_address~149_combout\ : std_logic;
SIGNAL \inst11|v_character_address~151_combout\ : std_logic;
SIGNAL \inst11|v_character_address~152_combout\ : std_logic;
SIGNAL \inst11|v_character_address~153_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~118_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~120_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~121_combout\ : std_logic;
SIGNAL \inst11|v_character_address~119_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~243_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~122_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~125_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~126_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~127_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~128_combout\ : std_logic;
SIGNAL \inst11|v_character_address[2]~157_combout\ : std_logic;
SIGNAL \inst11|v_character_address[3]~160_combout\ : std_logic;
SIGNAL \inst11|v_font_col[2]~2_combout\ : std_logic;
SIGNAL \inst11|v_character_address[3]~161_combout\ : std_logic;
SIGNAL \inst11|Equal0~1_combout\ : std_logic;
SIGNAL \inst11|v_character_address[3]~158_combout\ : std_logic;
SIGNAL \inst11|v_character_address[3]~159_combout\ : std_logic;
SIGNAL \inst11|v_character_address[3]~162_combout\ : std_logic;
SIGNAL \inst11|v_character_address~185_combout\ : std_logic;
SIGNAL \inst11|v_character_address~186_combout\ : std_logic;
SIGNAL \inst11|process_0~177_combout\ : std_logic;
SIGNAL \inst11|v_character_address~188_combout\ : std_logic;
SIGNAL \inst11|v_character_address~189_combout\ : std_logic;
SIGNAL \inst11|v_character_address~190_combout\ : std_logic;
SIGNAL \inst11|v_character_address[3]~163_combout\ : std_logic;
SIGNAL \inst11|v_character_address~164_combout\ : std_logic;
SIGNAL \inst11|process_0~176_combout\ : std_logic;
SIGNAL \inst11|v_character_address~165_combout\ : std_logic;
SIGNAL \inst11|v_character_address~172_combout\ : std_logic;
SIGNAL \inst11|v_character_address~173_combout\ : std_logic;
SIGNAL \inst11|v_character_address~178_combout\ : std_logic;
SIGNAL \inst11|v_character_address~176_combout\ : std_logic;
SIGNAL \inst11|v_character_address~175_combout\ : std_logic;
SIGNAL \inst11|v_character_address~177_combout\ : std_logic;
SIGNAL \inst11|v_character_address~174_combout\ : std_logic;
SIGNAL \inst11|v_character_address~179_combout\ : std_logic;
SIGNAL \inst11|v_character_address~168_combout\ : std_logic;
SIGNAL \inst11|v_character_address~166_combout\ : std_logic;
SIGNAL \inst11|v_character_address~167_combout\ : std_logic;
SIGNAL \inst11|v_character_address~169_combout\ : std_logic;
SIGNAL \inst11|v_character_address~170_combout\ : std_logic;
SIGNAL \inst11|v_character_address~171_combout\ : std_logic;
SIGNAL \inst11|v_character_address~180_combout\ : std_logic;
SIGNAL \inst11|v_character_address~181_combout\ : std_logic;
SIGNAL \inst11|v_character_address~182_combout\ : std_logic;
SIGNAL \inst11|v_character_address~183_combout\ : std_logic;
SIGNAL \inst11|v_character_address~184_combout\ : std_logic;
SIGNAL \inst11|v_character_address~187_combout\ : std_logic;
SIGNAL \inst11|v_character_address[3]~191_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~194_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~207_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~208_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~209_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~210_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~245_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~211_combout\ : std_logic;
SIGNAL \inst11|process_0~178_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~246_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~212_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~213_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~195_combout\ : std_logic;
SIGNAL \inst11|v_character_address~196_combout\ : std_logic;
SIGNAL \inst11|v_character_address~203_combout\ : std_logic;
SIGNAL \inst11|v_character_address~204_combout\ : std_logic;
SIGNAL \inst11|v_character_address~197_combout\ : std_logic;
SIGNAL \inst11|v_character_address~198_combout\ : std_logic;
SIGNAL \inst11|v_character_address~199_combout\ : std_logic;
SIGNAL \inst11|v_character_address~200_combout\ : std_logic;
SIGNAL \inst11|v_character_address~201_combout\ : std_logic;
SIGNAL \inst11|v_character_address~202_combout\ : std_logic;
SIGNAL \inst11|v_character_address~205_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~206_combout\ : std_logic;
SIGNAL \inst11|v_character_address[4]~214_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~222_combout\ : std_logic;
SIGNAL \inst11|v_character_address~237_combout\ : std_logic;
SIGNAL \inst11|v_character_address~239_combout\ : std_logic;
SIGNAL \inst11|v_character_address~223_combout\ : std_logic;
SIGNAL \inst11|v_character_address~224_combout\ : std_logic;
SIGNAL \inst11|v_character_address~225_combout\ : std_logic;
SIGNAL \inst11|v_character_address~235_combout\ : std_logic;
SIGNAL \inst11|v_character_address~227_combout\ : std_logic;
SIGNAL \inst11|v_character_address~228_combout\ : std_logic;
SIGNAL \inst11|v_character_address~230_combout\ : std_logic;
SIGNAL \inst11|v_character_address~229_combout\ : std_logic;
SIGNAL \inst11|v_character_address~231_combout\ : std_logic;
SIGNAL \inst11|v_character_address~232_combout\ : std_logic;
SIGNAL \inst11|v_character_address~226_combout\ : std_logic;
SIGNAL \inst11|v_character_address~233_combout\ : std_logic;
SIGNAL \inst11|v_character_address~234_combout\ : std_logic;
SIGNAL \inst11|v_character_address~236_combout\ : std_logic;
SIGNAL \inst11|v_character_address~238_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~215_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~217_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~216_combout\ : std_logic;
SIGNAL \inst11|process_0~181_combout\ : std_logic;
SIGNAL \inst11|process_0~182_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~218_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~219_combout\ : std_logic;
SIGNAL \inst11|process_0~179_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~220_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~221_combout\ : std_logic;
SIGNAL \inst11|v_character_address[5]~240_combout\ : std_logic;
SIGNAL \inst11|v_font_col[1]~16_combout\ : std_logic;
SIGNAL \inst11|v_font_col[1]~17_combout\ : std_logic;
SIGNAL \inst11|v_font_col[0]~18_combout\ : std_logic;
SIGNAL \inst11|v_font_col[0]~19_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|Mux0~2_combout\ : std_logic;
SIGNAL \inst4|Mux0~3_combout\ : std_logic;
SIGNAL \inst|red_data[0]~0_combout\ : std_logic;
SIGNAL \inst|blue_data~6_combout\ : std_logic;
SIGNAL \inst|SYNC|video_on_v[0]~0_combout\ : std_logic;
SIGNAL \inst|SYNC|blue_out~0_combout\ : std_logic;
SIGNAL \inst|SYNC|blue_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|blue_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|blue_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst|red_data[0]~1_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out[3]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~0_combout\ : std_logic;
SIGNAL \inst|red_data~2_combout\ : std_logic;
SIGNAL \inst|red_data~3_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~1_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR3[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR3[7]~0_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR3[7]~1_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[8]~29\ : std_logic;
SIGNAL \inst7|new_cursor_row[9]~30_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|PACKET_CHAR3[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[0]~10_combout\ : std_logic;
SIGNAL \inst7|cursor_row~11_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[0]~11\ : std_logic;
SIGNAL \inst7|new_cursor_row[1]~12_combout\ : std_logic;
SIGNAL \inst7|cursor_row~10_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[1]~13\ : std_logic;
SIGNAL \inst7|new_cursor_row[2]~14_combout\ : std_logic;
SIGNAL \inst7|cursor_row~9_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[2]~15\ : std_logic;
SIGNAL \inst7|new_cursor_row[3]~16_combout\ : std_logic;
SIGNAL \inst7|cursor_row~8_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[3]~17\ : std_logic;
SIGNAL \inst7|new_cursor_row[4]~18_combout\ : std_logic;
SIGNAL \inst7|cursor_row~7_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[4]~19\ : std_logic;
SIGNAL \inst7|new_cursor_row[5]~20_combout\ : std_logic;
SIGNAL \inst7|cursor_row~6_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[5]~21\ : std_logic;
SIGNAL \inst7|new_cursor_row[6]~23\ : std_logic;
SIGNAL \inst7|new_cursor_row[7]~26_combout\ : std_logic;
SIGNAL \inst7|RECV_UART~1_combout\ : std_logic;
SIGNAL \inst7|RECV_UART~0_combout\ : std_logic;
SIGNAL \inst7|RECV_UART~2_combout\ : std_logic;
SIGNAL \inst7|RECV_UART~3_combout\ : std_logic;
SIGNAL \inst7|cursor_row~1_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[6]~22_combout\ : std_logic;
SIGNAL \inst7|LessThan5~0_combout\ : std_logic;
SIGNAL \inst7|cursor_row~0_combout\ : std_logic;
SIGNAL \inst7|cursor_row~5_combout\ : std_logic;
SIGNAL \inst7|new_cursor_row[7]~27\ : std_logic;
SIGNAL \inst7|new_cursor_row[8]~28_combout\ : std_logic;
SIGNAL \inst7|cursor_row~4_combout\ : std_logic;
SIGNAL \inst1|LED_out[6]~0_combout\ : std_logic;
SIGNAL \inst1|LED_out[5]~1_combout\ : std_logic;
SIGNAL \inst1|LED_out[4]~2_combout\ : std_logic;
SIGNAL \inst1|LED_out[3]~3_combout\ : std_logic;
SIGNAL \inst1|Equal7~0_combout\ : std_logic;
SIGNAL \inst1|LED_out[1]~4_combout\ : std_logic;
SIGNAL \inst1|LED_out[0]~5_combout\ : std_logic;
SIGNAL \inst5|TEMP_RANDOM[1]~feeder_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \inst5|TAP~0_combout\ : std_logic;
SIGNAL \inst5|TEMP_RANDOM[5]~0_combout\ : std_logic;
SIGNAL \inst5|TEMP_RANDOM[3]~2_combout\ : std_logic;
SIGNAL \inst5|TEMP_RANDOM[2]~3_combout\ : std_logic;
SIGNAL \inst5|TEMP_RANDOM[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|RANDOM[1]~2_combout\ : std_logic;
SIGNAL \inst5|RANDOM[1]~3_combout\ : std_logic;
SIGNAL \inst5|RANDOM[1]~4_combout\ : std_logic;
SIGNAL \inst5|RANDOM~5_combout\ : std_logic;
SIGNAL \inst5|RANDOM~6_combout\ : std_logic;
SIGNAL \inst5|RANDOM~0_combout\ : std_logic;
SIGNAL \inst5|RANDOM~1_combout\ : std_logic;
SIGNAL \inst5|RANDOM~7_combout\ : std_logic;
SIGNAL \inst3|LED_out[6]~0_combout\ : std_logic;
SIGNAL \inst3|LED_out[5]~1_combout\ : std_logic;
SIGNAL \inst3|LED_out[4]~2_combout\ : std_logic;
SIGNAL \inst3|LED_out[3]~3_combout\ : std_logic;
SIGNAL \inst3|Equal7~0_combout\ : std_logic;
SIGNAL \inst3|LED_out[1]~4_combout\ : std_logic;
SIGNAL \inst3|LED_out[0]~5_combout\ : std_logic;
SIGNAL \inst|red_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|life_temp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|life\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|green_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|energy_temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|energy\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|blue_data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Pipe1_X_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Ball_X_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|video_on_v\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|SYNC|video_on_h\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|red_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|green_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|SYNC|blue_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst11|v_font_col\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|TEMP_RANDOM\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst7|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst11|v_font_row\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|RANDOM\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst7|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst7|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|STATE_OUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst7|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \inst7|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst|SYNC|ALT_INV_v_count[8]~1_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst7|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \inst|SYNC|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \inst|SYNC|ALT_INV_LessThan7~1_combout\ : std_logic;

BEGIN

horiz_sync_out <= ww_horiz_sync_out;
ww_clk <= clk;
ww_sw <= sw;
ww_bt0 <= bt0;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
vert_sync_out <= ww_vert_sync_out;
blue <= ww_blue;
green <= ww_green;
red <= ww_red;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst11|v_character_address[5]~240_combout\ & \inst11|v_character_address[4]~214_combout\ & \inst11|v_character_address[3]~191_combout\ & 
\inst11|v_character_address[2]~157_combout\ & \inst11|v_character_address[1]~117_combout\ & \inst11|v_character_address[0]~68_combout\ & \inst11|v_font_row\(2) & \inst11|v_font_row\(1) & \inst11|v_font_row\(0));

\inst4|altsyncram_component|auto_generated|q_a\(0) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst4|altsyncram_component|auto_generated|q_a\(1) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst4|altsyncram_component|auto_generated|q_a\(2) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst4|altsyncram_component|auto_generated|q_a\(3) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst4|altsyncram_component|auto_generated|q_a\(4) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst4|altsyncram_component|auto_generated|q_a\(5) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst4|altsyncram_component|auto_generated|q_a\(6) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst4|altsyncram_component|auto_generated|q_a\(7) <= \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|SYNC|vert_sync_out~q\);

\inst7|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|MOUSE_CLK_FILTER~q\);

\inst11|v_font_row[2]~23clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|v_font_row[2]~23_combout\);

\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\inst7|ALT_INV_send_data~q\ <= NOT \inst7|send_data~q\;
\inst|SYNC|ALT_INV_v_count[8]~1_combout\ <= NOT \inst|SYNC|v_count[8]~1_combout\;
\inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst7|mouse_state.INHIBIT_TRANS~q\;
\inst7|ALT_INV_Equal4~0_combout\ <= NOT \inst7|Equal4~0_combout\;
\inst|SYNC|ALT_INV_LessThan6~0_combout\ <= NOT \inst|SYNC|LessThan6~0_combout\;
\inst|SYNC|ALT_INV_LessThan7~1_combout\ <= NOT \inst|SYNC|LessThan7~1_combout\;

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X41_Y21_N9
\blue[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out\(3),
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X41_Y19_N2
\blue[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out\(2),
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X41_Y19_N9
\blue[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out\(1),
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X41_Y19_N23
\blue[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out\(0),
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X41_Y20_N23
\green[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out\(3),
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X41_Y21_N16
\green[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out\(2),
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X41_Y24_N23
\green[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out\(1),
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X41_Y20_N2
\green[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out\(0),
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X41_Y21_N23
\red[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|red_out\(3),
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X41_Y22_N2
\red[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|red_out\(2),
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X41_Y25_N2
\red[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|red_out\(1),
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X41_Y23_N23
\red[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|red_out\(0),
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_out[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_out[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_out[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Equal7~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_out[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LED_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LED_out[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LED_out[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LED_out[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LED_out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Equal7~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LED_out[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|LED_out[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|MOUSE_DATA_BUF~q\,
	oe => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst7|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\inst2|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5052,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X21_Y28_N10
\inst7|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst7|filter[0]~feeder_combout\);

-- Location: FF_X21_Y28_N11
\inst7|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|filter\(0));

-- Location: LCCOMB_X21_Y28_N16
\inst7|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|filter[1]~feeder_combout\ = \inst7|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|filter\(0),
	combout => \inst7|filter[1]~feeder_combout\);

-- Location: FF_X21_Y28_N17
\inst7|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|filter\(1));

-- Location: LCCOMB_X21_Y28_N28
\inst7|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|filter[2]~feeder_combout\ = \inst7|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|filter\(1),
	combout => \inst7|filter[2]~feeder_combout\);

-- Location: FF_X21_Y28_N29
\inst7|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|filter\(2));

-- Location: LCCOMB_X21_Y28_N24
\inst7|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|filter[3]~feeder_combout\ = \inst7|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|filter\(2),
	combout => \inst7|filter[3]~feeder_combout\);

-- Location: FF_X21_Y28_N25
\inst7|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|filter\(3));

-- Location: FF_X21_Y28_N27
\inst7|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst7|filter\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|filter\(4));

-- Location: LCCOMB_X21_Y28_N22
\inst7|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|filter[5]~feeder_combout\ = \inst7|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|filter\(4),
	combout => \inst7|filter[5]~feeder_combout\);

-- Location: FF_X21_Y28_N23
\inst7|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|filter\(5));

-- Location: FF_X21_Y28_N21
\inst7|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst7|filter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|filter\(6));

-- Location: FF_X21_Y28_N31
\inst7|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst7|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|filter\(7));

-- Location: LCCOMB_X21_Y28_N30
\inst7|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|MOUSE_CLK_FILTER~0_combout\ = (\inst7|filter\(2) & (\inst7|filter\(7) & \inst7|filter\(4))) # (!\inst7|filter\(2) & ((\inst7|filter\(7)) # (\inst7|filter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|filter\(2),
	datac => \inst7|filter\(7),
	datad => \inst7|filter\(4),
	combout => \inst7|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X21_Y28_N14
\inst7|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|MOUSE_CLK_FILTER~1_combout\ = (\inst7|filter\(3) & ((\inst7|MOUSE_CLK_FILTER~q\) # ((\inst7|filter\(2) & \inst7|filter\(5))))) # (!\inst7|filter\(3) & (\inst7|MOUSE_CLK_FILTER~q\ & ((\inst7|filter\(2)) # (\inst7|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|filter\(3),
	datab => \inst7|filter\(2),
	datac => \inst7|filter\(5),
	datad => \inst7|MOUSE_CLK_FILTER~q\,
	combout => \inst7|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X21_Y28_N18
\inst7|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|MOUSE_CLK_FILTER~2_combout\ = (\inst7|filter\(0) & ((\inst7|MOUSE_CLK_FILTER~q\) # ((\inst7|filter\(1) & \inst7|filter\(6))))) # (!\inst7|filter\(0) & (\inst7|MOUSE_CLK_FILTER~q\ & ((\inst7|filter\(1)) # (\inst7|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|filter\(0),
	datab => \inst7|filter\(1),
	datac => \inst7|filter\(6),
	datad => \inst7|MOUSE_CLK_FILTER~q\,
	combout => \inst7|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X21_Y28_N12
\inst7|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|MOUSE_CLK_FILTER~3_combout\ = (\inst7|MOUSE_CLK_FILTER~0_combout\ & ((\inst7|MOUSE_CLK_FILTER~q\) # ((\inst7|MOUSE_CLK_FILTER~1_combout\ & \inst7|MOUSE_CLK_FILTER~2_combout\)))) # (!\inst7|MOUSE_CLK_FILTER~0_combout\ & (\inst7|MOUSE_CLK_FILTER~q\ & 
-- ((\inst7|MOUSE_CLK_FILTER~1_combout\) # (\inst7|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|MOUSE_CLK_FILTER~0_combout\,
	datab => \inst7|MOUSE_CLK_FILTER~1_combout\,
	datac => \inst7|MOUSE_CLK_FILTER~q\,
	datad => \inst7|MOUSE_CLK_FILTER~2_combout\,
	combout => \inst7|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X21_Y28_N13
\inst7|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G10
\inst7|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y19_N28
\inst7|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst7|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X28_Y19_N16
\inst7|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[9]~26_combout\ = (\inst7|inhibit_wait_count\(9) & (\inst7|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst7|inhibit_wait_count\(9) & (!\inst7|inhibit_wait_count[8]~25\ & VCC))
-- \inst7|inhibit_wait_count[9]~27\ = CARRY((\inst7|inhibit_wait_count\(9) & !\inst7|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst7|inhibit_wait_count[8]~25\,
	combout => \inst7|inhibit_wait_count[9]~26_combout\,
	cout => \inst7|inhibit_wait_count[9]~27\);

-- Location: LCCOMB_X28_Y19_N18
\inst7|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[10]~28_combout\ = \inst7|inhibit_wait_count[9]~27\ $ (\inst7|inhibit_wait_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inhibit_wait_count\(10),
	cin => \inst7|inhibit_wait_count[9]~27\,
	combout => \inst7|inhibit_wait_count[10]~28_combout\);

-- Location: IOIBUF_X0_Y27_N1
\sw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: FF_X28_Y19_N19
\inst7|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[10]~28_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(10));

-- Location: LCCOMB_X27_Y19_N26
\inst7|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Selector0~0_combout\ = (\inst7|mouse_state.INHIBIT_TRANS~q\) # ((\inst7|inhibit_wait_count\(9) & \inst7|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inhibit_wait_count\(9),
	datac => \inst7|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst7|inhibit_wait_count\(10),
	combout => \inst7|Selector0~0_combout\);

-- Location: FF_X27_Y19_N27
\inst7|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Selector0~0_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mouse_state.INHIBIT_TRANS~q\);

-- Location: LCCOMB_X27_Y19_N22
\inst7|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[0]~30_combout\ = \inst7|mouse_state.INHIBIT_TRANS~q\ $ (!\inst7|inhibit_wait_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst7|inhibit_wait_count\(0),
	combout => \inst7|inhibit_wait_count[0]~30_combout\);

-- Location: FF_X27_Y19_N23
\inst7|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[0]~30_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(0));

-- Location: LCCOMB_X28_Y19_N0
\inst7|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[1]~10_combout\ = (\inst7|inhibit_wait_count\(1) & (\inst7|inhibit_wait_count\(0) $ (VCC))) # (!\inst7|inhibit_wait_count\(1) & (\inst7|inhibit_wait_count\(0) & VCC))
-- \inst7|inhibit_wait_count[1]~11\ = CARRY((\inst7|inhibit_wait_count\(1) & \inst7|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inhibit_wait_count\(1),
	datab => \inst7|inhibit_wait_count\(0),
	datad => VCC,
	combout => \inst7|inhibit_wait_count[1]~10_combout\,
	cout => \inst7|inhibit_wait_count[1]~11\);

-- Location: FF_X28_Y19_N1
\inst7|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[1]~10_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(1));

-- Location: LCCOMB_X28_Y19_N2
\inst7|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[2]~12_combout\ = (\inst7|inhibit_wait_count\(2) & (!\inst7|inhibit_wait_count[1]~11\)) # (!\inst7|inhibit_wait_count\(2) & ((\inst7|inhibit_wait_count[1]~11\) # (GND)))
-- \inst7|inhibit_wait_count[2]~13\ = CARRY((!\inst7|inhibit_wait_count[1]~11\) # (!\inst7|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst7|inhibit_wait_count[1]~11\,
	combout => \inst7|inhibit_wait_count[2]~12_combout\,
	cout => \inst7|inhibit_wait_count[2]~13\);

-- Location: FF_X28_Y19_N3
\inst7|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[2]~12_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(2));

-- Location: LCCOMB_X28_Y19_N4
\inst7|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[3]~14_combout\ = (\inst7|inhibit_wait_count\(3) & (\inst7|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst7|inhibit_wait_count\(3) & (!\inst7|inhibit_wait_count[2]~13\ & VCC))
-- \inst7|inhibit_wait_count[3]~15\ = CARRY((\inst7|inhibit_wait_count\(3) & !\inst7|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst7|inhibit_wait_count[2]~13\,
	combout => \inst7|inhibit_wait_count[3]~14_combout\,
	cout => \inst7|inhibit_wait_count[3]~15\);

-- Location: FF_X28_Y19_N5
\inst7|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[3]~14_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(3));

-- Location: LCCOMB_X28_Y19_N6
\inst7|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[4]~16_combout\ = (\inst7|inhibit_wait_count\(4) & (!\inst7|inhibit_wait_count[3]~15\)) # (!\inst7|inhibit_wait_count\(4) & ((\inst7|inhibit_wait_count[3]~15\) # (GND)))
-- \inst7|inhibit_wait_count[4]~17\ = CARRY((!\inst7|inhibit_wait_count[3]~15\) # (!\inst7|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst7|inhibit_wait_count[3]~15\,
	combout => \inst7|inhibit_wait_count[4]~16_combout\,
	cout => \inst7|inhibit_wait_count[4]~17\);

-- Location: FF_X28_Y19_N7
\inst7|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[4]~16_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(4));

-- Location: LCCOMB_X28_Y19_N8
\inst7|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[5]~18_combout\ = (\inst7|inhibit_wait_count\(5) & (\inst7|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst7|inhibit_wait_count\(5) & (!\inst7|inhibit_wait_count[4]~17\ & VCC))
-- \inst7|inhibit_wait_count[5]~19\ = CARRY((\inst7|inhibit_wait_count\(5) & !\inst7|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst7|inhibit_wait_count[4]~17\,
	combout => \inst7|inhibit_wait_count[5]~18_combout\,
	cout => \inst7|inhibit_wait_count[5]~19\);

-- Location: FF_X28_Y19_N9
\inst7|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[5]~18_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(5));

-- Location: LCCOMB_X28_Y19_N10
\inst7|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[6]~20_combout\ = (\inst7|inhibit_wait_count\(6) & (!\inst7|inhibit_wait_count[5]~19\)) # (!\inst7|inhibit_wait_count\(6) & ((\inst7|inhibit_wait_count[5]~19\) # (GND)))
-- \inst7|inhibit_wait_count[6]~21\ = CARRY((!\inst7|inhibit_wait_count[5]~19\) # (!\inst7|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst7|inhibit_wait_count[5]~19\,
	combout => \inst7|inhibit_wait_count[6]~20_combout\,
	cout => \inst7|inhibit_wait_count[6]~21\);

-- Location: FF_X28_Y19_N11
\inst7|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[6]~20_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(6));

-- Location: LCCOMB_X28_Y19_N12
\inst7|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[7]~22_combout\ = (\inst7|inhibit_wait_count\(7) & (\inst7|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst7|inhibit_wait_count\(7) & (!\inst7|inhibit_wait_count[6]~21\ & VCC))
-- \inst7|inhibit_wait_count[7]~23\ = CARRY((\inst7|inhibit_wait_count\(7) & !\inst7|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst7|inhibit_wait_count[6]~21\,
	combout => \inst7|inhibit_wait_count[7]~22_combout\,
	cout => \inst7|inhibit_wait_count[7]~23\);

-- Location: FF_X28_Y19_N13
\inst7|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[7]~22_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(7));

-- Location: LCCOMB_X28_Y19_N14
\inst7|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inhibit_wait_count[8]~24_combout\ = (\inst7|inhibit_wait_count\(8) & (!\inst7|inhibit_wait_count[7]~23\)) # (!\inst7|inhibit_wait_count\(8) & ((\inst7|inhibit_wait_count[7]~23\) # (GND)))
-- \inst7|inhibit_wait_count[8]~25\ = CARRY((!\inst7|inhibit_wait_count[7]~23\) # (!\inst7|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst7|inhibit_wait_count[7]~23\,
	combout => \inst7|inhibit_wait_count[8]~24_combout\,
	cout => \inst7|inhibit_wait_count[8]~25\);

-- Location: FF_X28_Y19_N15
\inst7|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[8]~24_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(8));

-- Location: FF_X28_Y19_N17
\inst7|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|inhibit_wait_count[9]~26_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inhibit_wait_count\(9));

-- Location: LCCOMB_X27_Y19_N28
\inst7|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Selector1~0_combout\ = (\inst7|inhibit_wait_count\(9) & (!\inst7|mouse_state.INHIBIT_TRANS~q\ & \inst7|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inhibit_wait_count\(9),
	datac => \inst7|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst7|inhibit_wait_count\(10),
	combout => \inst7|Selector1~0_combout\);

-- Location: FF_X27_Y19_N29
\inst7|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Selector1~0_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mouse_state.LOAD_COMMAND~q\);

-- Location: LCCOMB_X27_Y19_N8
\inst7|mouse_state.LOAD_COMMAND2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|mouse_state.LOAD_COMMAND2~feeder_combout\ = \inst7|mouse_state.LOAD_COMMAND~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|mouse_state.LOAD_COMMAND~q\,
	combout => \inst7|mouse_state.LOAD_COMMAND2~feeder_combout\);

-- Location: FF_X27_Y19_N9
\inst7|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|mouse_state.LOAD_COMMAND2~feeder_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mouse_state.LOAD_COMMAND2~q\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X23_Y19_N28
\inst7|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|OUTCNT~3_combout\ = (!\inst7|OUTCNT\(0) & (((!\inst7|OUTCNT\(1) & !\inst7|OUTCNT\(2))) # (!\inst7|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|OUTCNT\(1),
	datab => \inst7|OUTCNT\(3),
	datac => \inst7|OUTCNT\(0),
	datad => \inst7|OUTCNT\(2),
	combout => \inst7|OUTCNT~3_combout\);

-- Location: LCCOMB_X26_Y19_N10
\inst7|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|send_char~0_combout\ = (\inst7|send_char~q\) # ((\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & \inst7|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst7|send_char~q\,
	datad => \inst7|LessThan0~0_combout\,
	combout => \inst7|send_char~0_combout\);

-- Location: FF_X26_Y19_N11
\inst7|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|send_char~0_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|send_char~q\);

-- Location: LCCOMB_X23_Y19_N30
\inst7|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|output_ready~0_combout\ = (\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst7|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst7|send_char~q\,
	combout => \inst7|output_ready~0_combout\);

-- Location: FF_X23_Y19_N29
\inst7|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|OUTCNT~3_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|OUTCNT\(0));

-- Location: LCCOMB_X23_Y19_N22
\inst7|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|OUTCNT~0_combout\ = (\inst7|OUTCNT\(1) & (\inst7|OUTCNT\(2) & (!\inst7|OUTCNT\(3) & \inst7|OUTCNT\(0)))) # (!\inst7|OUTCNT\(1) & (!\inst7|OUTCNT\(2) & (\inst7|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|OUTCNT\(1),
	datab => \inst7|OUTCNT\(2),
	datac => \inst7|OUTCNT\(3),
	datad => \inst7|OUTCNT\(0),
	combout => \inst7|OUTCNT~0_combout\);

-- Location: FF_X23_Y19_N23
\inst7|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|OUTCNT~0_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|OUTCNT\(3));

-- Location: LCCOMB_X23_Y19_N18
\inst7|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|OUTCNT~2_combout\ = (\inst7|OUTCNT\(3) & (!\inst7|OUTCNT\(2) & (!\inst7|OUTCNT\(1) & \inst7|OUTCNT\(0)))) # (!\inst7|OUTCNT\(3) & ((\inst7|OUTCNT\(1) $ (\inst7|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|OUTCNT\(2),
	datab => \inst7|OUTCNT\(3),
	datac => \inst7|OUTCNT\(1),
	datad => \inst7|OUTCNT\(0),
	combout => \inst7|OUTCNT~2_combout\);

-- Location: FF_X23_Y19_N19
\inst7|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|OUTCNT~2_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|OUTCNT\(1));

-- Location: LCCOMB_X23_Y19_N4
\inst7|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|OUTCNT~1_combout\ = (!\inst7|OUTCNT\(3) & (\inst7|OUTCNT\(2) $ (((\inst7|OUTCNT\(1) & \inst7|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|OUTCNT\(1),
	datab => \inst7|OUTCNT\(3),
	datac => \inst7|OUTCNT\(2),
	datad => \inst7|OUTCNT\(0),
	combout => \inst7|OUTCNT~1_combout\);

-- Location: FF_X23_Y19_N5
\inst7|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|OUTCNT~1_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|OUTCNT\(2));

-- Location: LCCOMB_X23_Y19_N8
\inst7|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~0_combout\ = (\inst7|OUTCNT\(3) & ((\inst7|OUTCNT\(2)) # (\inst7|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|OUTCNT\(2),
	datac => \inst7|OUTCNT\(3),
	datad => \inst7|OUTCNT\(1),
	combout => \inst7|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\inst7|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|output_ready~feeder_combout\ = \inst7|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|LessThan0~0_combout\,
	combout => \inst7|output_ready~feeder_combout\);

-- Location: FF_X23_Y19_N21
\inst7|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|output_ready~feeder_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output_ready~q\);

-- Location: LCCOMB_X23_Y19_N24
\inst7|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~0_combout\ = (\inst7|mouse_state.LOAD_COMMAND2~q\) # ((\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst7|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst7|output_ready~q\,
	combout => \inst7|Selector3~0_combout\);

-- Location: FF_X23_Y19_N25
\inst7|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Selector3~0_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X24_Y20_N26
\inst7|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|INCNT~2_combout\ = (!\inst7|INCNT\(3) & (\inst7|INCNT\(1) $ (\inst7|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|INCNT\(3),
	datac => \inst7|INCNT\(1),
	datad => \inst7|INCNT\(0),
	combout => \inst7|INCNT~2_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst7|INCNT[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|INCNT[3]~0_combout\ = (!\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & \inst7|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst7|READ_CHAR~q\,
	combout => \inst7|INCNT[3]~0_combout\);

-- Location: FF_X24_Y20_N27
\inst7|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|INCNT~2_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|INCNT[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|INCNT\(1));

-- Location: LCCOMB_X24_Y20_N28
\inst7|INCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|INCNT~1_combout\ = (!\inst7|INCNT\(3) & (\inst7|INCNT\(2) $ (((\inst7|INCNT\(0) & \inst7|INCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|INCNT\(0),
	datab => \inst7|INCNT\(3),
	datac => \inst7|INCNT\(2),
	datad => \inst7|INCNT\(1),
	combout => \inst7|INCNT~1_combout\);

-- Location: FF_X24_Y20_N29
\inst7|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|INCNT~1_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|INCNT[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|INCNT\(2));

-- Location: LCCOMB_X24_Y20_N20
\inst7|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|INCNT~3_combout\ = (!\inst7|INCNT\(0) & (((!\inst7|INCNT\(1) & !\inst7|INCNT\(2))) # (!\inst7|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|INCNT\(3),
	datab => \inst7|INCNT\(1),
	datac => \inst7|INCNT\(0),
	datad => \inst7|INCNT\(2),
	combout => \inst7|INCNT~3_combout\);

-- Location: FF_X24_Y20_N21
\inst7|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|INCNT~3_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|INCNT[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|INCNT\(0));

-- Location: LCCOMB_X24_Y20_N10
\inst7|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|INCNT~4_combout\ = (\inst7|INCNT\(0) & (\inst7|INCNT\(1) & (!\inst7|INCNT\(3) & \inst7|INCNT\(2)))) # (!\inst7|INCNT\(0) & (!\inst7|INCNT\(1) & (\inst7|INCNT\(3) & !\inst7|INCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|INCNT\(0),
	datab => \inst7|INCNT\(1),
	datac => \inst7|INCNT\(3),
	datad => \inst7|INCNT\(2),
	combout => \inst7|INCNT~4_combout\);

-- Location: FF_X24_Y20_N11
\inst7|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|INCNT~4_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|INCNT[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|INCNT\(3));

-- Location: LCCOMB_X24_Y20_N24
\inst7|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~0_combout\ = ((!\inst7|INCNT\(2) & (!\inst7|INCNT\(1) & !\inst7|INCNT\(0)))) # (!\inst7|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|INCNT\(3),
	datab => \inst7|INCNT\(2),
	datac => \inst7|INCNT\(1),
	datad => \inst7|INCNT\(0),
	combout => \inst7|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst7|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|READ_CHAR~0_combout\ = (\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & (((\inst7|READ_CHAR~q\)))) # (!\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst7|READ_CHAR~q\ & ((\inst7|LessThan1~0_combout\))) # (!\inst7|READ_CHAR~q\ & (!\mouse_data~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst7|READ_CHAR~q\,
	datad => \inst7|LessThan1~0_combout\,
	combout => \inst7|READ_CHAR~0_combout\);

-- Location: FF_X24_Y20_N31
\inst7|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|READ_CHAR~0_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|READ_CHAR~q\);

-- Location: LCCOMB_X24_Y20_N6
\inst7|PACKET_CHAR1[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR1[0]~4_combout\ = (\inst7|READ_CHAR~q\ & (!\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & (!\sw[1]~input_o\ & !\inst7|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|READ_CHAR~q\,
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \sw[1]~input_o\,
	datad => \inst7|LessThan1~0_combout\,
	combout => \inst7|PACKET_CHAR1[0]~4_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst7|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|iready_set~0_combout\ = (\inst7|mouse_state.WAIT_OUTPUT_READY~q\) # ((\sw[1]~input_o\) # ((\mouse_data~input_o\ & !\inst7|READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse_data~input_o\,
	datac => \inst7|READ_CHAR~q\,
	datad => \sw[1]~input_o\,
	combout => \inst7|iready_set~0_combout\);

-- Location: LCCOMB_X27_Y19_N24
\inst7|iready_set~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|iready_set~1_combout\ = (\inst7|PACKET_CHAR1[0]~4_combout\) # ((\inst7|iready_set~q\ & \inst7|iready_set~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR1[0]~4_combout\,
	datac => \inst7|iready_set~q\,
	datad => \inst7|iready_set~0_combout\,
	combout => \inst7|iready_set~1_combout\);

-- Location: FF_X27_Y19_N25
\inst7|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|iready_set~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|iready_set~q\);

-- Location: LCCOMB_X23_Y19_N10
\inst7|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~0_combout\ = (\inst7|iready_set~q\ & (\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst7|output_ready~q\)))) # (!\inst7|iready_set~q\ & ((\inst7|mouse_state.WAIT_CMD_ACK~q\) # ((\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & 
-- \inst7|output_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|iready_set~q\,
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst7|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst7|output_ready~q\,
	combout => \inst7|Selector4~0_combout\);

-- Location: FF_X23_Y19_N11
\inst7|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Selector4~0_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X27_Y19_N30
\inst7|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|mouse_state.INPUT_PACKETS~0_combout\ = (\inst7|mouse_state.INPUT_PACKETS~q\) # ((\inst7|mouse_state.WAIT_CMD_ACK~q\ & \inst7|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst7|mouse_state.INPUT_PACKETS~q\,
	datad => \inst7|iready_set~q\,
	combout => \inst7|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X27_Y19_N31
\inst7|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|mouse_state.INPUT_PACKETS~0_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X27_Y19_N20
\inst7|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Selector6~0_combout\ = (\inst7|send_data~q\ & ((\inst7|mouse_state.INPUT_PACKETS~q\) # (!\inst7|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst7|mouse_state.INPUT_PACKETS~q\,
	datad => \inst7|send_data~q\,
	combout => \inst7|Selector6~0_combout\);

-- Location: LCCOMB_X27_Y19_N16
\inst7|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Selector6~1_combout\ = (\inst7|mouse_state.LOAD_COMMAND2~q\) # ((\inst7|mouse_state.LOAD_COMMAND~q\) # (\inst7|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|mouse_state.LOAD_COMMAND2~q\,
	datab => \inst7|mouse_state.LOAD_COMMAND~q\,
	datad => \inst7|Selector6~0_combout\,
	combout => \inst7|Selector6~1_combout\);

-- Location: FF_X27_Y19_N17
\inst7|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Selector6~1_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|send_data~q\);

-- Location: LCCOMB_X26_Y19_N24
\inst7|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|MOUSE_DATA_BUF~0_combout\ = (!\inst7|send_char~q\ & (\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst7|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|send_char~q\,
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst7|LessThan0~0_combout\,
	combout => \inst7|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X26_Y19_N29
\inst7|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTOUT\(9));

-- Location: LCCOMB_X26_Y19_N18
\inst7|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTOUT[8]~3_combout\ = !\inst7|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTOUT\(9),
	combout => \inst7|SHIFTOUT[8]~3_combout\);

-- Location: FF_X26_Y19_N19
\inst7|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTOUT[8]~3_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTOUT\(8));

-- Location: LCCOMB_X26_Y19_N20
\inst7|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTOUT[7]~feeder_combout\ = \inst7|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTOUT\(8),
	combout => \inst7|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X26_Y19_N21
\inst7|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTOUT\(7));

-- Location: LCCOMB_X26_Y19_N22
\inst7|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTOUT[6]~feeder_combout\ = \inst7|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTOUT\(7),
	combout => \inst7|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X26_Y19_N23
\inst7|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTOUT\(6));

-- Location: LCCOMB_X26_Y19_N12
\inst7|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTOUT[5]~feeder_combout\ = \inst7|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|SHIFTOUT\(6),
	combout => \inst7|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X26_Y19_N13
\inst7|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTOUT\(5));

-- Location: LCCOMB_X26_Y19_N2
\inst7|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTOUT[4]~2_combout\ = !\inst7|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTOUT\(5),
	combout => \inst7|SHIFTOUT[4]~2_combout\);

-- Location: FF_X26_Y19_N3
\inst7|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTOUT[4]~2_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTOUT\(4));

-- Location: LCCOMB_X26_Y19_N0
\inst7|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTOUT[3]~1_combout\ = !\inst7|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTOUT\(4),
	combout => \inst7|SHIFTOUT[3]~1_combout\);

-- Location: FF_X26_Y19_N1
\inst7|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTOUT[3]~1_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTOUT\(3));

-- Location: LCCOMB_X26_Y19_N26
\inst7|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTOUT[2]~0_combout\ = !\inst7|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTOUT\(3),
	combout => \inst7|SHIFTOUT[2]~0_combout\);

-- Location: FF_X26_Y19_N27
\inst7|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTOUT[2]~0_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTOUT\(2));

-- Location: LCCOMB_X26_Y19_N4
\inst7|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTOUT[1]~feeder_combout\ = \inst7|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|SHIFTOUT\(2),
	combout => \inst7|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X26_Y19_N5
\inst7|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst7|ALT_INV_send_data~q\,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTOUT\(1));

-- Location: FF_X26_Y19_N25
\inst7|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|SHIFTOUT\(1),
	clrn => \inst7|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst7|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X27_Y19_N18
\inst7|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|WideOr4~combout\ = (\inst7|mouse_state.LOAD_COMMAND~q\) # ((\inst7|mouse_state.LOAD_COMMAND2~q\) # (!\inst7|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|mouse_state.LOAD_COMMAND~q\,
	datac => \inst7|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst7|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst7|WideOr4~combout\);

-- Location: LCCOMB_X11_Y16_N4
\inst|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~0_combout\ = \inst|SYNC|h_count\(0) $ (VCC)
-- \inst|SYNC|Add0~1\ = CARRY(\inst|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add0~0_combout\,
	cout => \inst|SYNC|Add0~1\);

-- Location: FF_X11_Y16_N5
\inst|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(0));

-- Location: LCCOMB_X11_Y16_N6
\inst|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~2_combout\ = (\inst|SYNC|h_count\(1) & (!\inst|SYNC|Add0~1\)) # (!\inst|SYNC|h_count\(1) & ((\inst|SYNC|Add0~1\) # (GND)))
-- \inst|SYNC|Add0~3\ = CARRY((!\inst|SYNC|Add0~1\) # (!\inst|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add0~1\,
	combout => \inst|SYNC|Add0~2_combout\,
	cout => \inst|SYNC|Add0~3\);

-- Location: FF_X11_Y16_N7
\inst|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(1));

-- Location: LCCOMB_X11_Y16_N8
\inst|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~4_combout\ = (\inst|SYNC|h_count\(2) & (\inst|SYNC|Add0~3\ $ (GND))) # (!\inst|SYNC|h_count\(2) & (!\inst|SYNC|Add0~3\ & VCC))
-- \inst|SYNC|Add0~5\ = CARRY((\inst|SYNC|h_count\(2) & !\inst|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add0~3\,
	combout => \inst|SYNC|Add0~4_combout\,
	cout => \inst|SYNC|Add0~5\);

-- Location: FF_X11_Y16_N9
\inst|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(2));

-- Location: LCCOMB_X11_Y16_N10
\inst|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~6_combout\ = (\inst|SYNC|h_count\(3) & (!\inst|SYNC|Add0~5\)) # (!\inst|SYNC|h_count\(3) & ((\inst|SYNC|Add0~5\) # (GND)))
-- \inst|SYNC|Add0~7\ = CARRY((!\inst|SYNC|Add0~5\) # (!\inst|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add0~5\,
	combout => \inst|SYNC|Add0~6_combout\,
	cout => \inst|SYNC|Add0~7\);

-- Location: FF_X11_Y16_N11
\inst|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(3));

-- Location: LCCOMB_X11_Y16_N12
\inst|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~8_combout\ = (\inst|SYNC|h_count\(4) & (\inst|SYNC|Add0~7\ $ (GND))) # (!\inst|SYNC|h_count\(4) & (!\inst|SYNC|Add0~7\ & VCC))
-- \inst|SYNC|Add0~9\ = CARRY((\inst|SYNC|h_count\(4) & !\inst|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add0~7\,
	combout => \inst|SYNC|Add0~8_combout\,
	cout => \inst|SYNC|Add0~9\);

-- Location: FF_X11_Y16_N13
\inst|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(4));

-- Location: LCCOMB_X11_Y16_N14
\inst|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~10_combout\ = (\inst|SYNC|h_count\(5) & (!\inst|SYNC|Add0~9\)) # (!\inst|SYNC|h_count\(5) & ((\inst|SYNC|Add0~9\) # (GND)))
-- \inst|SYNC|Add0~11\ = CARRY((!\inst|SYNC|Add0~9\) # (!\inst|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add0~9\,
	combout => \inst|SYNC|Add0~10_combout\,
	cout => \inst|SYNC|Add0~11\);

-- Location: LCCOMB_X11_Y16_N16
\inst|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~12_combout\ = (\inst|SYNC|h_count\(6) & (\inst|SYNC|Add0~11\ $ (GND))) # (!\inst|SYNC|h_count\(6) & (!\inst|SYNC|Add0~11\ & VCC))
-- \inst|SYNC|Add0~13\ = CARRY((\inst|SYNC|h_count\(6) & !\inst|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add0~11\,
	combout => \inst|SYNC|Add0~12_combout\,
	cout => \inst|SYNC|Add0~13\);

-- Location: FF_X11_Y16_N17
\inst|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(6));

-- Location: LCCOMB_X11_Y16_N28
\inst|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~0_combout\ = (\inst|SYNC|h_count\(3) & (\inst|SYNC|h_count\(4) & (\inst|SYNC|h_count\(0) & \inst|SYNC|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(3),
	datab => \inst|SYNC|h_count\(4),
	datac => \inst|SYNC|h_count\(0),
	datad => \inst|SYNC|h_count\(1),
	combout => \inst|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y16_N18
\inst|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~14_combout\ = (\inst|SYNC|h_count\(7) & (!\inst|SYNC|Add0~13\)) # (!\inst|SYNC|h_count\(7) & ((\inst|SYNC|Add0~13\) # (GND)))
-- \inst|SYNC|Add0~15\ = CARRY((!\inst|SYNC|Add0~13\) # (!\inst|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add0~13\,
	combout => \inst|SYNC|Add0~14_combout\,
	cout => \inst|SYNC|Add0~15\);

-- Location: FF_X11_Y16_N19
\inst|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(7));

-- Location: LCCOMB_X11_Y16_N20
\inst|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~16_combout\ = (\inst|SYNC|h_count\(8) & (\inst|SYNC|Add0~15\ $ (GND))) # (!\inst|SYNC|h_count\(8) & (!\inst|SYNC|Add0~15\ & VCC))
-- \inst|SYNC|Add0~17\ = CARRY((\inst|SYNC|h_count\(8) & !\inst|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add0~15\,
	combout => \inst|SYNC|Add0~16_combout\,
	cout => \inst|SYNC|Add0~17\);

-- Location: LCCOMB_X14_Y16_N8
\inst|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~2_combout\ = (!\inst|SYNC|h_count\(5) & (\inst|SYNC|h_count\(8) & (\inst|SYNC|h_count\(2) & !\inst|SYNC|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(5),
	datab => \inst|SYNC|h_count\(8),
	datac => \inst|SYNC|h_count\(2),
	datad => \inst|SYNC|h_count\(7),
	combout => \inst|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y16_N24
\inst|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~0_combout\ = (\inst|SYNC|Add0~16_combout\ & (((!\inst|SYNC|Equal0~2_combout\) # (!\inst|SYNC|Equal0~0_combout\)) # (!\inst|SYNC|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~1_combout\,
	datab => \inst|SYNC|Equal0~0_combout\,
	datac => \inst|SYNC|Add0~16_combout\,
	datad => \inst|SYNC|Equal0~2_combout\,
	combout => \inst|SYNC|h_count~0_combout\);

-- Location: FF_X11_Y16_N25
\inst|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(8));

-- Location: LCCOMB_X11_Y16_N22
\inst|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~18_combout\ = \inst|SYNC|h_count\(9) $ (\inst|SYNC|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(9),
	cin => \inst|SYNC|Add0~17\,
	combout => \inst|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X11_Y16_N26
\inst|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~1_combout\ = (\inst|SYNC|Add0~18_combout\ & (((!\inst|SYNC|Equal0~2_combout\) # (!\inst|SYNC|Equal0~0_combout\)) # (!\inst|SYNC|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~1_combout\,
	datab => \inst|SYNC|Equal0~0_combout\,
	datac => \inst|SYNC|Add0~18_combout\,
	datad => \inst|SYNC|Equal0~2_combout\,
	combout => \inst|SYNC|h_count~1_combout\);

-- Location: FF_X11_Y16_N27
\inst|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(9));

-- Location: LCCOMB_X11_Y17_N8
\inst|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~1_combout\ = (!\inst|SYNC|h_count\(6) & \inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|h_count\(6),
	datad => \inst|SYNC|h_count\(9),
	combout => \inst|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y16_N0
\inst|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~2_combout\ = (\inst|SYNC|Add0~10_combout\ & (((!\inst|SYNC|Equal0~2_combout\) # (!\inst|SYNC|Equal0~0_combout\)) # (!\inst|SYNC|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~1_combout\,
	datab => \inst|SYNC|Equal0~0_combout\,
	datac => \inst|SYNC|Add0~10_combout\,
	datad => \inst|SYNC|Equal0~2_combout\,
	combout => \inst|SYNC|h_count~2_combout\);

-- Location: FF_X11_Y16_N1
\inst|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(5));

-- Location: LCCOMB_X11_Y16_N30
\inst|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~1_combout\ = (\inst|SYNC|h_count\(3)) # ((!\inst|SYNC|h_count\(5) & (\inst|SYNC|h_count\(0) & \inst|SYNC|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(3),
	datab => \inst|SYNC|h_count\(5),
	datac => \inst|SYNC|h_count\(0),
	datad => \inst|SYNC|h_count\(1),
	combout => \inst|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X12_Y16_N16
\inst|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~2_combout\ = (\inst|SYNC|h_count\(4) & ((\inst|SYNC|process_0~1_combout\) # (\inst|SYNC|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(4),
	datab => \inst|SYNC|process_0~1_combout\,
	datad => \inst|SYNC|h_count\(2),
	combout => \inst|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X14_Y16_N0
\inst|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~0_combout\ = (!\inst|SYNC|h_count\(8) & (\inst|SYNC|h_count\(9) & \inst|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(8),
	datac => \inst|SYNC|h_count\(9),
	datad => \inst|SYNC|h_count\(7),
	combout => \inst|SYNC|process_0~0_combout\);

-- Location: LCCOMB_X14_Y16_N26
\inst|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~3_combout\ = ((\inst|SYNC|h_count\(5) & (\inst|SYNC|process_0~2_combout\ & \inst|SYNC|h_count\(6))) # (!\inst|SYNC|h_count\(5) & (!\inst|SYNC|process_0~2_combout\ & !\inst|SYNC|h_count\(6)))) # (!\inst|SYNC|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(5),
	datab => \inst|SYNC|process_0~2_combout\,
	datac => \inst|SYNC|h_count\(6),
	datad => \inst|SYNC|process_0~0_combout\,
	combout => \inst|SYNC|process_0~3_combout\);

-- Location: FF_X14_Y16_N27
\inst|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync~q\);

-- Location: FF_X14_Y16_N17
\inst|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync_out~q\);

-- Location: LCCOMB_X14_Y16_N24
\inst|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal1~0_combout\ = ((\inst|SYNC|h_count\(8)) # ((\inst|SYNC|h_count\(2)) # (!\inst|SYNC|h_count\(7)))) # (!\inst|SYNC|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(5),
	datab => \inst|SYNC|h_count\(8),
	datac => \inst|SYNC|h_count\(2),
	datad => \inst|SYNC|h_count\(7),
	combout => \inst|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y16_N18
\inst|SYNC|v_count[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[8]~1_combout\ = (\inst|SYNC|process_0~11_combout\ & (((\inst|SYNC|Equal1~0_combout\) # (!\inst|SYNC|Equal0~0_combout\)) # (!\inst|SYNC|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~1_combout\,
	datab => \inst|SYNC|Equal1~0_combout\,
	datac => \inst|SYNC|Equal0~0_combout\,
	datad => \inst|SYNC|process_0~11_combout\,
	combout => \inst|SYNC|v_count[8]~1_combout\);

-- Location: LCCOMB_X14_Y15_N8
\inst|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~0_combout\ = \inst|SYNC|v_count\(0) $ (VCC)
-- \inst|SYNC|Add1~1\ = CARRY(\inst|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add1~0_combout\,
	cout => \inst|SYNC|Add1~1\);

-- Location: LCCOMB_X14_Y16_N14
\inst|SYNC|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~0_combout\ = (\inst|SYNC|Add1~0_combout\ & \inst|SYNC|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~0_combout\,
	datad => \inst|SYNC|process_0~11_combout\,
	combout => \inst|SYNC|v_count~0_combout\);

-- Location: FF_X14_Y16_N15
\inst|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count~0_combout\,
	ena => \inst|SYNC|ALT_INV_v_count[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(0));

-- Location: LCCOMB_X14_Y15_N10
\inst|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~2_combout\ = (\inst|SYNC|v_count\(1) & (!\inst|SYNC|Add1~1\)) # (!\inst|SYNC|v_count\(1) & ((\inst|SYNC|Add1~1\) # (GND)))
-- \inst|SYNC|Add1~3\ = CARRY((!\inst|SYNC|Add1~1\) # (!\inst|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add1~1\,
	combout => \inst|SYNC|Add1~2_combout\,
	cout => \inst|SYNC|Add1~3\);

-- Location: LCCOMB_X14_Y16_N28
\inst|SYNC|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~2_combout\ = (\inst|SYNC|Add1~2_combout\ & \inst|SYNC|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~2_combout\,
	datad => \inst|SYNC|process_0~11_combout\,
	combout => \inst|SYNC|v_count~2_combout\);

-- Location: FF_X14_Y16_N29
\inst|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count~2_combout\,
	ena => \inst|SYNC|ALT_INV_v_count[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(1));

-- Location: LCCOMB_X14_Y15_N12
\inst|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~4_combout\ = (\inst|SYNC|v_count\(2) & (\inst|SYNC|Add1~3\ $ (GND))) # (!\inst|SYNC|v_count\(2) & (!\inst|SYNC|Add1~3\ & VCC))
-- \inst|SYNC|Add1~5\ = CARRY((\inst|SYNC|v_count\(2) & !\inst|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add1~3\,
	combout => \inst|SYNC|Add1~4_combout\,
	cout => \inst|SYNC|Add1~5\);

-- Location: LCCOMB_X14_Y15_N28
\inst|SYNC|v_count[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[2]~4_combout\ = (\inst|SYNC|v_count[7]~3_combout\ & ((\inst|SYNC|Add1~4_combout\) # ((\inst|SYNC|v_count[8]~1_combout\ & \inst|SYNC|v_count\(2))))) # (!\inst|SYNC|v_count[7]~3_combout\ & (\inst|SYNC|v_count[8]~1_combout\ & 
-- (\inst|SYNC|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[7]~3_combout\,
	datab => \inst|SYNC|v_count[8]~1_combout\,
	datac => \inst|SYNC|v_count\(2),
	datad => \inst|SYNC|Add1~4_combout\,
	combout => \inst|SYNC|v_count[2]~4_combout\);

-- Location: FF_X14_Y15_N29
\inst|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(2));

-- Location: LCCOMB_X14_Y15_N14
\inst|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~6_combout\ = (\inst|SYNC|v_count\(3) & (!\inst|SYNC|Add1~5\)) # (!\inst|SYNC|v_count\(3) & ((\inst|SYNC|Add1~5\) # (GND)))
-- \inst|SYNC|Add1~7\ = CARRY((!\inst|SYNC|Add1~5\) # (!\inst|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add1~5\,
	combout => \inst|SYNC|Add1~6_combout\,
	cout => \inst|SYNC|Add1~7\);

-- Location: LCCOMB_X14_Y15_N30
\inst|SYNC|v_count[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[3]~5_combout\ = (\inst|SYNC|v_count[7]~3_combout\ & ((\inst|SYNC|Add1~6_combout\) # ((\inst|SYNC|v_count[8]~1_combout\ & \inst|SYNC|v_count\(3))))) # (!\inst|SYNC|v_count[7]~3_combout\ & (\inst|SYNC|v_count[8]~1_combout\ & 
-- (\inst|SYNC|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[7]~3_combout\,
	datab => \inst|SYNC|v_count[8]~1_combout\,
	datac => \inst|SYNC|v_count\(3),
	datad => \inst|SYNC|Add1~6_combout\,
	combout => \inst|SYNC|v_count[3]~5_combout\);

-- Location: FF_X14_Y15_N31
\inst|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(3));

-- Location: LCCOMB_X14_Y15_N16
\inst|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~8_combout\ = (\inst|SYNC|v_count\(4) & (\inst|SYNC|Add1~7\ $ (GND))) # (!\inst|SYNC|v_count\(4) & (!\inst|SYNC|Add1~7\ & VCC))
-- \inst|SYNC|Add1~9\ = CARRY((\inst|SYNC|v_count\(4) & !\inst|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add1~7\,
	combout => \inst|SYNC|Add1~8_combout\,
	cout => \inst|SYNC|Add1~9\);

-- Location: LCCOMB_X14_Y15_N4
\inst|SYNC|v_count[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[4]~6_combout\ = (\inst|SYNC|v_count[7]~3_combout\ & ((\inst|SYNC|Add1~8_combout\) # ((\inst|SYNC|v_count[8]~1_combout\ & \inst|SYNC|v_count\(4))))) # (!\inst|SYNC|v_count[7]~3_combout\ & (\inst|SYNC|v_count[8]~1_combout\ & 
-- (\inst|SYNC|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[7]~3_combout\,
	datab => \inst|SYNC|v_count[8]~1_combout\,
	datac => \inst|SYNC|v_count\(4),
	datad => \inst|SYNC|Add1~8_combout\,
	combout => \inst|SYNC|v_count[4]~6_combout\);

-- Location: FF_X14_Y15_N5
\inst|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(4));

-- Location: LCCOMB_X14_Y15_N18
\inst|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~10_combout\ = (\inst|SYNC|v_count\(5) & (!\inst|SYNC|Add1~9\)) # (!\inst|SYNC|v_count\(5) & ((\inst|SYNC|Add1~9\) # (GND)))
-- \inst|SYNC|Add1~11\ = CARRY((!\inst|SYNC|Add1~9\) # (!\inst|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add1~9\,
	combout => \inst|SYNC|Add1~10_combout\,
	cout => \inst|SYNC|Add1~11\);

-- Location: LCCOMB_X14_Y16_N4
\inst|SYNC|v_count[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[5]~8_combout\ = (\inst|SYNC|v_count[7]~3_combout\ & ((\inst|SYNC|Add1~10_combout\) # ((\inst|SYNC|v_count\(5) & \inst|SYNC|v_count[8]~1_combout\)))) # (!\inst|SYNC|v_count[7]~3_combout\ & (((\inst|SYNC|v_count\(5) & 
-- \inst|SYNC|v_count[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[7]~3_combout\,
	datab => \inst|SYNC|Add1~10_combout\,
	datac => \inst|SYNC|v_count\(5),
	datad => \inst|SYNC|v_count[8]~1_combout\,
	combout => \inst|SYNC|v_count[5]~8_combout\);

-- Location: FF_X14_Y16_N5
\inst|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(5));

-- Location: LCCOMB_X14_Y15_N20
\inst|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~12_combout\ = (\inst|SYNC|v_count\(6) & (\inst|SYNC|Add1~11\ $ (GND))) # (!\inst|SYNC|v_count\(6) & (!\inst|SYNC|Add1~11\ & VCC))
-- \inst|SYNC|Add1~13\ = CARRY((\inst|SYNC|v_count\(6) & !\inst|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add1~11\,
	combout => \inst|SYNC|Add1~12_combout\,
	cout => \inst|SYNC|Add1~13\);

-- Location: LCCOMB_X14_Y15_N6
\inst|SYNC|v_count[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[6]~9_combout\ = (\inst|SYNC|v_count[7]~3_combout\ & ((\inst|SYNC|Add1~12_combout\) # ((\inst|SYNC|v_count[8]~1_combout\ & \inst|SYNC|v_count\(6))))) # (!\inst|SYNC|v_count[7]~3_combout\ & (\inst|SYNC|v_count[8]~1_combout\ & 
-- (\inst|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[7]~3_combout\,
	datab => \inst|SYNC|v_count[8]~1_combout\,
	datac => \inst|SYNC|v_count\(6),
	datad => \inst|SYNC|Add1~12_combout\,
	combout => \inst|SYNC|v_count[6]~9_combout\);

-- Location: FF_X14_Y15_N7
\inst|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(6));

-- Location: LCCOMB_X14_Y15_N22
\inst|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~14_combout\ = (\inst|SYNC|v_count\(7) & (!\inst|SYNC|Add1~13\)) # (!\inst|SYNC|v_count\(7) & ((\inst|SYNC|Add1~13\) # (GND)))
-- \inst|SYNC|Add1~15\ = CARRY((!\inst|SYNC|Add1~13\) # (!\inst|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add1~13\,
	combout => \inst|SYNC|Add1~14_combout\,
	cout => \inst|SYNC|Add1~15\);

-- Location: LCCOMB_X14_Y15_N0
\inst|SYNC|v_count[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[7]~10_combout\ = (\inst|SYNC|v_count[7]~3_combout\ & ((\inst|SYNC|Add1~14_combout\) # ((\inst|SYNC|v_count[8]~1_combout\ & \inst|SYNC|v_count\(7))))) # (!\inst|SYNC|v_count[7]~3_combout\ & (\inst|SYNC|v_count[8]~1_combout\ & 
-- (\inst|SYNC|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[7]~3_combout\,
	datab => \inst|SYNC|v_count[8]~1_combout\,
	datac => \inst|SYNC|v_count\(7),
	datad => \inst|SYNC|Add1~14_combout\,
	combout => \inst|SYNC|v_count[7]~10_combout\);

-- Location: FF_X14_Y15_N1
\inst|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(7));

-- Location: LCCOMB_X14_Y15_N24
\inst|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~16_combout\ = (\inst|SYNC|v_count\(8) & (\inst|SYNC|Add1~15\ $ (GND))) # (!\inst|SYNC|v_count\(8) & (!\inst|SYNC|Add1~15\ & VCC))
-- \inst|SYNC|Add1~17\ = CARRY((\inst|SYNC|v_count\(8) & !\inst|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add1~15\,
	combout => \inst|SYNC|Add1~16_combout\,
	cout => \inst|SYNC|Add1~17\);

-- Location: LCCOMB_X14_Y15_N26
\inst|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~18_combout\ = \inst|SYNC|v_count\(9) $ (\inst|SYNC|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(9),
	cin => \inst|SYNC|Add1~17\,
	combout => \inst|SYNC|Add1~18_combout\);

-- Location: LCCOMB_X14_Y16_N22
\inst|SYNC|v_count[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[9]~7_combout\ = (\inst|SYNC|Add1~18_combout\ & ((\inst|SYNC|v_count[7]~3_combout\) # ((\inst|SYNC|v_count[8]~1_combout\ & \inst|SYNC|v_count\(9))))) # (!\inst|SYNC|Add1~18_combout\ & (\inst|SYNC|v_count[8]~1_combout\ & 
-- (\inst|SYNC|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~18_combout\,
	datab => \inst|SYNC|v_count[8]~1_combout\,
	datac => \inst|SYNC|v_count\(9),
	datad => \inst|SYNC|v_count[7]~3_combout\,
	combout => \inst|SYNC|v_count[9]~7_combout\);

-- Location: FF_X14_Y16_N23
\inst|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(9));

-- Location: LCCOMB_X14_Y17_N30
\inst|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~9_combout\ = (!\inst|SYNC|v_count\(4) & (!\inst|SYNC|v_count\(5) & ((!\inst|SYNC|v_count\(3)) # (!\inst|SYNC|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(2),
	datab => \inst|SYNC|v_count\(4),
	datac => \inst|SYNC|v_count\(5),
	datad => \inst|SYNC|v_count\(3),
	combout => \inst|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X14_Y17_N28
\inst|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~10_combout\ = (\inst|SYNC|process_0~9_combout\ & (!\inst|SYNC|v_count\(7) & (!\inst|SYNC|v_count\(8) & !\inst|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~9_combout\,
	datab => \inst|SYNC|v_count\(7),
	datac => \inst|SYNC|v_count\(8),
	datad => \inst|SYNC|v_count\(6),
	combout => \inst|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X11_Y16_N2
\inst|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~6_combout\ = ((!\inst|SYNC|h_count\(2) & ((!\inst|SYNC|h_count\(1)) # (!\inst|SYNC|h_count\(0))))) # (!\inst|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(3),
	datab => \inst|SYNC|h_count\(2),
	datac => \inst|SYNC|h_count\(0),
	datad => \inst|SYNC|h_count\(1),
	combout => \inst|SYNC|process_0~6_combout\);

-- Location: LCCOMB_X12_Y16_N30
\inst|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~7_combout\ = (!\inst|SYNC|h_count\(6) & (((\inst|SYNC|process_0~6_combout\) # (!\inst|SYNC|h_count\(4))) # (!\inst|SYNC|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(5),
	datab => \inst|SYNC|process_0~6_combout\,
	datac => \inst|SYNC|h_count\(6),
	datad => \inst|SYNC|h_count\(4),
	combout => \inst|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X14_Y16_N16
\inst|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~8_combout\ = (!\inst|SYNC|h_count\(8) & ((\inst|SYNC|process_0~7_combout\) # (!\inst|SYNC|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(7),
	datab => \inst|SYNC|h_count\(8),
	datad => \inst|SYNC|process_0~7_combout\,
	combout => \inst|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X14_Y16_N2
\inst|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~11_combout\ = (((\inst|SYNC|process_0~10_combout\) # (\inst|SYNC|process_0~8_combout\)) # (!\inst|SYNC|v_count\(9))) # (!\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(9),
	datab => \inst|SYNC|v_count\(9),
	datac => \inst|SYNC|process_0~10_combout\,
	datad => \inst|SYNC|process_0~8_combout\,
	combout => \inst|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X14_Y16_N12
\inst|SYNC|v_count[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[7]~3_combout\ = (\inst|SYNC|Equal0~1_combout\ & (!\inst|SYNC|Equal1~0_combout\ & (\inst|SYNC|Equal0~0_combout\ & \inst|SYNC|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~1_combout\,
	datab => \inst|SYNC|Equal1~0_combout\,
	datac => \inst|SYNC|Equal0~0_combout\,
	datad => \inst|SYNC|process_0~11_combout\,
	combout => \inst|SYNC|v_count[7]~3_combout\);

-- Location: LCCOMB_X14_Y15_N2
\inst|SYNC|v_count[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[8]~11_combout\ = (\inst|SYNC|v_count[7]~3_combout\ & ((\inst|SYNC|Add1~16_combout\) # ((\inst|SYNC|v_count[8]~1_combout\ & \inst|SYNC|v_count\(8))))) # (!\inst|SYNC|v_count[7]~3_combout\ & (\inst|SYNC|v_count[8]~1_combout\ & 
-- (\inst|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[7]~3_combout\,
	datab => \inst|SYNC|v_count[8]~1_combout\,
	datac => \inst|SYNC|v_count\(8),
	datad => \inst|SYNC|Add1~16_combout\,
	combout => \inst|SYNC|v_count[8]~11_combout\);

-- Location: FF_X14_Y15_N3
\inst|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(8));

-- Location: LCCOMB_X14_Y17_N26
\inst|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~0_combout\ = (\inst|SYNC|v_count\(8) & (\inst|SYNC|v_count\(5) & (\inst|SYNC|v_count\(7) & \inst|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(8),
	datab => \inst|SYNC|v_count\(5),
	datac => \inst|SYNC|v_count\(7),
	datad => \inst|SYNC|v_count\(6),
	combout => \inst|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X14_Y18_N4
\inst|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~4_combout\ = ((\inst|SYNC|v_count\(0) $ (!\inst|SYNC|v_count\(1))) # (!\inst|SYNC|v_count\(3))) # (!\inst|SYNC|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(2),
	datab => \inst|SYNC|v_count\(0),
	datac => \inst|SYNC|v_count\(1),
	datad => \inst|SYNC|v_count\(3),
	combout => \inst|SYNC|process_0~4_combout\);

-- Location: LCCOMB_X14_Y17_N8
\inst|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~5_combout\ = ((\inst|SYNC|v_count\(9)) # ((\inst|SYNC|v_count\(4)) # (\inst|SYNC|process_0~4_combout\))) # (!\inst|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|LessThan7~0_combout\,
	datab => \inst|SYNC|v_count\(9),
	datac => \inst|SYNC|v_count\(4),
	datad => \inst|SYNC|process_0~4_combout\,
	combout => \inst|SYNC|process_0~5_combout\);

-- Location: FF_X14_Y17_N9
\inst|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync~q\);

-- Location: FF_X16_Y19_N23
\inst|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X14_Y16_N10
\inst|SYNC|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan6~0_combout\ = (\inst|SYNC|h_count\(9) & ((\inst|SYNC|h_count\(8)) # (\inst|SYNC|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(8),
	datac => \inst|SYNC|h_count\(9),
	datad => \inst|SYNC|h_count\(7),
	combout => \inst|SYNC|LessThan6~0_combout\);

-- Location: LCCOMB_X14_Y17_N10
\inst|SYNC|video_on_h[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|video_on_h[0]~0_combout\ = !\inst|SYNC|LessThan6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|LessThan6~0_combout\,
	combout => \inst|SYNC|video_on_h[0]~0_combout\);

-- Location: FF_X14_Y17_N13
\inst|SYNC|video_on_h[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|video_on_h[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_h\(0));

-- Location: IOIBUF_X0_Y24_N1
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\bt1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\bt0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt0,
	o => \bt0~input_o\);

-- Location: LCCOMB_X10_Y16_N12
\inst9|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector0~0_combout\ = (\inst9|State.GAMEOVER~q\ & (\bt1~input_o\ & ((\inst9|State.MENU~q\) # (!\bt0~input_o\)))) # (!\inst9|State.GAMEOVER~q\ & (((\inst9|State.MENU~q\) # (!\bt0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|State.GAMEOVER~q\,
	datab => \bt1~input_o\,
	datac => \inst9|State.MENU~q\,
	datad => \bt0~input_o\,
	combout => \inst9|Selector0~0_combout\);

-- Location: FF_X10_Y16_N13
\inst9|State.MENU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst9|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|State.MENU~q\);

-- Location: LCCOMB_X10_Y16_N8
\inst9|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector3~3_combout\ = (\inst9|State.GAMEOVER~q\ & !\bt1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|State.GAMEOVER~q\,
	datad => \bt1~input_o\,
	combout => \inst9|Selector3~3_combout\);

-- Location: LCCOMB_X10_Y16_N18
\inst9|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector2~0_combout\ = (\sw[0]~input_o\ & (!\inst9|Selector3~3_combout\ & ((\inst9|State.PAUSE~q\) # (\inst9|State.PLAY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \inst9|Selector3~3_combout\,
	datac => \inst9|State.PAUSE~q\,
	datad => \inst9|State.PLAY~q\,
	combout => \inst9|Selector2~0_combout\);

-- Location: FF_X10_Y16_N19
\inst9|State.PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst9|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|State.PAUSE~q\);

-- Location: LCCOMB_X10_Y16_N30
\inst9|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector3~2_combout\ = (\inst9|State.PAUSE~q\ & (((!\sw[0]~input_o\)))) # (!\inst9|State.PAUSE~q\ & (!\inst9|State.MENU~q\ & (!\bt0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|State.MENU~q\,
	datab => \bt0~input_o\,
	datac => \sw[0]~input_o\,
	datad => \inst9|State.PAUSE~q\,
	combout => \inst9|Selector3~2_combout\);

-- Location: CLKCTRL_G11
\inst|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y16_N30
\inst|life_temp[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|life_temp[0]~1_combout\ = !\inst|life_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|life_temp\(0),
	combout => \inst|life_temp[0]~1_combout\);

-- Location: LCCOMB_X21_Y17_N20
\inst|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~16_combout\ = (\inst|Ball_Y_motion\(8) & (\inst|Add4~15\ $ (GND))) # (!\inst|Ball_Y_motion\(8) & (!\inst|Add4~15\ & VCC))
-- \inst|Add4~17\ = CARRY((\inst|Ball_Y_motion\(8) & !\inst|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(8),
	datad => VCC,
	cin => \inst|Add4~15\,
	combout => \inst|Add4~16_combout\,
	cout => \inst|Add4~17\);

-- Location: LCCOMB_X21_Y17_N22
\inst|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~18_combout\ = \inst|Add4~17\ $ (\inst|Ball_Y_motion\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ball_Y_motion\(9),
	cin => \inst|Add4~17\,
	combout => \inst|Add4~18_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst7|PACKET_COUNT[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_COUNT[1]~0_combout\ = (!\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst7|READ_CHAR~q\ & !\inst7|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst7|READ_CHAR~q\,
	datad => \inst7|LessThan1~0_combout\,
	combout => \inst7|PACKET_COUNT[1]~0_combout\);

-- Location: FF_X22_Y20_N31
\inst7|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR1[0]~2_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	ena => \inst7|PACKET_COUNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_COUNT\(0));

-- Location: LCCOMB_X22_Y20_N24
\inst7|new_cursor_row[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[2]~24_combout\ = \inst7|PACKET_COUNT\(0) $ (\inst7|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|PACKET_COUNT\(0),
	datad => \inst7|PACKET_COUNT\(1),
	combout => \inst7|new_cursor_row[2]~24_combout\);

-- Location: FF_X22_Y20_N1
\inst7|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|new_cursor_row[2]~24_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	sload => VCC,
	ena => \inst7|PACKET_COUNT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_COUNT\(1));

-- Location: LCCOMB_X22_Y20_N30
\inst7|PACKET_CHAR1[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR1[0]~2_combout\ = (\inst7|PACKET_COUNT\(1)) # (!\inst7|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_COUNT\(1),
	datac => \inst7|PACKET_COUNT\(0),
	combout => \inst7|PACKET_CHAR1[0]~2_combout\);

-- Location: LCCOMB_X24_Y21_N2
\inst7|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst7|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst7|SHIFTIN[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTIN[7]~2_combout\ = (\inst7|READ_CHAR~q\ & (!\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & (!\sw[1]~input_o\ & \inst7|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|READ_CHAR~q\,
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \sw[1]~input_o\,
	datad => \inst7|LessThan1~0_combout\,
	combout => \inst7|SHIFTIN[7]~2_combout\);

-- Location: FF_X24_Y21_N3
\inst7|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTIN[8]~feeder_combout\,
	ena => \inst7|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTIN\(8));

-- Location: LCCOMB_X24_Y21_N0
\inst7|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTIN[7]~feeder_combout\ = \inst7|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(8),
	combout => \inst7|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X24_Y21_N1
\inst7|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTIN[7]~feeder_combout\,
	ena => \inst7|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTIN\(7));

-- Location: LCCOMB_X24_Y19_N12
\inst7|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTIN[6]~feeder_combout\ = \inst7|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|SHIFTIN\(7),
	combout => \inst7|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X24_Y19_N13
\inst7|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTIN[6]~feeder_combout\,
	ena => \inst7|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTIN\(6));

-- Location: LCCOMB_X24_Y19_N26
\inst7|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTIN[5]~feeder_combout\ = \inst7|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(6),
	combout => \inst7|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X24_Y19_N27
\inst7|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTIN[5]~feeder_combout\,
	ena => \inst7|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTIN\(5));

-- Location: FF_X24_Y19_N29
\inst7|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|SHIFTIN\(5),
	sload => VCC,
	ena => \inst7|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTIN\(4));

-- Location: LCCOMB_X24_Y19_N22
\inst7|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTIN[3]~feeder_combout\ = \inst7|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(4),
	combout => \inst7|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X24_Y19_N23
\inst7|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTIN[3]~feeder_combout\,
	ena => \inst7|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTIN\(3));

-- Location: FF_X24_Y19_N21
\inst7|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|SHIFTIN\(3),
	sload => VCC,
	ena => \inst7|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTIN\(2));

-- Location: LCCOMB_X24_Y19_N30
\inst7|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|SHIFTIN[1]~feeder_combout\ = \inst7|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(2),
	combout => \inst7|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X24_Y19_N31
\inst7|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|SHIFTIN[1]~feeder_combout\,
	ena => \inst7|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTIN\(1));

-- Location: FF_X24_Y19_N9
\inst7|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|SHIFTIN\(1),
	sload => VCC,
	ena => \inst7|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|SHIFTIN\(0));

-- Location: LCCOMB_X24_Y20_N22
\inst7|PACKET_CHAR1[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR1[0]~3_combout\ = (\inst7|PACKET_CHAR1[0]~4_combout\ & ((\inst7|PACKET_CHAR1[0]~2_combout\ & (\inst7|PACKET_CHAR1\(0))) # (!\inst7|PACKET_CHAR1[0]~2_combout\ & ((\inst7|SHIFTIN\(0)))))) # (!\inst7|PACKET_CHAR1[0]~4_combout\ & 
-- (((\inst7|PACKET_CHAR1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR1[0]~4_combout\,
	datab => \inst7|PACKET_CHAR1[0]~2_combout\,
	datac => \inst7|PACKET_CHAR1\(0),
	datad => \inst7|SHIFTIN\(0),
	combout => \inst7|PACKET_CHAR1[0]~3_combout\);

-- Location: FF_X24_Y20_N23
\inst7|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR1\(0));

-- Location: LCCOMB_X22_Y20_N6
\inst7|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal4~0_combout\ = (\inst7|PACKET_COUNT\(0) & \inst7|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|PACKET_COUNT\(0),
	datad => \inst7|PACKET_COUNT\(1),
	combout => \inst7|Equal4~0_combout\);

-- Location: LCCOMB_X21_Y20_N20
\inst7|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|left_button~0_combout\ = (\inst7|Equal4~0_combout\ & ((\inst7|PACKET_COUNT[1]~0_combout\ & (\inst7|PACKET_CHAR1\(0))) # (!\inst7|PACKET_COUNT[1]~0_combout\ & ((\inst7|left_button~q\))))) # (!\inst7|Equal4~0_combout\ & (((\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR1\(0),
	datab => \inst7|Equal4~0_combout\,
	datac => \inst7|left_button~q\,
	datad => \inst7|PACKET_COUNT[1]~0_combout\,
	combout => \inst7|left_button~0_combout\);

-- Location: FF_X21_Y20_N21
\inst7|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|left_button~0_combout\,
	clrn => \ALT_INV_sw[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|left_button~q\);

-- Location: LCCOMB_X20_Y18_N10
\inst|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~0_combout\ = (\inst|Ball_Y_pos\(0) & (\inst|Ball_Y_motion\(0) $ (VCC))) # (!\inst|Ball_Y_pos\(0) & (\inst|Ball_Y_motion\(0) & VCC))
-- \inst|Add9~1\ = CARRY((\inst|Ball_Y_pos\(0) & \inst|Ball_Y_motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(0),
	datab => \inst|Ball_Y_motion\(0),
	datad => VCC,
	combout => \inst|Add9~0_combout\,
	cout => \inst|Add9~1\);

-- Location: LCCOMB_X10_Y16_N6
\inst9|STATE_OUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|STATE_OUT[2]~0_combout\ = (!\sw[0]~input_o\ & \inst9|State.PLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \inst9|State.PLAY~q\,
	combout => \inst9|STATE_OUT[2]~0_combout\);

-- Location: LCCOMB_X10_Y16_N26
\inst9|STATE_OUT[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|STATE_OUT[2]~2_combout\ = (\inst9|State.PAUSE~q\ & (((\sw[0]~input_o\)))) # (!\inst9|State.PAUSE~q\ & (!\inst9|State.MENU~q\ & (\bt0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|State.MENU~q\,
	datab => \bt0~input_o\,
	datac => \sw[0]~input_o\,
	datad => \inst9|State.PAUSE~q\,
	combout => \inst9|STATE_OUT[2]~2_combout\);

-- Location: LCCOMB_X21_Y16_N2
\inst|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add14~0_combout\ = \inst|life_temp\(0) $ (\inst|life_temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|life_temp\(0),
	datac => \inst|life_temp\(1),
	combout => \inst|Add14~0_combout\);

-- Location: FF_X21_Y16_N3
\inst|life_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add14~0_combout\,
	ena => \inst|life[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|life_temp\(1));

-- Location: FF_X15_Y16_N11
\inst|life[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|life_temp\(1),
	sload => VCC,
	ena => \inst|life[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|life\(1));

-- Location: LCCOMB_X21_Y16_N6
\inst|Add14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add14~1_combout\ = \inst|life_temp\(2) $ (((\inst|life_temp\(0) & !\inst|life_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|life_temp\(0),
	datac => \inst|life_temp\(2),
	datad => \inst|life_temp\(1),
	combout => \inst|Add14~1_combout\);

-- Location: FF_X21_Y16_N7
\inst|life_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add14~1_combout\,
	ena => \inst|life[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|life_temp\(2));

-- Location: FF_X15_Y16_N5
\inst|life[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|life_temp\(2),
	sload => VCC,
	ena => \inst|life[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|life\(2));

-- Location: LCCOMB_X10_Y16_N24
\inst9|STATE_OUT[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|STATE_OUT[2]~1_combout\ = (\inst9|STATE_OUT[2]~0_combout\ & ((\inst|life\(1)) # ((!\inst|life\(2)) # (!\inst|life\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT[2]~0_combout\,
	datab => \inst|life\(1),
	datac => \inst|life\(0),
	datad => \inst|life\(2),
	combout => \inst9|STATE_OUT[2]~1_combout\);

-- Location: LCCOMB_X10_Y16_N4
\inst9|STATE_OUT[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|STATE_OUT[2]~3_combout\ = (!\inst9|STATE_OUT[2]~2_combout\ & (!\inst9|STATE_OUT[2]~1_combout\ & ((!\inst9|State.GAMEOVER~q\) # (!\bt1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT[2]~2_combout\,
	datab => \bt1~input_o\,
	datac => \inst9|State.GAMEOVER~q\,
	datad => \inst9|STATE_OUT[2]~1_combout\,
	combout => \inst9|STATE_OUT[2]~3_combout\);

-- Location: FF_X17_Y19_N23
\inst9|STATE_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst9|STATE_OUT[2]~0_combout\,
	sload => VCC,
	ena => \inst9|STATE_OUT[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|STATE_OUT\(2));

-- Location: LCCOMB_X10_Y16_N14
\inst9|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector5~0_combout\ = (\sw[0]~input_o\ & \inst9|State.PLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \inst9|State.PLAY~q\,
	combout => \inst9|Selector5~0_combout\);

-- Location: FF_X17_Y19_N27
\inst9|STATE_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst9|Selector5~0_combout\,
	sload => VCC,
	ena => \inst9|STATE_OUT[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|STATE_OUT\(1));

-- Location: LCCOMB_X17_Y19_N6
\inst11|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Equal2~0_combout\ = (!\inst9|STATE_OUT\(2) & (!\inst9|STATE_OUT\(1) & \inst9|STATE_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(2),
	datac => \inst9|STATE_OUT\(1),
	datad => \inst9|STATE_OUT\(0),
	combout => \inst11|Equal2~0_combout\);

-- Location: FF_X20_Y18_N11
\inst|Ball_Y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add9~0_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(0));

-- Location: LCCOMB_X20_Y18_N12
\inst|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~2_combout\ = (\inst|Ball_Y_motion\(1) & ((\inst|Ball_Y_pos\(1) & (!\inst|Add9~1\)) # (!\inst|Ball_Y_pos\(1) & (\inst|Add9~1\ & VCC)))) # (!\inst|Ball_Y_motion\(1) & ((\inst|Ball_Y_pos\(1) & ((\inst|Add9~1\) # (GND))) # (!\inst|Ball_Y_pos\(1) & 
-- (!\inst|Add9~1\))))
-- \inst|Add9~3\ = CARRY((\inst|Ball_Y_motion\(1) & (\inst|Ball_Y_pos\(1) & !\inst|Add9~1\)) # (!\inst|Ball_Y_motion\(1) & ((\inst|Ball_Y_pos\(1)) # (!\inst|Add9~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(1),
	datab => \inst|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst|Add9~1\,
	combout => \inst|Add9~2_combout\,
	cout => \inst|Add9~3\);

-- Location: LCCOMB_X20_Y18_N2
\inst|Ball_Y_pos[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[1]~2_combout\ = !\inst|Add9~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add9~2_combout\,
	combout => \inst|Ball_Y_pos[1]~2_combout\);

-- Location: FF_X20_Y18_N3
\inst|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[1]~2_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(1));

-- Location: LCCOMB_X20_Y18_N14
\inst|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~4_combout\ = ((\inst|Ball_Y_motion\(2) $ (\inst|Ball_Y_pos\(2) $ (\inst|Add9~3\)))) # (GND)
-- \inst|Add9~5\ = CARRY((\inst|Ball_Y_motion\(2) & ((!\inst|Add9~3\) # (!\inst|Ball_Y_pos\(2)))) # (!\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos\(2) & !\inst|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datab => \inst|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst|Add9~3\,
	combout => \inst|Add9~4_combout\,
	cout => \inst|Add9~5\);

-- Location: LCCOMB_X20_Y18_N4
\inst|Ball_Y_pos[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[2]~1_combout\ = !\inst|Add9~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add9~4_combout\,
	combout => \inst|Ball_Y_pos[2]~1_combout\);

-- Location: FF_X20_Y18_N5
\inst|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[2]~1_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(2));

-- Location: LCCOMB_X20_Y18_N16
\inst|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~6_combout\ = (\inst|Ball_Y_pos\(3) & ((\inst|Ball_Y_motion\(3) & (!\inst|Add9~5\)) # (!\inst|Ball_Y_motion\(3) & ((\inst|Add9~5\) # (GND))))) # (!\inst|Ball_Y_pos\(3) & ((\inst|Ball_Y_motion\(3) & (\inst|Add9~5\ & VCC)) # 
-- (!\inst|Ball_Y_motion\(3) & (!\inst|Add9~5\))))
-- \inst|Add9~7\ = CARRY((\inst|Ball_Y_pos\(3) & ((!\inst|Add9~5\) # (!\inst|Ball_Y_motion\(3)))) # (!\inst|Ball_Y_pos\(3) & (!\inst|Ball_Y_motion\(3) & !\inst|Add9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(3),
	datab => \inst|Ball_Y_motion\(3),
	datad => VCC,
	cin => \inst|Add9~5\,
	combout => \inst|Add9~6_combout\,
	cout => \inst|Add9~7\);

-- Location: LCCOMB_X19_Y18_N0
\inst|Ball_Y_pos[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[3]~0_combout\ = !\inst|Add9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add9~6_combout\,
	combout => \inst|Ball_Y_pos[3]~0_combout\);

-- Location: FF_X19_Y18_N1
\inst|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[3]~0_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(3));

-- Location: LCCOMB_X20_Y18_N18
\inst|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~8_combout\ = ((\inst|Ball_Y_motion\(4) $ (\inst|Ball_Y_pos\(4) $ (!\inst|Add9~7\)))) # (GND)
-- \inst|Add9~9\ = CARRY((\inst|Ball_Y_motion\(4) & ((\inst|Ball_Y_pos\(4)) # (!\inst|Add9~7\))) # (!\inst|Ball_Y_motion\(4) & (\inst|Ball_Y_pos\(4) & !\inst|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(4),
	datab => \inst|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst|Add9~7\,
	combout => \inst|Add9~8_combout\,
	cout => \inst|Add9~9\);

-- Location: FF_X20_Y18_N19
\inst|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add9~8_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(4));

-- Location: LCCOMB_X20_Y18_N20
\inst|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~10_combout\ = (\inst|Ball_Y_motion\(5) & ((\inst|Ball_Y_pos\(5) & (\inst|Add9~9\ & VCC)) # (!\inst|Ball_Y_pos\(5) & (!\inst|Add9~9\)))) # (!\inst|Ball_Y_motion\(5) & ((\inst|Ball_Y_pos\(5) & (!\inst|Add9~9\)) # (!\inst|Ball_Y_pos\(5) & 
-- ((\inst|Add9~9\) # (GND)))))
-- \inst|Add9~11\ = CARRY((\inst|Ball_Y_motion\(5) & (!\inst|Ball_Y_pos\(5) & !\inst|Add9~9\)) # (!\inst|Ball_Y_motion\(5) & ((!\inst|Add9~9\) # (!\inst|Ball_Y_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(5),
	datab => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|Add9~9\,
	combout => \inst|Add9~10_combout\,
	cout => \inst|Add9~11\);

-- Location: FF_X20_Y18_N21
\inst|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add9~10_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(5));

-- Location: LCCOMB_X20_Y18_N22
\inst|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~12_combout\ = ((\inst|Ball_Y_pos\(6) $ (\inst|Ball_Y_motion\(6) $ (!\inst|Add9~11\)))) # (GND)
-- \inst|Add9~13\ = CARRY((\inst|Ball_Y_pos\(6) & ((\inst|Ball_Y_motion\(6)) # (!\inst|Add9~11\))) # (!\inst|Ball_Y_pos\(6) & (\inst|Ball_Y_motion\(6) & !\inst|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Ball_Y_motion\(6),
	datad => VCC,
	cin => \inst|Add9~11\,
	combout => \inst|Add9~12_combout\,
	cout => \inst|Add9~13\);

-- Location: FF_X20_Y18_N23
\inst|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add9~12_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(6));

-- Location: LCCOMB_X20_Y18_N8
\inst|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~0_combout\ = ((\inst|Ball_Y_pos\(3) & (\inst|Ball_Y_pos\(2) & \inst|Ball_Y_pos\(1)))) # (!\inst|Ball_Y_pos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(3),
	datab => \inst|Ball_Y_pos\(4),
	datac => \inst|Ball_Y_pos\(2),
	datad => \inst|Ball_Y_pos\(1),
	combout => \inst|LessThan13~0_combout\);

-- Location: LCCOMB_X20_Y18_N24
\inst|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~14_combout\ = (\inst|Ball_Y_motion\(7) & ((\inst|Ball_Y_pos\(7) & (\inst|Add9~13\ & VCC)) # (!\inst|Ball_Y_pos\(7) & (!\inst|Add9~13\)))) # (!\inst|Ball_Y_motion\(7) & ((\inst|Ball_Y_pos\(7) & (!\inst|Add9~13\)) # (!\inst|Ball_Y_pos\(7) & 
-- ((\inst|Add9~13\) # (GND)))))
-- \inst|Add9~15\ = CARRY((\inst|Ball_Y_motion\(7) & (!\inst|Ball_Y_pos\(7) & !\inst|Add9~13\)) # (!\inst|Ball_Y_motion\(7) & ((!\inst|Add9~13\) # (!\inst|Ball_Y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(7),
	datab => \inst|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|Add9~13\,
	combout => \inst|Add9~14_combout\,
	cout => \inst|Add9~15\);

-- Location: FF_X20_Y18_N25
\inst|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add9~14_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(7));

-- Location: LCCOMB_X20_Y18_N6
\inst|LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~1_combout\ = (((!\inst|Ball_Y_pos\(5) & \inst|LessThan13~0_combout\)) # (!\inst|Ball_Y_pos\(7))) # (!\inst|Ball_Y_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Ball_Y_pos\(5),
	datac => \inst|LessThan13~0_combout\,
	datad => \inst|Ball_Y_pos\(7),
	combout => \inst|LessThan13~1_combout\);

-- Location: LCCOMB_X20_Y18_N30
\inst|LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan16~0_combout\ = (!\inst|Ball_Y_pos\(6) & !\inst|Ball_Y_pos\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Ball_Y_pos\(6),
	datad => \inst|Ball_Y_pos\(5),
	combout => \inst|LessThan16~0_combout\);

-- Location: LCCOMB_X20_Y18_N0
\inst|LessThan22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan22~0_combout\ = (\inst|Ball_Y_pos\(0) & (!\inst|Ball_Y_pos\(2) & (!\inst|Ball_Y_pos\(3) & !\inst|Ball_Y_pos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(0),
	datab => \inst|Ball_Y_pos\(2),
	datac => \inst|Ball_Y_pos\(3),
	datad => \inst|Ball_Y_pos\(1),
	combout => \inst|LessThan22~0_combout\);

-- Location: LCCOMB_X20_Y17_N20
\inst|LessThan16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan16~1_combout\ = (\inst|Ball_Y_pos\(4)) # ((\inst|Ball_Y_pos\(7)) # ((\inst|LessThan22~0_combout\) # (!\inst|LessThan16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Ball_Y_pos\(7),
	datac => \inst|LessThan16~0_combout\,
	datad => \inst|LessThan22~0_combout\,
	combout => \inst|LessThan16~1_combout\);

-- Location: LCCOMB_X19_Y17_N16
\inst|Ball_Y_motion[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[6]~2_combout\ = (!\inst|Ball_Y_pos\(9) & ((\inst|Ball_Y_pos\(8) & (\inst|LessThan13~1_combout\)) # (!\inst|Ball_Y_pos\(8) & ((\inst|LessThan16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|LessThan13~1_combout\,
	datac => \inst|LessThan16~1_combout\,
	datad => \inst|Ball_Y_pos\(9),
	combout => \inst|Ball_Y_motion[6]~2_combout\);

-- Location: LCCOMB_X20_Y20_N0
\inst|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = \inst|energy_temp\(0) $ (VCC)
-- \inst|Add6~1\ = CARRY(\inst|energy_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|energy_temp\(0),
	datad => VCC,
	combout => \inst|Add6~0_combout\,
	cout => \inst|Add6~1\);

-- Location: LCCOMB_X17_Y19_N26
\inst|energy_temp[31]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy_temp[31]~2_combout\ = (\inst9|STATE_OUT\(0) & (!\inst9|STATE_OUT\(1) & !\inst9|STATE_OUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|STATE_OUT\(0),
	datac => \inst9|STATE_OUT\(1),
	datad => \inst9|STATE_OUT\(2),
	combout => \inst|energy_temp[31]~2_combout\);

-- Location: LCCOMB_X20_Y20_N10
\inst|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~10_combout\ = (\inst7|left_button~q\ & ((\inst|energy_temp\(5) & (!\inst|Add6~9\)) # (!\inst|energy_temp\(5) & (\inst|Add6~9\ & VCC)))) # (!\inst7|left_button~q\ & ((\inst|energy_temp\(5) & ((\inst|Add6~9\) # (GND))) # (!\inst|energy_temp\(5) & 
-- (!\inst|Add6~9\))))
-- \inst|Add6~11\ = CARRY((\inst7|left_button~q\ & (\inst|energy_temp\(5) & !\inst|Add6~9\)) # (!\inst7|left_button~q\ & ((\inst|energy_temp\(5)) # (!\inst|Add6~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(5),
	datad => VCC,
	cin => \inst|Add6~9\,
	combout => \inst|Add6~10_combout\,
	cout => \inst|Add6~11\);

-- Location: LCCOMB_X20_Y20_N12
\inst|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~12_combout\ = ((\inst7|left_button~q\ $ (\inst|energy_temp\(6) $ (\inst|Add6~11\)))) # (GND)
-- \inst|Add6~13\ = CARRY((\inst7|left_button~q\ & ((!\inst|Add6~11\) # (!\inst|energy_temp\(6)))) # (!\inst7|left_button~q\ & (!\inst|energy_temp\(6) & !\inst|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(6),
	datad => VCC,
	cin => \inst|Add6~11\,
	combout => \inst|Add6~12_combout\,
	cout => \inst|Add6~13\);

-- Location: LCCOMB_X19_Y19_N6
\inst|energy_temp[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy_temp[6]~5_combout\ = !\inst|Add6~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add6~12_combout\,
	combout => \inst|energy_temp[6]~5_combout\);

-- Location: FF_X19_Y19_N7
\inst|energy_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|energy_temp[6]~5_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(6));

-- Location: LCCOMB_X20_Y20_N14
\inst|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~14_combout\ = (\inst7|left_button~q\ & ((\inst|energy_temp\(7) & (\inst|Add6~13\ & VCC)) # (!\inst|energy_temp\(7) & (!\inst|Add6~13\)))) # (!\inst7|left_button~q\ & ((\inst|energy_temp\(7) & (!\inst|Add6~13\)) # (!\inst|energy_temp\(7) & 
-- ((\inst|Add6~13\) # (GND)))))
-- \inst|Add6~15\ = CARRY((\inst7|left_button~q\ & (!\inst|energy_temp\(7) & !\inst|Add6~13\)) # (!\inst7|left_button~q\ & ((!\inst|Add6~13\) # (!\inst|energy_temp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(7),
	datad => VCC,
	cin => \inst|Add6~13\,
	combout => \inst|Add6~14_combout\,
	cout => \inst|Add6~15\);

-- Location: FF_X20_Y20_N15
\inst|energy_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~14_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(7));

-- Location: LCCOMB_X20_Y20_N16
\inst|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~16_combout\ = ((\inst7|left_button~q\ $ (\inst|energy_temp\(8) $ (!\inst|Add6~15\)))) # (GND)
-- \inst|Add6~17\ = CARRY((\inst7|left_button~q\ & ((\inst|energy_temp\(8)) # (!\inst|Add6~15\))) # (!\inst7|left_button~q\ & (\inst|energy_temp\(8) & !\inst|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(8),
	datad => VCC,
	cin => \inst|Add6~15\,
	combout => \inst|Add6~16_combout\,
	cout => \inst|Add6~17\);

-- Location: FF_X20_Y20_N17
\inst|energy_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~16_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(8));

-- Location: LCCOMB_X20_Y20_N18
\inst|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~18_combout\ = (\inst|energy_temp\(9) & ((\inst7|left_button~q\ & (\inst|Add6~17\ & VCC)) # (!\inst7|left_button~q\ & (!\inst|Add6~17\)))) # (!\inst|energy_temp\(9) & ((\inst7|left_button~q\ & (!\inst|Add6~17\)) # (!\inst7|left_button~q\ & 
-- ((\inst|Add6~17\) # (GND)))))
-- \inst|Add6~19\ = CARRY((\inst|energy_temp\(9) & (!\inst7|left_button~q\ & !\inst|Add6~17\)) # (!\inst|energy_temp\(9) & ((!\inst|Add6~17\) # (!\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(9),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~17\,
	combout => \inst|Add6~18_combout\,
	cout => \inst|Add6~19\);

-- Location: FF_X20_Y20_N19
\inst|energy_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~18_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(9));

-- Location: LCCOMB_X20_Y20_N20
\inst|Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~20_combout\ = ((\inst|energy_temp\(10) $ (\inst7|left_button~q\ $ (!\inst|Add6~19\)))) # (GND)
-- \inst|Add6~21\ = CARRY((\inst|energy_temp\(10) & ((\inst7|left_button~q\) # (!\inst|Add6~19\))) # (!\inst|energy_temp\(10) & (\inst7|left_button~q\ & !\inst|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(10),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~19\,
	combout => \inst|Add6~20_combout\,
	cout => \inst|Add6~21\);

-- Location: FF_X20_Y20_N21
\inst|energy_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~20_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(10));

-- Location: LCCOMB_X20_Y20_N22
\inst|Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~22_combout\ = (\inst|energy_temp\(11) & ((\inst7|left_button~q\ & (\inst|Add6~21\ & VCC)) # (!\inst7|left_button~q\ & (!\inst|Add6~21\)))) # (!\inst|energy_temp\(11) & ((\inst7|left_button~q\ & (!\inst|Add6~21\)) # (!\inst7|left_button~q\ & 
-- ((\inst|Add6~21\) # (GND)))))
-- \inst|Add6~23\ = CARRY((\inst|energy_temp\(11) & (!\inst7|left_button~q\ & !\inst|Add6~21\)) # (!\inst|energy_temp\(11) & ((!\inst|Add6~21\) # (!\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(11),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~21\,
	combout => \inst|Add6~22_combout\,
	cout => \inst|Add6~23\);

-- Location: FF_X20_Y20_N23
\inst|energy_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~22_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(11));

-- Location: LCCOMB_X20_Y20_N24
\inst|Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~24_combout\ = ((\inst|energy_temp\(12) $ (\inst7|left_button~q\ $ (!\inst|Add6~23\)))) # (GND)
-- \inst|Add6~25\ = CARRY((\inst|energy_temp\(12) & ((\inst7|left_button~q\) # (!\inst|Add6~23\))) # (!\inst|energy_temp\(12) & (\inst7|left_button~q\ & !\inst|Add6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(12),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~23\,
	combout => \inst|Add6~24_combout\,
	cout => \inst|Add6~25\);

-- Location: FF_X20_Y20_N25
\inst|energy_temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~24_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(12));

-- Location: LCCOMB_X20_Y20_N26
\inst|Add6~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~26_combout\ = (\inst|energy_temp\(13) & ((\inst7|left_button~q\ & (\inst|Add6~25\ & VCC)) # (!\inst7|left_button~q\ & (!\inst|Add6~25\)))) # (!\inst|energy_temp\(13) & ((\inst7|left_button~q\ & (!\inst|Add6~25\)) # (!\inst7|left_button~q\ & 
-- ((\inst|Add6~25\) # (GND)))))
-- \inst|Add6~27\ = CARRY((\inst|energy_temp\(13) & (!\inst7|left_button~q\ & !\inst|Add6~25\)) # (!\inst|energy_temp\(13) & ((!\inst|Add6~25\) # (!\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(13),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~25\,
	combout => \inst|Add6~26_combout\,
	cout => \inst|Add6~27\);

-- Location: FF_X20_Y20_N27
\inst|energy_temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~26_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(13));

-- Location: LCCOMB_X20_Y20_N28
\inst|Add6~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~28_combout\ = ((\inst|energy_temp\(14) $ (\inst7|left_button~q\ $ (!\inst|Add6~27\)))) # (GND)
-- \inst|Add6~29\ = CARRY((\inst|energy_temp\(14) & ((\inst7|left_button~q\) # (!\inst|Add6~27\))) # (!\inst|energy_temp\(14) & (\inst7|left_button~q\ & !\inst|Add6~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(14),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~27\,
	combout => \inst|Add6~28_combout\,
	cout => \inst|Add6~29\);

-- Location: FF_X20_Y20_N29
\inst|energy_temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~28_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(14));

-- Location: LCCOMB_X20_Y20_N30
\inst|Add6~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~30_combout\ = (\inst|energy_temp\(15) & ((\inst7|left_button~q\ & (\inst|Add6~29\ & VCC)) # (!\inst7|left_button~q\ & (!\inst|Add6~29\)))) # (!\inst|energy_temp\(15) & ((\inst7|left_button~q\ & (!\inst|Add6~29\)) # (!\inst7|left_button~q\ & 
-- ((\inst|Add6~29\) # (GND)))))
-- \inst|Add6~31\ = CARRY((\inst|energy_temp\(15) & (!\inst7|left_button~q\ & !\inst|Add6~29\)) # (!\inst|energy_temp\(15) & ((!\inst|Add6~29\) # (!\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(15),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~29\,
	combout => \inst|Add6~30_combout\,
	cout => \inst|Add6~31\);

-- Location: FF_X20_Y20_N31
\inst|energy_temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~30_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(15));

-- Location: LCCOMB_X20_Y19_N0
\inst|Add6~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~32_combout\ = ((\inst7|left_button~q\ $ (\inst|energy_temp\(16) $ (!\inst|Add6~31\)))) # (GND)
-- \inst|Add6~33\ = CARRY((\inst7|left_button~q\ & ((\inst|energy_temp\(16)) # (!\inst|Add6~31\))) # (!\inst7|left_button~q\ & (\inst|energy_temp\(16) & !\inst|Add6~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(16),
	datad => VCC,
	cin => \inst|Add6~31\,
	combout => \inst|Add6~32_combout\,
	cout => \inst|Add6~33\);

-- Location: FF_X20_Y19_N1
\inst|energy_temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~32_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(16));

-- Location: LCCOMB_X20_Y19_N2
\inst|Add6~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~34_combout\ = (\inst7|left_button~q\ & ((\inst|energy_temp\(17) & (\inst|Add6~33\ & VCC)) # (!\inst|energy_temp\(17) & (!\inst|Add6~33\)))) # (!\inst7|left_button~q\ & ((\inst|energy_temp\(17) & (!\inst|Add6~33\)) # (!\inst|energy_temp\(17) & 
-- ((\inst|Add6~33\) # (GND)))))
-- \inst|Add6~35\ = CARRY((\inst7|left_button~q\ & (!\inst|energy_temp\(17) & !\inst|Add6~33\)) # (!\inst7|left_button~q\ & ((!\inst|Add6~33\) # (!\inst|energy_temp\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(17),
	datad => VCC,
	cin => \inst|Add6~33\,
	combout => \inst|Add6~34_combout\,
	cout => \inst|Add6~35\);

-- Location: FF_X20_Y19_N3
\inst|energy_temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~34_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(17));

-- Location: LCCOMB_X20_Y19_N4
\inst|Add6~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~36_combout\ = ((\inst7|left_button~q\ $ (\inst|energy_temp\(18) $ (!\inst|Add6~35\)))) # (GND)
-- \inst|Add6~37\ = CARRY((\inst7|left_button~q\ & ((\inst|energy_temp\(18)) # (!\inst|Add6~35\))) # (!\inst7|left_button~q\ & (\inst|energy_temp\(18) & !\inst|Add6~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(18),
	datad => VCC,
	cin => \inst|Add6~35\,
	combout => \inst|Add6~36_combout\,
	cout => \inst|Add6~37\);

-- Location: FF_X20_Y19_N5
\inst|energy_temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~36_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(18));

-- Location: LCCOMB_X20_Y19_N6
\inst|Add6~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~38_combout\ = (\inst|energy_temp\(19) & ((\inst7|left_button~q\ & (\inst|Add6~37\ & VCC)) # (!\inst7|left_button~q\ & (!\inst|Add6~37\)))) # (!\inst|energy_temp\(19) & ((\inst7|left_button~q\ & (!\inst|Add6~37\)) # (!\inst7|left_button~q\ & 
-- ((\inst|Add6~37\) # (GND)))))
-- \inst|Add6~39\ = CARRY((\inst|energy_temp\(19) & (!\inst7|left_button~q\ & !\inst|Add6~37\)) # (!\inst|energy_temp\(19) & ((!\inst|Add6~37\) # (!\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(19),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~37\,
	combout => \inst|Add6~38_combout\,
	cout => \inst|Add6~39\);

-- Location: FF_X20_Y19_N7
\inst|energy_temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~38_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(19));

-- Location: LCCOMB_X20_Y19_N8
\inst|Add6~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~40_combout\ = ((\inst7|left_button~q\ $ (\inst|energy_temp\(20) $ (!\inst|Add6~39\)))) # (GND)
-- \inst|Add6~41\ = CARRY((\inst7|left_button~q\ & ((\inst|energy_temp\(20)) # (!\inst|Add6~39\))) # (!\inst7|left_button~q\ & (\inst|energy_temp\(20) & !\inst|Add6~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(20),
	datad => VCC,
	cin => \inst|Add6~39\,
	combout => \inst|Add6~40_combout\,
	cout => \inst|Add6~41\);

-- Location: FF_X20_Y19_N9
\inst|energy_temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~40_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(20));

-- Location: LCCOMB_X20_Y19_N10
\inst|Add6~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~42_combout\ = (\inst|energy_temp\(21) & ((\inst7|left_button~q\ & (\inst|Add6~41\ & VCC)) # (!\inst7|left_button~q\ & (!\inst|Add6~41\)))) # (!\inst|energy_temp\(21) & ((\inst7|left_button~q\ & (!\inst|Add6~41\)) # (!\inst7|left_button~q\ & 
-- ((\inst|Add6~41\) # (GND)))))
-- \inst|Add6~43\ = CARRY((\inst|energy_temp\(21) & (!\inst7|left_button~q\ & !\inst|Add6~41\)) # (!\inst|energy_temp\(21) & ((!\inst|Add6~41\) # (!\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(21),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~41\,
	combout => \inst|Add6~42_combout\,
	cout => \inst|Add6~43\);

-- Location: FF_X20_Y19_N11
\inst|energy_temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~42_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(21));

-- Location: LCCOMB_X20_Y19_N12
\inst|Add6~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~44_combout\ = ((\inst|energy_temp\(22) $ (\inst7|left_button~q\ $ (!\inst|Add6~43\)))) # (GND)
-- \inst|Add6~45\ = CARRY((\inst|energy_temp\(22) & ((\inst7|left_button~q\) # (!\inst|Add6~43\))) # (!\inst|energy_temp\(22) & (\inst7|left_button~q\ & !\inst|Add6~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(22),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~43\,
	combout => \inst|Add6~44_combout\,
	cout => \inst|Add6~45\);

-- Location: FF_X20_Y19_N13
\inst|energy_temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~44_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(22));

-- Location: LCCOMB_X20_Y19_N14
\inst|Add6~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~46_combout\ = (\inst7|left_button~q\ & ((\inst|energy_temp\(23) & (\inst|Add6~45\ & VCC)) # (!\inst|energy_temp\(23) & (!\inst|Add6~45\)))) # (!\inst7|left_button~q\ & ((\inst|energy_temp\(23) & (!\inst|Add6~45\)) # (!\inst|energy_temp\(23) & 
-- ((\inst|Add6~45\) # (GND)))))
-- \inst|Add6~47\ = CARRY((\inst7|left_button~q\ & (!\inst|energy_temp\(23) & !\inst|Add6~45\)) # (!\inst7|left_button~q\ & ((!\inst|Add6~45\) # (!\inst|energy_temp\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(23),
	datad => VCC,
	cin => \inst|Add6~45\,
	combout => \inst|Add6~46_combout\,
	cout => \inst|Add6~47\);

-- Location: FF_X20_Y19_N15
\inst|energy_temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~46_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(23));

-- Location: LCCOMB_X20_Y19_N16
\inst|Add6~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~48_combout\ = ((\inst7|left_button~q\ $ (\inst|energy_temp\(24) $ (!\inst|Add6~47\)))) # (GND)
-- \inst|Add6~49\ = CARRY((\inst7|left_button~q\ & ((\inst|energy_temp\(24)) # (!\inst|Add6~47\))) # (!\inst7|left_button~q\ & (\inst|energy_temp\(24) & !\inst|Add6~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(24),
	datad => VCC,
	cin => \inst|Add6~47\,
	combout => \inst|Add6~48_combout\,
	cout => \inst|Add6~49\);

-- Location: FF_X20_Y19_N17
\inst|energy_temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~48_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(24));

-- Location: LCCOMB_X20_Y19_N18
\inst|Add6~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~50_combout\ = (\inst7|left_button~q\ & ((\inst|energy_temp\(25) & (\inst|Add6~49\ & VCC)) # (!\inst|energy_temp\(25) & (!\inst|Add6~49\)))) # (!\inst7|left_button~q\ & ((\inst|energy_temp\(25) & (!\inst|Add6~49\)) # (!\inst|energy_temp\(25) & 
-- ((\inst|Add6~49\) # (GND)))))
-- \inst|Add6~51\ = CARRY((\inst7|left_button~q\ & (!\inst|energy_temp\(25) & !\inst|Add6~49\)) # (!\inst7|left_button~q\ & ((!\inst|Add6~49\) # (!\inst|energy_temp\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(25),
	datad => VCC,
	cin => \inst|Add6~49\,
	combout => \inst|Add6~50_combout\,
	cout => \inst|Add6~51\);

-- Location: FF_X20_Y19_N19
\inst|energy_temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~50_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(25));

-- Location: LCCOMB_X20_Y19_N20
\inst|Add6~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~52_combout\ = ((\inst7|left_button~q\ $ (\inst|energy_temp\(26) $ (!\inst|Add6~51\)))) # (GND)
-- \inst|Add6~53\ = CARRY((\inst7|left_button~q\ & ((\inst|energy_temp\(26)) # (!\inst|Add6~51\))) # (!\inst7|left_button~q\ & (\inst|energy_temp\(26) & !\inst|Add6~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(26),
	datad => VCC,
	cin => \inst|Add6~51\,
	combout => \inst|Add6~52_combout\,
	cout => \inst|Add6~53\);

-- Location: FF_X20_Y19_N21
\inst|energy_temp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~52_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(26));

-- Location: LCCOMB_X20_Y19_N22
\inst|Add6~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~54_combout\ = (\inst|energy_temp\(27) & ((\inst7|left_button~q\ & (\inst|Add6~53\ & VCC)) # (!\inst7|left_button~q\ & (!\inst|Add6~53\)))) # (!\inst|energy_temp\(27) & ((\inst7|left_button~q\ & (!\inst|Add6~53\)) # (!\inst7|left_button~q\ & 
-- ((\inst|Add6~53\) # (GND)))))
-- \inst|Add6~55\ = CARRY((\inst|energy_temp\(27) & (!\inst7|left_button~q\ & !\inst|Add6~53\)) # (!\inst|energy_temp\(27) & ((!\inst|Add6~53\) # (!\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(27),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~53\,
	combout => \inst|Add6~54_combout\,
	cout => \inst|Add6~55\);

-- Location: FF_X20_Y19_N23
\inst|energy_temp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~54_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(27));

-- Location: LCCOMB_X20_Y19_N24
\inst|Add6~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~56_combout\ = ((\inst|energy_temp\(28) $ (\inst7|left_button~q\ $ (!\inst|Add6~55\)))) # (GND)
-- \inst|Add6~57\ = CARRY((\inst|energy_temp\(28) & ((\inst7|left_button~q\) # (!\inst|Add6~55\))) # (!\inst|energy_temp\(28) & (\inst7|left_button~q\ & !\inst|Add6~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(28),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~55\,
	combout => \inst|Add6~56_combout\,
	cout => \inst|Add6~57\);

-- Location: FF_X20_Y19_N25
\inst|energy_temp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~56_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(28));

-- Location: LCCOMB_X20_Y19_N26
\inst|Add6~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~58_combout\ = (\inst|energy_temp\(29) & ((\inst7|left_button~q\ & (\inst|Add6~57\ & VCC)) # (!\inst7|left_button~q\ & (!\inst|Add6~57\)))) # (!\inst|energy_temp\(29) & ((\inst7|left_button~q\ & (!\inst|Add6~57\)) # (!\inst7|left_button~q\ & 
-- ((\inst|Add6~57\) # (GND)))))
-- \inst|Add6~59\ = CARRY((\inst|energy_temp\(29) & (!\inst7|left_button~q\ & !\inst|Add6~57\)) # (!\inst|energy_temp\(29) & ((!\inst|Add6~57\) # (!\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(29),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~57\,
	combout => \inst|Add6~58_combout\,
	cout => \inst|Add6~59\);

-- Location: FF_X20_Y19_N27
\inst|energy_temp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~58_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(29));

-- Location: LCCOMB_X20_Y19_N28
\inst|Add6~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~60_combout\ = ((\inst|energy_temp\(30) $ (\inst7|left_button~q\ $ (!\inst|Add6~59\)))) # (GND)
-- \inst|Add6~61\ = CARRY((\inst|energy_temp\(30) & ((\inst7|left_button~q\) # (!\inst|Add6~59\))) # (!\inst|energy_temp\(30) & (\inst7|left_button~q\ & !\inst|Add6~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(30),
	datab => \inst7|left_button~q\,
	datad => VCC,
	cin => \inst|Add6~59\,
	combout => \inst|Add6~60_combout\,
	cout => \inst|Add6~61\);

-- Location: FF_X20_Y19_N29
\inst|energy_temp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~60_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(30));

-- Location: LCCOMB_X20_Y19_N30
\inst|Add6~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~62_combout\ = \inst|energy_temp\(31) $ (\inst|Add6~61\ $ (\inst7|left_button~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(31),
	datad => \inst7|left_button~q\,
	cin => \inst|Add6~61\,
	combout => \inst|Add6~62_combout\);

-- Location: FF_X20_Y19_N31
\inst|energy_temp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~62_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(31));

-- Location: LCCOMB_X19_Y19_N14
\inst|energy_temp[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy_temp[31]~0_combout\ = (\inst|energy_temp\(5)) # ((\inst|energy_temp\(2) & (!\inst|energy_temp\(3) & !\inst|energy_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(2),
	datab => \inst|energy_temp\(5),
	datac => \inst|energy_temp\(3),
	datad => \inst|energy_temp\(4),
	combout => \inst|energy_temp[31]~0_combout\);

-- Location: LCCOMB_X19_Y19_N2
\inst|LessThan14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~6_combout\ = (!\inst|energy_temp\(30) & (!\inst|energy_temp\(28) & (!\inst|energy_temp\(27) & !\inst|energy_temp\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(30),
	datab => \inst|energy_temp\(28),
	datac => \inst|energy_temp\(27),
	datad => \inst|energy_temp\(29),
	combout => \inst|LessThan14~6_combout\);

-- Location: LCCOMB_X21_Y19_N8
\inst|LessThan14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~5_combout\ = (!\inst|energy_temp\(23) & (!\inst|energy_temp\(25) & (!\inst|energy_temp\(24) & !\inst|energy_temp\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(23),
	datab => \inst|energy_temp\(25),
	datac => \inst|energy_temp\(24),
	datad => \inst|energy_temp\(26),
	combout => \inst|LessThan14~5_combout\);

-- Location: LCCOMB_X19_Y19_N22
\inst|LessThan14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~3_combout\ = (!\inst|energy_temp\(19) & (!\inst|energy_temp\(22) & (!\inst|energy_temp\(20) & !\inst|energy_temp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(19),
	datab => \inst|energy_temp\(22),
	datac => \inst|energy_temp\(20),
	datad => \inst|energy_temp\(21),
	combout => \inst|LessThan14~3_combout\);

-- Location: LCCOMB_X19_Y19_N18
\inst|LessThan14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~1_combout\ = (!\inst|energy_temp\(11) & (!\inst|energy_temp\(13) & (!\inst|energy_temp\(12) & !\inst|energy_temp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(11),
	datab => \inst|energy_temp\(13),
	datac => \inst|energy_temp\(12),
	datad => \inst|energy_temp\(14),
	combout => \inst|LessThan14~1_combout\);

-- Location: LCCOMB_X19_Y19_N8
\inst|LessThan14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~2_combout\ = (!\inst|energy_temp\(17) & (!\inst|energy_temp\(15) & (!\inst|energy_temp\(16) & !\inst|energy_temp\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(17),
	datab => \inst|energy_temp\(15),
	datac => \inst|energy_temp\(16),
	datad => \inst|energy_temp\(18),
	combout => \inst|LessThan14~2_combout\);

-- Location: LCCOMB_X19_Y19_N20
\inst|LessThan14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~0_combout\ = (!\inst|energy_temp\(8) & (!\inst|energy_temp\(10) & (!\inst|energy_temp\(7) & !\inst|energy_temp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(8),
	datab => \inst|energy_temp\(10),
	datac => \inst|energy_temp\(7),
	datad => \inst|energy_temp\(9),
	combout => \inst|LessThan14~0_combout\);

-- Location: LCCOMB_X19_Y19_N0
\inst|LessThan14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~4_combout\ = (\inst|LessThan14~3_combout\ & (\inst|LessThan14~1_combout\ & (\inst|LessThan14~2_combout\ & \inst|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~3_combout\,
	datab => \inst|LessThan14~1_combout\,
	datac => \inst|LessThan14~2_combout\,
	datad => \inst|LessThan14~0_combout\,
	combout => \inst|LessThan14~4_combout\);

-- Location: LCCOMB_X19_Y19_N24
\inst|LessThan14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~7_combout\ = (\inst|LessThan14~6_combout\ & (\inst|LessThan14~5_combout\ & \inst|LessThan14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan14~6_combout\,
	datac => \inst|LessThan14~5_combout\,
	datad => \inst|LessThan14~4_combout\,
	combout => \inst|LessThan14~7_combout\);

-- Location: LCCOMB_X19_Y19_N28
\inst|energy_temp[31]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy_temp[31]~1_combout\ = (\inst|energy_temp\(31)) # ((\inst|LessThan14~7_combout\ & ((\inst|energy_temp\(6)) # (\inst|energy_temp[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(6),
	datab => \inst|energy_temp\(31),
	datac => \inst|energy_temp[31]~0_combout\,
	datad => \inst|LessThan14~7_combout\,
	combout => \inst|energy_temp[31]~1_combout\);

-- Location: LCCOMB_X19_Y19_N30
\inst|energy_temp[31]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy_temp[31]~3_combout\ = (\inst|energy_temp[31]~2_combout\ & ((\inst7|left_button~q\ & (!\inst|LessThan14~10_combout\)) # (!\inst7|left_button~q\ & ((\inst|energy_temp[31]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~10_combout\,
	datab => \inst|energy_temp[31]~2_combout\,
	datac => \inst7|left_button~q\,
	datad => \inst|energy_temp[31]~1_combout\,
	combout => \inst|energy_temp[31]~3_combout\);

-- Location: FF_X20_Y20_N1
\inst|energy_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~0_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(0));

-- Location: LCCOMB_X20_Y20_N2
\inst|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~2_combout\ = (\inst7|left_button~q\ & ((\inst|energy_temp\(1) & (\inst|Add6~1\ & VCC)) # (!\inst|energy_temp\(1) & (!\inst|Add6~1\)))) # (!\inst7|left_button~q\ & ((\inst|energy_temp\(1) & (!\inst|Add6~1\)) # (!\inst|energy_temp\(1) & 
-- ((\inst|Add6~1\) # (GND)))))
-- \inst|Add6~3\ = CARRY((\inst7|left_button~q\ & (!\inst|energy_temp\(1) & !\inst|Add6~1\)) # (!\inst7|left_button~q\ & ((!\inst|Add6~1\) # (!\inst|energy_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(1),
	datad => VCC,
	cin => \inst|Add6~1\,
	combout => \inst|Add6~2_combout\,
	cout => \inst|Add6~3\);

-- Location: FF_X20_Y20_N3
\inst|energy_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~2_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(1));

-- Location: LCCOMB_X20_Y20_N4
\inst|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~4_combout\ = ((\inst7|left_button~q\ $ (\inst|energy_temp\(2) $ (\inst|Add6~3\)))) # (GND)
-- \inst|Add6~5\ = CARRY((\inst7|left_button~q\ & ((!\inst|Add6~3\) # (!\inst|energy_temp\(2)))) # (!\inst7|left_button~q\ & (!\inst|energy_temp\(2) & !\inst|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(2),
	datad => VCC,
	cin => \inst|Add6~3\,
	combout => \inst|Add6~4_combout\,
	cout => \inst|Add6~5\);

-- Location: LCCOMB_X19_Y19_N26
\inst|energy_temp[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy_temp[2]~4_combout\ = !\inst|Add6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add6~4_combout\,
	combout => \inst|energy_temp[2]~4_combout\);

-- Location: FF_X19_Y19_N27
\inst|energy_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|energy_temp[2]~4_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(2));

-- Location: LCCOMB_X20_Y20_N6
\inst|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~6_combout\ = (\inst7|left_button~q\ & ((\inst|energy_temp\(3) & (\inst|Add6~5\ & VCC)) # (!\inst|energy_temp\(3) & (!\inst|Add6~5\)))) # (!\inst7|left_button~q\ & ((\inst|energy_temp\(3) & (!\inst|Add6~5\)) # (!\inst|energy_temp\(3) & 
-- ((\inst|Add6~5\) # (GND)))))
-- \inst|Add6~7\ = CARRY((\inst7|left_button~q\ & (!\inst|energy_temp\(3) & !\inst|Add6~5\)) # (!\inst7|left_button~q\ & ((!\inst|Add6~5\) # (!\inst|energy_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(3),
	datad => VCC,
	cin => \inst|Add6~5\,
	combout => \inst|Add6~6_combout\,
	cout => \inst|Add6~7\);

-- Location: FF_X20_Y20_N7
\inst|energy_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~6_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(3));

-- Location: LCCOMB_X20_Y20_N8
\inst|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~8_combout\ = ((\inst7|left_button~q\ $ (\inst|energy_temp\(4) $ (!\inst|Add6~7\)))) # (GND)
-- \inst|Add6~9\ = CARRY((\inst7|left_button~q\ & ((\inst|energy_temp\(4)) # (!\inst|Add6~7\))) # (!\inst7|left_button~q\ & (\inst|energy_temp\(4) & !\inst|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datab => \inst|energy_temp\(4),
	datad => VCC,
	cin => \inst|Add6~7\,
	combout => \inst|Add6~8_combout\,
	cout => \inst|Add6~9\);

-- Location: FF_X20_Y20_N9
\inst|energy_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~8_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(4));

-- Location: LCCOMB_X19_Y19_N16
\inst|energy_temp[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy_temp[5]~6_combout\ = !\inst|Add6~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add6~10_combout\,
	combout => \inst|energy_temp[5]~6_combout\);

-- Location: FF_X19_Y19_N17
\inst|energy_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|energy_temp[5]~6_combout\,
	ena => \inst|energy_temp[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy_temp\(5));

-- Location: LCCOMB_X19_Y19_N10
\inst|LessThan14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~9_combout\ = (\inst|energy_temp\(5) & (!\inst|energy_temp\(1) & \inst|energy_temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|energy_temp\(5),
	datac => \inst|energy_temp\(1),
	datad => \inst|energy_temp\(6),
	combout => \inst|LessThan14~9_combout\);

-- Location: LCCOMB_X19_Y19_N4
\inst|LessThan14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~8_combout\ = (\inst|energy_temp\(2) & (!\inst|energy_temp\(0) & (!\inst|energy_temp\(3) & !\inst|energy_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy_temp\(2),
	datab => \inst|energy_temp\(0),
	datac => \inst|energy_temp\(3),
	datad => \inst|energy_temp\(4),
	combout => \inst|LessThan14~8_combout\);

-- Location: LCCOMB_X19_Y19_N12
\inst|LessThan14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~10_combout\ = (\inst|energy_temp\(31)) # ((\inst|LessThan14~9_combout\ & (\inst|LessThan14~8_combout\ & \inst|LessThan14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~9_combout\,
	datab => \inst|energy_temp\(31),
	datac => \inst|LessThan14~8_combout\,
	datad => \inst|LessThan14~7_combout\,
	combout => \inst|LessThan14~10_combout\);

-- Location: LCCOMB_X20_Y17_N30
\inst|Ball_Y_motion[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[6]~3_combout\ = (\inst|Ball_Y_motion[6]~2_combout\ & ((\inst|LessThan14~10_combout\) # (!\inst7|left_button~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|left_button~q\,
	datac => \inst|Ball_Y_motion[6]~2_combout\,
	datad => \inst|LessThan14~10_combout\,
	combout => \inst|Ball_Y_motion[6]~3_combout\);

-- Location: LCCOMB_X20_Y17_N0
\inst|Ball_Y_motion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~1_combout\ = (\inst|Ball_Y_motion~0_combout\ & (\inst7|left_button~q\ & !\inst|LessThan14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion~0_combout\,
	datac => \inst7|left_button~q\,
	datad => \inst|LessThan14~10_combout\,
	combout => \inst|Ball_Y_motion~1_combout\);

-- Location: LCCOMB_X20_Y17_N8
\inst|Ball_Y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~4_combout\ = (\inst|Ball_Y_motion~1_combout\) # ((\inst|Add4~18_combout\ & \inst|Ball_Y_motion[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~18_combout\,
	datac => \inst|Ball_Y_motion[6]~3_combout\,
	datad => \inst|Ball_Y_motion~1_combout\,
	combout => \inst|Ball_Y_motion~4_combout\);

-- Location: LCCOMB_X21_Y17_N0
\inst|Ball_Y_motion[9]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[9]~5_combout\ = (!\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_motion\(3) & ((!\inst|Ball_Y_motion\(1)) # (!\inst|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datab => \inst|Ball_Y_motion\(0),
	datac => \inst|Ball_Y_motion\(3),
	datad => \inst|Ball_Y_motion\(1),
	combout => \inst|Ball_Y_motion[9]~5_combout\);

-- Location: LCCOMB_X21_Y17_N2
\inst|Ball_Y_motion[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[9]~6_combout\ = (!\inst|Ball_Y_motion\(6) & (!\inst|Ball_Y_motion\(5) & (!\inst|Ball_Y_motion\(7) & !\inst|Ball_Y_motion\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(6),
	datab => \inst|Ball_Y_motion\(5),
	datac => \inst|Ball_Y_motion\(7),
	datad => \inst|Ball_Y_motion\(4),
	combout => \inst|Ball_Y_motion[9]~6_combout\);

-- Location: LCCOMB_X21_Y17_N28
\inst|Ball_Y_motion[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[9]~7_combout\ = (\inst|Ball_Y_motion\(9)) # ((\inst|Ball_Y_motion[9]~5_combout\ & (!\inst|Ball_Y_motion\(8) & \inst|Ball_Y_motion[9]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(9),
	datab => \inst|Ball_Y_motion[9]~5_combout\,
	datac => \inst|Ball_Y_motion\(8),
	datad => \inst|Ball_Y_motion[9]~6_combout\,
	combout => \inst|Ball_Y_motion[9]~7_combout\);

-- Location: LCCOMB_X20_Y17_N24
\inst|Ball_Y_motion[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[6]~8_combout\ = (\inst|Ball_Y_pos\(8) & (\inst|LessThan13~1_combout\ & ((\inst|LessThan14~10_combout\) # (!\inst7|left_button~q\)))) # (!\inst|Ball_Y_pos\(8) & (((\inst|LessThan14~10_combout\) # (!\inst7|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|LessThan13~1_combout\,
	datac => \inst7|left_button~q\,
	datad => \inst|LessThan14~10_combout\,
	combout => \inst|Ball_Y_motion[6]~8_combout\);

-- Location: LCCOMB_X20_Y17_N18
\inst|Ball_Y_motion[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[9]~9_combout\ = (\inst11|Equal2~0_combout\ & ((\inst|Ball_Y_motion[9]~7_combout\) # ((!\inst|Ball_Y_motion[6]~8_combout\) # (!\inst|Ball_Y_motion~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~0_combout\,
	datab => \inst|Ball_Y_motion[9]~7_combout\,
	datac => \inst|Ball_Y_motion~0_combout\,
	datad => \inst|Ball_Y_motion[6]~8_combout\,
	combout => \inst|Ball_Y_motion[9]~9_combout\);

-- Location: FF_X20_Y17_N9
\inst|Ball_Y_motion[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~4_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(9));

-- Location: LCCOMB_X20_Y18_N26
\inst|Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~16_combout\ = ((\inst|Ball_Y_pos\(8) $ (\inst|Ball_Y_motion\(8) $ (!\inst|Add9~15\)))) # (GND)
-- \inst|Add9~17\ = CARRY((\inst|Ball_Y_pos\(8) & ((\inst|Ball_Y_motion\(8)) # (!\inst|Add9~15\))) # (!\inst|Ball_Y_pos\(8) & (\inst|Ball_Y_motion\(8) & !\inst|Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Ball_Y_motion\(8),
	datad => VCC,
	cin => \inst|Add9~15\,
	combout => \inst|Add9~16_combout\,
	cout => \inst|Add9~17\);

-- Location: LCCOMB_X20_Y18_N28
\inst|Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add9~18_combout\ = \inst|Ball_Y_motion\(9) $ (\inst|Add9~17\ $ (\inst|Ball_Y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_motion\(9),
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|Add9~17\,
	combout => \inst|Add9~18_combout\);

-- Location: FF_X20_Y18_N29
\inst|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add9~18_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(9));

-- Location: LCCOMB_X20_Y17_N22
\inst|Ball_Y_motion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~0_combout\ = (!\inst|Ball_Y_pos\(9) & ((\inst|Ball_Y_pos\(8)) # (\inst|LessThan16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datac => \inst|Ball_Y_pos\(9),
	datad => \inst|LessThan16~1_combout\,
	combout => \inst|Ball_Y_motion~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\inst|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = \inst|Ball_Y_motion\(0) $ (VCC)
-- \inst|Add4~1\ = CARRY(\inst|Ball_Y_motion\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_motion\(0),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X19_Y17_N22
\inst|Ball_Y_motion~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~18_combout\ = (!\inst|LessThan14~10_combout\ & \inst7|left_button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan14~10_combout\,
	datad => \inst7|left_button~q\,
	combout => \inst|Ball_Y_motion~18_combout\);

-- Location: LCCOMB_X20_Y17_N6
\inst|Ball_Y_motion~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~19_combout\ = (\inst|Ball_Y_motion[6]~3_combout\ & (((\inst|Add4~0_combout\)))) # (!\inst|Ball_Y_motion[6]~3_combout\ & (((\inst|Ball_Y_motion~18_combout\)) # (!\inst|Ball_Y_motion~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion~0_combout\,
	datab => \inst|Add4~0_combout\,
	datac => \inst|Ball_Y_motion[6]~3_combout\,
	datad => \inst|Ball_Y_motion~18_combout\,
	combout => \inst|Ball_Y_motion~19_combout\);

-- Location: FF_X20_Y17_N7
\inst|Ball_Y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~19_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(0));

-- Location: LCCOMB_X21_Y17_N6
\inst|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|Ball_Y_motion\(1) & (!\inst|Add4~1\)) # (!\inst|Ball_Y_motion\(1) & ((\inst|Add4~1\) # (GND)))
-- \inst|Add4~3\ = CARRY((!\inst|Add4~1\) # (!\inst|Ball_Y_motion\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(1),
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X20_Y17_N12
\inst|Ball_Y_motion~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~17_combout\ = ((\inst|Add4~2_combout\ & \inst|Ball_Y_motion[6]~8_combout\)) # (!\inst|Ball_Y_motion~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~2_combout\,
	datac => \inst|Ball_Y_motion~0_combout\,
	datad => \inst|Ball_Y_motion[6]~8_combout\,
	combout => \inst|Ball_Y_motion~17_combout\);

-- Location: FF_X20_Y17_N13
\inst|Ball_Y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~17_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(1));

-- Location: LCCOMB_X21_Y17_N8
\inst|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = (\inst|Ball_Y_motion\(2) & (\inst|Add4~3\ $ (GND))) # (!\inst|Ball_Y_motion\(2) & (!\inst|Add4~3\ & VCC))
-- \inst|Add4~5\ = CARRY((\inst|Ball_Y_motion\(2) & !\inst|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X20_Y17_N10
\inst|Ball_Y_motion~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~16_combout\ = (\inst|Ball_Y_motion~1_combout\) # ((\inst|Add4~4_combout\ & \inst|Ball_Y_motion[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~4_combout\,
	datac => \inst|Ball_Y_motion[6]~3_combout\,
	datad => \inst|Ball_Y_motion~1_combout\,
	combout => \inst|Ball_Y_motion~16_combout\);

-- Location: FF_X20_Y17_N11
\inst|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~16_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(2));

-- Location: LCCOMB_X21_Y17_N10
\inst|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|Ball_Y_motion\(3) & (!\inst|Add4~5\)) # (!\inst|Ball_Y_motion\(3) & ((\inst|Add4~5\) # (GND)))
-- \inst|Add4~7\ = CARRY((!\inst|Add4~5\) # (!\inst|Ball_Y_motion\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(3),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X20_Y17_N16
\inst|Ball_Y_motion~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~15_combout\ = (\inst|Ball_Y_motion~1_combout\) # ((\inst|Add4~6_combout\ & \inst|Ball_Y_motion[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~6_combout\,
	datac => \inst|Ball_Y_motion[6]~3_combout\,
	datad => \inst|Ball_Y_motion~1_combout\,
	combout => \inst|Ball_Y_motion~15_combout\);

-- Location: FF_X20_Y17_N17
\inst|Ball_Y_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~15_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(3));

-- Location: LCCOMB_X21_Y17_N12
\inst|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = (\inst|Ball_Y_motion\(4) & (\inst|Add4~7\ $ (GND))) # (!\inst|Ball_Y_motion\(4) & (!\inst|Add4~7\ & VCC))
-- \inst|Add4~9\ = CARRY((\inst|Ball_Y_motion\(4) & !\inst|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(4),
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: LCCOMB_X20_Y17_N2
\inst|Ball_Y_motion~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~14_combout\ = (\inst|Ball_Y_motion~1_combout\) # ((\inst|Add4~8_combout\ & \inst|Ball_Y_motion[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~8_combout\,
	datac => \inst|Ball_Y_motion[6]~3_combout\,
	datad => \inst|Ball_Y_motion~1_combout\,
	combout => \inst|Ball_Y_motion~14_combout\);

-- Location: FF_X20_Y17_N3
\inst|Ball_Y_motion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~14_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(4));

-- Location: LCCOMB_X21_Y17_N14
\inst|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|Ball_Y_motion\(5) & (!\inst|Add4~9\)) # (!\inst|Ball_Y_motion\(5) & ((\inst|Add4~9\) # (GND)))
-- \inst|Add4~11\ = CARRY((!\inst|Add4~9\) # (!\inst|Ball_Y_motion\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_motion\(5),
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: LCCOMB_X20_Y17_N28
\inst|Ball_Y_motion~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~13_combout\ = (\inst|Ball_Y_motion~1_combout\) # ((\inst|Add4~10_combout\ & \inst|Ball_Y_motion[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~10_combout\,
	datac => \inst|Ball_Y_motion[6]~3_combout\,
	datad => \inst|Ball_Y_motion~1_combout\,
	combout => \inst|Ball_Y_motion~13_combout\);

-- Location: FF_X20_Y17_N29
\inst|Ball_Y_motion[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~13_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(5));

-- Location: LCCOMB_X21_Y17_N16
\inst|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = (\inst|Ball_Y_motion\(6) & (\inst|Add4~11\ $ (GND))) # (!\inst|Ball_Y_motion\(6) & (!\inst|Add4~11\ & VCC))
-- \inst|Add4~13\ = CARRY((\inst|Ball_Y_motion\(6) & !\inst|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(6),
	datad => VCC,
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\,
	cout => \inst|Add4~13\);

-- Location: LCCOMB_X20_Y17_N14
\inst|Ball_Y_motion~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~12_combout\ = (\inst|Ball_Y_motion~1_combout\) # ((\inst|Add4~12_combout\ & \inst|Ball_Y_motion[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~12_combout\,
	datac => \inst|Ball_Y_motion[6]~3_combout\,
	datad => \inst|Ball_Y_motion~1_combout\,
	combout => \inst|Ball_Y_motion~12_combout\);

-- Location: FF_X20_Y17_N15
\inst|Ball_Y_motion[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~12_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(6));

-- Location: LCCOMB_X21_Y17_N18
\inst|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = (\inst|Ball_Y_motion\(7) & (!\inst|Add4~13\)) # (!\inst|Ball_Y_motion\(7) & ((\inst|Add4~13\) # (GND)))
-- \inst|Add4~15\ = CARRY((!\inst|Add4~13\) # (!\inst|Ball_Y_motion\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_motion\(7),
	datad => VCC,
	cin => \inst|Add4~13\,
	combout => \inst|Add4~14_combout\,
	cout => \inst|Add4~15\);

-- Location: LCCOMB_X20_Y17_N4
\inst|Ball_Y_motion~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~11_combout\ = (\inst|Ball_Y_motion~1_combout\) # ((\inst|Add4~14_combout\ & \inst|Ball_Y_motion[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add4~14_combout\,
	datac => \inst|Ball_Y_motion[6]~3_combout\,
	datad => \inst|Ball_Y_motion~1_combout\,
	combout => \inst|Ball_Y_motion~11_combout\);

-- Location: FF_X20_Y17_N5
\inst|Ball_Y_motion[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~11_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(7));

-- Location: LCCOMB_X20_Y17_N26
\inst|Ball_Y_motion~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion~10_combout\ = (\inst|Ball_Y_motion~1_combout\) # ((\inst|Add4~16_combout\ & \inst|Ball_Y_motion[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~16_combout\,
	datac => \inst|Ball_Y_motion[6]~3_combout\,
	datad => \inst|Ball_Y_motion~1_combout\,
	combout => \inst|Ball_Y_motion~10_combout\);

-- Location: FF_X20_Y17_N27
\inst|Ball_Y_motion[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion~10_combout\,
	ena => \inst|Ball_Y_motion[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(8));

-- Location: FF_X20_Y18_N27
\inst|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add9~16_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(8));

-- Location: LCCOMB_X20_Y16_N30
\inst|LessThan22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan22~1_combout\ = (\inst|Ball_Y_pos\(7) & (((\inst|Ball_Y_pos\(4) & \inst|LessThan22~0_combout\)) # (!\inst|LessThan16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|LessThan22~0_combout\,
	datac => \inst|Ball_Y_pos\(7),
	datad => \inst|LessThan16~0_combout\,
	combout => \inst|LessThan22~1_combout\);

-- Location: LCCOMB_X17_Y16_N6
\inst|Pipe1_X_pos[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Pipe1_X_pos[1]~5_combout\ = !\inst|Pipe1_X_pos\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Pipe1_X_pos\(1),
	combout => \inst|Pipe1_X_pos[1]~5_combout\);

-- Location: FF_X17_Y16_N7
\inst|Pipe1_X_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Pipe1_X_pos[1]~5_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Pipe1_X_pos\(1));

-- Location: LCCOMB_X22_Y16_N0
\inst|Add15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add15~1_cout\ = CARRY(\inst|Pipe1_X_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(1),
	datad => VCC,
	cout => \inst|Add15~1_cout\);

-- Location: LCCOMB_X22_Y16_N2
\inst|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add15~2_combout\ = (\inst|Pipe1_X_pos\(2) & (\inst|Add15~1_cout\ & VCC)) # (!\inst|Pipe1_X_pos\(2) & (!\inst|Add15~1_cout\))
-- \inst|Add15~3\ = CARRY((!\inst|Pipe1_X_pos\(2) & !\inst|Add15~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Pipe1_X_pos\(2),
	datad => VCC,
	cin => \inst|Add15~1_cout\,
	combout => \inst|Add15~2_combout\,
	cout => \inst|Add15~3\);

-- Location: FF_X22_Y16_N3
\inst|Pipe1_X_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add15~2_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Pipe1_X_pos\(2));

-- Location: LCCOMB_X22_Y16_N4
\inst|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add15~4_combout\ = (\inst|Pipe1_X_pos\(3) & (\inst|Add15~3\ $ (GND))) # (!\inst|Pipe1_X_pos\(3) & ((GND) # (!\inst|Add15~3\)))
-- \inst|Add15~5\ = CARRY((!\inst|Add15~3\) # (!\inst|Pipe1_X_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Pipe1_X_pos\(3),
	datad => VCC,
	cin => \inst|Add15~3\,
	combout => \inst|Add15~4_combout\,
	cout => \inst|Add15~5\);

-- Location: LCCOMB_X19_Y16_N26
\inst|Pipe1_X_pos[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Pipe1_X_pos[3]~4_combout\ = !\inst|Add15~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add15~4_combout\,
	combout => \inst|Pipe1_X_pos[3]~4_combout\);

-- Location: FF_X19_Y16_N27
\inst|Pipe1_X_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Pipe1_X_pos[3]~4_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Pipe1_X_pos\(3));

-- Location: LCCOMB_X22_Y16_N6
\inst|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add15~6_combout\ = (\inst|Pipe1_X_pos\(4) & (!\inst|Add15~5\)) # (!\inst|Pipe1_X_pos\(4) & (\inst|Add15~5\ & VCC))
-- \inst|Add15~7\ = CARRY((\inst|Pipe1_X_pos\(4) & !\inst|Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Pipe1_X_pos\(4),
	datad => VCC,
	cin => \inst|Add15~5\,
	combout => \inst|Add15~6_combout\,
	cout => \inst|Add15~7\);

-- Location: LCCOMB_X22_Y16_N18
\inst|Pipe1_X_pos[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Pipe1_X_pos[4]~3_combout\ = !\inst|Add15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add15~6_combout\,
	combout => \inst|Pipe1_X_pos[4]~3_combout\);

-- Location: FF_X22_Y16_N19
\inst|Pipe1_X_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Pipe1_X_pos[4]~3_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Pipe1_X_pos\(4));

-- Location: LCCOMB_X22_Y16_N8
\inst|Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add15~8_combout\ = (\inst|Pipe1_X_pos\(5) & (\inst|Add15~7\ $ (GND))) # (!\inst|Pipe1_X_pos\(5) & ((GND) # (!\inst|Add15~7\)))
-- \inst|Add15~9\ = CARRY((!\inst|Add15~7\) # (!\inst|Pipe1_X_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(5),
	datad => VCC,
	cin => \inst|Add15~7\,
	combout => \inst|Add15~8_combout\,
	cout => \inst|Add15~9\);

-- Location: LCCOMB_X17_Y16_N4
\inst|Pipe1_X_pos[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Pipe1_X_pos[5]~2_combout\ = !\inst|Add15~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add15~8_combout\,
	combout => \inst|Pipe1_X_pos[5]~2_combout\);

-- Location: FF_X17_Y16_N5
\inst|Pipe1_X_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Pipe1_X_pos[5]~2_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Pipe1_X_pos\(5));

-- Location: LCCOMB_X22_Y16_N10
\inst|Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add15~10_combout\ = (\inst|Pipe1_X_pos\(6) & (\inst|Add15~9\ & VCC)) # (!\inst|Pipe1_X_pos\(6) & (!\inst|Add15~9\))
-- \inst|Add15~11\ = CARRY((!\inst|Pipe1_X_pos\(6) & !\inst|Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Pipe1_X_pos\(6),
	datad => VCC,
	cin => \inst|Add15~9\,
	combout => \inst|Add15~10_combout\,
	cout => \inst|Add15~11\);

-- Location: FF_X22_Y16_N11
\inst|Pipe1_X_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add15~10_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Pipe1_X_pos\(6));

-- Location: LCCOMB_X22_Y16_N12
\inst|Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add15~12_combout\ = (\inst|Pipe1_X_pos\(7) & (\inst|Add15~11\ $ (GND))) # (!\inst|Pipe1_X_pos\(7) & ((GND) # (!\inst|Add15~11\)))
-- \inst|Add15~13\ = CARRY((!\inst|Add15~11\) # (!\inst|Pipe1_X_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(7),
	datad => VCC,
	cin => \inst|Add15~11\,
	combout => \inst|Add15~12_combout\,
	cout => \inst|Add15~13\);

-- Location: LCCOMB_X22_Y16_N28
\inst|Pipe1_X_pos[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Pipe1_X_pos[7]~1_combout\ = !\inst|Add15~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add15~12_combout\,
	combout => \inst|Pipe1_X_pos[7]~1_combout\);

-- Location: FF_X22_Y16_N29
\inst|Pipe1_X_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Pipe1_X_pos[7]~1_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Pipe1_X_pos\(7));

-- Location: LCCOMB_X22_Y16_N14
\inst|Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add15~14_combout\ = (\inst|Pipe1_X_pos\(8) & (!\inst|Add15~13\)) # (!\inst|Pipe1_X_pos\(8) & (\inst|Add15~13\ & VCC))
-- \inst|Add15~15\ = CARRY((\inst|Pipe1_X_pos\(8) & !\inst|Add15~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Pipe1_X_pos\(8),
	datad => VCC,
	cin => \inst|Add15~13\,
	combout => \inst|Add15~14_combout\,
	cout => \inst|Add15~15\);

-- Location: LCCOMB_X22_Y16_N30
\inst|Pipe1_X_pos[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Pipe1_X_pos[8]~0_combout\ = !\inst|Add15~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add15~14_combout\,
	combout => \inst|Pipe1_X_pos[8]~0_combout\);

-- Location: FF_X22_Y16_N31
\inst|Pipe1_X_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Pipe1_X_pos[8]~0_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Pipe1_X_pos\(8));

-- Location: LCCOMB_X22_Y16_N16
\inst|Add15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add15~16_combout\ = \inst|Add15~15\ $ (\inst|Pipe1_X_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Pipe1_X_pos\(9),
	cin => \inst|Add15~15\,
	combout => \inst|Add15~16_combout\);

-- Location: FF_X22_Y16_N17
\inst|Pipe1_X_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add15~16_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Pipe1_X_pos\(9));

-- Location: LCCOMB_X20_Y16_N0
\inst|Add12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add12~1_cout\ = CARRY(!\inst|Pipe1_X_pos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(3),
	datad => VCC,
	cout => \inst|Add12~1_cout\);

-- Location: LCCOMB_X20_Y16_N2
\inst|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add12~2_combout\ = (\inst|Pipe1_X_pos\(4) & (!\inst|Add12~1_cout\)) # (!\inst|Pipe1_X_pos\(4) & (\inst|Add12~1_cout\ & VCC))
-- \inst|Add12~3\ = CARRY((\inst|Pipe1_X_pos\(4) & !\inst|Add12~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(4),
	datad => VCC,
	cin => \inst|Add12~1_cout\,
	combout => \inst|Add12~2_combout\,
	cout => \inst|Add12~3\);

-- Location: LCCOMB_X20_Y16_N4
\inst|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add12~4_combout\ = (\inst|Pipe1_X_pos\(5) & (\inst|Add12~3\ $ (GND))) # (!\inst|Pipe1_X_pos\(5) & ((GND) # (!\inst|Add12~3\)))
-- \inst|Add12~5\ = CARRY((!\inst|Add12~3\) # (!\inst|Pipe1_X_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(5),
	datad => VCC,
	cin => \inst|Add12~3\,
	combout => \inst|Add12~4_combout\,
	cout => \inst|Add12~5\);

-- Location: LCCOMB_X20_Y16_N6
\inst|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add12~6_combout\ = (\inst|Pipe1_X_pos\(6) & (\inst|Add12~5\ & VCC)) # (!\inst|Pipe1_X_pos\(6) & (!\inst|Add12~5\))
-- \inst|Add12~7\ = CARRY((!\inst|Pipe1_X_pos\(6) & !\inst|Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Pipe1_X_pos\(6),
	datad => VCC,
	cin => \inst|Add12~5\,
	combout => \inst|Add12~6_combout\,
	cout => \inst|Add12~7\);

-- Location: LCCOMB_X20_Y16_N8
\inst|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add12~8_combout\ = (\inst|Pipe1_X_pos\(7) & (\inst|Add12~7\ $ (GND))) # (!\inst|Pipe1_X_pos\(7) & ((GND) # (!\inst|Add12~7\)))
-- \inst|Add12~9\ = CARRY((!\inst|Add12~7\) # (!\inst|Pipe1_X_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Pipe1_X_pos\(7),
	datad => VCC,
	cin => \inst|Add12~7\,
	combout => \inst|Add12~8_combout\,
	cout => \inst|Add12~9\);

-- Location: LCCOMB_X20_Y16_N10
\inst|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add12~10_combout\ = (\inst|Pipe1_X_pos\(8) & (!\inst|Add12~9\)) # (!\inst|Pipe1_X_pos\(8) & (\inst|Add12~9\ & VCC))
-- \inst|Add12~11\ = CARRY((\inst|Pipe1_X_pos\(8) & !\inst|Add12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Pipe1_X_pos\(8),
	datad => VCC,
	cin => \inst|Add12~9\,
	combout => \inst|Add12~10_combout\,
	cout => \inst|Add12~11\);

-- Location: LCCOMB_X20_Y16_N12
\inst|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add12~12_combout\ = \inst|Add12~11\ $ (\inst|Pipe1_X_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Pipe1_X_pos\(9),
	cin => \inst|Add12~11\,
	combout => \inst|Add12~12_combout\);

-- Location: LCCOMB_X22_Y16_N20
\inst|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~0_combout\ = \inst|Pipe1_X_pos\(6) $ (VCC)
-- \inst|Add10~1\ = CARRY(\inst|Pipe1_X_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(6),
	datad => VCC,
	combout => \inst|Add10~0_combout\,
	cout => \inst|Add10~1\);

-- Location: LCCOMB_X22_Y16_N22
\inst|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~2_combout\ = (\inst|Pipe1_X_pos\(7) & ((\inst|Add10~1\) # (GND))) # (!\inst|Pipe1_X_pos\(7) & (!\inst|Add10~1\))
-- \inst|Add10~3\ = CARRY((\inst|Pipe1_X_pos\(7)) # (!\inst|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Pipe1_X_pos\(7),
	datad => VCC,
	cin => \inst|Add10~1\,
	combout => \inst|Add10~2_combout\,
	cout => \inst|Add10~3\);

-- Location: LCCOMB_X22_Y16_N24
\inst|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~4_combout\ = (\inst|Pipe1_X_pos\(8) & (!\inst|Add10~3\ & VCC)) # (!\inst|Pipe1_X_pos\(8) & (\inst|Add10~3\ $ (GND)))
-- \inst|Add10~5\ = CARRY((!\inst|Pipe1_X_pos\(8) & !\inst|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(8),
	datad => VCC,
	cin => \inst|Add10~3\,
	combout => \inst|Add10~4_combout\,
	cout => \inst|Add10~5\);

-- Location: LCCOMB_X22_Y16_N26
\inst|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add10~6_combout\ = \inst|Add10~5\ $ (\inst|Pipe1_X_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Pipe1_X_pos\(9),
	cin => \inst|Add10~5\,
	combout => \inst|Add10~6_combout\);

-- Location: LCCOMB_X23_Y16_N0
\inst|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~0_combout\ = (\inst|Pipe1_X_pos\(3) & (!\inst|Pipe1_X_pos\(4) & VCC)) # (!\inst|Pipe1_X_pos\(3) & (\inst|Pipe1_X_pos\(4) $ (GND)))
-- \inst|Add11~1\ = CARRY((!\inst|Pipe1_X_pos\(3) & !\inst|Pipe1_X_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(3),
	datab => \inst|Pipe1_X_pos\(4),
	datad => VCC,
	combout => \inst|Add11~0_combout\,
	cout => \inst|Add11~1\);

-- Location: LCCOMB_X23_Y16_N2
\inst|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~2_combout\ = (\inst|Pipe1_X_pos\(5) & ((\inst|Add11~1\) # (GND))) # (!\inst|Pipe1_X_pos\(5) & (!\inst|Add11~1\))
-- \inst|Add11~3\ = CARRY((\inst|Pipe1_X_pos\(5)) # (!\inst|Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(5),
	datad => VCC,
	cin => \inst|Add11~1\,
	combout => \inst|Add11~2_combout\,
	cout => \inst|Add11~3\);

-- Location: LCCOMB_X23_Y16_N4
\inst|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~4_combout\ = (\inst|Add10~0_combout\ & (\inst|Add11~3\ $ (GND))) # (!\inst|Add10~0_combout\ & (!\inst|Add11~3\ & VCC))
-- \inst|Add11~5\ = CARRY((\inst|Add10~0_combout\ & !\inst|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add10~0_combout\,
	datad => VCC,
	cin => \inst|Add11~3\,
	combout => \inst|Add11~4_combout\,
	cout => \inst|Add11~5\);

-- Location: LCCOMB_X23_Y16_N6
\inst|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~6_combout\ = (\inst|Add10~2_combout\ & (!\inst|Add11~5\)) # (!\inst|Add10~2_combout\ & ((\inst|Add11~5\) # (GND)))
-- \inst|Add11~7\ = CARRY((!\inst|Add11~5\) # (!\inst|Add10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add10~2_combout\,
	datad => VCC,
	cin => \inst|Add11~5\,
	combout => \inst|Add11~6_combout\,
	cout => \inst|Add11~7\);

-- Location: LCCOMB_X23_Y16_N8
\inst|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~8_combout\ = (\inst|Add10~4_combout\ & (\inst|Add11~7\ $ (GND))) # (!\inst|Add10~4_combout\ & (!\inst|Add11~7\ & VCC))
-- \inst|Add11~9\ = CARRY((\inst|Add10~4_combout\ & !\inst|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add10~4_combout\,
	datad => VCC,
	cin => \inst|Add11~7\,
	combout => \inst|Add11~8_combout\,
	cout => \inst|Add11~9\);

-- Location: LCCOMB_X23_Y16_N10
\inst|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~10_combout\ = \inst|Add10~6_combout\ $ (\inst|Add11~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~6_combout\,
	cin => \inst|Add11~9\,
	combout => \inst|Add11~10_combout\);

-- Location: LCCOMB_X24_Y19_N6
\inst7|PACKET_CHAR2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[7]~feeder_combout\ = \inst7|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|SHIFTIN\(7),
	combout => \inst7|PACKET_CHAR2[7]~feeder_combout\);

-- Location: LCCOMB_X22_Y20_N2
\inst7|PACKET_CHAR2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[7]~0_combout\ = (!\sw[1]~input_o\ & (!\inst7|PACKET_COUNT\(0) & \inst7|PACKET_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \inst7|PACKET_COUNT\(0),
	datad => \inst7|PACKET_COUNT\(1),
	combout => \inst7|PACKET_CHAR2[7]~0_combout\);

-- Location: LCCOMB_X23_Y19_N16
\inst7|PACKET_CHAR2[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[7]~1_combout\ = (\inst7|READ_CHAR~q\ & (!\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst7|PACKET_CHAR2[7]~0_combout\ & !\inst7|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|READ_CHAR~q\,
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst7|PACKET_CHAR2[7]~0_combout\,
	datad => \inst7|LessThan1~0_combout\,
	combout => \inst7|PACKET_CHAR2[7]~1_combout\);

-- Location: FF_X24_Y19_N7
\inst7|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR2[7]~feeder_combout\,
	ena => \inst7|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR2\(7));

-- Location: LCCOMB_X24_Y19_N16
\inst7|PACKET_CHAR2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[6]~feeder_combout\ = \inst7|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(6),
	combout => \inst7|PACKET_CHAR2[6]~feeder_combout\);

-- Location: FF_X24_Y19_N17
\inst7|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR2[6]~feeder_combout\,
	ena => \inst7|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR2\(6));

-- Location: LCCOMB_X24_Y19_N18
\inst7|PACKET_CHAR2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[5]~feeder_combout\ = \inst7|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|SHIFTIN\(5),
	combout => \inst7|PACKET_CHAR2[5]~feeder_combout\);

-- Location: FF_X24_Y19_N19
\inst7|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR2[5]~feeder_combout\,
	ena => \inst7|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR2\(5));

-- Location: LCCOMB_X24_Y19_N4
\inst7|PACKET_CHAR2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[4]~feeder_combout\ = \inst7|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(4),
	combout => \inst7|PACKET_CHAR2[4]~feeder_combout\);

-- Location: FF_X24_Y19_N5
\inst7|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR2[4]~feeder_combout\,
	ena => \inst7|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR2\(4));

-- Location: LCCOMB_X24_Y19_N14
\inst7|PACKET_CHAR2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[3]~feeder_combout\ = \inst7|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|SHIFTIN\(3),
	combout => \inst7|PACKET_CHAR2[3]~feeder_combout\);

-- Location: FF_X24_Y19_N15
\inst7|PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR2[3]~feeder_combout\,
	ena => \inst7|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR2\(3));

-- Location: LCCOMB_X24_Y19_N24
\inst7|PACKET_CHAR2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[2]~feeder_combout\ = \inst7|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(2),
	combout => \inst7|PACKET_CHAR2[2]~feeder_combout\);

-- Location: FF_X24_Y19_N25
\inst7|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR2[2]~feeder_combout\,
	ena => \inst7|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR2\(2));

-- Location: LCCOMB_X24_Y19_N10
\inst7|PACKET_CHAR2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[1]~feeder_combout\ = \inst7|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|SHIFTIN\(1),
	combout => \inst7|PACKET_CHAR2[1]~feeder_combout\);

-- Location: FF_X24_Y19_N11
\inst7|PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR2[1]~feeder_combout\,
	ena => \inst7|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR2\(1));

-- Location: LCCOMB_X24_Y19_N0
\inst7|PACKET_CHAR2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR2[0]~feeder_combout\ = \inst7|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|SHIFTIN\(0),
	combout => \inst7|PACKET_CHAR2[0]~feeder_combout\);

-- Location: FF_X24_Y19_N1
\inst7|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR2[0]~feeder_combout\,
	ena => \inst7|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR2\(0));

-- Location: LCCOMB_X23_Y20_N12
\inst7|new_cursor_column[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[0]~10_combout\ = (\inst7|PACKET_CHAR2\(0) & (\inst7|cursor_column\(0) $ (VCC))) # (!\inst7|PACKET_CHAR2\(0) & (\inst7|cursor_column\(0) & VCC))
-- \inst7|new_cursor_column[0]~11\ = CARRY((\inst7|PACKET_CHAR2\(0) & \inst7|cursor_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR2\(0),
	datab => \inst7|cursor_column\(0),
	datad => VCC,
	combout => \inst7|new_cursor_column[0]~10_combout\,
	cout => \inst7|new_cursor_column[0]~11\);

-- Location: LCCOMB_X23_Y21_N0
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst7|new_cursor_row[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[9]~25_combout\ = (!\sw[1]~input_o\ & (!\inst7|LessThan1~0_combout\ & (\inst7|INCNT[3]~0_combout\ & !\inst7|new_cursor_row[2]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \inst7|LessThan1~0_combout\,
	datac => \inst7|INCNT[3]~0_combout\,
	datad => \inst7|new_cursor_row[2]~24_combout\,
	combout => \inst7|new_cursor_row[9]~25_combout\);

-- Location: FF_X23_Y20_N13
\inst7|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(0));

-- Location: LCCOMB_X23_Y20_N10
\inst7|RECV_UART~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|RECV_UART~4_combout\ = (!\inst7|new_cursor_column\(4) & (!\inst7|new_cursor_column\(3) & (!\inst7|new_cursor_column\(1) & !\inst7|new_cursor_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_column\(4),
	datab => \inst7|new_cursor_column\(3),
	datac => \inst7|new_cursor_column\(1),
	datad => \inst7|new_cursor_column\(2),
	combout => \inst7|RECV_UART~4_combout\);

-- Location: LCCOMB_X23_Y20_N8
\inst7|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan9~0_combout\ = (\inst7|new_cursor_column\(0)) # ((\inst7|new_cursor_column\(6)) # ((\inst7|new_cursor_column\(5)) # (!\inst7|RECV_UART~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_column\(0),
	datab => \inst7|new_cursor_column\(6),
	datac => \inst7|new_cursor_column\(5),
	datad => \inst7|RECV_UART~4_combout\,
	combout => \inst7|LessThan9~0_combout\);

-- Location: LCCOMB_X22_Y20_N0
\inst7|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal3~0_combout\ = (\inst7|PACKET_COUNT\(1)) # (\inst7|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|PACKET_COUNT\(1),
	datad => \inst7|PACKET_COUNT\(0),
	combout => \inst7|Equal3~0_combout\);

-- Location: LCCOMB_X22_Y20_N26
\inst7|RECV_UART~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|RECV_UART~5_combout\ = (!\inst7|cursor_column\(8) & (!\inst7|cursor_column\(7) & !\inst7|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(8),
	datac => \inst7|cursor_column\(7),
	datad => \inst7|cursor_column\(9),
	combout => \inst7|RECV_UART~5_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst7|RECV_UART~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|RECV_UART~6_combout\ = (!\inst7|new_cursor_column\(6) & (!\inst7|new_cursor_column\(5) & \inst7|RECV_UART~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|new_cursor_column\(6),
	datac => \inst7|new_cursor_column\(5),
	datad => \inst7|RECV_UART~4_combout\,
	combout => \inst7|RECV_UART~6_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst7|cursor_column~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~1_combout\ = (\inst7|new_cursor_column\(8) & ((\inst7|new_cursor_column\(0)) # ((\inst7|new_cursor_column\(7)) # (!\inst7|RECV_UART~6_combout\)))) # (!\inst7|new_cursor_column\(8) & (((!\inst7|new_cursor_column\(7) & 
-- \inst7|RECV_UART~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_column\(0),
	datab => \inst7|new_cursor_column\(8),
	datac => \inst7|new_cursor_column\(7),
	datad => \inst7|RECV_UART~6_combout\,
	combout => \inst7|cursor_column~1_combout\);

-- Location: LCCOMB_X22_Y20_N12
\inst7|cursor_column~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~2_combout\ = (\inst7|Equal3~0_combout\ & (((!\inst7|new_cursor_column\(9) & !\inst7|cursor_column~1_combout\)) # (!\inst7|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_column\(9),
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|RECV_UART~5_combout\,
	datad => \inst7|cursor_column~1_combout\,
	combout => \inst7|cursor_column~2_combout\);

-- Location: LCCOMB_X22_Y20_N16
\inst7|cursor_column~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~4_combout\ = (\inst7|cursor_column~2_combout\ & ((\inst7|new_cursor_column\(9)) # (!\inst7|cursor_column[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_column\(9),
	datac => \inst7|cursor_column[1]~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~4_combout\);

-- Location: LCCOMB_X22_Y20_N20
\inst7|cursor_row[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row[8]~2_combout\ = (!\sw[1]~input_o\ & !\inst7|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datad => \inst7|PACKET_COUNT\(1),
	combout => \inst7|cursor_row[8]~2_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst7|cursor_row[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row[8]~3_combout\ = (\inst7|READ_CHAR~q\ & (!\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst7|cursor_row[8]~2_combout\ & !\inst7|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|READ_CHAR~q\,
	datab => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst7|cursor_row[8]~2_combout\,
	datad => \inst7|LessThan1~0_combout\,
	combout => \inst7|cursor_row[8]~3_combout\);

-- Location: FF_X22_Y20_N17
\inst7|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~4_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(9));

-- Location: LCCOMB_X23_Y20_N28
\inst7|new_cursor_column[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[8]~26_combout\ = ((\inst7|cursor_column\(8) $ (\inst7|PACKET_CHAR2\(7) $ (!\inst7|new_cursor_column[7]~25\)))) # (GND)
-- \inst7|new_cursor_column[8]~27\ = CARRY((\inst7|cursor_column\(8) & ((\inst7|PACKET_CHAR2\(7)) # (!\inst7|new_cursor_column[7]~25\))) # (!\inst7|cursor_column\(8) & (\inst7|PACKET_CHAR2\(7) & !\inst7|new_cursor_column[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(8),
	datab => \inst7|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \inst7|new_cursor_column[7]~25\,
	combout => \inst7|new_cursor_column[8]~26_combout\,
	cout => \inst7|new_cursor_column[8]~27\);

-- Location: LCCOMB_X23_Y20_N30
\inst7|new_cursor_column[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[9]~28_combout\ = \inst7|cursor_column\(9) $ (\inst7|PACKET_CHAR2\(7) $ (\inst7|new_cursor_column[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(9),
	datab => \inst7|PACKET_CHAR2\(7),
	cin => \inst7|new_cursor_column[8]~27\,
	combout => \inst7|new_cursor_column[9]~28_combout\);

-- Location: FF_X23_Y20_N31
\inst7|new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(9));

-- Location: LCCOMB_X23_Y20_N2
\inst7|cursor_column[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column[1]~0_combout\ = ((!\inst7|new_cursor_column\(8) & ((!\inst7|LessThan9~0_combout\) # (!\inst7|new_cursor_column\(7))))) # (!\inst7|new_cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_column\(7),
	datab => \inst7|new_cursor_column\(8),
	datac => \inst7|LessThan9~0_combout\,
	datad => \inst7|new_cursor_column\(9),
	combout => \inst7|cursor_column[1]~0_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst7|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~10_combout\ = (\inst7|new_cursor_column\(0) & (\inst7|cursor_column[1]~0_combout\ & \inst7|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|new_cursor_column\(0),
	datac => \inst7|cursor_column[1]~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~10_combout\);

-- Location: FF_X23_Y18_N21
\inst7|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~10_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(0));

-- Location: LCCOMB_X23_Y20_N14
\inst7|new_cursor_column[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[1]~12_combout\ = (\inst7|PACKET_CHAR2\(1) & ((\inst7|cursor_column\(1) & (\inst7|new_cursor_column[0]~11\ & VCC)) # (!\inst7|cursor_column\(1) & (!\inst7|new_cursor_column[0]~11\)))) # (!\inst7|PACKET_CHAR2\(1) & 
-- ((\inst7|cursor_column\(1) & (!\inst7|new_cursor_column[0]~11\)) # (!\inst7|cursor_column\(1) & ((\inst7|new_cursor_column[0]~11\) # (GND)))))
-- \inst7|new_cursor_column[1]~13\ = CARRY((\inst7|PACKET_CHAR2\(1) & (!\inst7|cursor_column\(1) & !\inst7|new_cursor_column[0]~11\)) # (!\inst7|PACKET_CHAR2\(1) & ((!\inst7|new_cursor_column[0]~11\) # (!\inst7|cursor_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR2\(1),
	datab => \inst7|cursor_column\(1),
	datad => VCC,
	cin => \inst7|new_cursor_column[0]~11\,
	combout => \inst7|new_cursor_column[1]~12_combout\,
	cout => \inst7|new_cursor_column[1]~13\);

-- Location: FF_X23_Y20_N15
\inst7|new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(1));

-- Location: LCCOMB_X22_Y20_N4
\inst7|cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~9_combout\ = (\inst7|new_cursor_column\(1) & (\inst7|cursor_column[1]~0_combout\ & \inst7|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|new_cursor_column\(1),
	datac => \inst7|cursor_column[1]~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~9_combout\);

-- Location: FF_X22_Y20_N5
\inst7|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~9_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(1));

-- Location: LCCOMB_X23_Y20_N16
\inst7|new_cursor_column[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[2]~14_combout\ = ((\inst7|cursor_column\(2) $ (\inst7|PACKET_CHAR2\(2) $ (!\inst7|new_cursor_column[1]~13\)))) # (GND)
-- \inst7|new_cursor_column[2]~15\ = CARRY((\inst7|cursor_column\(2) & ((\inst7|PACKET_CHAR2\(2)) # (!\inst7|new_cursor_column[1]~13\))) # (!\inst7|cursor_column\(2) & (\inst7|PACKET_CHAR2\(2) & !\inst7|new_cursor_column[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(2),
	datab => \inst7|PACKET_CHAR2\(2),
	datad => VCC,
	cin => \inst7|new_cursor_column[1]~13\,
	combout => \inst7|new_cursor_column[2]~14_combout\,
	cout => \inst7|new_cursor_column[2]~15\);

-- Location: FF_X23_Y20_N17
\inst7|new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(2));

-- Location: LCCOMB_X22_Y20_N8
\inst7|cursor_column~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~8_combout\ = (\inst7|new_cursor_column\(2) & (\inst7|cursor_column[1]~0_combout\ & \inst7|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|new_cursor_column\(2),
	datac => \inst7|cursor_column[1]~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~8_combout\);

-- Location: FF_X22_Y20_N9
\inst7|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~8_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(2));

-- Location: LCCOMB_X23_Y20_N18
\inst7|new_cursor_column[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[3]~16_combout\ = (\inst7|cursor_column\(3) & ((\inst7|PACKET_CHAR2\(3) & (\inst7|new_cursor_column[2]~15\ & VCC)) # (!\inst7|PACKET_CHAR2\(3) & (!\inst7|new_cursor_column[2]~15\)))) # (!\inst7|cursor_column\(3) & 
-- ((\inst7|PACKET_CHAR2\(3) & (!\inst7|new_cursor_column[2]~15\)) # (!\inst7|PACKET_CHAR2\(3) & ((\inst7|new_cursor_column[2]~15\) # (GND)))))
-- \inst7|new_cursor_column[3]~17\ = CARRY((\inst7|cursor_column\(3) & (!\inst7|PACKET_CHAR2\(3) & !\inst7|new_cursor_column[2]~15\)) # (!\inst7|cursor_column\(3) & ((!\inst7|new_cursor_column[2]~15\) # (!\inst7|PACKET_CHAR2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(3),
	datab => \inst7|PACKET_CHAR2\(3),
	datad => VCC,
	cin => \inst7|new_cursor_column[2]~15\,
	combout => \inst7|new_cursor_column[3]~16_combout\,
	cout => \inst7|new_cursor_column[3]~17\);

-- Location: FF_X23_Y20_N19
\inst7|new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(3));

-- Location: LCCOMB_X22_Y20_N10
\inst7|cursor_column~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~7_combout\ = (\inst7|new_cursor_column\(3) & (\inst7|cursor_column[1]~0_combout\ & \inst7|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|new_cursor_column\(3),
	datac => \inst7|cursor_column[1]~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~7_combout\);

-- Location: FF_X22_Y20_N11
\inst7|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~7_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(3));

-- Location: LCCOMB_X23_Y20_N20
\inst7|new_cursor_column[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[4]~18_combout\ = ((\inst7|PACKET_CHAR2\(4) $ (\inst7|cursor_column\(4) $ (!\inst7|new_cursor_column[3]~17\)))) # (GND)
-- \inst7|new_cursor_column[4]~19\ = CARRY((\inst7|PACKET_CHAR2\(4) & ((\inst7|cursor_column\(4)) # (!\inst7|new_cursor_column[3]~17\))) # (!\inst7|PACKET_CHAR2\(4) & (\inst7|cursor_column\(4) & !\inst7|new_cursor_column[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR2\(4),
	datab => \inst7|cursor_column\(4),
	datad => VCC,
	cin => \inst7|new_cursor_column[3]~17\,
	combout => \inst7|new_cursor_column[4]~18_combout\,
	cout => \inst7|new_cursor_column[4]~19\);

-- Location: FF_X23_Y20_N21
\inst7|new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(4));

-- Location: LCCOMB_X22_Y20_N28
\inst7|cursor_column~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~6_combout\ = (\inst7|new_cursor_column\(4) & (\inst7|cursor_column[1]~0_combout\ & \inst7|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_column\(4),
	datac => \inst7|cursor_column[1]~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~6_combout\);

-- Location: FF_X22_Y20_N29
\inst7|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~6_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(4));

-- Location: LCCOMB_X23_Y20_N22
\inst7|new_cursor_column[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[5]~20_combout\ = (\inst7|cursor_column\(5) & ((\inst7|PACKET_CHAR2\(5) & (\inst7|new_cursor_column[4]~19\ & VCC)) # (!\inst7|PACKET_CHAR2\(5) & (!\inst7|new_cursor_column[4]~19\)))) # (!\inst7|cursor_column\(5) & 
-- ((\inst7|PACKET_CHAR2\(5) & (!\inst7|new_cursor_column[4]~19\)) # (!\inst7|PACKET_CHAR2\(5) & ((\inst7|new_cursor_column[4]~19\) # (GND)))))
-- \inst7|new_cursor_column[5]~21\ = CARRY((\inst7|cursor_column\(5) & (!\inst7|PACKET_CHAR2\(5) & !\inst7|new_cursor_column[4]~19\)) # (!\inst7|cursor_column\(5) & ((!\inst7|new_cursor_column[4]~19\) # (!\inst7|PACKET_CHAR2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(5),
	datab => \inst7|PACKET_CHAR2\(5),
	datad => VCC,
	cin => \inst7|new_cursor_column[4]~19\,
	combout => \inst7|new_cursor_column[5]~20_combout\,
	cout => \inst7|new_cursor_column[5]~21\);

-- Location: FF_X23_Y20_N23
\inst7|new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[5]~20_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(5));

-- Location: LCCOMB_X22_Y20_N22
\inst7|cursor_column~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~5_combout\ = (\inst7|new_cursor_column\(5) & (\inst7|cursor_column[1]~0_combout\ & \inst7|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|new_cursor_column\(5),
	datac => \inst7|cursor_column[1]~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~5_combout\);

-- Location: FF_X22_Y20_N23
\inst7|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~5_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(5));

-- Location: LCCOMB_X23_Y20_N24
\inst7|new_cursor_column[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[6]~22_combout\ = ((\inst7|PACKET_CHAR2\(6) $ (\inst7|cursor_column\(6) $ (!\inst7|new_cursor_column[5]~21\)))) # (GND)
-- \inst7|new_cursor_column[6]~23\ = CARRY((\inst7|PACKET_CHAR2\(6) & ((\inst7|cursor_column\(6)) # (!\inst7|new_cursor_column[5]~21\))) # (!\inst7|PACKET_CHAR2\(6) & (\inst7|cursor_column\(6) & !\inst7|new_cursor_column[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR2\(6),
	datab => \inst7|cursor_column\(6),
	datad => VCC,
	cin => \inst7|new_cursor_column[5]~21\,
	combout => \inst7|new_cursor_column[6]~22_combout\,
	cout => \inst7|new_cursor_column[6]~23\);

-- Location: FF_X23_Y20_N25
\inst7|new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[6]~22_combout\,
	asdata => VCC,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(6));

-- Location: LCCOMB_X23_Y20_N4
\inst7|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~12_combout\ = ((\inst7|new_cursor_column\(6) & (\inst7|cursor_column[1]~0_combout\ & \inst7|cursor_column~2_combout\))) # (!\inst7|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_column\(6),
	datab => \inst7|cursor_column[1]~0_combout\,
	datac => \inst7|Equal3~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~12_combout\);

-- Location: FF_X23_Y20_N5
\inst7|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~12_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(6));

-- Location: LCCOMB_X23_Y20_N26
\inst7|new_cursor_column[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_column[7]~24_combout\ = (\inst7|cursor_column\(7) & ((\inst7|PACKET_CHAR2\(7) & (\inst7|new_cursor_column[6]~23\ & VCC)) # (!\inst7|PACKET_CHAR2\(7) & (!\inst7|new_cursor_column[6]~23\)))) # (!\inst7|cursor_column\(7) & 
-- ((\inst7|PACKET_CHAR2\(7) & (!\inst7|new_cursor_column[6]~23\)) # (!\inst7|PACKET_CHAR2\(7) & ((\inst7|new_cursor_column[6]~23\) # (GND)))))
-- \inst7|new_cursor_column[7]~25\ = CARRY((\inst7|cursor_column\(7) & (!\inst7|PACKET_CHAR2\(7) & !\inst7|new_cursor_column[6]~23\)) # (!\inst7|cursor_column\(7) & ((!\inst7|new_cursor_column[6]~23\) # (!\inst7|PACKET_CHAR2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(7),
	datab => \inst7|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \inst7|new_cursor_column[6]~23\,
	combout => \inst7|new_cursor_column[7]~24_combout\,
	cout => \inst7|new_cursor_column[7]~25\);

-- Location: FF_X23_Y20_N27
\inst7|new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(7));

-- Location: LCCOMB_X23_Y18_N22
\inst7|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~11_combout\ = (\inst7|cursor_column~2_combout\ & ((\inst7|new_cursor_column\(7)) # (!\inst7|cursor_column[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|new_cursor_column\(7),
	datac => \inst7|cursor_column[1]~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~11_combout\);

-- Location: FF_X23_Y18_N23
\inst7|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~11_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(7));

-- Location: FF_X23_Y20_N29
\inst7|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_column[8]~26_combout\,
	asdata => VCC,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_column\(8));

-- Location: LCCOMB_X22_Y20_N14
\inst7|cursor_column~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_column~3_combout\ = ((\inst7|new_cursor_column\(8) & (\inst7|cursor_column[1]~0_combout\ & \inst7|cursor_column~2_combout\))) # (!\inst7|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_column\(8),
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|cursor_column[1]~0_combout\,
	datad => \inst7|cursor_column~2_combout\,
	combout => \inst7|cursor_column~3_combout\);

-- Location: FF_X22_Y20_N15
\inst7|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_column~3_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_column\(8));

-- Location: LCCOMB_X22_Y20_N18
\inst|LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan17~0_combout\ = (\inst7|cursor_column\(3)) # ((\inst7|cursor_column\(2)) # ((\inst7|cursor_column\(5)) # (\inst7|cursor_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(3),
	datab => \inst7|cursor_column\(2),
	datac => \inst7|cursor_column\(5),
	datad => \inst7|cursor_column\(4),
	combout => \inst|LessThan17~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst|Ball_X_pos[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[0]~0_combout\ = (\inst7|cursor_column\(7)) # ((\inst7|cursor_column\(0)) # ((\inst7|cursor_column\(1)) # (!\inst7|cursor_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(7),
	datab => \inst7|cursor_column\(0),
	datac => \inst7|cursor_column\(1),
	datad => \inst7|cursor_column\(6),
	combout => \inst|Ball_X_pos[0]~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst|Ball_X_pos[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[0]~1_combout\ = (\inst|Ball_X_pos[0]~0_combout\) # (!\inst7|cursor_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cursor_column\(8),
	datad => \inst|Ball_X_pos[0]~0_combout\,
	combout => \inst|Ball_X_pos[0]~1_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst|Ball_X_pos[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[0]~2_combout\ = (!\inst7|cursor_column\(9) & (\inst11|Equal2~0_combout\ & ((\inst|LessThan17~0_combout\) # (\inst|Ball_X_pos[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(9),
	datab => \inst11|Equal2~0_combout\,
	datac => \inst|LessThan17~0_combout\,
	datad => \inst|Ball_X_pos[0]~1_combout\,
	combout => \inst|Ball_X_pos[0]~2_combout\);

-- Location: FF_X22_Y18_N29
\inst|Ball_X_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst7|cursor_column\(8),
	sload => VCC,
	ena => \inst|Ball_X_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(8));

-- Location: LCCOMB_X23_Y18_N12
\inst|Ball_X_pos~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos~3_combout\ = (\inst7|cursor_column\(7) & ((\inst7|cursor_column\(9)) # (!\inst7|cursor_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(7),
	datac => \inst7|cursor_column\(9),
	datad => \inst7|cursor_column\(8),
	combout => \inst|Ball_X_pos~3_combout\);

-- Location: FF_X23_Y18_N13
\inst|Ball_X_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos~3_combout\,
	ena => \inst|Ball_X_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(7));

-- Location: LCCOMB_X23_Y18_N6
\inst|LessThan17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan17~1_combout\ = (\inst7|cursor_column\(6) & ((\inst7|cursor_column\(1)) # ((\inst|LessThan17~0_combout\) # (\inst7|cursor_column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(6),
	datab => \inst7|cursor_column\(1),
	datac => \inst|LessThan17~0_combout\,
	datad => \inst7|cursor_column\(0),
	combout => \inst|LessThan17~1_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst|LessThan17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan17~2_combout\ = (!\inst7|cursor_column\(9) & (\inst7|cursor_column\(8) & ((\inst7|cursor_column\(7)) # (\inst|LessThan17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(9),
	datab => \inst7|cursor_column\(7),
	datac => \inst7|cursor_column\(8),
	datad => \inst|LessThan17~1_combout\,
	combout => \inst|LessThan17~2_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst|Ball_X_pos~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos~4_combout\ = (\inst7|cursor_column\(6)) # (\inst|LessThan17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_column\(6),
	datad => \inst|LessThan17~2_combout\,
	combout => \inst|Ball_X_pos~4_combout\);

-- Location: FF_X23_Y18_N31
\inst|Ball_X_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos~4_combout\,
	ena => \inst|Ball_X_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(6));

-- Location: LCCOMB_X23_Y18_N8
\inst|Ball_X_pos~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos~5_combout\ = (\inst7|cursor_column\(5) & !\inst|LessThan17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|cursor_column\(5),
	datad => \inst|LessThan17~2_combout\,
	combout => \inst|Ball_X_pos~5_combout\);

-- Location: FF_X23_Y18_N9
\inst|Ball_X_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos~5_combout\,
	ena => \inst|Ball_X_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(5));

-- Location: LCCOMB_X23_Y18_N26
\inst|Ball_X_pos~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos~6_combout\ = (\inst7|cursor_column\(4) & !\inst|LessThan17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|cursor_column\(4),
	datad => \inst|LessThan17~2_combout\,
	combout => \inst|Ball_X_pos~6_combout\);

-- Location: FF_X23_Y18_N27
\inst|Ball_X_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos~6_combout\,
	ena => \inst|Ball_X_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(4));

-- Location: LCCOMB_X23_Y18_N4
\inst|Ball_X_pos~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos~7_combout\ = (\inst7|cursor_column\(3) & !\inst|LessThan17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cursor_column\(3),
	datad => \inst|LessThan17~2_combout\,
	combout => \inst|Ball_X_pos~7_combout\);

-- Location: FF_X23_Y18_N5
\inst|Ball_X_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos~7_combout\,
	ena => \inst|Ball_X_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(3));

-- Location: LCCOMB_X23_Y18_N10
\inst|Ball_X_pos~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos~8_combout\ = (\inst7|cursor_column\(2) & !\inst|LessThan17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|cursor_column\(2),
	datad => \inst|LessThan17~2_combout\,
	combout => \inst|Ball_X_pos~8_combout\);

-- Location: FF_X23_Y18_N11
\inst|Ball_X_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos~8_combout\,
	ena => \inst|Ball_X_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(2));

-- Location: LCCOMB_X23_Y18_N0
\inst|Ball_X_pos~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos~9_combout\ = (\inst7|cursor_column\(1) & !\inst|LessThan17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|cursor_column\(1),
	datad => \inst|LessThan17~2_combout\,
	combout => \inst|Ball_X_pos~9_combout\);

-- Location: FF_X23_Y18_N1
\inst|Ball_X_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos~9_combout\,
	ena => \inst|Ball_X_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(1));

-- Location: LCCOMB_X20_Y16_N14
\inst|LessThan21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~1_cout\ = CARRY((\inst|Pipe1_X_pos\(1) & !\inst|Ball_X_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(1),
	datab => \inst|Ball_X_pos\(1),
	datad => VCC,
	cout => \inst|LessThan21~1_cout\);

-- Location: LCCOMB_X20_Y16_N16
\inst|LessThan21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~3_cout\ = CARRY((\inst|Ball_X_pos\(2) & ((!\inst|LessThan21~1_cout\) # (!\inst|Pipe1_X_pos\(2)))) # (!\inst|Ball_X_pos\(2) & (!\inst|Pipe1_X_pos\(2) & !\inst|LessThan21~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(2),
	datab => \inst|Pipe1_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan21~1_cout\,
	cout => \inst|LessThan21~3_cout\);

-- Location: LCCOMB_X20_Y16_N18
\inst|LessThan21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~5_cout\ = CARRY((\inst|Pipe1_X_pos\(3) & ((!\inst|LessThan21~3_cout\) # (!\inst|Ball_X_pos\(3)))) # (!\inst|Pipe1_X_pos\(3) & (!\inst|Ball_X_pos\(3) & !\inst|LessThan21~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(3),
	datab => \inst|Ball_X_pos\(3),
	datad => VCC,
	cin => \inst|LessThan21~3_cout\,
	cout => \inst|LessThan21~5_cout\);

-- Location: LCCOMB_X20_Y16_N20
\inst|LessThan21~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~7_cout\ = CARRY((\inst|Ball_X_pos\(4) & ((!\inst|LessThan21~5_cout\) # (!\inst|Add12~2_combout\))) # (!\inst|Ball_X_pos\(4) & (!\inst|Add12~2_combout\ & !\inst|LessThan21~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(4),
	datab => \inst|Add12~2_combout\,
	datad => VCC,
	cin => \inst|LessThan21~5_cout\,
	cout => \inst|LessThan21~7_cout\);

-- Location: LCCOMB_X20_Y16_N22
\inst|LessThan21~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~9_cout\ = CARRY((\inst|Ball_X_pos\(5) & (\inst|Add12~4_combout\ & !\inst|LessThan21~7_cout\)) # (!\inst|Ball_X_pos\(5) & ((\inst|Add12~4_combout\) # (!\inst|LessThan21~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(5),
	datab => \inst|Add12~4_combout\,
	datad => VCC,
	cin => \inst|LessThan21~7_cout\,
	cout => \inst|LessThan21~9_cout\);

-- Location: LCCOMB_X20_Y16_N24
\inst|LessThan21~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~11_cout\ = CARRY((\inst|Add12~6_combout\ & (\inst|Ball_X_pos\(6) & !\inst|LessThan21~9_cout\)) # (!\inst|Add12~6_combout\ & ((\inst|Ball_X_pos\(6)) # (!\inst|LessThan21~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add12~6_combout\,
	datab => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|LessThan21~9_cout\,
	cout => \inst|LessThan21~11_cout\);

-- Location: LCCOMB_X20_Y16_N26
\inst|LessThan21~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~13_cout\ = CARRY((\inst|Ball_X_pos\(7) & (\inst|Add12~8_combout\ & !\inst|LessThan21~11_cout\)) # (!\inst|Ball_X_pos\(7) & ((\inst|Add12~8_combout\) # (!\inst|LessThan21~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(7),
	datab => \inst|Add12~8_combout\,
	datad => VCC,
	cin => \inst|LessThan21~11_cout\,
	cout => \inst|LessThan21~13_cout\);

-- Location: LCCOMB_X20_Y16_N28
\inst|LessThan21~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan21~14_combout\ = (\inst|Ball_X_pos\(8) & (\inst|LessThan21~13_cout\ & \inst|Add12~10_combout\)) # (!\inst|Ball_X_pos\(8) & ((\inst|LessThan21~13_cout\) # (\inst|Add12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(8),
	datad => \inst|Add12~10_combout\,
	cin => \inst|LessThan21~13_cout\,
	combout => \inst|LessThan21~14_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst|Ball_X_pos~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos~10_combout\ = (\inst7|cursor_column\(0) & !\inst|LessThan17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cursor_column\(0),
	datad => \inst|LessThan17~2_combout\,
	combout => \inst|Ball_X_pos~10_combout\);

-- Location: FF_X23_Y18_N19
\inst|Ball_X_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos~10_combout\,
	ena => \inst|Ball_X_pos[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(0));

-- Location: LCCOMB_X23_Y16_N12
\inst|LessThan20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~1_cout\ = CARRY(\inst|Ball_X_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(0),
	datad => VCC,
	cout => \inst|LessThan20~1_cout\);

-- Location: LCCOMB_X23_Y16_N14
\inst|LessThan20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~3_cout\ = CARRY((\inst|Pipe1_X_pos\(1) & ((!\inst|LessThan20~1_cout\) # (!\inst|Ball_X_pos\(1)))) # (!\inst|Pipe1_X_pos\(1) & (!\inst|Ball_X_pos\(1) & !\inst|LessThan20~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(1),
	datab => \inst|Ball_X_pos\(1),
	datad => VCC,
	cin => \inst|LessThan20~1_cout\,
	cout => \inst|LessThan20~3_cout\);

-- Location: LCCOMB_X23_Y16_N16
\inst|LessThan20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~5_cout\ = CARRY((\inst|Pipe1_X_pos\(2) & (\inst|Ball_X_pos\(2) & !\inst|LessThan20~3_cout\)) # (!\inst|Pipe1_X_pos\(2) & ((\inst|Ball_X_pos\(2)) # (!\inst|LessThan20~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(2),
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan20~3_cout\,
	cout => \inst|LessThan20~5_cout\);

-- Location: LCCOMB_X23_Y16_N18
\inst|LessThan20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~7_cout\ = CARRY((\inst|Pipe1_X_pos\(3) & ((!\inst|LessThan20~5_cout\) # (!\inst|Ball_X_pos\(3)))) # (!\inst|Pipe1_X_pos\(3) & (!\inst|Ball_X_pos\(3) & !\inst|LessThan20~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(3),
	datab => \inst|Ball_X_pos\(3),
	datad => VCC,
	cin => \inst|LessThan20~5_cout\,
	cout => \inst|LessThan20~7_cout\);

-- Location: LCCOMB_X23_Y16_N20
\inst|LessThan20~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~9_cout\ = CARRY((\inst|Ball_X_pos\(4) & ((!\inst|LessThan20~7_cout\) # (!\inst|Add11~0_combout\))) # (!\inst|Ball_X_pos\(4) & (!\inst|Add11~0_combout\ & !\inst|LessThan20~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(4),
	datab => \inst|Add11~0_combout\,
	datad => VCC,
	cin => \inst|LessThan20~7_cout\,
	cout => \inst|LessThan20~9_cout\);

-- Location: LCCOMB_X23_Y16_N22
\inst|LessThan20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~11_cout\ = CARRY((\inst|Ball_X_pos\(5) & (\inst|Add11~2_combout\ & !\inst|LessThan20~9_cout\)) # (!\inst|Ball_X_pos\(5) & ((\inst|Add11~2_combout\) # (!\inst|LessThan20~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(5),
	datab => \inst|Add11~2_combout\,
	datad => VCC,
	cin => \inst|LessThan20~9_cout\,
	cout => \inst|LessThan20~11_cout\);

-- Location: LCCOMB_X23_Y16_N24
\inst|LessThan20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~13_cout\ = CARRY((\inst|Ball_X_pos\(6) & ((!\inst|LessThan20~11_cout\) # (!\inst|Add11~4_combout\))) # (!\inst|Ball_X_pos\(6) & (!\inst|Add11~4_combout\ & !\inst|LessThan20~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(6),
	datab => \inst|Add11~4_combout\,
	datad => VCC,
	cin => \inst|LessThan20~11_cout\,
	cout => \inst|LessThan20~13_cout\);

-- Location: LCCOMB_X23_Y16_N26
\inst|LessThan20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~15_cout\ = CARRY((\inst|Add11~6_combout\ & ((!\inst|LessThan20~13_cout\) # (!\inst|Ball_X_pos\(7)))) # (!\inst|Add11~6_combout\ & (!\inst|Ball_X_pos\(7) & !\inst|LessThan20~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~6_combout\,
	datab => \inst|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|LessThan20~13_cout\,
	cout => \inst|LessThan20~15_cout\);

-- Location: LCCOMB_X23_Y16_N28
\inst|LessThan20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan20~16_combout\ = (\inst|Ball_X_pos\(8) & ((!\inst|Add11~8_combout\) # (!\inst|LessThan20~15_cout\))) # (!\inst|Ball_X_pos\(8) & (!\inst|LessThan20~15_cout\ & !\inst|Add11~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(8),
	datad => \inst|Add11~8_combout\,
	cin => \inst|LessThan20~15_cout\,
	combout => \inst|LessThan20~16_combout\);

-- Location: LCCOMB_X21_Y16_N0
\inst|Move_Ball~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Move_Ball~0_combout\ = (!\inst|Add11~10_combout\ & (!\inst|LessThan20~16_combout\ & ((\inst|Add12~12_combout\) # (!\inst|LessThan21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add12~12_combout\,
	datab => \inst|Add11~10_combout\,
	datac => \inst|LessThan21~14_combout\,
	datad => \inst|LessThan20~16_combout\,
	combout => \inst|Move_Ball~0_combout\);

-- Location: LCCOMB_X21_Y16_N4
\inst|Move_Ball~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Move_Ball~1_combout\ = (\inst|Move_Ball~0_combout\ & ((\inst|Ball_Y_pos\(9)) # ((!\inst|Ball_Y_pos\(8) & !\inst|LessThan22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Ball_Y_pos\(9),
	datac => \inst|LessThan22~1_combout\,
	datad => \inst|Move_Ball~0_combout\,
	combout => \inst|Move_Ball~1_combout\);

-- Location: FF_X21_Y16_N5
\inst|In_Pipe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Move_Ball~1_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|In_Pipe~q\);

-- Location: FF_X21_Y16_N9
\inst|Life_Count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|In_Pipe~q\,
	sload => VCC,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Life_Count~q\);

-- Location: LCCOMB_X21_Y16_N8
\inst|life[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|life[2]~0_combout\ = (\inst|In_Pipe~q\ & (!\inst|Life_Count~q\ & \inst11|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|In_Pipe~q\,
	datac => \inst|Life_Count~q\,
	datad => \inst11|Equal2~0_combout\,
	combout => \inst|life[2]~0_combout\);

-- Location: FF_X21_Y16_N31
\inst|life_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|life_temp[0]~1_combout\,
	ena => \inst|life[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|life_temp\(0));

-- Location: FF_X15_Y16_N31
\inst|life[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|life_temp\(0),
	sload => VCC,
	ena => \inst|life[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|life\(0));

-- Location: LCCOMB_X10_Y16_N0
\inst9|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector3~1_combout\ = (!\sw[0]~input_o\ & (((\inst|life\(1)) # (!\inst|life\(2))) # (!\inst|life\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|life\(0),
	datab => \sw[0]~input_o\,
	datac => \inst|life\(1),
	datad => \inst|life\(2),
	combout => \inst9|Selector3~1_combout\);

-- Location: LCCOMB_X10_Y16_N16
\inst9|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector1~0_combout\ = (!\inst9|Selector3~3_combout\ & ((\inst9|State.PLAY~q\ & ((\inst9|Selector3~1_combout\))) # (!\inst9|State.PLAY~q\ & (\inst9|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector3~2_combout\,
	datab => \inst9|Selector3~3_combout\,
	datac => \inst9|State.PLAY~q\,
	datad => \inst9|Selector3~1_combout\,
	combout => \inst9|Selector1~0_combout\);

-- Location: FF_X10_Y16_N17
\inst9|State.PLAY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst9|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|State.PLAY~q\);

-- Location: LCCOMB_X10_Y16_N10
\inst9|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector3~4_combout\ = (!\sw[0]~input_o\ & (\inst9|State.PLAY~q\ & (!\inst9|Selector3~3_combout\ & !\inst9|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \inst9|State.PLAY~q\,
	datac => \inst9|Selector3~3_combout\,
	datad => \inst9|Selector3~1_combout\,
	combout => \inst9|Selector3~4_combout\);

-- Location: LCCOMB_X10_Y16_N20
\inst9|Selector3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector3~5_combout\ = (\inst9|Selector3~2_combout\) # ((\inst9|Selector3~3_combout\) # ((\inst9|State.PLAY~q\ & !\inst9|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector3~2_combout\,
	datab => \inst9|State.PLAY~q\,
	datac => \inst9|Selector3~3_combout\,
	datad => \inst9|Selector3~1_combout\,
	combout => \inst9|Selector3~5_combout\);

-- Location: LCCOMB_X10_Y16_N22
\inst9|Selector3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector3~6_combout\ = (\inst9|Selector3~4_combout\) # ((\inst9|State.GAMEOVER~q\ & !\inst9|Selector3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector3~4_combout\,
	datac => \inst9|State.GAMEOVER~q\,
	datad => \inst9|Selector3~5_combout\,
	combout => \inst9|Selector3~6_combout\);

-- Location: FF_X10_Y16_N23
\inst9|State.GAMEOVER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst9|Selector3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|State.GAMEOVER~q\);

-- Location: LCCOMB_X10_Y16_N28
\inst9|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9|Selector6~0_combout\ = (!\inst9|State.GAMEOVER~q\ & !\inst9|State.PLAY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|State.GAMEOVER~q\,
	datad => \inst9|State.PLAY~q\,
	combout => \inst9|Selector6~0_combout\);

-- Location: FF_X17_Y19_N19
\inst9|STATE_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst9|Selector6~0_combout\,
	sload => VCC,
	ena => \inst9|STATE_OUT[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|STATE_OUT\(0));

-- Location: FF_X15_Y17_N17
\inst|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(8),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(8));

-- Location: FF_X15_Y17_N23
\inst|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(7),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(7));

-- Location: FF_X15_Y17_N13
\inst|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(6),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(6));

-- Location: FF_X15_Y20_N31
\inst|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(5),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(5));

-- Location: FF_X15_Y19_N13
\inst|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(4),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(4));

-- Location: FF_X15_Y17_N31
\inst|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(3),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(3));

-- Location: LCCOMB_X22_Y19_N2
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|SYNC|pixel_column\(4) & (\inst|SYNC|pixel_column\(3) $ (VCC))) # (!\inst|SYNC|pixel_column\(4) & (\inst|SYNC|pixel_column\(3) & VCC))
-- \inst|Add0~1\ = CARRY((\inst|SYNC|pixel_column\(4) & \inst|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X22_Y19_N4
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|SYNC|pixel_column\(5) & (!\inst|Add0~1\)) # (!\inst|SYNC|pixel_column\(5) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X22_Y19_N6
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|SYNC|pixel_column\(6) & (\inst|Add0~3\ $ (GND))) # (!\inst|SYNC|pixel_column\(6) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|SYNC|pixel_column\(6) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X22_Y19_N8
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|SYNC|pixel_column\(7) & (!\inst|Add0~5\)) # (!\inst|SYNC|pixel_column\(7) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X22_Y19_N10
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|SYNC|pixel_column\(8) & (\inst|Add0~7\ $ (GND))) # (!\inst|SYNC|pixel_column\(8) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|SYNC|pixel_column\(8) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X15_Y17_N29
\inst|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(2),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(2));

-- Location: FF_X15_Y17_N27
\inst|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(1),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(1));

-- Location: FF_X15_Y17_N7
\inst|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(0),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(0));

-- Location: LCCOMB_X22_Y19_N14
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\inst|Ball_X_pos\(0) & !\inst|SYNC|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(0),
	datab => \inst|SYNC|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X22_Y19_N16
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst|SYNC|pixel_column\(1) & ((!\inst|LessThan0~1_cout\) # (!\inst|Ball_X_pos\(1)))) # (!\inst|SYNC|pixel_column\(1) & (!\inst|Ball_X_pos\(1) & !\inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|Ball_X_pos\(1),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X22_Y19_N18
\inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & (\inst|Ball_X_pos\(2) & !\inst|LessThan0~3_cout\)) # (!\inst|SYNC|pixel_column\(2) & ((\inst|Ball_X_pos\(2)) # (!\inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X22_Y19_N20
\inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst|SYNC|pixel_column\(3) & (!\inst|Ball_X_pos\(3) & !\inst|LessThan0~5_cout\)) # (!\inst|SYNC|pixel_column\(3) & ((!\inst|LessThan0~5_cout\) # (!\inst|Ball_X_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(3),
	datab => \inst|Ball_X_pos\(3),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X22_Y19_N22
\inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst|Add0~0_combout\ & (\inst|Ball_X_pos\(4) & !\inst|LessThan0~7_cout\)) # (!\inst|Add0~0_combout\ & ((\inst|Ball_X_pos\(4)) # (!\inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|Ball_X_pos\(4),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X22_Y19_N24
\inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst|Ball_X_pos\(5) & (\inst|Add0~2_combout\ & !\inst|LessThan0~9_cout\)) # (!\inst|Ball_X_pos\(5) & ((\inst|Add0~2_combout\) # (!\inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(5),
	datab => \inst|Add0~2_combout\,
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X22_Y19_N26
\inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst|Add0~4_combout\ & (\inst|Ball_X_pos\(6) & !\inst|LessThan0~11_cout\)) # (!\inst|Add0~4_combout\ & ((\inst|Ball_X_pos\(6)) # (!\inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X22_Y19_N28
\inst|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~15_cout\ = CARRY((\inst|Ball_X_pos\(7) & (\inst|Add0~6_combout\ & !\inst|LessThan0~13_cout\)) # (!\inst|Ball_X_pos\(7) & ((\inst|Add0~6_combout\) # (!\inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(7),
	datab => \inst|Add0~6_combout\,
	datad => VCC,
	cin => \inst|LessThan0~13_cout\,
	cout => \inst|LessThan0~15_cout\);

-- Location: LCCOMB_X22_Y19_N30
\inst|LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~16_combout\ = (\inst|Add0~8_combout\ & (!\inst|LessThan0~15_cout\ & \inst|Ball_X_pos\(8))) # (!\inst|Add0~8_combout\ & ((\inst|Ball_X_pos\(8)) # (!\inst|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datad => \inst|Ball_X_pos\(8),
	cin => \inst|LessThan0~15_cout\,
	combout => \inst|LessThan0~16_combout\);

-- Location: LCCOMB_X17_Y19_N30
\inst|RGB_SWITCH~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|RGB_SWITCH~6_combout\ = (\inst9|STATE_OUT\(0) & (!\inst9|STATE_OUT\(2) & (!\inst|LessThan0~16_combout\ & !\inst9|STATE_OUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(0),
	datab => \inst9|STATE_OUT\(2),
	datac => \inst|LessThan0~16_combout\,
	datad => \inst9|STATE_OUT\(1),
	combout => \inst|RGB_SWITCH~6_combout\);

-- Location: LCCOMB_X15_Y21_N10
\inst|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~1_combout\ = (\inst|SYNC|v_count\(9)) # (\inst|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(9),
	datac => \inst|SYNC|LessThan7~0_combout\,
	combout => \inst|SYNC|LessThan7~1_combout\);

-- Location: FF_X14_Y17_N29
\inst|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(8),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(8));

-- Location: FF_X14_Y17_N27
\inst|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(7));

-- Location: FF_X14_Y17_N11
\inst|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(6),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(6));

-- Location: FF_X14_Y17_N31
\inst|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(5));

-- Location: FF_X14_Y17_N5
\inst|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(4));

-- Location: LCCOMB_X14_Y18_N28
\inst|SYNC|pixel_row[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_row[3]~feeder_combout\ = \inst|SYNC|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|v_count\(3),
	combout => \inst|SYNC|pixel_row[3]~feeder_combout\);

-- Location: FF_X14_Y18_N29
\inst|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|pixel_row[3]~feeder_combout\,
	ena => \inst|SYNC|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(3));

-- Location: LCCOMB_X19_Y20_N12
\inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|SYNC|pixel_row\(4) & (\inst|SYNC|pixel_row\(3) $ (VCC))) # (!\inst|SYNC|pixel_row\(4) & (\inst|SYNC|pixel_row\(3) & VCC))
-- \inst|Add2~1\ = CARRY((\inst|SYNC|pixel_row\(4) & \inst|SYNC|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|SYNC|pixel_row\(3),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X19_Y20_N14
\inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|SYNC|pixel_row\(5) & (!\inst|Add2~1\)) # (!\inst|SYNC|pixel_row\(5) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X19_Y20_N16
\inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|SYNC|pixel_row\(6) & (\inst|Add2~3\ $ (GND))) # (!\inst|SYNC|pixel_row\(6) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|SYNC|pixel_row\(6) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X19_Y20_N18
\inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|SYNC|pixel_row\(7) & (!\inst|Add2~5\)) # (!\inst|SYNC|pixel_row\(7) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|SYNC|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X19_Y20_N20
\inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|SYNC|pixel_row\(8) & (\inst|Add2~7\ $ (GND))) # (!\inst|SYNC|pixel_row\(8) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|SYNC|pixel_row\(8) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X19_Y20_N22
\inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = \inst|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\);

-- Location: FF_X14_Y18_N3
\inst|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(2),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(2));

-- Location: FF_X14_Y18_N5
\inst|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(1),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(1));

-- Location: FF_X14_Y18_N17
\inst|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(0));

-- Location: LCCOMB_X21_Y18_N0
\inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_cout\ = CARRY((\inst|Ball_Y_pos\(0) & !\inst|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(0),
	datab => \inst|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst|LessThan2~1_cout\);

-- Location: LCCOMB_X21_Y18_N2
\inst|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_cout\ = CARRY((\inst|Ball_Y_pos\(1) & ((\inst|SYNC|pixel_row\(1)) # (!\inst|LessThan2~1_cout\))) # (!\inst|Ball_Y_pos\(1) & (\inst|SYNC|pixel_row\(1) & !\inst|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(1),
	datab => \inst|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst|LessThan2~1_cout\,
	cout => \inst|LessThan2~3_cout\);

-- Location: LCCOMB_X21_Y18_N4
\inst|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~5_cout\ = CARRY((\inst|SYNC|pixel_row\(2) & (!\inst|Ball_Y_pos\(2) & !\inst|LessThan2~3_cout\)) # (!\inst|SYNC|pixel_row\(2) & ((!\inst|LessThan2~3_cout\) # (!\inst|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(2),
	datab => \inst|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst|LessThan2~3_cout\,
	cout => \inst|LessThan2~5_cout\);

-- Location: LCCOMB_X21_Y18_N6
\inst|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~7_cout\ = CARRY((\inst|SYNC|pixel_row\(3) & (\inst|Ball_Y_pos\(3) & !\inst|LessThan2~5_cout\)) # (!\inst|SYNC|pixel_row\(3) & ((\inst|Ball_Y_pos\(3)) # (!\inst|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|LessThan2~5_cout\,
	cout => \inst|LessThan2~7_cout\);

-- Location: LCCOMB_X21_Y18_N8
\inst|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~9_cout\ = CARRY((\inst|Add2~0_combout\ & (\inst|Ball_Y_pos\(4) & !\inst|LessThan2~7_cout\)) # (!\inst|Add2~0_combout\ & ((\inst|Ball_Y_pos\(4)) # (!\inst|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \inst|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst|LessThan2~7_cout\,
	cout => \inst|LessThan2~9_cout\);

-- Location: LCCOMB_X21_Y18_N10
\inst|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~11_cout\ = CARRY((\inst|Add2~2_combout\ & ((!\inst|LessThan2~9_cout\) # (!\inst|Ball_Y_pos\(5)))) # (!\inst|Add2~2_combout\ & (!\inst|Ball_Y_pos\(5) & !\inst|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|LessThan2~9_cout\,
	cout => \inst|LessThan2~11_cout\);

-- Location: LCCOMB_X21_Y18_N12
\inst|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~13_cout\ = CARRY((\inst|Add2~4_combout\ & (\inst|Ball_Y_pos\(6) & !\inst|LessThan2~11_cout\)) # (!\inst|Add2~4_combout\ & ((\inst|Ball_Y_pos\(6)) # (!\inst|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~4_combout\,
	datab => \inst|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|LessThan2~11_cout\,
	cout => \inst|LessThan2~13_cout\);

-- Location: LCCOMB_X21_Y18_N14
\inst|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~15_cout\ = CARRY((\inst|Add2~6_combout\ & ((!\inst|LessThan2~13_cout\) # (!\inst|Ball_Y_pos\(7)))) # (!\inst|Add2~6_combout\ & (!\inst|Ball_Y_pos\(7) & !\inst|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~6_combout\,
	datab => \inst|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|LessThan2~13_cout\,
	cout => \inst|LessThan2~15_cout\);

-- Location: LCCOMB_X21_Y18_N16
\inst|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~17_cout\ = CARRY((\inst|Ball_Y_pos\(8) & ((!\inst|LessThan2~15_cout\) # (!\inst|Add2~8_combout\))) # (!\inst|Ball_Y_pos\(8) & (!\inst|Add2~8_combout\ & !\inst|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Add2~8_combout\,
	datad => VCC,
	cin => \inst|LessThan2~15_cout\,
	cout => \inst|LessThan2~17_cout\);

-- Location: LCCOMB_X21_Y18_N18
\inst|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~18_combout\ = (\inst|Add2~10_combout\ & (\inst|LessThan2~17_cout\ & \inst|Ball_Y_pos\(9))) # (!\inst|Add2~10_combout\ & ((\inst|LessThan2~17_cout\) # (\inst|Ball_Y_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~10_combout\,
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|LessThan2~17_cout\,
	combout => \inst|LessThan2~18_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst|Ball_X_pos\(3) & (\inst|Ball_X_pos\(4) $ (VCC))) # (!\inst|Ball_X_pos\(3) & (\inst|Ball_X_pos\(4) & VCC))
-- \inst|Add1~1\ = CARRY((\inst|Ball_X_pos\(3) & \inst|Ball_X_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(3),
	datab => \inst|Ball_X_pos\(4),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X22_Y18_N22
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|Ball_X_pos\(5) & (!\inst|Add1~1\)) # (!\inst|Ball_X_pos\(5) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|Ball_X_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X22_Y18_N24
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|Ball_X_pos\(6) & (\inst|Add1~3\ $ (GND))) # (!\inst|Ball_X_pos\(6) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|Ball_X_pos\(6) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X22_Y18_N26
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|Ball_X_pos\(7) & (!\inst|Add1~5\)) # (!\inst|Ball_X_pos\(7) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|Ball_X_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X22_Y18_N28
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|Ball_X_pos\(8) & (\inst|Add1~7\ $ (GND))) # (!\inst|Ball_X_pos\(8) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|Ball_X_pos\(8) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X22_Y18_N30
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = \inst|Add1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\);

-- Location: LCCOMB_X19_Y18_N2
\inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|Ball_Y_pos\(3) & (\inst|Ball_Y_pos\(4) & VCC)) # (!\inst|Ball_Y_pos\(3) & (\inst|Ball_Y_pos\(4) $ (VCC)))
-- \inst|Add3~1\ = CARRY((!\inst|Ball_Y_pos\(3) & \inst|Ball_Y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(3),
	datab => \inst|Ball_Y_pos\(4),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X19_Y18_N4
\inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|Ball_Y_pos\(5) & (!\inst|Add3~1\)) # (!\inst|Ball_Y_pos\(5) & ((\inst|Add3~1\) # (GND)))
-- \inst|Add3~3\ = CARRY((!\inst|Add3~1\) # (!\inst|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X19_Y18_N6
\inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|Ball_Y_pos\(6) & (\inst|Add3~3\ $ (GND))) # (!\inst|Ball_Y_pos\(6) & (!\inst|Add3~3\ & VCC))
-- \inst|Add3~5\ = CARRY((\inst|Ball_Y_pos\(6) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X19_Y18_N8
\inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|Ball_Y_pos\(7) & (!\inst|Add3~5\)) # (!\inst|Ball_Y_pos\(7) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X19_Y18_N10
\inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|Ball_Y_pos\(8) & (\inst|Add3~7\ $ (GND))) # (!\inst|Ball_Y_pos\(8) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|Ball_Y_pos\(8) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X19_Y18_N12
\inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = \inst|Add3~9\ $ (\inst|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\);

-- Location: LCCOMB_X17_Y18_N20
\inst|RGB_SWITCH~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|RGB_SWITCH~2_combout\ = (!\inst|Add2~10_combout\ & (!\inst|Add1~10_combout\ & !\inst|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~10_combout\,
	datac => \inst|Add1~10_combout\,
	datad => \inst|Add3~10_combout\,
	combout => \inst|RGB_SWITCH~2_combout\);

-- Location: FF_X15_Y17_N5
\inst|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst|SYNC|ALT_INV_LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(9));

-- Location: LCCOMB_X22_Y19_N12
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = \inst|Add0~9\ $ (\inst|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|pixel_column\(9),
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\);

-- Location: LCCOMB_X19_Y18_N14
\inst|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_cout\ = CARRY((\inst|SYNC|pixel_row\(0) & !\inst|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(0),
	datab => \inst|Ball_Y_pos\(0),
	datad => VCC,
	cout => \inst|LessThan3~1_cout\);

-- Location: LCCOMB_X19_Y18_N16
\inst|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_cout\ = CARRY((\inst|Ball_Y_pos\(1) & (!\inst|SYNC|pixel_row\(1) & !\inst|LessThan3~1_cout\)) # (!\inst|Ball_Y_pos\(1) & ((!\inst|LessThan3~1_cout\) # (!\inst|SYNC|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(1),
	datab => \inst|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst|LessThan3~1_cout\,
	cout => \inst|LessThan3~3_cout\);

-- Location: LCCOMB_X19_Y18_N18
\inst|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_cout\ = CARRY((\inst|Ball_Y_pos\(2) & ((\inst|SYNC|pixel_row\(2)) # (!\inst|LessThan3~3_cout\))) # (!\inst|Ball_Y_pos\(2) & (\inst|SYNC|pixel_row\(2) & !\inst|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datab => \inst|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst|LessThan3~3_cout\,
	cout => \inst|LessThan3~5_cout\);

-- Location: LCCOMB_X19_Y18_N20
\inst|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_cout\ = CARRY((\inst|SYNC|pixel_row\(3) & (\inst|Ball_Y_pos\(3) & !\inst|LessThan3~5_cout\)) # (!\inst|SYNC|pixel_row\(3) & ((\inst|Ball_Y_pos\(3)) # (!\inst|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|LessThan3~5_cout\,
	cout => \inst|LessThan3~7_cout\);

-- Location: LCCOMB_X19_Y18_N22
\inst|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_cout\ = CARRY((\inst|SYNC|pixel_row\(4) & ((!\inst|LessThan3~7_cout\) # (!\inst|Add3~0_combout\))) # (!\inst|SYNC|pixel_row\(4) & (!\inst|Add3~0_combout\ & !\inst|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|Add3~0_combout\,
	datad => VCC,
	cin => \inst|LessThan3~7_cout\,
	cout => \inst|LessThan3~9_cout\);

-- Location: LCCOMB_X19_Y18_N24
\inst|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~11_cout\ = CARRY((\inst|SYNC|pixel_row\(5) & (\inst|Add3~2_combout\ & !\inst|LessThan3~9_cout\)) # (!\inst|SYNC|pixel_row\(5) & ((\inst|Add3~2_combout\) # (!\inst|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datab => \inst|Add3~2_combout\,
	datad => VCC,
	cin => \inst|LessThan3~9_cout\,
	cout => \inst|LessThan3~11_cout\);

-- Location: LCCOMB_X19_Y18_N26
\inst|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~13_cout\ = CARRY((\inst|Add3~4_combout\ & (\inst|SYNC|pixel_row\(6) & !\inst|LessThan3~11_cout\)) # (!\inst|Add3~4_combout\ & ((\inst|SYNC|pixel_row\(6)) # (!\inst|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~4_combout\,
	datab => \inst|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst|LessThan3~11_cout\,
	cout => \inst|LessThan3~13_cout\);

-- Location: LCCOMB_X19_Y18_N28
\inst|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~15_cout\ = CARRY((\inst|SYNC|pixel_row\(7) & (\inst|Add3~6_combout\ & !\inst|LessThan3~13_cout\)) # (!\inst|SYNC|pixel_row\(7) & ((\inst|Add3~6_combout\) # (!\inst|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datab => \inst|Add3~6_combout\,
	datad => VCC,
	cin => \inst|LessThan3~13_cout\,
	cout => \inst|LessThan3~15_cout\);

-- Location: LCCOMB_X19_Y18_N30
\inst|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~16_combout\ = (\inst|SYNC|pixel_row\(8) & ((!\inst|Add3~8_combout\) # (!\inst|LessThan3~15_cout\))) # (!\inst|SYNC|pixel_row\(8) & (!\inst|LessThan3~15_cout\ & !\inst|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datad => \inst|Add3~8_combout\,
	cin => \inst|LessThan3~15_cout\,
	combout => \inst|LessThan3~16_combout\);

-- Location: LCCOMB_X17_Y18_N26
\inst|RGB_SWITCH~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|RGB_SWITCH~3_combout\ = (\inst|RGB_SWITCH~2_combout\ & (!\inst|Add0~10_combout\ & !\inst|LessThan3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RGB_SWITCH~2_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|LessThan3~16_combout\,
	combout => \inst|RGB_SWITCH~3_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_cout\ = CARRY((\inst|SYNC|pixel_column\(0) & !\inst|Ball_X_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(0),
	datab => \inst|Ball_X_pos\(0),
	datad => VCC,
	cout => \inst|LessThan1~1_cout\);

-- Location: LCCOMB_X22_Y18_N2
\inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_cout\ = CARRY((\inst|SYNC|pixel_column\(1) & (\inst|Ball_X_pos\(1) & !\inst|LessThan1~1_cout\)) # (!\inst|SYNC|pixel_column\(1) & ((\inst|Ball_X_pos\(1)) # (!\inst|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|Ball_X_pos\(1),
	datad => VCC,
	cin => \inst|LessThan1~1_cout\,
	cout => \inst|LessThan1~3_cout\);

-- Location: LCCOMB_X22_Y18_N4
\inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & ((!\inst|LessThan1~3_cout\) # (!\inst|Ball_X_pos\(2)))) # (!\inst|SYNC|pixel_column\(2) & (!\inst|Ball_X_pos\(2) & !\inst|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan1~3_cout\,
	cout => \inst|LessThan1~5_cout\);

-- Location: LCCOMB_X22_Y18_N6
\inst|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_cout\ = CARRY((\inst|Ball_X_pos\(3) & (!\inst|SYNC|pixel_column\(3) & !\inst|LessThan1~5_cout\)) # (!\inst|Ball_X_pos\(3) & ((!\inst|LessThan1~5_cout\) # (!\inst|SYNC|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan1~5_cout\,
	cout => \inst|LessThan1~7_cout\);

-- Location: LCCOMB_X22_Y18_N8
\inst|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~9_cout\ = CARRY((\inst|SYNC|pixel_column\(4) & ((!\inst|LessThan1~7_cout\) # (!\inst|Add1~0_combout\))) # (!\inst|SYNC|pixel_column\(4) & (!\inst|Add1~0_combout\ & !\inst|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|LessThan1~7_cout\,
	cout => \inst|LessThan1~9_cout\);

-- Location: LCCOMB_X22_Y18_N10
\inst|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~11_cout\ = CARRY((\inst|Add1~2_combout\ & ((!\inst|LessThan1~9_cout\) # (!\inst|SYNC|pixel_column\(5)))) # (!\inst|Add1~2_combout\ & (!\inst|SYNC|pixel_column\(5) & !\inst|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|LessThan1~9_cout\,
	cout => \inst|LessThan1~11_cout\);

-- Location: LCCOMB_X22_Y18_N12
\inst|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~13_cout\ = CARRY((\inst|SYNC|pixel_column\(6) & ((!\inst|LessThan1~11_cout\) # (!\inst|Add1~4_combout\))) # (!\inst|SYNC|pixel_column\(6) & (!\inst|Add1~4_combout\ & !\inst|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|Add1~4_combout\,
	datad => VCC,
	cin => \inst|LessThan1~11_cout\,
	cout => \inst|LessThan1~13_cout\);

-- Location: LCCOMB_X22_Y18_N14
\inst|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~15_cout\ = CARRY((\inst|Add1~6_combout\ & ((!\inst|LessThan1~13_cout\) # (!\inst|SYNC|pixel_column\(7)))) # (!\inst|Add1~6_combout\ & (!\inst|SYNC|pixel_column\(7) & !\inst|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~6_combout\,
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|LessThan1~13_cout\,
	cout => \inst|LessThan1~15_cout\);

-- Location: LCCOMB_X22_Y18_N16
\inst|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~17_cout\ = CARRY((\inst|SYNC|pixel_column\(8) & ((!\inst|LessThan1~15_cout\) # (!\inst|Add1~8_combout\))) # (!\inst|SYNC|pixel_column\(8) & (!\inst|Add1~8_combout\ & !\inst|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|Add1~8_combout\,
	datad => VCC,
	cin => \inst|LessThan1~15_cout\,
	cout => \inst|LessThan1~17_cout\);

-- Location: LCCOMB_X22_Y18_N18
\inst|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~18_combout\ = (\inst|SYNC|pixel_column\(9) & ((\inst|LessThan1~17_cout\) # (!\inst|Add1~10_combout\))) # (!\inst|SYNC|pixel_column\(9) & (\inst|LessThan1~17_cout\ & !\inst|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datad => \inst|Add1~10_combout\,
	cin => \inst|LessThan1~17_cout\,
	combout => \inst|LessThan1~18_combout\);

-- Location: LCCOMB_X17_Y18_N8
\inst|RGB_SWITCH~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|RGB_SWITCH~4_combout\ = (\inst|RGB_SWITCH~6_combout\ & (!\inst|LessThan2~18_combout\ & (\inst|RGB_SWITCH~3_combout\ & !\inst|LessThan1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RGB_SWITCH~6_combout\,
	datab => \inst|LessThan2~18_combout\,
	datac => \inst|RGB_SWITCH~3_combout\,
	datad => \inst|LessThan1~18_combout\,
	combout => \inst|RGB_SWITCH~4_combout\);

-- Location: LCCOMB_X17_Y18_N6
\inst|RGB_SWITCH~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|RGB_SWITCH~5_combout\ = (!\inst|LessThan2~18_combout\ & (!\inst|Add0~10_combout\ & (!\inst|LessThan1~18_combout\ & !\inst|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~18_combout\,
	datab => \inst|Add0~10_combout\,
	datac => \inst|LessThan1~18_combout\,
	datad => \inst|LessThan3~16_combout\,
	combout => \inst|RGB_SWITCH~5_combout\);

-- Location: LCCOMB_X17_Y18_N4
\inst|blue_data~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_data~5_combout\ = (\inst|RGB_SWITCH~2_combout\ & (\inst|RGB_SWITCH~6_combout\ & \inst|RGB_SWITCH~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RGB_SWITCH~2_combout\,
	datac => \inst|RGB_SWITCH~6_combout\,
	datad => \inst|RGB_SWITCH~5_combout\,
	combout => \inst|blue_data~5_combout\);

-- Location: LCCOMB_X19_Y16_N24
\inst|blue_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_data~0_combout\ = ((!\inst|Pipe1_X_pos\(3) & (\inst|Pipe1_X_pos\(1) & \inst|Pipe1_X_pos\(2)))) # (!\inst|Pipe1_X_pos\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(3),
	datab => \inst|Pipe1_X_pos\(1),
	datac => \inst|Pipe1_X_pos\(2),
	datad => \inst|Pipe1_X_pos\(4),
	combout => \inst|blue_data~0_combout\);

-- Location: LCCOMB_X19_Y16_N18
\inst|blue_data~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_data~1_combout\ = ((\inst|Pipe1_X_pos\(6)) # ((!\inst|Pipe1_X_pos\(5) & \inst|blue_data~0_combout\))) # (!\inst|Pipe1_X_pos\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(5),
	datab => \inst|Pipe1_X_pos\(7),
	datac => \inst|Pipe1_X_pos\(6),
	datad => \inst|blue_data~0_combout\,
	combout => \inst|blue_data~1_combout\);

-- Location: LCCOMB_X19_Y16_N20
\inst|blue_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_data~2_combout\ = (!\inst|Pipe1_X_pos\(9) & (!\inst|Pipe1_X_pos\(8) & \inst|blue_data~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(9),
	datac => \inst|Pipe1_X_pos\(8),
	datad => \inst|blue_data~1_combout\,
	combout => \inst|blue_data~2_combout\);

-- Location: LCCOMB_X16_Y16_N4
\inst|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~1_cout\ = CARRY((\inst|Pipe1_X_pos\(1) & !\inst|SYNC|pixel_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(1),
	datab => \inst|SYNC|pixel_column\(1),
	datad => VCC,
	cout => \inst|LessThan7~1_cout\);

-- Location: LCCOMB_X16_Y16_N6
\inst|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~3_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & ((!\inst|LessThan7~1_cout\) # (!\inst|Pipe1_X_pos\(2)))) # (!\inst|SYNC|pixel_column\(2) & (!\inst|Pipe1_X_pos\(2) & !\inst|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|Pipe1_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan7~1_cout\,
	cout => \inst|LessThan7~3_cout\);

-- Location: LCCOMB_X16_Y16_N8
\inst|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~5_cout\ = CARRY((\inst|SYNC|pixel_column\(3) & (!\inst|Pipe1_X_pos\(3) & !\inst|LessThan7~3_cout\)) # (!\inst|SYNC|pixel_column\(3) & ((!\inst|LessThan7~3_cout\) # (!\inst|Pipe1_X_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(3),
	datab => \inst|Pipe1_X_pos\(3),
	datad => VCC,
	cin => \inst|LessThan7~3_cout\,
	cout => \inst|LessThan7~5_cout\);

-- Location: LCCOMB_X16_Y16_N10
\inst|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~7_cout\ = CARRY((\inst|Pipe1_X_pos\(4) & ((\inst|SYNC|pixel_column\(4)) # (!\inst|LessThan7~5_cout\))) # (!\inst|Pipe1_X_pos\(4) & (\inst|SYNC|pixel_column\(4) & !\inst|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(4),
	datab => \inst|SYNC|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan7~5_cout\,
	cout => \inst|LessThan7~7_cout\);

-- Location: LCCOMB_X16_Y16_N12
\inst|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~9_cout\ = CARRY((\inst|Pipe1_X_pos\(5) & (!\inst|SYNC|pixel_column\(5) & !\inst|LessThan7~7_cout\)) # (!\inst|Pipe1_X_pos\(5) & ((!\inst|LessThan7~7_cout\) # (!\inst|SYNC|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(5),
	datab => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|LessThan7~7_cout\,
	cout => \inst|LessThan7~9_cout\);

-- Location: LCCOMB_X16_Y16_N14
\inst|LessThan7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~11_cout\ = CARRY((\inst|Pipe1_X_pos\(6) & (\inst|SYNC|pixel_column\(6) & !\inst|LessThan7~9_cout\)) # (!\inst|Pipe1_X_pos\(6) & ((\inst|SYNC|pixel_column\(6)) # (!\inst|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(6),
	datab => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|LessThan7~9_cout\,
	cout => \inst|LessThan7~11_cout\);

-- Location: LCCOMB_X16_Y16_N16
\inst|LessThan7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~13_cout\ = CARRY((\inst|Pipe1_X_pos\(7) & (!\inst|SYNC|pixel_column\(7) & !\inst|LessThan7~11_cout\)) # (!\inst|Pipe1_X_pos\(7) & ((!\inst|LessThan7~11_cout\) # (!\inst|SYNC|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(7),
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|LessThan7~11_cout\,
	cout => \inst|LessThan7~13_cout\);

-- Location: LCCOMB_X16_Y16_N18
\inst|LessThan7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~15_cout\ = CARRY((\inst|Pipe1_X_pos\(8) & ((\inst|SYNC|pixel_column\(8)) # (!\inst|LessThan7~13_cout\))) # (!\inst|Pipe1_X_pos\(8) & (\inst|SYNC|pixel_column\(8) & !\inst|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(8),
	datab => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|LessThan7~13_cout\,
	cout => \inst|LessThan7~15_cout\);

-- Location: LCCOMB_X16_Y16_N20
\inst|LessThan7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~16_combout\ = (\inst|SYNC|pixel_column\(9) & (!\inst|LessThan7~15_cout\ & \inst|Pipe1_X_pos\(9))) # (!\inst|SYNC|pixel_column\(9) & ((\inst|Pipe1_X_pos\(9)) # (!\inst|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datad => \inst|Pipe1_X_pos\(9),
	cin => \inst|LessThan7~15_cout\,
	combout => \inst|LessThan7~16_combout\);

-- Location: LCCOMB_X19_Y16_N0
\inst|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~1_cout\ = CARRY((!\inst|SYNC|pixel_column\(1) & \inst|Pipe1_X_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|Pipe1_X_pos\(1),
	datad => VCC,
	cout => \inst|LessThan9~1_cout\);

-- Location: LCCOMB_X19_Y16_N2
\inst|LessThan9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~3_cout\ = CARRY((\inst|Pipe1_X_pos\(2) & (\inst|SYNC|pixel_column\(2) & !\inst|LessThan9~1_cout\)) # (!\inst|Pipe1_X_pos\(2) & ((\inst|SYNC|pixel_column\(2)) # (!\inst|LessThan9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(2),
	datab => \inst|SYNC|pixel_column\(2),
	datad => VCC,
	cin => \inst|LessThan9~1_cout\,
	cout => \inst|LessThan9~3_cout\);

-- Location: LCCOMB_X19_Y16_N4
\inst|LessThan9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~5_cout\ = CARRY((\inst|Pipe1_X_pos\(3) & (!\inst|SYNC|pixel_column\(3) & !\inst|LessThan9~3_cout\)) # (!\inst|Pipe1_X_pos\(3) & ((!\inst|LessThan9~3_cout\) # (!\inst|SYNC|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan9~3_cout\,
	cout => \inst|LessThan9~5_cout\);

-- Location: LCCOMB_X19_Y16_N6
\inst|LessThan9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~7_cout\ = CARRY((\inst|Pipe1_X_pos\(4) & ((\inst|SYNC|pixel_column\(4)) # (!\inst|LessThan9~5_cout\))) # (!\inst|Pipe1_X_pos\(4) & (\inst|SYNC|pixel_column\(4) & !\inst|LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(4),
	datab => \inst|SYNC|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan9~5_cout\,
	cout => \inst|LessThan9~7_cout\);

-- Location: LCCOMB_X19_Y16_N8
\inst|LessThan9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~9_cout\ = CARRY((\inst|Pipe1_X_pos\(5) & (!\inst|SYNC|pixel_column\(5) & !\inst|LessThan9~7_cout\)) # (!\inst|Pipe1_X_pos\(5) & ((!\inst|LessThan9~7_cout\) # (!\inst|SYNC|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(5),
	datab => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|LessThan9~7_cout\,
	cout => \inst|LessThan9~9_cout\);

-- Location: LCCOMB_X19_Y16_N10
\inst|LessThan9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~11_cout\ = CARRY((\inst|Pipe1_X_pos\(6) & (\inst|SYNC|pixel_column\(6) & !\inst|LessThan9~9_cout\)) # (!\inst|Pipe1_X_pos\(6) & ((\inst|SYNC|pixel_column\(6)) # (!\inst|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(6),
	datab => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|LessThan9~9_cout\,
	cout => \inst|LessThan9~11_cout\);

-- Location: LCCOMB_X19_Y16_N12
\inst|LessThan9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~13_cout\ = CARRY((\inst|SYNC|pixel_column\(7) & (!\inst|Pipe1_X_pos\(7) & !\inst|LessThan9~11_cout\)) # (!\inst|SYNC|pixel_column\(7) & ((!\inst|LessThan9~11_cout\) # (!\inst|Pipe1_X_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|Pipe1_X_pos\(7),
	datad => VCC,
	cin => \inst|LessThan9~11_cout\,
	cout => \inst|LessThan9~13_cout\);

-- Location: LCCOMB_X19_Y16_N14
\inst|LessThan9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~15_cout\ = CARRY((\inst|Pipe1_X_pos\(8) & ((\inst|SYNC|pixel_column\(8)) # (!\inst|LessThan9~13_cout\))) # (!\inst|Pipe1_X_pos\(8) & (\inst|SYNC|pixel_column\(8) & !\inst|LessThan9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(8),
	datab => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|LessThan9~13_cout\,
	cout => \inst|LessThan9~15_cout\);

-- Location: LCCOMB_X19_Y16_N16
\inst|LessThan9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~16_combout\ = (\inst|SYNC|pixel_column\(9) & ((!\inst|Pipe1_X_pos\(9)) # (!\inst|LessThan9~15_cout\))) # (!\inst|SYNC|pixel_column\(9) & (!\inst|LessThan9~15_cout\ & !\inst|Pipe1_X_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datad => \inst|Pipe1_X_pos\(9),
	cin => \inst|LessThan9~15_cout\,
	combout => \inst|LessThan9~16_combout\);

-- Location: LCCOMB_X17_Y16_N12
\inst|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~1_cout\ = CARRY(\inst|SYNC|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan8~1_cout\);

-- Location: LCCOMB_X17_Y16_N14
\inst|LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~3_cout\ = CARRY((\inst|Pipe1_X_pos\(1) & ((!\inst|LessThan8~1_cout\) # (!\inst|SYNC|pixel_column\(1)))) # (!\inst|Pipe1_X_pos\(1) & (!\inst|SYNC|pixel_column\(1) & !\inst|LessThan8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(1),
	datab => \inst|SYNC|pixel_column\(1),
	datad => VCC,
	cin => \inst|LessThan8~1_cout\,
	cout => \inst|LessThan8~3_cout\);

-- Location: LCCOMB_X17_Y16_N16
\inst|LessThan8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~5_cout\ = CARRY((\inst|Pipe1_X_pos\(2) & (\inst|SYNC|pixel_column\(2) & !\inst|LessThan8~3_cout\)) # (!\inst|Pipe1_X_pos\(2) & ((\inst|SYNC|pixel_column\(2)) # (!\inst|LessThan8~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(2),
	datab => \inst|SYNC|pixel_column\(2),
	datad => VCC,
	cin => \inst|LessThan8~3_cout\,
	cout => \inst|LessThan8~5_cout\);

-- Location: LCCOMB_X17_Y16_N18
\inst|LessThan8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~7_cout\ = CARRY((\inst|Pipe1_X_pos\(3) & (!\inst|SYNC|pixel_column\(3) & !\inst|LessThan8~5_cout\)) # (!\inst|Pipe1_X_pos\(3) & ((!\inst|LessThan8~5_cout\) # (!\inst|SYNC|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan8~5_cout\,
	cout => \inst|LessThan8~7_cout\);

-- Location: LCCOMB_X17_Y16_N20
\inst|LessThan8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~9_cout\ = CARRY((\inst|Pipe1_X_pos\(4) & ((\inst|SYNC|pixel_column\(4)) # (!\inst|LessThan8~7_cout\))) # (!\inst|Pipe1_X_pos\(4) & (\inst|SYNC|pixel_column\(4) & !\inst|LessThan8~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(4),
	datab => \inst|SYNC|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan8~7_cout\,
	cout => \inst|LessThan8~9_cout\);

-- Location: LCCOMB_X17_Y16_N22
\inst|LessThan8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~11_cout\ = CARRY((\inst|SYNC|pixel_column\(5) & (!\inst|Pipe1_X_pos\(5) & !\inst|LessThan8~9_cout\)) # (!\inst|SYNC|pixel_column\(5) & ((!\inst|LessThan8~9_cout\) # (!\inst|Pipe1_X_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datab => \inst|Pipe1_X_pos\(5),
	datad => VCC,
	cin => \inst|LessThan8~9_cout\,
	cout => \inst|LessThan8~11_cout\);

-- Location: LCCOMB_X17_Y16_N24
\inst|LessThan8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~13_cout\ = CARRY((\inst|SYNC|pixel_column\(6) & ((!\inst|LessThan8~11_cout\) # (!\inst|Add10~0_combout\))) # (!\inst|SYNC|pixel_column\(6) & (!\inst|Add10~0_combout\ & !\inst|LessThan8~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|Add10~0_combout\,
	datad => VCC,
	cin => \inst|LessThan8~11_cout\,
	cout => \inst|LessThan8~13_cout\);

-- Location: LCCOMB_X17_Y16_N26
\inst|LessThan8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~15_cout\ = CARRY((\inst|Add10~2_combout\ & ((!\inst|LessThan8~13_cout\) # (!\inst|SYNC|pixel_column\(7)))) # (!\inst|Add10~2_combout\ & (!\inst|SYNC|pixel_column\(7) & !\inst|LessThan8~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~2_combout\,
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|LessThan8~13_cout\,
	cout => \inst|LessThan8~15_cout\);

-- Location: LCCOMB_X17_Y16_N28
\inst|LessThan8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~17_cout\ = CARRY((\inst|Add10~4_combout\ & (\inst|SYNC|pixel_column\(8) & !\inst|LessThan8~15_cout\)) # (!\inst|Add10~4_combout\ & ((\inst|SYNC|pixel_column\(8)) # (!\inst|LessThan8~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~4_combout\,
	datab => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|LessThan8~15_cout\,
	cout => \inst|LessThan8~17_cout\);

-- Location: LCCOMB_X17_Y16_N30
\inst|LessThan8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan8~18_combout\ = (\inst|SYNC|pixel_column\(9) & (\inst|LessThan8~17_cout\ & \inst|Add10~6_combout\)) # (!\inst|SYNC|pixel_column\(9) & ((\inst|LessThan8~17_cout\) # (\inst|Add10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datad => \inst|Add10~6_combout\,
	cin => \inst|LessThan8~17_cout\,
	combout => \inst|LessThan8~18_combout\);

-- Location: LCCOMB_X21_Y16_N10
\inst|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~1_cout\ = CARRY(\inst|SYNC|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan6~1_cout\);

-- Location: LCCOMB_X21_Y16_N12
\inst|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~3_cout\ = CARRY((\inst|Pipe1_X_pos\(1) & ((!\inst|LessThan6~1_cout\) # (!\inst|SYNC|pixel_column\(1)))) # (!\inst|Pipe1_X_pos\(1) & (!\inst|SYNC|pixel_column\(1) & !\inst|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(1),
	datab => \inst|SYNC|pixel_column\(1),
	datad => VCC,
	cin => \inst|LessThan6~1_cout\,
	cout => \inst|LessThan6~3_cout\);

-- Location: LCCOMB_X21_Y16_N14
\inst|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~5_cout\ = CARRY((\inst|Pipe1_X_pos\(2) & (\inst|SYNC|pixel_column\(2) & !\inst|LessThan6~3_cout\)) # (!\inst|Pipe1_X_pos\(2) & ((\inst|SYNC|pixel_column\(2)) # (!\inst|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(2),
	datab => \inst|SYNC|pixel_column\(2),
	datad => VCC,
	cin => \inst|LessThan6~3_cout\,
	cout => \inst|LessThan6~5_cout\);

-- Location: LCCOMB_X21_Y16_N16
\inst|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~7_cout\ = CARRY((\inst|Pipe1_X_pos\(3) & (!\inst|SYNC|pixel_column\(3) & !\inst|LessThan6~5_cout\)) # (!\inst|Pipe1_X_pos\(3) & ((!\inst|LessThan6~5_cout\) # (!\inst|SYNC|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Pipe1_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan6~5_cout\,
	cout => \inst|LessThan6~7_cout\);

-- Location: LCCOMB_X21_Y16_N18
\inst|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~9_cout\ = CARRY((\inst|SYNC|pixel_column\(4) & ((\inst|Pipe1_X_pos\(4)) # (!\inst|LessThan6~7_cout\))) # (!\inst|SYNC|pixel_column\(4) & (\inst|Pipe1_X_pos\(4) & !\inst|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|Pipe1_X_pos\(4),
	datad => VCC,
	cin => \inst|LessThan6~7_cout\,
	cout => \inst|LessThan6~9_cout\);

-- Location: LCCOMB_X21_Y16_N20
\inst|LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~11_cout\ = CARRY((\inst|SYNC|pixel_column\(5) & (!\inst|Pipe1_X_pos\(5) & !\inst|LessThan6~9_cout\)) # (!\inst|SYNC|pixel_column\(5) & ((!\inst|LessThan6~9_cout\) # (!\inst|Pipe1_X_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datab => \inst|Pipe1_X_pos\(5),
	datad => VCC,
	cin => \inst|LessThan6~9_cout\,
	cout => \inst|LessThan6~11_cout\);

-- Location: LCCOMB_X21_Y16_N22
\inst|LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~13_cout\ = CARRY((\inst|Add10~0_combout\ & (\inst|SYNC|pixel_column\(6) & !\inst|LessThan6~11_cout\)) # (!\inst|Add10~0_combout\ & ((\inst|SYNC|pixel_column\(6)) # (!\inst|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~0_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|LessThan6~11_cout\,
	cout => \inst|LessThan6~13_cout\);

-- Location: LCCOMB_X21_Y16_N24
\inst|LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~15_cout\ = CARRY((\inst|SYNC|pixel_column\(7) & (\inst|Add10~2_combout\ & !\inst|LessThan6~13_cout\)) # (!\inst|SYNC|pixel_column\(7) & ((\inst|Add10~2_combout\) # (!\inst|LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|Add10~2_combout\,
	datad => VCC,
	cin => \inst|LessThan6~13_cout\,
	cout => \inst|LessThan6~15_cout\);

-- Location: LCCOMB_X21_Y16_N26
\inst|LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~17_cout\ = CARRY((\inst|SYNC|pixel_column\(8) & ((!\inst|LessThan6~15_cout\) # (!\inst|Add10~4_combout\))) # (!\inst|SYNC|pixel_column\(8) & (!\inst|Add10~4_combout\ & !\inst|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|Add10~4_combout\,
	datad => VCC,
	cin => \inst|LessThan6~15_cout\,
	cout => \inst|LessThan6~17_cout\);

-- Location: LCCOMB_X21_Y16_N28
\inst|LessThan6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~18_combout\ = (\inst|SYNC|pixel_column\(9) & ((\inst|LessThan6~17_cout\) # (!\inst|Add10~6_combout\))) # (!\inst|SYNC|pixel_column\(9) & (\inst|LessThan6~17_cout\ & !\inst|Add10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datad => \inst|Add10~6_combout\,
	cin => \inst|LessThan6~17_cout\,
	combout => \inst|LessThan6~18_combout\);

-- Location: LCCOMB_X17_Y16_N0
\inst|blue_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_data~3_combout\ = (\inst11|Equal2~0_combout\ & ((\inst|blue_data~2_combout\ & ((!\inst|LessThan6~18_combout\))) # (!\inst|blue_data~2_combout\ & (!\inst|LessThan8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|blue_data~2_combout\,
	datab => \inst11|Equal2~0_combout\,
	datac => \inst|LessThan8~18_combout\,
	datad => \inst|LessThan6~18_combout\,
	combout => \inst|blue_data~3_combout\);

-- Location: LCCOMB_X17_Y16_N10
\inst|blue_data~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_data~4_combout\ = ((\inst|blue_data~2_combout\ & (\inst|LessThan7~16_combout\)) # (!\inst|blue_data~2_combout\ & ((\inst|LessThan9~16_combout\)))) # (!\inst|blue_data~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|blue_data~2_combout\,
	datab => \inst|LessThan7~16_combout\,
	datac => \inst|LessThan9~16_combout\,
	datad => \inst|blue_data~3_combout\,
	combout => \inst|blue_data~4_combout\);

-- Location: LCCOMB_X17_Y19_N10
\inst11|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Equal3~0_combout\ = (!\inst9|STATE_OUT\(2) & !\inst9|STATE_OUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|STATE_OUT\(2),
	datad => \inst9|STATE_OUT\(0),
	combout => \inst11|Equal3~0_combout\);

-- Location: LCCOMB_X16_Y20_N22
\inst11|v_font_col[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~0_combout\ = (!\inst|SYNC|pixel_column\(8) & !\inst|SYNC|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|v_font_col[2]~0_combout\);

-- Location: LCCOMB_X15_Y17_N28
\inst11|LessThan123~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan123~4_combout\ = (!\inst|SYNC|pixel_column\(1) & (!\inst|SYNC|pixel_column\(2) & !\inst|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datac => \inst|SYNC|pixel_column\(2),
	datad => \inst|SYNC|pixel_column\(3),
	combout => \inst11|LessThan123~4_combout\);

-- Location: LCCOMB_X16_Y18_N28
\inst11|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~1_combout\ = (\inst|SYNC|pixel_column\(6) & ((\inst|SYNC|pixel_column\(4)) # ((\inst|SYNC|pixel_column\(5)) # (!\inst11|LessThan123~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst11|LessThan123~4_combout\,
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|LessThan9~1_combout\);

-- Location: LCCOMB_X16_Y20_N20
\inst11|LessThan127~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan127~0_combout\ = (!\inst|SYNC|pixel_column\(7) & (!\inst|SYNC|pixel_column\(8) & !\inst|SYNC|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|LessThan127~0_combout\);

-- Location: LCCOMB_X15_Y17_N6
\inst11|LessThan123~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan123~0_combout\ = (\inst|SYNC|pixel_column\(1)) # (\inst|SYNC|pixel_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|SYNC|pixel_column\(2),
	combout => \inst11|LessThan123~0_combout\);

-- Location: LCCOMB_X15_Y17_N2
\inst11|LessThan123~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan123~1_combout\ = (\inst|SYNC|pixel_column\(0)) # ((\inst|SYNC|pixel_column\(3)) # ((\inst11|LessThan123~0_combout\) # (\inst|SYNC|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(0),
	datab => \inst|SYNC|pixel_column\(3),
	datac => \inst11|LessThan123~0_combout\,
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|LessThan123~1_combout\);

-- Location: LCCOMB_X16_Y18_N20
\inst11|LessThan123~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan123~3_combout\ = ((\inst11|LessThan127~0_combout\ & (!\inst|SYNC|pixel_column\(5) & !\inst11|LessThan123~1_combout\))) # (!\inst|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst11|LessThan127~0_combout\,
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst11|LessThan123~1_combout\,
	combout => \inst11|LessThan123~3_combout\);

-- Location: LCCOMB_X14_Y18_N30
\inst11|LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~0_combout\ = (\inst|SYNC|pixel_row\(3) & (\inst|SYNC|pixel_row\(2) & (\inst|SYNC|pixel_row\(1) & \inst|SYNC|pixel_row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|SYNC|pixel_row\(2),
	datac => \inst|SYNC|pixel_row\(1),
	datad => \inst|SYNC|pixel_row\(0),
	combout => \inst11|LessThan10~0_combout\);

-- Location: LCCOMB_X14_Y17_N14
\inst11|LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan10~1_combout\ = (!\inst|SYNC|pixel_row\(6) & (((!\inst|SYNC|pixel_row\(4)) # (!\inst|SYNC|pixel_row\(5))) # (!\inst11|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan10~0_combout\,
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst|SYNC|pixel_row\(4),
	datad => \inst|SYNC|pixel_row\(6),
	combout => \inst11|LessThan10~1_combout\);

-- Location: LCCOMB_X14_Y17_N2
\inst11|process_0~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~80_combout\ = (!\inst|SYNC|pixel_row\(7) & (!\inst11|LessThan10~1_combout\ & !\inst|SYNC|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datac => \inst11|LessThan10~1_combout\,
	datad => \inst|SYNC|pixel_row\(8),
	combout => \inst11|process_0~80_combout\);

-- Location: LCCOMB_X16_Y18_N4
\inst11|process_0~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~115_combout\ = ((\inst11|LessThan9~1_combout\) # ((\inst11|LessThan123~3_combout\) # (!\inst11|process_0~80_combout\))) # (!\inst11|v_font_col[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~0_combout\,
	datab => \inst11|LessThan9~1_combout\,
	datac => \inst11|LessThan123~3_combout\,
	datad => \inst11|process_0~80_combout\,
	combout => \inst11|process_0~115_combout\);

-- Location: LCCOMB_X16_Y17_N0
\inst11|process_0~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~72_combout\ = (\inst|SYNC|pixel_column\(8) & (!\inst|SYNC|pixel_column\(9) & \inst|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|process_0~72_combout\);

-- Location: LCCOMB_X15_Y17_N30
\inst11|LessThan123~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan123~2_combout\ = (!\inst|SYNC|pixel_column\(1) & (!\inst|SYNC|pixel_column\(2) & (!\inst|SYNC|pixel_column\(3) & !\inst|SYNC|pixel_column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|SYNC|pixel_column\(2),
	datac => \inst|SYNC|pixel_column\(3),
	datad => \inst|SYNC|pixel_column\(0),
	combout => \inst11|LessThan123~2_combout\);

-- Location: LCCOMB_X15_Y17_N12
\inst11|process_0~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~82_combout\ = (\inst|SYNC|pixel_column\(6) & ((\inst|SYNC|pixel_column\(5)) # ((\inst|SYNC|pixel_column\(4)) # (!\inst11|LessThan123~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datab => \inst11|LessThan123~2_combout\,
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|process_0~82_combout\);

-- Location: LCCOMB_X16_Y18_N18
\inst11|process_0~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~166_combout\ = (\inst11|process_0~72_combout\ & (!\inst11|process_0~82_combout\ & \inst11|process_0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~72_combout\,
	datac => \inst11|process_0~82_combout\,
	datad => \inst11|process_0~80_combout\,
	combout => \inst11|process_0~166_combout\);

-- Location: LCCOMB_X15_Y21_N6
\inst11|LessThan115~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan115~2_combout\ = (\inst|SYNC|pixel_column\(6) & \inst|SYNC|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|LessThan115~2_combout\);

-- Location: LCCOMB_X15_Y20_N0
\inst11|LessThan55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan55~0_combout\ = (!\inst|SYNC|pixel_column\(5) & (!\inst|SYNC|pixel_column\(6) & !\inst|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|LessThan55~0_combout\);

-- Location: LCCOMB_X16_Y18_N30
\inst11|process_0~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~81_combout\ = (\inst|SYNC|pixel_column\(8) & ((\inst11|LessThan123~1_combout\) # ((!\inst11|LessThan55~0_combout\)))) # (!\inst|SYNC|pixel_column\(8) & (((!\inst11|LessThan115~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst11|LessThan123~1_combout\,
	datac => \inst11|LessThan115~2_combout\,
	datad => \inst11|LessThan55~0_combout\,
	combout => \inst11|process_0~81_combout\);

-- Location: LCCOMB_X16_Y18_N26
\inst11|v_font_col[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~3_combout\ = (\inst11|process_0~81_combout\ & ((\inst11|process_0~82_combout\) # (\inst|SYNC|pixel_column\(8) $ (!\inst|SYNC|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst11|process_0~81_combout\,
	datad => \inst11|process_0~82_combout\,
	combout => \inst11|v_font_col[2]~3_combout\);

-- Location: LCCOMB_X16_Y18_N22
\inst11|v_font_col[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~4_combout\ = (\inst|SYNC|pixel_column\(9)) # ((\inst11|v_font_col[2]~3_combout\) # (!\inst11|process_0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datac => \inst11|v_font_col[2]~3_combout\,
	datad => \inst11|process_0~80_combout\,
	combout => \inst11|v_font_col[2]~4_combout\);

-- Location: LCCOMB_X16_Y18_N16
\inst11|process_0~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~88_combout\ = ((!\inst|SYNC|pixel_column\(9) & ((!\inst|SYNC|pixel_column\(8)) # (!\inst11|LessThan115~2_combout\)))) # (!\inst11|LessThan123~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan115~2_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst11|LessThan123~3_combout\,
	combout => \inst11|process_0~88_combout\);

-- Location: LCCOMB_X16_Y16_N28
\inst11|process_0~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~83_combout\ = (\inst|SYNC|pixel_column\(4)) # ((\inst|SYNC|pixel_column\(5)) # ((!\inst11|LessThan123~2_combout\) # (!\inst|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(7),
	datad => \inst11|LessThan123~2_combout\,
	combout => \inst11|process_0~83_combout\);

-- Location: LCCOMB_X16_Y16_N0
\inst11|process_0~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~186_combout\ = ((\inst|SYNC|pixel_column\(6) & (\inst|SYNC|pixel_column\(7))) # (!\inst|SYNC|pixel_column\(6) & ((\inst11|process_0~83_combout\)))) # (!\inst|SYNC|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst11|process_0~83_combout\,
	combout => \inst11|process_0~186_combout\);

-- Location: LCCOMB_X16_Y18_N10
\inst11|v_font_row[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~3_combout\ = ((\inst11|process_0~88_combout\ & ((\inst|SYNC|pixel_column\(9)) # (\inst11|process_0~186_combout\)))) # (!\inst11|process_0~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst11|process_0~88_combout\,
	datac => \inst11|process_0~186_combout\,
	datad => \inst11|process_0~80_combout\,
	combout => \inst11|v_font_row[2]~3_combout\);

-- Location: LCCOMB_X16_Y18_N8
\inst11|v_font_col[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~7_combout\ = (\inst11|process_0~115_combout\ & (!\inst11|process_0~166_combout\ & (\inst11|v_font_col[2]~4_combout\ & \inst11|v_font_row[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~115_combout\,
	datab => \inst11|process_0~166_combout\,
	datac => \inst11|v_font_col[2]~4_combout\,
	datad => \inst11|v_font_row[2]~3_combout\,
	combout => \inst11|v_font_col[2]~7_combout\);

-- Location: LCCOMB_X15_Y20_N10
\inst11|LessThan112~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan112~0_combout\ = (!\inst|SYNC|pixel_column\(6) & !\inst|SYNC|pixel_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst|SYNC|pixel_column\(5),
	combout => \inst11|LessThan112~0_combout\);

-- Location: LCCOMB_X15_Y20_N8
\inst11|LessThan138~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan138~0_combout\ = (\inst|SYNC|pixel_column\(7) & (((\inst|SYNC|pixel_column\(4)) # (!\inst11|LessThan112~0_combout\)) # (!\inst11|LessThan123~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan123~2_combout\,
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst11|LessThan112~0_combout\,
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|LessThan138~0_combout\);

-- Location: LCCOMB_X15_Y20_N6
\inst11|process_0~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~86_combout\ = (\inst|SYNC|pixel_column\(8)) # ((\inst|SYNC|pixel_column\(9)) # ((!\inst|SYNC|pixel_column\(6) & !\inst|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|process_0~86_combout\);

-- Location: LCCOMB_X15_Y20_N18
\inst11|process_0~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~87_combout\ = (\inst11|LessThan138~0_combout\) # ((\inst11|process_0~86_combout\) # (!\inst11|process_0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LessThan138~0_combout\,
	datac => \inst11|process_0~80_combout\,
	datad => \inst11|process_0~86_combout\,
	combout => \inst11|process_0~87_combout\);

-- Location: LCCOMB_X16_Y18_N24
\inst11|v_font_col[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~11_combout\ = ((!\inst9|STATE_OUT\(1) & (\inst11|v_font_col[2]~7_combout\ & \inst11|process_0~87_combout\))) # (!\inst11|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(1),
	datab => \inst11|Equal3~0_combout\,
	datac => \inst11|v_font_col[2]~7_combout\,
	datad => \inst11|process_0~87_combout\,
	combout => \inst11|v_font_col[2]~11_combout\);

-- Location: LCCOMB_X16_Y19_N2
\inst11|v_font_col[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~12_combout\ = (!\inst9|STATE_OUT\(1) & ((!\inst9|STATE_OUT\(0)) # (!\inst9|STATE_OUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|STATE_OUT\(1),
	datac => \inst9|STATE_OUT\(2),
	datad => \inst9|STATE_OUT\(0),
	combout => \inst11|v_font_col[2]~12_combout\);

-- Location: LCCOMB_X15_Y17_N26
\inst11|LessThan118~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan118~0_combout\ = (\inst|SYNC|pixel_column\(2)) # ((\inst|SYNC|pixel_column\(1)) # (\inst|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(2),
	datac => \inst|SYNC|pixel_column\(1),
	datad => \inst|SYNC|pixel_column\(3),
	combout => \inst11|LessThan118~0_combout\);

-- Location: LCCOMB_X15_Y17_N8
\inst11|LessThan118~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan118~1_combout\ = (\inst|SYNC|pixel_column\(5) & ((\inst|SYNC|pixel_column\(0)) # ((\inst11|LessThan118~0_combout\) # (\inst|SYNC|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(0),
	datab => \inst11|LessThan118~0_combout\,
	datac => \inst|SYNC|pixel_column\(4),
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst11|LessThan118~1_combout\);

-- Location: LCCOMB_X16_Y17_N12
\inst11|LessThan115~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan115~3_combout\ = (!\inst11|LessThan118~1_combout\ & (\inst|SYNC|pixel_column\(6) & (\inst|SYNC|pixel_column\(8) & \inst|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan118~1_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|LessThan115~3_combout\);

-- Location: LCCOMB_X15_Y17_N22
\inst11|LessThan112~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan112~1_combout\ = (((!\inst|SYNC|pixel_column\(6) & !\inst|SYNC|pixel_column\(5))) # (!\inst|SYNC|pixel_column\(7))) # (!\inst|SYNC|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst|SYNC|pixel_column\(7),
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst11|LessThan112~1_combout\);

-- Location: LCCOMB_X16_Y17_N16
\inst11|process_0~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~91_combout\ = (!\inst11|LessThan112~1_combout\ & ((!\inst11|process_0~82_combout\) # (!\inst|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst11|LessThan112~1_combout\,
	datad => \inst11|process_0~82_combout\,
	combout => \inst11|process_0~91_combout\);

-- Location: LCCOMB_X14_Y17_N18
\inst11|LessThan111~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan111~0_combout\ = (\inst|SYNC|pixel_row\(7)) # ((\inst|SYNC|pixel_row\(8)) # ((\inst|SYNC|pixel_row\(5)) # (\inst|SYNC|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst|SYNC|pixel_row\(5),
	datad => \inst|SYNC|pixel_row\(6),
	combout => \inst11|LessThan111~0_combout\);

-- Location: LCCOMB_X16_Y17_N26
\inst11|v_font_col[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~1_combout\ = (\inst11|LessThan111~0_combout\) # ((\inst|SYNC|pixel_column\(9)) # ((!\inst11|LessThan115~3_combout\ & !\inst11|process_0~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan115~3_combout\,
	datab => \inst11|process_0~91_combout\,
	datac => \inst11|LessThan111~0_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|v_font_col[2]~1_combout\);

-- Location: LCCOMB_X15_Y20_N28
\inst11|LessThan120~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan120~1_combout\ = (\inst|SYNC|pixel_column\(5) & (\inst|SYNC|pixel_column\(7) & (\inst|SYNC|pixel_column\(6) & \inst|SYNC|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst|SYNC|pixel_column\(8),
	combout => \inst11|LessThan120~1_combout\);

-- Location: LCCOMB_X16_Y17_N8
\inst11|process_0~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~94_combout\ = (!\inst11|LessThan111~0_combout\ & ((\inst|SYNC|pixel_column\(9)) # (\inst11|LessThan120~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|LessThan111~0_combout\,
	datad => \inst11|LessThan120~1_combout\,
	combout => \inst11|process_0~94_combout\);

-- Location: LCCOMB_X16_Y17_N6
\inst11|v_character_address[2]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~123_combout\ = (\inst11|process_0~94_combout\ & (((!\inst11|LessThan118~1_combout\ & \inst11|LessThan127~0_combout\)) # (!\inst|SYNC|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan118~1_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|process_0~94_combout\,
	datad => \inst11|LessThan127~0_combout\,
	combout => \inst11|v_character_address[2]~123_combout\);

-- Location: LCCOMB_X16_Y17_N22
\inst11|process_0~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~113_combout\ = (\inst|SYNC|pixel_column\(6) & (\inst|SYNC|pixel_column\(9) & (!\inst|SYNC|pixel_column\(8) & !\inst|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|process_0~113_combout\);

-- Location: LCCOMB_X16_Y17_N14
\inst11|process_0~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~114_combout\ = (!\inst11|LessThan111~0_combout\ & (\inst11|process_0~113_combout\ & !\inst11|LessThan118~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan111~0_combout\,
	datac => \inst11|process_0~113_combout\,
	datad => \inst11|LessThan118~1_combout\,
	combout => \inst11|process_0~114_combout\);

-- Location: LCCOMB_X16_Y17_N4
\inst11|process_0~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~112_combout\ = (!\inst11|LessThan111~0_combout\ & (\inst|SYNC|pixel_column\(9) & (\inst11|LessThan127~0_combout\ & \inst11|LessThan118~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan111~0_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|LessThan127~0_combout\,
	datad => \inst11|LessThan118~1_combout\,
	combout => \inst11|process_0~112_combout\);

-- Location: LCCOMB_X15_Y17_N20
\inst11|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan9~0_combout\ = (\inst|SYNC|pixel_column\(4)) # ((\inst|SYNC|pixel_column\(5)) # (!\inst11|LessThan123~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(4),
	datac => \inst11|LessThan123~4_combout\,
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst11|LessThan9~0_combout\);

-- Location: LCCOMB_X15_Y17_N24
\inst11|process_0~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~100_combout\ = (\inst|SYNC|pixel_column\(7) & (!\inst|SYNC|pixel_column\(6) & ((!\inst11|LessThan9~0_combout\)))) # (!\inst|SYNC|pixel_column\(7) & (\inst|SYNC|pixel_column\(6) & (\inst11|LessThan118~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|LessThan118~1_combout\,
	datad => \inst11|LessThan9~0_combout\,
	combout => \inst11|process_0~100_combout\);

-- Location: LCCOMB_X16_Y17_N20
\inst11|process_0~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~101_combout\ = ((\inst|SYNC|pixel_column\(8)) # ((\inst11|LessThan111~0_combout\) # (!\inst11|process_0~100_combout\))) # (!\inst|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst11|LessThan111~0_combout\,
	datad => \inst11|process_0~100_combout\,
	combout => \inst11|process_0~101_combout\);

-- Location: LCCOMB_X16_Y17_N18
\inst11|v_font_col[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~5_combout\ = (!\inst11|process_0~114_combout\ & (!\inst11|process_0~112_combout\ & \inst11|process_0~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~114_combout\,
	datac => \inst11|process_0~112_combout\,
	datad => \inst11|process_0~101_combout\,
	combout => \inst11|v_font_col[2]~5_combout\);

-- Location: LCCOMB_X16_Y17_N28
\inst11|v_font_col[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~6_combout\ = (\inst11|v_font_col[2]~1_combout\ & (!\inst9|STATE_OUT\(2) & (!\inst11|v_character_address[2]~123_combout\ & \inst11|v_font_col[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~1_combout\,
	datab => \inst9|STATE_OUT\(2),
	datac => \inst11|v_character_address[2]~123_combout\,
	datad => \inst11|v_font_col[2]~5_combout\,
	combout => \inst11|v_font_col[2]~6_combout\);

-- Location: LCCOMB_X14_Y17_N22
\inst11|LessThan125~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan125~0_combout\ = (!\inst|SYNC|pixel_row\(6) & (!\inst|SYNC|pixel_row\(7) & !\inst|SYNC|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(6),
	datac => \inst|SYNC|pixel_row\(7),
	datad => \inst|SYNC|pixel_row\(8),
	combout => \inst11|LessThan125~0_combout\);

-- Location: LCCOMB_X14_Y17_N0
\inst11|process_0~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~97_combout\ = (\inst11|LessThan125~0_combout\ & (\inst|SYNC|pixel_row\(5) & ((\inst|SYNC|pixel_row\(4)) # (\inst11|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan125~0_combout\,
	datab => \inst|SYNC|pixel_row\(4),
	datac => \inst11|LessThan10~0_combout\,
	datad => \inst|SYNC|pixel_row\(5),
	combout => \inst11|process_0~97_combout\);

-- Location: LCCOMB_X16_Y18_N0
\inst11|LessThan127~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan127~1_combout\ = (!\inst|SYNC|pixel_column\(5) & (\inst11|LessThan127~0_combout\ & ((\inst11|LessThan123~4_combout\) # (!\inst|SYNC|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst11|LessThan123~4_combout\,
	datad => \inst11|LessThan127~0_combout\,
	combout => \inst11|LessThan127~1_combout\);

-- Location: LCCOMB_X16_Y18_N6
\inst11|process_0~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~180_combout\ = (\inst11|process_0~97_combout\ & (!\inst11|LessThan123~3_combout\ & \inst11|LessThan127~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~97_combout\,
	datab => \inst11|LessThan123~3_combout\,
	datad => \inst11|LessThan127~1_combout\,
	combout => \inst11|process_0~180_combout\);

-- Location: LCCOMB_X16_Y17_N2
\inst11|LessThan45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan45~0_combout\ = (\inst|SYNC|pixel_column\(6) & ((\inst|SYNC|pixel_column\(5)) # (\inst|SYNC|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(5),
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|LessThan45~0_combout\);

-- Location: LCCOMB_X16_Y17_N10
\inst11|v_character_address[1]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~99_combout\ = (\inst11|process_0~72_combout\ & (\inst11|LessThan45~0_combout\ & !\inst11|LessThan118~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~72_combout\,
	datac => \inst11|LessThan45~0_combout\,
	datad => \inst11|LessThan118~1_combout\,
	combout => \inst11|v_character_address[1]~99_combout\);

-- Location: LCCOMB_X16_Y17_N24
\inst11|v_character_address[1]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~98_combout\ = (\inst|SYNC|pixel_column\(9)) # ((!\inst11|LessThan123~2_combout\ & \inst|SYNC|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|LessThan123~2_combout\,
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|v_character_address[1]~98_combout\);

-- Location: LCCOMB_X16_Y17_N30
\inst11|v_character_address[1]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~100_combout\ = ((!\inst11|v_character_address[1]~99_combout\ & ((\inst11|v_character_address[1]~98_combout\) # (!\inst11|LessThan120~1_combout\)))) # (!\inst11|process_0~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~99_combout\,
	datab => \inst11|v_character_address[1]~98_combout\,
	datac => \inst11|process_0~97_combout\,
	datad => \inst11|LessThan120~1_combout\,
	combout => \inst11|v_character_address[1]~100_combout\);

-- Location: LCCOMB_X16_Y18_N2
\inst11|process_0~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~108_combout\ = (\inst|SYNC|pixel_column\(9)) # ((\inst|SYNC|pixel_column\(4) & \inst11|LessThan120~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst|SYNC|pixel_column\(4),
	datad => \inst11|LessThan120~1_combout\,
	combout => \inst11|process_0~108_combout\);

-- Location: LCCOMB_X16_Y18_N14
\inst11|process_0~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~109_combout\ = (\inst11|process_0~97_combout\ & (\inst11|LessThan123~3_combout\ & \inst11|process_0~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~97_combout\,
	datab => \inst11|LessThan123~3_combout\,
	datad => \inst11|process_0~108_combout\,
	combout => \inst11|process_0~109_combout\);

-- Location: LCCOMB_X15_Y20_N24
\inst11|LessThan41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan41~0_combout\ = (\inst|SYNC|pixel_column\(6)) # ((\inst|SYNC|pixel_column\(5) & \inst|SYNC|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|LessThan41~0_combout\);

-- Location: LCCOMB_X15_Y17_N0
\inst11|process_0~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~111_combout\ = (\inst11|process_0~72_combout\ & (\inst11|process_0~97_combout\ & ((!\inst11|process_0~82_combout\) # (!\inst|SYNC|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst11|process_0~72_combout\,
	datac => \inst11|process_0~97_combout\,
	datad => \inst11|process_0~82_combout\,
	combout => \inst11|process_0~111_combout\);

-- Location: LCCOMB_X15_Y17_N10
\inst11|process_0~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~98_combout\ = (!\inst11|LessThan112~1_combout\ & (((\inst11|LessThan123~2_combout\) # (!\inst|SYNC|pixel_column\(4))) # (!\inst|SYNC|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datab => \inst11|LessThan112~1_combout\,
	datac => \inst11|LessThan123~2_combout\,
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|process_0~98_combout\);

-- Location: LCCOMB_X15_Y17_N14
\inst11|process_0~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~99_combout\ = (\inst11|process_0~97_combout\ & (!\inst|SYNC|pixel_column\(9) & (!\inst|SYNC|pixel_column\(6) & \inst11|process_0~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~97_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst11|process_0~98_combout\,
	combout => \inst11|process_0~99_combout\);

-- Location: LCCOMB_X15_Y17_N18
\inst11|process_0~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~95_combout\ = (\inst|SYNC|pixel_column\(7) & (\inst|SYNC|pixel_column\(8) & (!\inst|SYNC|pixel_column\(9) & \inst|SYNC|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|process_0~95_combout\);

-- Location: LCCOMB_X14_Y17_N20
\inst11|process_0~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~102_combout\ = (\inst|SYNC|pixel_row\(5) & (!\inst|SYNC|pixel_column\(5) & \inst11|process_0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst11|process_0~95_combout\,
	combout => \inst11|process_0~102_combout\);

-- Location: LCCOMB_X14_Y17_N16
\inst11|process_0~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~103_combout\ = (\inst11|process_0~102_combout\ & ((\inst11|LessThan123~2_combout\) # (!\inst|SYNC|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datac => \inst11|LessThan123~2_combout\,
	datad => \inst11|process_0~102_combout\,
	combout => \inst11|process_0~103_combout\);

-- Location: LCCOMB_X14_Y17_N24
\inst11|process_0~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~104_combout\ = (\inst11|LessThan125~0_combout\ & (\inst11|process_0~103_combout\ & ((\inst11|LessThan10~0_combout\) # (\inst|SYNC|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan10~0_combout\,
	datab => \inst11|LessThan125~0_combout\,
	datac => \inst|SYNC|pixel_row\(4),
	datad => \inst11|process_0~103_combout\,
	combout => \inst11|process_0~104_combout\);

-- Location: LCCOMB_X15_Y18_N0
\inst11|v_character_address[4]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~124_combout\ = (!\inst11|process_0~99_combout\ & (!\inst11|process_0~104_combout\ & ((!\inst11|process_0~111_combout\) # (!\inst11|LessThan41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan41~0_combout\,
	datab => \inst11|process_0~111_combout\,
	datac => \inst11|process_0~99_combout\,
	datad => \inst11|process_0~104_combout\,
	combout => \inst11|v_character_address[4]~124_combout\);

-- Location: LCCOMB_X15_Y18_N18
\inst11|v_font_col[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~8_combout\ = (!\inst11|process_0~180_combout\ & (\inst11|v_character_address[1]~100_combout\ & (!\inst11|process_0~109_combout\ & \inst11|v_character_address[4]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~180_combout\,
	datab => \inst11|v_character_address[1]~100_combout\,
	datac => \inst11|process_0~109_combout\,
	datad => \inst11|v_character_address[4]~124_combout\,
	combout => \inst11|v_font_col[2]~8_combout\);

-- Location: LCCOMB_X15_Y18_N20
\inst11|v_font_col[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~9_combout\ = (\inst11|v_font_col[2]~1_combout\ & (\inst11|v_font_col[2]~5_combout\ & (!\inst11|v_character_address[2]~123_combout\ & !\inst11|v_font_col[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~1_combout\,
	datab => \inst11|v_font_col[2]~5_combout\,
	datac => \inst11|v_character_address[2]~123_combout\,
	datad => \inst11|v_font_col[2]~8_combout\,
	combout => \inst11|v_font_col[2]~9_combout\);

-- Location: LCCOMB_X15_Y18_N10
\inst11|v_font_col[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~10_combout\ = (\inst9|STATE_OUT\(0) & (((\inst11|v_font_col[2]~9_combout\)))) # (!\inst9|STATE_OUT\(0) & (\inst11|process_0~87_combout\ & (\inst11|v_font_col[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(0),
	datab => \inst11|process_0~87_combout\,
	datac => \inst11|v_font_col[2]~7_combout\,
	datad => \inst11|v_font_col[2]~9_combout\,
	combout => \inst11|v_font_col[2]~10_combout\);

-- Location: LCCOMB_X15_Y18_N28
\inst11|v_font_col[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~14_combout\ = (\inst11|v_font_col[2]~12_combout\ & ((\inst11|v_font_col[2]~10_combout\ & (\inst9|STATE_OUT\(2))) # (!\inst11|v_font_col[2]~10_combout\ & ((!\inst11|v_font_col[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(2),
	datab => \inst11|v_font_col[2]~12_combout\,
	datac => \inst11|v_font_col[2]~6_combout\,
	datad => \inst11|v_font_col[2]~10_combout\,
	combout => \inst11|v_font_col[2]~14_combout\);

-- Location: LCCOMB_X15_Y18_N26
\inst11|v_font_col[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~15_combout\ = (\inst11|v_font_col[2]~14_combout\) # (!\inst11|v_font_col[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|v_font_col[2]~11_combout\,
	datad => \inst11|v_font_col[2]~14_combout\,
	combout => \inst11|v_font_col[2]~15_combout\);

-- Location: LCCOMB_X15_Y18_N12
\inst11|v_font_col[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~13_combout\ = (((!\inst11|v_font_col[2]~10_combout\ & \inst11|v_font_col[2]~6_combout\)) # (!\inst11|v_font_col[2]~11_combout\)) # (!\inst11|v_font_col[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~10_combout\,
	datab => \inst11|v_font_col[2]~12_combout\,
	datac => \inst11|v_font_col[2]~6_combout\,
	datad => \inst11|v_font_col[2]~11_combout\,
	combout => \inst11|v_font_col[2]~13_combout\);

-- Location: LCCOMB_X15_Y18_N24
\inst11|v_font_col[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~20_combout\ = (\inst11|v_font_col[2]~13_combout\ & (\inst|SYNC|pixel_column\(9))) # (!\inst11|v_font_col[2]~13_combout\ & ((\inst|SYNC|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datac => \inst|SYNC|pixel_column\(3),
	datad => \inst11|v_font_col[2]~13_combout\,
	combout => \inst11|v_font_col[2]~20_combout\);

-- Location: LCCOMB_X15_Y18_N14
\inst11|v_font_col[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~21_combout\ = (\inst11|v_font_col[2]~14_combout\ & (((\inst11|v_font_col[2]~13_combout\)))) # (!\inst11|v_font_col[2]~14_combout\ & ((\inst11|v_font_col[2]~11_combout\ & ((\inst11|v_font_col[2]~20_combout\))) # 
-- (!\inst11|v_font_col[2]~11_combout\ & (\inst11|v_font_col[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~14_combout\,
	datab => \inst11|v_font_col[2]~11_combout\,
	datac => \inst11|v_font_col[2]~13_combout\,
	datad => \inst11|v_font_col[2]~20_combout\,
	combout => \inst11|v_font_col[2]~21_combout\);

-- Location: LCCOMB_X15_Y18_N30
\inst11|v_font_col[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~22_combout\ = (\inst11|v_font_col[2]~15_combout\ & ((\inst11|v_font_col[2]~21_combout\ & (\inst|SYNC|pixel_column\(5))) # (!\inst11|v_font_col[2]~21_combout\ & ((\inst|SYNC|pixel_column\(4)))))) # (!\inst11|v_font_col[2]~15_combout\ 
-- & (((\inst11|v_font_col[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~15_combout\,
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst11|v_font_col[2]~21_combout\,
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|v_font_col[2]~22_combout\);

-- Location: LCCOMB_X15_Y16_N22
\inst11|process_0~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~93_combout\ = (\inst11|LessThan127~0_combout\ & (!\inst11|LessThan111~0_combout\ & (\inst|SYNC|pixel_column\(9) & !\inst11|LessThan118~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan127~0_combout\,
	datab => \inst11|LessThan111~0_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst11|LessThan118~1_combout\,
	combout => \inst11|process_0~93_combout\);

-- Location: LCCOMB_X15_Y16_N8
\inst11|process_0~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~189_combout\ = (\inst11|LessThan123~3_combout\ & (!\inst11|LessThan111~0_combout\ & ((\inst11|LessThan120~1_combout\) # (\inst|SYNC|pixel_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan123~3_combout\,
	datab => \inst11|LessThan120~1_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst11|LessThan111~0_combout\,
	combout => \inst11|process_0~189_combout\);

-- Location: LCCOMB_X15_Y16_N4
\inst11|process_0~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~96_combout\ = (\inst11|LessThan111~0_combout\) # ((\inst11|LessThan118~1_combout\) # (!\inst11|process_0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan111~0_combout\,
	datab => \inst11|LessThan118~1_combout\,
	datad => \inst11|process_0~95_combout\,
	combout => \inst11|process_0~96_combout\);

-- Location: LCCOMB_X15_Y16_N30
\inst11|process_0~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~92_combout\ = (\inst|SYNC|pixel_column\(9)) # ((\inst11|LessThan111~0_combout\) # (!\inst11|process_0~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst11|process_0~91_combout\,
	datad => \inst11|LessThan111~0_combout\,
	combout => \inst11|process_0~92_combout\);

-- Location: LCCOMB_X15_Y16_N14
\inst11|v_font_row[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~19_combout\ = (\inst11|process_0~189_combout\) # (((!\inst11|v_font_col[2]~5_combout\) # (!\inst11|process_0~92_combout\)) # (!\inst11|process_0~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~189_combout\,
	datab => \inst11|process_0~96_combout\,
	datac => \inst11|process_0~92_combout\,
	datad => \inst11|v_font_col[2]~5_combout\,
	combout => \inst11|v_font_row[2]~19_combout\);

-- Location: FF_X16_Y19_N21
\inst|energy[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	asdata => \inst|energy_temp\(9),
	sload => VCC,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(9));

-- Location: FF_X16_Y19_N19
\inst|energy[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	asdata => \inst|energy_temp\(8),
	sload => VCC,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(8));

-- Location: FF_X16_Y19_N17
\inst|energy[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	asdata => \inst|energy_temp\(7),
	sload => VCC,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(7));

-- Location: LCCOMB_X16_Y19_N28
\inst|energy[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy[6]~0_combout\ = !\inst|energy_temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|energy_temp\(6),
	combout => \inst|energy[6]~0_combout\);

-- Location: FF_X16_Y19_N29
\inst|energy[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	d => \inst|energy[6]~0_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(6));

-- Location: LCCOMB_X16_Y19_N26
\inst|energy[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy[5]~1_combout\ = !\inst|energy_temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|energy_temp\(5),
	combout => \inst|energy[5]~1_combout\);

-- Location: FF_X16_Y19_N27
\inst|energy[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	d => \inst|energy[5]~1_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(5));

-- Location: FF_X16_Y19_N11
\inst|energy[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	asdata => \inst|energy_temp\(4),
	sload => VCC,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(4));

-- Location: FF_X16_Y19_N9
\inst|energy[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	asdata => \inst|energy_temp\(3),
	sload => VCC,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(3));

-- Location: LCCOMB_X16_Y19_N30
\inst|energy[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy[2]~2_combout\ = !\inst|energy_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|energy_temp\(2),
	combout => \inst|energy[2]~2_combout\);

-- Location: FF_X16_Y19_N31
\inst|energy[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	d => \inst|energy[2]~2_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(2));

-- Location: FF_X16_Y19_N25
\inst|energy[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	asdata => \inst|energy_temp\(1),
	sload => VCC,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(1));

-- Location: LCCOMB_X16_Y19_N6
\inst11|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~0_combout\ = (\inst|energy\(2) & (\inst|energy\(1) $ (VCC))) # (!\inst|energy\(2) & (\inst|energy\(1) & VCC))
-- \inst11|Add0~1\ = CARRY((\inst|energy\(2) & \inst|energy\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy\(2),
	datab => \inst|energy\(1),
	datad => VCC,
	combout => \inst11|Add0~0_combout\,
	cout => \inst11|Add0~1\);

-- Location: LCCOMB_X16_Y19_N8
\inst11|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~2_combout\ = (\inst|energy\(3) & (!\inst11|Add0~1\)) # (!\inst|energy\(3) & ((\inst11|Add0~1\) # (GND)))
-- \inst11|Add0~3\ = CARRY((!\inst11|Add0~1\) # (!\inst|energy\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|energy\(3),
	datad => VCC,
	cin => \inst11|Add0~1\,
	combout => \inst11|Add0~2_combout\,
	cout => \inst11|Add0~3\);

-- Location: LCCOMB_X16_Y19_N10
\inst11|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~4_combout\ = (\inst|energy\(4) & ((GND) # (!\inst11|Add0~3\))) # (!\inst|energy\(4) & (\inst11|Add0~3\ $ (GND)))
-- \inst11|Add0~5\ = CARRY((\inst|energy\(4)) # (!\inst11|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy\(4),
	datad => VCC,
	cin => \inst11|Add0~3\,
	combout => \inst11|Add0~4_combout\,
	cout => \inst11|Add0~5\);

-- Location: LCCOMB_X16_Y19_N12
\inst11|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~6_combout\ = (\inst|energy\(5) & (!\inst11|Add0~5\)) # (!\inst|energy\(5) & ((\inst11|Add0~5\) # (GND)))
-- \inst11|Add0~7\ = CARRY((!\inst11|Add0~5\) # (!\inst|energy\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy\(5),
	datad => VCC,
	cin => \inst11|Add0~5\,
	combout => \inst11|Add0~6_combout\,
	cout => \inst11|Add0~7\);

-- Location: LCCOMB_X16_Y19_N14
\inst11|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~8_combout\ = (\inst|energy\(6) & (\inst11|Add0~7\ $ (GND))) # (!\inst|energy\(6) & (!\inst11|Add0~7\ & VCC))
-- \inst11|Add0~9\ = CARRY((\inst|energy\(6) & !\inst11|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|energy\(6),
	datad => VCC,
	cin => \inst11|Add0~7\,
	combout => \inst11|Add0~8_combout\,
	cout => \inst11|Add0~9\);

-- Location: LCCOMB_X16_Y19_N16
\inst11|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~10_combout\ = (\inst|energy\(7) & (!\inst11|Add0~9\)) # (!\inst|energy\(7) & ((\inst11|Add0~9\) # (GND)))
-- \inst11|Add0~11\ = CARRY((!\inst11|Add0~9\) # (!\inst|energy\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|energy\(7),
	datad => VCC,
	cin => \inst11|Add0~9\,
	combout => \inst11|Add0~10_combout\,
	cout => \inst11|Add0~11\);

-- Location: LCCOMB_X16_Y19_N18
\inst11|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~12_combout\ = (\inst|energy\(8) & (\inst11|Add0~11\ $ (GND))) # (!\inst|energy\(8) & (!\inst11|Add0~11\ & VCC))
-- \inst11|Add0~13\ = CARRY((\inst|energy\(8) & !\inst11|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|energy\(8),
	datad => VCC,
	cin => \inst11|Add0~11\,
	combout => \inst11|Add0~12_combout\,
	cout => \inst11|Add0~13\);

-- Location: LCCOMB_X16_Y19_N20
\inst11|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Add0~14_combout\ = \inst11|Add0~13\ $ (!\inst|energy\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|energy\(9),
	cin => \inst11|Add0~13\,
	combout => \inst11|Add0~14_combout\);

-- Location: LCCOMB_X17_Y19_N20
\inst|energy[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|energy[0]~3_combout\ = !\inst|energy_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|energy_temp\(0),
	combout => \inst|energy[0]~3_combout\);

-- Location: FF_X17_Y19_N21
\inst|energy[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~q\,
	d => \inst|energy[0]~3_combout\,
	ena => \inst11|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|energy\(0));

-- Location: LCCOMB_X14_Y19_N2
\inst11|LessThan128~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~1_cout\ = CARRY((\inst|energy\(0) & \inst|SYNC|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy\(0),
	datab => \inst|SYNC|pixel_column\(0),
	datad => VCC,
	cout => \inst11|LessThan128~1_cout\);

-- Location: LCCOMB_X14_Y19_N4
\inst11|LessThan128~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~3_cout\ = CARRY((\inst|energy\(1) & (!\inst|SYNC|pixel_column\(1) & !\inst11|LessThan128~1_cout\)) # (!\inst|energy\(1) & ((!\inst11|LessThan128~1_cout\) # (!\inst|SYNC|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|energy\(1),
	datab => \inst|SYNC|pixel_column\(1),
	datad => VCC,
	cin => \inst11|LessThan128~1_cout\,
	cout => \inst11|LessThan128~3_cout\);

-- Location: LCCOMB_X14_Y19_N6
\inst11|LessThan128~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~5_cout\ = CARRY((\inst11|Add0~0_combout\ & (\inst|SYNC|pixel_column\(2) & !\inst11|LessThan128~3_cout\)) # (!\inst11|Add0~0_combout\ & ((\inst|SYNC|pixel_column\(2)) # (!\inst11|LessThan128~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~0_combout\,
	datab => \inst|SYNC|pixel_column\(2),
	datad => VCC,
	cin => \inst11|LessThan128~3_cout\,
	cout => \inst11|LessThan128~5_cout\);

-- Location: LCCOMB_X14_Y19_N8
\inst11|LessThan128~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~7_cout\ = CARRY((\inst11|Add0~2_combout\ & ((!\inst11|LessThan128~5_cout\) # (!\inst|SYNC|pixel_column\(3)))) # (!\inst11|Add0~2_combout\ & (!\inst|SYNC|pixel_column\(3) & !\inst11|LessThan128~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~2_combout\,
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst11|LessThan128~5_cout\,
	cout => \inst11|LessThan128~7_cout\);

-- Location: LCCOMB_X14_Y19_N10
\inst11|LessThan128~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~9_cout\ = CARRY((\inst11|Add0~4_combout\ & (\inst|SYNC|pixel_column\(4) & !\inst11|LessThan128~7_cout\)) # (!\inst11|Add0~4_combout\ & ((\inst|SYNC|pixel_column\(4)) # (!\inst11|LessThan128~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~4_combout\,
	datab => \inst|SYNC|pixel_column\(4),
	datad => VCC,
	cin => \inst11|LessThan128~7_cout\,
	cout => \inst11|LessThan128~9_cout\);

-- Location: LCCOMB_X14_Y19_N12
\inst11|LessThan128~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~11_cout\ = CARRY((\inst11|Add0~6_combout\ & ((!\inst11|LessThan128~9_cout\) # (!\inst|SYNC|pixel_column\(5)))) # (!\inst11|Add0~6_combout\ & (!\inst|SYNC|pixel_column\(5) & !\inst11|LessThan128~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~6_combout\,
	datab => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst11|LessThan128~9_cout\,
	cout => \inst11|LessThan128~11_cout\);

-- Location: LCCOMB_X14_Y19_N14
\inst11|LessThan128~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~13_cout\ = CARRY((\inst11|Add0~8_combout\ & (\inst|SYNC|pixel_column\(6) & !\inst11|LessThan128~11_cout\)) # (!\inst11|Add0~8_combout\ & ((\inst|SYNC|pixel_column\(6)) # (!\inst11|LessThan128~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~8_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst11|LessThan128~11_cout\,
	cout => \inst11|LessThan128~13_cout\);

-- Location: LCCOMB_X14_Y19_N16
\inst11|LessThan128~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~15_cout\ = CARRY((\inst11|Add0~10_combout\ & ((!\inst11|LessThan128~13_cout\) # (!\inst|SYNC|pixel_column\(7)))) # (!\inst11|Add0~10_combout\ & (!\inst|SYNC|pixel_column\(7) & !\inst11|LessThan128~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~10_combout\,
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst11|LessThan128~13_cout\,
	cout => \inst11|LessThan128~15_cout\);

-- Location: LCCOMB_X14_Y19_N18
\inst11|LessThan128~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~17_cout\ = CARRY((\inst11|Add0~12_combout\ & (\inst|SYNC|pixel_column\(8) & !\inst11|LessThan128~15_cout\)) # (!\inst11|Add0~12_combout\ & ((\inst|SYNC|pixel_column\(8)) # (!\inst11|LessThan128~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~12_combout\,
	datab => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst11|LessThan128~15_cout\,
	cout => \inst11|LessThan128~17_cout\);

-- Location: LCCOMB_X14_Y19_N20
\inst11|LessThan128~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan128~18_combout\ = (\inst11|Add0~14_combout\ & (\inst11|LessThan128~17_cout\ & \inst|SYNC|pixel_column\(9))) # (!\inst11|Add0~14_combout\ & ((\inst11|LessThan128~17_cout\) # (\inst|SYNC|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Add0~14_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	cin => \inst11|LessThan128~17_cout\,
	combout => \inst11|LessThan128~18_combout\);

-- Location: LCCOMB_X14_Y18_N16
\inst11|process_0~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~183_combout\ = (\inst|SYNC|pixel_row\(3) & (\inst|SYNC|pixel_row\(2) & ((\inst|SYNC|pixel_row\(1)) # (\inst|SYNC|pixel_row\(0))))) # (!\inst|SYNC|pixel_row\(3) & (!\inst|SYNC|pixel_row\(1) & ((!\inst|SYNC|pixel_row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|SYNC|pixel_row\(1),
	datac => \inst|SYNC|pixel_row\(0),
	datad => \inst|SYNC|pixel_row\(2),
	combout => \inst11|process_0~183_combout\);

-- Location: LCCOMB_X14_Y17_N6
\inst11|process_0~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~184_combout\ = ((\inst11|process_0~183_combout\) # ((\inst11|LessThan127~1_combout\) # (!\inst|SYNC|pixel_column\(9)))) # (!\inst11|LessThan125~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan125~0_combout\,
	datab => \inst11|process_0~183_combout\,
	datac => \inst11|LessThan127~1_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~184_combout\);

-- Location: LCCOMB_X14_Y17_N4
\inst11|process_0~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~185_combout\ = ((\inst11|LessThan128~18_combout\) # ((\inst11|process_0~184_combout\) # (!\inst|SYNC|pixel_row\(4)))) # (!\inst|SYNC|pixel_row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datab => \inst11|LessThan128~18_combout\,
	datac => \inst|SYNC|pixel_row\(4),
	datad => \inst11|process_0~184_combout\,
	combout => \inst11|process_0~185_combout\);

-- Location: LCCOMB_X16_Y16_N24
\inst11|v_font_row[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~20_combout\ = (\inst11|v_character_address[1]~100_combout\ & (!\inst11|process_0~109_combout\ & (!\inst11|process_0~180_combout\ & \inst11|v_character_address[4]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~100_combout\,
	datab => \inst11|process_0~109_combout\,
	datac => \inst11|process_0~180_combout\,
	datad => \inst11|v_character_address[4]~124_combout\,
	combout => \inst11|v_font_row[2]~20_combout\);

-- Location: LCCOMB_X15_Y16_N6
\inst11|v_font_row[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~21_combout\ = (\inst11|process_0~93_combout\) # ((\inst11|v_font_row[2]~19_combout\) # ((!\inst11|v_font_row[2]~20_combout\) # (!\inst11|process_0~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~93_combout\,
	datab => \inst11|v_font_row[2]~19_combout\,
	datac => \inst11|process_0~185_combout\,
	datad => \inst11|v_font_row[2]~20_combout\,
	combout => \inst11|v_font_row[2]~21_combout\);

-- Location: LCCOMB_X17_Y17_N14
\inst11|v_font_row[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~15_combout\ = ((!\inst11|process_0~82_combout\ & (\inst|SYNC|pixel_column\(7) $ (\inst|SYNC|pixel_column\(8))))) # (!\inst11|process_0~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~81_combout\,
	datab => \inst11|process_0~82_combout\,
	datac => \inst|SYNC|pixel_column\(7),
	datad => \inst|SYNC|pixel_column\(8),
	combout => \inst11|v_font_row[2]~15_combout\);

-- Location: LCCOMB_X17_Y17_N10
\inst11|v_font_row[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~1_combout\ = (\inst11|process_0~88_combout\ & ((\inst11|process_0~82_combout\) # (!\inst11|process_0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~72_combout\,
	datab => \inst11|process_0~82_combout\,
	datac => \inst11|process_0~88_combout\,
	combout => \inst11|v_font_row[2]~1_combout\);

-- Location: LCCOMB_X17_Y17_N28
\inst11|v_font_row[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~16_combout\ = ((!\inst|SYNC|pixel_column\(9) & ((\inst11|v_font_row[2]~15_combout\) # (!\inst11|process_0~186_combout\)))) # (!\inst11|v_font_row[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~186_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|v_font_row[2]~15_combout\,
	datad => \inst11|v_font_row[2]~1_combout\,
	combout => \inst11|v_font_row[2]~16_combout\);

-- Location: LCCOMB_X17_Y17_N18
\inst11|v_font_row[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~0_combout\ = (!\inst11|LessThan10~1_combout\ & \inst|SYNC|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|LessThan10~1_combout\,
	datad => \inst|SYNC|pixel_row\(7),
	combout => \inst11|v_font_row[2]~0_combout\);

-- Location: LCCOMB_X17_Y19_N4
\inst11|v_font_row[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~17_combout\ = (\inst11|v_font_row[2]~0_combout\ & ((\inst9|STATE_OUT\(1)) # ((\inst9|STATE_OUT\(2) & \inst9|STATE_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(1),
	datab => \inst11|v_font_row[2]~0_combout\,
	datac => \inst9|STATE_OUT\(2),
	datad => \inst9|STATE_OUT\(0),
	combout => \inst11|v_font_row[2]~17_combout\);

-- Location: LCCOMB_X16_Y20_N30
\inst11|LessThan120~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan120~0_combout\ = (\inst|SYNC|pixel_column\(6) & (\inst|SYNC|pixel_column\(7) & \inst|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(7),
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst11|LessThan120~0_combout\);

-- Location: LCCOMB_X16_Y19_N0
\inst11|v_font_row[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~13_combout\ = (\inst|SYNC|pixel_column\(8) & (((!\inst11|LessThan123~1_combout\)) # (!\inst11|LessThan120~0_combout\))) # (!\inst|SYNC|pixel_column\(8) & (((\inst11|LessThan115~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan120~0_combout\,
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst11|LessThan123~1_combout\,
	datad => \inst11|LessThan115~2_combout\,
	combout => \inst11|v_font_row[2]~13_combout\);

-- Location: LCCOMB_X17_Y19_N16
\inst11|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (!\inst9|STATE_OUT\(1) & (\inst9|STATE_OUT\(2) & !\inst9|STATE_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(1),
	datac => \inst9|STATE_OUT\(2),
	datad => \inst9|STATE_OUT\(0),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y20_N20
\inst11|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan6~0_combout\ = (\inst|SYNC|pixel_row\(7) & \inst|SYNC|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|pixel_row\(7),
	datad => \inst|SYNC|pixel_row\(6),
	combout => \inst11|LessThan6~0_combout\);

-- Location: LCCOMB_X14_Y20_N30
\inst11|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan6~1_combout\ = ((!\inst|SYNC|pixel_row\(5) & ((!\inst|SYNC|pixel_row\(4)) # (!\inst11|LessThan10~0_combout\)))) # (!\inst11|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan10~0_combout\,
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst|SYNC|pixel_row\(4),
	datad => \inst11|LessThan6~0_combout\,
	combout => \inst11|LessThan6~1_combout\);

-- Location: LCCOMB_X17_Y19_N28
\inst11|v_font_row[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~14_combout\ = (\inst11|v_font_row[2]~13_combout\ & (\inst11|Equal0~0_combout\ & (!\inst|SYNC|pixel_column\(9) & !\inst11|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_row[2]~13_combout\,
	datab => \inst11|Equal0~0_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst11|LessThan6~1_combout\,
	combout => \inst11|v_font_row[2]~14_combout\);

-- Location: LCCOMB_X17_Y19_N14
\inst11|v_font_row[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~18_combout\ = (!\inst|SYNC|pixel_row\(8) & ((\inst11|v_font_row[2]~14_combout\) # ((\inst11|v_font_row[2]~16_combout\ & \inst11|v_font_row[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_row[2]~16_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst11|v_font_row[2]~17_combout\,
	datad => \inst11|v_font_row[2]~14_combout\,
	combout => \inst11|v_font_row[2]~18_combout\);

-- Location: LCCOMB_X17_Y19_N0
\inst11|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Equal1~0_combout\ = (!\inst9|STATE_OUT\(1) & (!\inst9|STATE_OUT\(2) & !\inst9|STATE_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(1),
	datac => \inst9|STATE_OUT\(2),
	datad => \inst9|STATE_OUT\(0),
	combout => \inst11|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y20_N12
\inst11|process_0~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~137_combout\ = (!\inst|SYNC|pixel_column\(5) & (\inst11|LessThan127~0_combout\ & \inst|SYNC|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst11|LessThan127~0_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~137_combout\);

-- Location: LCCOMB_X14_Y17_N12
\inst11|LessThan125~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan125~1_combout\ = (!\inst|SYNC|pixel_row\(7) & !\inst|SYNC|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datad => \inst|SYNC|pixel_row\(6),
	combout => \inst11|LessThan125~1_combout\);

-- Location: LCCOMB_X14_Y20_N14
\inst11|LessThan25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan25~0_combout\ = (\inst|SYNC|pixel_row\(8) & ((\inst|SYNC|pixel_row\(5)) # ((\inst|SYNC|pixel_row\(4)) # (!\inst11|LessThan125~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datab => \inst|SYNC|pixel_row\(4),
	datac => \inst|SYNC|pixel_row\(8),
	datad => \inst11|LessThan125~1_combout\,
	combout => \inst11|LessThan25~0_combout\);

-- Location: LCCOMB_X14_Y20_N24
\inst11|LessThan24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan24~0_combout\ = (((!\inst11|LessThan6~0_combout\) # (!\inst|SYNC|pixel_row\(4))) # (!\inst|SYNC|pixel_row\(5))) # (!\inst11|LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan10~0_combout\,
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst|SYNC|pixel_row\(4),
	datad => \inst11|LessThan6~0_combout\,
	combout => \inst11|LessThan24~0_combout\);

-- Location: LCCOMB_X14_Y20_N0
\inst11|process_0~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~116_combout\ = (!\inst11|LessThan25~0_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst|SYNC|pixel_row\(8),
	datad => \inst11|LessThan24~0_combout\,
	combout => \inst11|process_0~116_combout\);

-- Location: LCCOMB_X16_Y20_N8
\inst11|LessThan37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan37~0_combout\ = (\inst|SYNC|pixel_column\(5)) # ((\inst|SYNC|pixel_column\(4)) # (\inst|SYNC|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(4),
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|LessThan37~0_combout\);

-- Location: LCCOMB_X16_Y20_N18
\inst11|LessThan32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan32~0_combout\ = (\inst|SYNC|pixel_column\(1) & (\inst|SYNC|pixel_column\(3) & (\inst|SYNC|pixel_column\(0) & \inst|SYNC|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|SYNC|pixel_column\(3),
	datac => \inst|SYNC|pixel_column\(0),
	datad => \inst|SYNC|pixel_column\(2),
	combout => \inst11|LessThan32~0_combout\);

-- Location: LCCOMB_X16_Y20_N24
\inst11|LessThan32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan32~1_combout\ = (!\inst11|LessThan32~0_combout\) # (!\inst|SYNC|pixel_column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|pixel_column\(4),
	datad => \inst11|LessThan32~0_combout\,
	combout => \inst11|LessThan32~1_combout\);

-- Location: LCCOMB_X16_Y20_N26
\inst11|process_0~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~142_combout\ = (\inst|SYNC|pixel_column\(8) & ((\inst|SYNC|pixel_column\(9)) # ((!\inst|SYNC|pixel_column\(7) & \inst11|LessThan37~0_combout\)))) # (!\inst|SYNC|pixel_column\(8) & ((\inst|SYNC|pixel_column\(7)) # 
-- ((\inst11|LessThan37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst11|LessThan37~0_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~142_combout\);

-- Location: LCCOMB_X16_Y20_N16
\inst11|process_0~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~143_combout\ = (\inst11|process_0~142_combout\) # ((!\inst|SYNC|pixel_column\(9) & ((\inst11|LessThan32~1_combout\) # (!\inst11|LessThan120~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan120~0_combout\,
	datab => \inst11|LessThan32~1_combout\,
	datac => \inst11|process_0~142_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~143_combout\);

-- Location: LCCOMB_X16_Y20_N2
\inst11|v_character_address~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~41_combout\ = ((\inst11|process_0~143_combout\ & ((!\inst11|LessThan37~0_combout\) # (!\inst11|process_0~137_combout\)))) # (!\inst11|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~137_combout\,
	datab => \inst11|process_0~116_combout\,
	datac => \inst11|LessThan37~0_combout\,
	datad => \inst11|process_0~143_combout\,
	combout => \inst11|v_character_address~41_combout\);

-- Location: LCCOMB_X15_Y20_N4
\inst11|process_0~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~146_combout\ = (!\inst|SYNC|pixel_column\(8) & (!\inst|SYNC|pixel_column\(9) & \inst|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|process_0~146_combout\);

-- Location: LCCOMB_X15_Y20_N20
\inst11|process_0~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~147_combout\ = ((\inst11|LessThan41~0_combout\) # ((\inst11|LessThan112~0_combout\ & \inst11|LessThan32~1_combout\))) # (!\inst11|process_0~146_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan112~0_combout\,
	datab => \inst11|LessThan32~1_combout\,
	datac => \inst11|process_0~146_combout\,
	datad => \inst11|LessThan41~0_combout\,
	combout => \inst11|process_0~147_combout\);

-- Location: LCCOMB_X14_Y20_N6
\inst11|process_0~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~207_combout\ = (!\inst11|LessThan25~0_combout\ & (!\inst11|process_0~147_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst11|process_0~147_combout\,
	datad => \inst11|LessThan24~0_combout\,
	combout => \inst11|process_0~207_combout\);

-- Location: LCCOMB_X15_Y19_N26
\inst11|process_0~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~117_combout\ = (\inst|SYNC|pixel_column\(5) & (!\inst|SYNC|pixel_column\(9) & ((\inst|SYNC|pixel_column\(4)) # (\inst11|LessThan32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst11|LessThan32~0_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~117_combout\);

-- Location: LCCOMB_X12_Y19_N0
\inst11|process_0~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~191_combout\ = ((\inst|SYNC|pixel_column\(8)) # ((\inst|SYNC|pixel_column\(7)) # (!\inst|SYNC|pixel_column\(6)))) # (!\inst11|process_0~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~117_combout\,
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|process_0~191_combout\);

-- Location: LCCOMB_X15_Y19_N12
\inst11|process_0~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~200_combout\ = (!\inst|SYNC|pixel_column\(6) & (!\inst|SYNC|pixel_column\(5) & (\inst|SYNC|pixel_column\(4) & !\inst11|LessThan32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(4),
	datad => \inst11|LessThan32~0_combout\,
	combout => \inst11|process_0~200_combout\);

-- Location: LCCOMB_X11_Y20_N22
\inst11|process_0~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~133_combout\ = (\inst11|process_0~116_combout\ & (\inst11|process_0~200_combout\ & \inst11|process_0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datac => \inst11|process_0~200_combout\,
	datad => \inst11|process_0~72_combout\,
	combout => \inst11|process_0~133_combout\);

-- Location: LCCOMB_X16_Y20_N6
\inst11|process_0~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~75_combout\ = (\inst|SYNC|pixel_column\(8) & !\inst|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~75_combout\);

-- Location: LCCOMB_X17_Y20_N22
\inst11|process_0~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~131_combout\ = (\inst|SYNC|pixel_column\(7) & (!\inst|SYNC|pixel_column\(6) & (!\inst|SYNC|pixel_column\(5) & !\inst|SYNC|pixel_column\(4)))) # (!\inst|SYNC|pixel_column\(7) & (\inst|SYNC|pixel_column\(6) & 
-- (\inst|SYNC|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|process_0~131_combout\);

-- Location: LCCOMB_X17_Y20_N4
\inst11|process_0~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~132_combout\ = (((!\inst|SYNC|pixel_column\(7) & \inst11|LessThan32~1_combout\)) # (!\inst11|process_0~131_combout\)) # (!\inst11|process_0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst11|process_0~75_combout\,
	datac => \inst11|process_0~131_combout\,
	datad => \inst11|LessThan32~1_combout\,
	combout => \inst11|process_0~132_combout\);

-- Location: LCCOMB_X14_Y20_N28
\inst11|process_0~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~199_combout\ = (!\inst11|process_0~132_combout\ & (!\inst11|LessThan25~0_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|process_0~132_combout\,
	datac => \inst11|LessThan25~0_combout\,
	datad => \inst11|LessThan24~0_combout\,
	combout => \inst11|process_0~199_combout\);

-- Location: LCCOMB_X15_Y19_N14
\inst11|LessThan34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan34~0_combout\ = (!\inst|SYNC|pixel_column\(4) & !\inst11|LessThan32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datac => \inst11|LessThan32~0_combout\,
	combout => \inst11|LessThan34~0_combout\);

-- Location: LCCOMB_X15_Y19_N22
\inst11|process_0~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~163_combout\ = (\inst11|LessThan34~0_combout\) # (((\inst|SYNC|pixel_column\(6)) # (!\inst11|process_0~72_combout\)) # (!\inst|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan34~0_combout\,
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst11|process_0~72_combout\,
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|process_0~163_combout\);

-- Location: LCCOMB_X15_Y19_N18
\inst11|LessThan44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan44~0_combout\ = (!\inst|SYNC|pixel_column\(6) & (((!\inst|SYNC|pixel_column\(4)) # (!\inst11|LessThan32~0_combout\)) # (!\inst|SYNC|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst11|LessThan32~0_combout\,
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|LessThan44~0_combout\);

-- Location: LCCOMB_X15_Y19_N2
\inst11|process_0~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~135_combout\ = (!\inst11|LessThan44~0_combout\ & ((!\inst11|LessThan45~0_combout\) # (!\inst|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LessThan44~0_combout\,
	datac => \inst|SYNC|pixel_column\(7),
	datad => \inst11|LessThan45~0_combout\,
	combout => \inst11|process_0~135_combout\);

-- Location: LCCOMB_X15_Y19_N8
\inst11|v_character_address~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~75_combout\ = ((\inst11|process_0~163_combout\ & ((!\inst11|process_0~72_combout\) # (!\inst11|process_0~135_combout\)))) # (!\inst11|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~163_combout\,
	datab => \inst11|process_0~135_combout\,
	datac => \inst11|process_0~72_combout\,
	datad => \inst11|process_0~116_combout\,
	combout => \inst11|v_character_address~75_combout\);

-- Location: LCCOMB_X15_Y21_N22
\inst11|LessThan38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan38~0_combout\ = (!\inst|SYNC|pixel_column\(4) & (!\inst|SYNC|pixel_column\(5) & !\inst11|LessThan32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst11|LessThan32~0_combout\,
	combout => \inst11|LessThan38~0_combout\);

-- Location: LCCOMB_X15_Y21_N26
\inst11|process_0~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~134_combout\ = (((\inst11|LessThan38~0_combout\) # (\inst11|LessThan120~0_combout\)) # (!\inst|SYNC|pixel_column\(6))) # (!\inst11|process_0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~72_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|LessThan38~0_combout\,
	datad => \inst11|LessThan120~0_combout\,
	combout => \inst11|process_0~134_combout\);

-- Location: LCCOMB_X14_Y20_N12
\inst11|process_0~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~210_combout\ = (!\inst11|LessThan25~0_combout\ & (!\inst11|process_0~134_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst11|process_0~134_combout\,
	datad => \inst11|LessThan24~0_combout\,
	combout => \inst11|process_0~210_combout\);

-- Location: LCCOMB_X14_Y20_N22
\inst11|v_character_address~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~76_combout\ = (!\inst11|process_0~133_combout\ & (!\inst11|process_0~199_combout\ & (\inst11|v_character_address~75_combout\ & !\inst11|process_0~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~133_combout\,
	datab => \inst11|process_0~199_combout\,
	datac => \inst11|v_character_address~75_combout\,
	datad => \inst11|process_0~210_combout\,
	combout => \inst11|v_character_address~76_combout\);

-- Location: LCCOMB_X15_Y19_N10
\inst11|process_0~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~118_combout\ = (\inst|SYNC|pixel_column\(6) & ((\inst|SYNC|pixel_column\(5) & ((!\inst|SYNC|pixel_column\(4)))) # (!\inst|SYNC|pixel_column\(5) & (\inst11|LessThan32~0_combout\ & \inst|SYNC|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan32~0_combout\,
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(4),
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|process_0~118_combout\);

-- Location: LCCOMB_X15_Y17_N16
\inst11|process_0~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~202_combout\ = ((\inst|SYNC|pixel_column\(9)) # ((!\inst11|process_0~118_combout\) # (!\inst|SYNC|pixel_column\(8)))) # (!\inst|SYNC|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst11|process_0~118_combout\,
	combout => \inst11|process_0~202_combout\);

-- Location: LCCOMB_X16_Y20_N28
\inst11|process_0~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~136_combout\ = (((!\inst|SYNC|pixel_column\(4) & !\inst11|LessThan32~0_combout\)) # (!\inst11|LessThan120~0_combout\)) # (!\inst11|process_0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~75_combout\,
	datab => \inst|SYNC|pixel_column\(4),
	datac => \inst11|LessThan120~0_combout\,
	datad => \inst11|LessThan32~0_combout\,
	combout => \inst11|process_0~136_combout\);

-- Location: LCCOMB_X11_Y20_N28
\inst11|v_character_address~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~78_combout\ = ((\inst11|process_0~202_combout\ & \inst11|process_0~136_combout\)) # (!\inst11|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datac => \inst11|process_0~202_combout\,
	datad => \inst11|process_0~136_combout\,
	combout => \inst11|v_character_address~78_combout\);

-- Location: LCCOMB_X11_Y20_N16
\inst11|v_font_row[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~10_combout\ = (((!\inst11|process_0~191_combout\ & \inst11|process_0~116_combout\)) # (!\inst11|v_character_address~78_combout\)) # (!\inst11|v_character_address~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~191_combout\,
	datab => \inst11|v_character_address~76_combout\,
	datac => \inst11|process_0~116_combout\,
	datad => \inst11|v_character_address~78_combout\,
	combout => \inst11|v_font_row[2]~10_combout\);

-- Location: LCCOMB_X15_Y20_N22
\inst11|process_0~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~160_combout\ = (\inst|SYNC|pixel_column\(7) & (!\inst|SYNC|pixel_column\(9) & !\inst11|LessThan38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst11|LessThan38~0_combout\,
	combout => \inst11|process_0~160_combout\);

-- Location: LCCOMB_X15_Y20_N30
\inst11|process_0~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~205_combout\ = ((\inst|SYNC|pixel_column\(6)) # ((\inst|SYNC|pixel_column\(5)) # (\inst|SYNC|pixel_column\(8)))) # (!\inst11|process_0~160_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~160_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst|SYNC|pixel_column\(8),
	combout => \inst11|process_0~205_combout\);

-- Location: LCCOMB_X12_Y17_N0
\inst11|process_0~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~187_combout\ = (\inst|SYNC|pixel_column\(7) & (!\inst11|process_0~82_combout\ & !\inst|SYNC|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datac => \inst11|process_0~82_combout\,
	datad => \inst|SYNC|pixel_column\(8),
	combout => \inst11|process_0~187_combout\);

-- Location: LCCOMB_X12_Y17_N30
\inst11|v_character_address~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~69_combout\ = ((\inst|SYNC|pixel_column\(9)) # ((\inst11|process_0~81_combout\ & !\inst11|process_0~187_combout\))) # (!\inst11|process_0~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~80_combout\,
	datab => \inst11|process_0~81_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst11|process_0~187_combout\,
	combout => \inst11|v_character_address~69_combout\);

-- Location: LCCOMB_X14_Y20_N26
\inst11|process_0~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~119_combout\ = (\inst|SYNC|pixel_column\(9)) # (((\inst|SYNC|pixel_column\(8)) # (\inst|SYNC|pixel_column\(7))) # (!\inst11|process_0~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst11|process_0~118_combout\,
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|process_0~119_combout\);

-- Location: LCCOMB_X14_Y20_N2
\inst11|process_0~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~193_combout\ = (!\inst11|LessThan25~0_combout\ & (!\inst11|process_0~119_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst11|process_0~119_combout\,
	datad => \inst11|LessThan24~0_combout\,
	combout => \inst11|process_0~193_combout\);

-- Location: LCCOMB_X12_Y20_N22
\inst11|v_character_address[1]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~70_combout\ = (\inst11|v_character_address~69_combout\ & (!\inst11|process_0~193_combout\ & (\inst11|process_0~115_combout\ & !\inst11|process_0~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~69_combout\,
	datab => \inst11|process_0~193_combout\,
	datac => \inst11|process_0~115_combout\,
	datad => \inst11|process_0~166_combout\,
	combout => \inst11|v_character_address[1]~70_combout\);

-- Location: LCCOMB_X14_Y19_N0
\inst11|process_0~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~124_combout\ = (!\inst|SYNC|pixel_column\(8) & !\inst|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~124_combout\);

-- Location: LCCOMB_X17_Y20_N10
\inst11|process_0~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~140_combout\ = (((!\inst|SYNC|pixel_column\(7) & \inst11|LessThan32~1_combout\)) # (!\inst11|process_0~131_combout\)) # (!\inst11|process_0~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst11|process_0~124_combout\,
	datac => \inst11|process_0~131_combout\,
	datad => \inst11|LessThan32~1_combout\,
	combout => \inst11|process_0~140_combout\);

-- Location: LCCOMB_X12_Y20_N28
\inst11|v_character_address[1]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~71_combout\ = (\inst11|v_character_address[1]~70_combout\ & (((\inst11|process_0~205_combout\ & \inst11|process_0~140_combout\)) # (!\inst11|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datab => \inst11|process_0~205_combout\,
	datac => \inst11|v_character_address[1]~70_combout\,
	datad => \inst11|process_0~140_combout\,
	combout => \inst11|v_character_address[1]~71_combout\);

-- Location: LCCOMB_X12_Y20_N24
\inst11|v_font_row[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~11_combout\ = ((\inst11|process_0~207_combout\) # ((\inst11|v_font_row[2]~10_combout\) # (!\inst11|v_character_address[1]~71_combout\))) # (!\inst11|v_character_address~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~41_combout\,
	datab => \inst11|process_0~207_combout\,
	datac => \inst11|v_font_row[2]~10_combout\,
	datad => \inst11|v_character_address[1]~71_combout\,
	combout => \inst11|v_font_row[2]~11_combout\);

-- Location: LCCOMB_X16_Y20_N0
\inst11|v_font_row[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~4_combout\ = (\inst|SYNC|pixel_column\(6) & (!\inst|SYNC|pixel_column\(5) & ((\inst11|LessThan123~4_combout\) # (!\inst|SYNC|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(4),
	datad => \inst11|LessThan123~4_combout\,
	combout => \inst11|v_font_row[2]~4_combout\);

-- Location: LCCOMB_X16_Y20_N10
\inst11|v_font_row[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~5_combout\ = (\inst11|v_font_col[2]~0_combout\ & ((\inst11|v_font_row[2]~4_combout\) # ((!\inst|SYNC|pixel_column\(6) & \inst|SYNC|pixel_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst11|v_font_row[2]~4_combout\,
	datac => \inst11|v_font_col[2]~0_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|v_font_row[2]~5_combout\);

-- Location: LCCOMB_X15_Y19_N0
\inst11|process_0~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~129_combout\ = (\inst|SYNC|pixel_column\(5) & ((\inst|SYNC|pixel_column\(4)) # (\inst11|LessThan32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst11|LessThan32~0_combout\,
	datac => \inst|SYNC|pixel_column\(5),
	combout => \inst11|process_0~129_combout\);

-- Location: LCCOMB_X15_Y20_N26
\inst11|v_font_row[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~6_combout\ = (\inst11|v_font_row[2]~5_combout\) # ((!\inst|SYNC|pixel_column\(9) & ((\inst11|process_0~129_combout\) # (!\inst11|LessThan127~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan127~0_combout\,
	datab => \inst11|v_font_row[2]~5_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst11|process_0~129_combout\,
	combout => \inst11|v_font_row[2]~6_combout\);

-- Location: LCCOMB_X15_Y20_N14
\inst11|process_0~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~128_combout\ = ((\inst11|LessThan41~0_combout\) # ((\inst11|LessThan112~0_combout\ & \inst11|LessThan32~1_combout\))) # (!\inst11|process_0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan112~0_combout\,
	datab => \inst11|LessThan32~1_combout\,
	datac => \inst11|process_0~72_combout\,
	datad => \inst11|LessThan41~0_combout\,
	combout => \inst11|process_0~128_combout\);

-- Location: LCCOMB_X14_Y20_N8
\inst11|process_0~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~209_combout\ = (!\inst11|LessThan25~0_combout\ & (!\inst11|process_0~128_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst11|process_0~128_combout\,
	datad => \inst11|LessThan24~0_combout\,
	combout => \inst11|process_0~209_combout\);

-- Location: LCCOMB_X15_Y19_N4
\inst11|v_font_row[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~7_combout\ = (\inst11|LessThan125~1_combout\ & ((\inst|SYNC|pixel_row\(4) & (!\inst|SYNC|pixel_row\(5) & \inst11|LessThan10~0_combout\)) # (!\inst|SYNC|pixel_row\(4) & (\inst|SYNC|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst11|LessThan125~1_combout\,
	datad => \inst11|LessThan10~0_combout\,
	combout => \inst11|v_font_row[2]~7_combout\);

-- Location: LCCOMB_X14_Y20_N16
\inst11|v_font_row[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~8_combout\ = (\inst11|process_0~209_combout\) # ((\inst|SYNC|pixel_row\(8) & (\inst11|v_font_row[2]~6_combout\ & \inst11|v_font_row[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|v_font_row[2]~6_combout\,
	datac => \inst11|process_0~209_combout\,
	datad => \inst11|v_font_row[2]~7_combout\,
	combout => \inst11|v_font_row[2]~8_combout\);

-- Location: LCCOMB_X15_Y21_N30
\inst11|process_0~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~78_combout\ = (!\inst|SYNC|pixel_column\(7) & (\inst|SYNC|pixel_column\(8) & !\inst|SYNC|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~78_combout\);

-- Location: LCCOMB_X14_Y18_N2
\inst11|process_0~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~173_combout\ = (!\inst11|process_0~82_combout\ & (\inst11|process_0~78_combout\ & \inst11|process_0~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~82_combout\,
	datab => \inst11|process_0~78_combout\,
	datad => \inst11|process_0~80_combout\,
	combout => \inst11|process_0~173_combout\);

-- Location: LCCOMB_X15_Y20_N12
\inst11|v_font_row[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~9_combout\ = (((\inst11|v_font_row[2]~8_combout\) # (\inst11|process_0~173_combout\)) # (!\inst11|process_0~87_combout\)) # (!\inst11|v_font_row[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_row[2]~3_combout\,
	datab => \inst11|process_0~87_combout\,
	datac => \inst11|v_font_row[2]~8_combout\,
	datad => \inst11|process_0~173_combout\,
	combout => \inst11|v_font_row[2]~9_combout\);

-- Location: LCCOMB_X16_Y20_N4
\inst11|process_0~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~126_combout\ = (\inst|SYNC|pixel_column\(4) & (\inst11|LessThan120~0_combout\ & \inst11|LessThan32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(4),
	datac => \inst11|LessThan120~0_combout\,
	datad => \inst11|LessThan32~0_combout\,
	combout => \inst11|process_0~126_combout\);

-- Location: LCCOMB_X16_Y20_N14
\inst11|process_0~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~127_combout\ = (\inst|SYNC|pixel_column\(8) & (!\inst11|LessThan37~0_combout\ & ((!\inst|SYNC|pixel_column\(7))))) # (!\inst|SYNC|pixel_column\(8) & (((\inst11|process_0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst11|LessThan37~0_combout\,
	datac => \inst11|process_0~126_combout\,
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|process_0~127_combout\);

-- Location: LCCOMB_X12_Y20_N2
\inst11|process_0~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~169_combout\ = (\inst11|process_0~116_combout\ & (\inst11|process_0~127_combout\ & !\inst|SYNC|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datac => \inst11|process_0~127_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~169_combout\);

-- Location: LCCOMB_X12_Y20_N8
\inst11|process_0~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~130_combout\ = (\inst11|process_0~116_combout\ & (\inst11|process_0~78_combout\ & (\inst11|process_0~129_combout\ & \inst|SYNC|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datab => \inst11|process_0~78_combout\,
	datac => \inst11|process_0~129_combout\,
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|process_0~130_combout\);

-- Location: LCCOMB_X15_Y20_N2
\inst11|process_0~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~161_combout\ = (\inst11|LessThan120~0_combout\) # (((\inst|SYNC|pixel_column\(8)) # (!\inst11|process_0~160_combout\)) # (!\inst|SYNC|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan120~0_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|process_0~160_combout\,
	datad => \inst|SYNC|pixel_column\(8),
	combout => \inst11|process_0~161_combout\);

-- Location: LCCOMB_X15_Y20_N16
\inst11|process_0~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~162_combout\ = ((\inst11|LessThan44~0_combout\) # ((\inst11|LessThan45~0_combout\ & \inst|SYNC|pixel_column\(7)))) # (!\inst11|process_0~146_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan45~0_combout\,
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst11|process_0~146_combout\,
	datad => \inst11|LessThan44~0_combout\,
	combout => \inst11|process_0~162_combout\);

-- Location: LCCOMB_X12_Y20_N4
\inst11|v_character_address[4]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~192_combout\ = (!\inst11|process_0~130_combout\ & (((\inst11|process_0~161_combout\ & \inst11|process_0~162_combout\)) # (!\inst11|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datab => \inst11|process_0~130_combout\,
	datac => \inst11|process_0~161_combout\,
	datad => \inst11|process_0~162_combout\,
	combout => \inst11|v_character_address[4]~192_combout\);

-- Location: LCCOMB_X14_Y21_N6
\inst11|LessThan56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan56~0_combout\ = (\inst|SYNC|pixel_column\(7)) # ((\inst|SYNC|pixel_column\(6)) # ((\inst|SYNC|pixel_column\(5) & \inst|SYNC|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|LessThan56~0_combout\);

-- Location: LCCOMB_X15_Y21_N4
\inst11|process_0~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~120_combout\ = (!\inst11|LessThan56~0_combout\ & (((\inst|SYNC|pixel_column\(4) & \inst11|LessThan32~0_combout\)) # (!\inst11|LessThan55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst11|LessThan55~0_combout\,
	datac => \inst11|LessThan56~0_combout\,
	datad => \inst11|LessThan32~0_combout\,
	combout => \inst11|process_0~120_combout\);

-- Location: LCCOMB_X15_Y21_N2
\inst11|process_0~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~195_combout\ = ((\inst|SYNC|pixel_column\(9)) # (!\inst11|process_0~120_combout\)) # (!\inst|SYNC|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst11|process_0~120_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~195_combout\);

-- Location: LCCOMB_X14_Y20_N4
\inst11|process_0~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~208_combout\ = (!\inst11|process_0~195_combout\ & (!\inst11|LessThan25~0_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~195_combout\,
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst|SYNC|pixel_row\(8),
	datad => \inst11|LessThan24~0_combout\,
	combout => \inst11|process_0~208_combout\);

-- Location: LCCOMB_X14_Y21_N26
\inst11|process_0~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~121_combout\ = (\inst11|LessThan56~0_combout\ & (!\inst|SYNC|pixel_column\(6) & (\inst11|process_0~78_combout\ & \inst11|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan56~0_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|process_0~78_combout\,
	datad => \inst11|process_0~116_combout\,
	combout => \inst11|process_0~121_combout\);

-- Location: LCCOMB_X15_Y21_N14
\inst11|process_0~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~194_combout\ = (((\inst11|LessThan38~0_combout\) # (\inst|SYNC|pixel_column\(9))) # (!\inst|SYNC|pixel_column\(8))) # (!\inst11|LessThan55~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan55~0_combout\,
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst11|LessThan38~0_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~194_combout\);

-- Location: LCCOMB_X14_Y21_N22
\inst11|v_character_address~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~32_combout\ = (!\inst11|process_0~121_combout\ & ((\inst11|process_0~194_combout\) # (!\inst11|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~121_combout\,
	datac => \inst11|process_0~194_combout\,
	datad => \inst11|process_0~116_combout\,
	combout => \inst11|v_character_address~32_combout\);

-- Location: LCCOMB_X15_Y21_N20
\inst11|process_0~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~122_combout\ = (\inst11|LessThan44~0_combout\) # ((\inst11|LessThan45~0_combout\) # (!\inst11|process_0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|LessThan44~0_combout\,
	datac => \inst11|process_0~78_combout\,
	datad => \inst11|LessThan45~0_combout\,
	combout => \inst11|process_0~122_combout\);

-- Location: LCCOMB_X14_Y21_N4
\inst11|process_0~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~123_combout\ = (!\inst|SYNC|pixel_column\(7) & (!\inst|SYNC|pixel_column\(5) & (\inst|SYNC|pixel_column\(6) & !\inst11|LessThan38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst11|LessThan38~0_combout\,
	combout => \inst11|process_0~123_combout\);

-- Location: LCCOMB_X14_Y21_N18
\inst11|process_0~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~196_combout\ = (\inst|SYNC|pixel_column\(8) & (\inst11|process_0~116_combout\ & (\inst11|process_0~123_combout\ & !\inst|SYNC|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst11|process_0~116_combout\,
	datac => \inst11|process_0~123_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~196_combout\);

-- Location: LCCOMB_X14_Y21_N30
\inst11|v_character_address~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~33_combout\ = (\inst11|v_character_address~32_combout\ & (!\inst11|process_0~196_combout\ & ((\inst11|process_0~122_combout\) # (!\inst11|process_0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~32_combout\,
	datab => \inst11|process_0~116_combout\,
	datac => \inst11|process_0~122_combout\,
	datad => \inst11|process_0~196_combout\,
	combout => \inst11|v_character_address~33_combout\);

-- Location: LCCOMB_X15_Y17_N4
\inst11|process_0~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~197_combout\ = (\inst|SYNC|pixel_column\(7)) # (((\inst|SYNC|pixel_column\(9)) # (!\inst|SYNC|pixel_column\(8))) # (!\inst11|process_0~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(7),
	datab => \inst11|process_0~118_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst|SYNC|pixel_column\(8),
	combout => \inst11|process_0~197_combout\);

-- Location: LCCOMB_X14_Y20_N10
\inst11|process_0~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~198_combout\ = (!\inst11|LessThan25~0_combout\ & (!\inst11|process_0~197_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst11|LessThan24~0_combout\,
	datad => \inst11|process_0~197_combout\,
	combout => \inst11|process_0~198_combout\);

-- Location: LCCOMB_X15_Y19_N30
\inst11|process_0~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~125_combout\ = (((!\inst11|LessThan32~0_combout\ & !\inst|SYNC|pixel_column\(4))) # (!\inst11|LessThan120~0_combout\)) # (!\inst11|process_0~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~124_combout\,
	datab => \inst11|LessThan120~0_combout\,
	datac => \inst11|LessThan32~0_combout\,
	datad => \inst|SYNC|pixel_column\(4),
	combout => \inst11|process_0~125_combout\);

-- Location: LCCOMB_X15_Y19_N6
\inst11|process_0~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~84_combout\ = (\inst|SYNC|pixel_column\(7) & !\inst|SYNC|pixel_column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|pixel_column\(7),
	datad => \inst|SYNC|pixel_column\(8),
	combout => \inst11|process_0~84_combout\);

-- Location: LCCOMB_X15_Y19_N24
\inst11|process_0~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~165_combout\ = (\inst11|process_0~84_combout\ & (\inst11|process_0~117_combout\ & (\inst11|process_0~116_combout\ & !\inst|SYNC|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~84_combout\,
	datab => \inst11|process_0~117_combout\,
	datac => \inst11|process_0~116_combout\,
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|process_0~165_combout\);

-- Location: LCCOMB_X15_Y19_N20
\inst11|process_0~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~164_combout\ = (\inst11|process_0~124_combout\ & (\inst11|LessThan120~0_combout\ & (\inst11|process_0~116_combout\ & \inst11|LessThan34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~124_combout\,
	datab => \inst11|LessThan120~0_combout\,
	datac => \inst11|process_0~116_combout\,
	datad => \inst11|LessThan34~0_combout\,
	combout => \inst11|process_0~164_combout\);

-- Location: LCCOMB_X15_Y19_N16
\inst11|v_character_address~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~72_combout\ = (!\inst11|process_0~165_combout\ & (!\inst11|process_0~164_combout\ & ((\inst11|process_0~125_combout\) # (!\inst11|process_0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~125_combout\,
	datab => \inst11|process_0~165_combout\,
	datac => \inst11|process_0~116_combout\,
	datad => \inst11|process_0~164_combout\,
	combout => \inst11|v_character_address~72_combout\);

-- Location: LCCOMB_X12_Y20_N10
\inst11|v_character_address[4]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~73_combout\ = (!\inst11|process_0~208_combout\ & (\inst11|v_character_address~33_combout\ & (!\inst11|process_0~198_combout\ & \inst11|v_character_address~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~208_combout\,
	datab => \inst11|v_character_address~33_combout\,
	datac => \inst11|process_0~198_combout\,
	datad => \inst11|v_character_address~72_combout\,
	combout => \inst11|v_character_address[4]~73_combout\);

-- Location: LCCOMB_X12_Y20_N0
\inst11|v_character_address[4]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~193_combout\ = (!\inst11|process_0~169_combout\ & (\inst11|v_character_address[4]~192_combout\ & \inst11|v_character_address[4]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~169_combout\,
	datac => \inst11|v_character_address[4]~192_combout\,
	datad => \inst11|v_character_address[4]~73_combout\,
	combout => \inst11|v_character_address[4]~193_combout\);

-- Location: LCCOMB_X12_Y20_N30
\inst11|v_font_row[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~12_combout\ = (\inst11|Equal1~0_combout\ & ((\inst11|v_font_row[2]~11_combout\) # ((\inst11|v_font_row[2]~9_combout\) # (!\inst11|v_character_address[4]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~0_combout\,
	datab => \inst11|v_font_row[2]~11_combout\,
	datac => \inst11|v_font_row[2]~9_combout\,
	datad => \inst11|v_character_address[4]~193_combout\,
	combout => \inst11|v_font_row[2]~12_combout\);

-- Location: LCCOMB_X17_Y19_N24
\inst11|v_font_row[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~22_combout\ = (\inst11|v_font_row[2]~18_combout\) # ((\inst11|v_font_row[2]~12_combout\) # ((\inst11|Equal2~0_combout\ & \inst11|v_font_row[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~0_combout\,
	datab => \inst11|v_font_row[2]~21_combout\,
	datac => \inst11|v_font_row[2]~18_combout\,
	datad => \inst11|v_font_row[2]~12_combout\,
	combout => \inst11|v_font_row[2]~22_combout\);

-- Location: LCCOMB_X17_Y19_N2
\inst11|v_font_row[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~2_combout\ = (\inst9|STATE_OUT\(1)) # ((\inst9|STATE_OUT\(2) & \inst9|STATE_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(1),
	datac => \inst9|STATE_OUT\(2),
	datad => \inst9|STATE_OUT\(0),
	combout => \inst11|v_font_row[2]~2_combout\);

-- Location: LCCOMB_X17_Y19_N8
\inst11|v_font_row[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~23_combout\ = (\inst11|v_font_row[2]~22_combout\) # ((\inst11|v_font_row[2]~2_combout\ & ((!\inst9|STATE_OUT\(1)) # (!\inst11|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal3~0_combout\,
	datab => \inst11|v_font_row[2]~22_combout\,
	datac => \inst9|STATE_OUT\(1),
	datad => \inst11|v_font_row[2]~2_combout\,
	combout => \inst11|v_font_row[2]~23_combout\);

-- Location: CLKCTRL_G14
\inst11|v_font_row[2]~23clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|v_font_row[2]~23clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|v_font_row[2]~23clkctrl_outclk\);

-- Location: LCCOMB_X15_Y18_N6
\inst11|v_font_col[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col\(2) = (GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & ((\inst11|v_font_col[2]~22_combout\))) # (!GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & (\inst11|v_font_col\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col\(2),
	datac => \inst11|v_font_col[2]~22_combout\,
	datad => \inst11|v_font_row[2]~23clkctrl_outclk\,
	combout => \inst11|v_font_col\(2));

-- Location: LCCOMB_X14_Y18_N18
\inst11|v_font_row[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[0]~24_combout\ = (\inst11|v_font_col[2]~13_combout\ & (((\inst11|v_font_col[2]~15_combout\)))) # (!\inst11|v_font_col[2]~13_combout\ & ((\inst11|v_font_col[2]~15_combout\ & (\inst|SYNC|pixel_row\(2))) # 
-- (!\inst11|v_font_col[2]~15_combout\ & ((\inst|SYNC|pixel_row\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(2),
	datab => \inst11|v_font_col[2]~13_combout\,
	datac => \inst|SYNC|pixel_row\(1),
	datad => \inst11|v_font_col[2]~15_combout\,
	combout => \inst11|v_font_row[0]~24_combout\);

-- Location: LCCOMB_X14_Y18_N0
\inst11|v_font_row[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[0]~25_combout\ = (\inst11|v_font_col[2]~13_combout\ & ((\inst11|v_font_row[0]~24_combout\ & (\inst|SYNC|pixel_row\(3))) # (!\inst11|v_font_row[0]~24_combout\ & ((\inst|SYNC|pixel_row\(7)))))) # (!\inst11|v_font_col[2]~13_combout\ & 
-- (((\inst11|v_font_row[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst11|v_font_col[2]~13_combout\,
	datac => \inst|SYNC|pixel_row\(7),
	datad => \inst11|v_font_row[0]~24_combout\,
	combout => \inst11|v_font_row[0]~25_combout\);

-- Location: LCCOMB_X14_Y18_N6
\inst11|v_font_row[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row\(0) = (GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & ((\inst11|v_font_row[0]~25_combout\))) # (!GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & (\inst11|v_font_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_row\(0),
	datac => \inst11|v_font_row[2]~23clkctrl_outclk\,
	datad => \inst11|v_font_row[0]~25_combout\,
	combout => \inst11|v_font_row\(0));

-- Location: LCCOMB_X14_Y18_N10
\inst11|v_font_row[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[1]~26_combout\ = (\inst11|v_font_col[2]~13_combout\ & ((\inst|SYNC|pixel_row\(8)) # ((\inst11|v_font_col[2]~15_combout\)))) # (!\inst11|v_font_col[2]~13_combout\ & (((\inst|SYNC|pixel_row\(2) & !\inst11|v_font_col[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|v_font_col[2]~13_combout\,
	datac => \inst|SYNC|pixel_row\(2),
	datad => \inst11|v_font_col[2]~15_combout\,
	combout => \inst11|v_font_row[1]~26_combout\);

-- Location: LCCOMB_X14_Y18_N20
\inst11|v_font_row[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[1]~27_combout\ = (\inst11|v_font_col[2]~15_combout\ & ((\inst11|v_font_row[1]~26_combout\ & ((\inst|SYNC|pixel_row\(4)))) # (!\inst11|v_font_row[1]~26_combout\ & (\inst|SYNC|pixel_row\(3))))) # (!\inst11|v_font_col[2]~15_combout\ & 
-- (((\inst11|v_font_row[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|SYNC|pixel_row\(4),
	datac => \inst11|v_font_col[2]~15_combout\,
	datad => \inst11|v_font_row[1]~26_combout\,
	combout => \inst11|v_font_row[1]~27_combout\);

-- Location: LCCOMB_X14_Y18_N12
\inst11|v_font_row[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row\(1) = (GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & ((\inst11|v_font_row[1]~27_combout\))) # (!GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & (\inst11|v_font_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_row\(1),
	datac => \inst11|v_font_row[2]~23clkctrl_outclk\,
	datad => \inst11|v_font_row[1]~27_combout\,
	combout => \inst11|v_font_row\(1));

-- Location: LCCOMB_X14_Y18_N26
\inst11|v_font_row[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~28_combout\ = (\inst11|v_font_col[2]~13_combout\ & (\inst|SYNC|pixel_row\(5))) # (!\inst11|v_font_col[2]~13_combout\ & ((\inst|SYNC|pixel_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datac => \inst11|v_font_col[2]~13_combout\,
	datad => \inst|SYNC|pixel_row\(4),
	combout => \inst11|v_font_row[2]~28_combout\);

-- Location: LCCOMB_X14_Y18_N14
\inst11|v_font_row[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row[2]~29_combout\ = (\inst11|v_font_col[2]~15_combout\ & (((\inst11|v_font_row[2]~28_combout\)))) # (!\inst11|v_font_col[2]~15_combout\ & (!\inst11|v_font_col[2]~13_combout\ & ((\inst|SYNC|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~13_combout\,
	datab => \inst11|v_font_col[2]~15_combout\,
	datac => \inst11|v_font_row[2]~28_combout\,
	datad => \inst|SYNC|pixel_row\(3),
	combout => \inst11|v_font_row[2]~29_combout\);

-- Location: LCCOMB_X14_Y18_N24
\inst11|v_font_row[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_row\(2) = (GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & ((\inst11|v_font_row[2]~29_combout\))) # (!GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & (\inst11|v_font_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|v_font_row\(2),
	datac => \inst11|v_font_row[2]~29_combout\,
	datad => \inst11|v_font_row[2]~23clkctrl_outclk\,
	combout => \inst11|v_font_row\(2));

-- Location: LCCOMB_X11_Y19_N22
\inst11|v_character_address~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~65_combout\ = (!\inst11|process_0~161_combout\ & (\inst11|process_0~162_combout\ & (\inst11|process_0~116_combout\ & \inst11|process_0~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~161_combout\,
	datab => \inst11|process_0~162_combout\,
	datac => \inst11|process_0~116_combout\,
	datad => \inst11|process_0~147_combout\,
	combout => \inst11|v_character_address~65_combout\);

-- Location: LCCOMB_X11_Y20_N20
\inst11|v_character_address~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~66_combout\ = ((\inst11|process_0~140_combout\ & \inst11|process_0~205_combout\)) # (!\inst11|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datab => \inst11|process_0~140_combout\,
	datac => \inst11|process_0~205_combout\,
	combout => \inst11|v_character_address~66_combout\);

-- Location: LCCOMB_X11_Y19_N28
\inst11|v_character_address~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~67_combout\ = (\inst11|v_character_address~65_combout\) # (((!\inst11|process_0~207_combout\ & \inst11|process_0~165_combout\)) # (!\inst11|v_character_address~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~65_combout\,
	datab => \inst11|v_character_address~66_combout\,
	datac => \inst11|process_0~207_combout\,
	datad => \inst11|process_0~165_combout\,
	combout => \inst11|v_character_address~67_combout\);

-- Location: LCCOMB_X12_Y17_N26
\inst11|v_character_address[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~20_combout\ = (\inst11|Equal1~0_combout\ & (((\inst|SYNC|pixel_column\(9)) # (\inst11|process_0~81_combout\)) # (!\inst11|process_0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~80_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|process_0~81_combout\,
	datad => \inst11|Equal1~0_combout\,
	combout => \inst11|v_character_address[1]~20_combout\);

-- Location: LCCOMB_X12_Y21_N12
\inst11|process_0~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~192_combout\ = (!\inst11|LessThan25~0_combout\ & (!\inst11|process_0~191_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~0_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst11|LessThan25~0_combout\,
	datad => \inst11|process_0~191_combout\,
	combout => \inst11|process_0~192_combout\);

-- Location: LCCOMB_X12_Y17_N4
\inst11|v_character_address[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~30_combout\ = (\inst11|v_character_address[1]~20_combout\ & (!\inst11|process_0~192_combout\ & (\inst11|process_0~115_combout\ & !\inst11|process_0~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~20_combout\,
	datab => \inst11|process_0~192_combout\,
	datac => \inst11|process_0~115_combout\,
	datad => \inst11|process_0~193_combout\,
	combout => \inst11|v_character_address[0]~30_combout\);

-- Location: LCCOMB_X12_Y19_N12
\inst11|v_character_address~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~38_combout\ = ((\inst11|process_0~134_combout\ & ((!\inst11|process_0~72_combout\) # (!\inst11|process_0~135_combout\)))) # (!\inst11|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~134_combout\,
	datab => \inst11|process_0~135_combout\,
	datac => \inst11|process_0~72_combout\,
	datad => \inst11|process_0~116_combout\,
	combout => \inst11|v_character_address~38_combout\);

-- Location: LCCOMB_X11_Y19_N16
\inst11|v_character_address~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~62_combout\ = (\inst11|process_0~116_combout\ & (((\inst11|v_character_address~38_combout\ & !\inst11|process_0~202_combout\)) # (!\inst11|process_0~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datab => \inst11|v_character_address~38_combout\,
	datac => \inst11|process_0~163_combout\,
	datad => \inst11|process_0~202_combout\,
	combout => \inst11|v_character_address~62_combout\);

-- Location: LCCOMB_X12_Y20_N26
\inst11|v_character_address~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~31_combout\ = (\inst11|process_0~116_combout\ & (!\inst11|process_0~195_combout\ & \inst11|process_0~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datab => \inst11|process_0~195_combout\,
	datad => \inst11|process_0~194_combout\,
	combout => \inst11|v_character_address~31_combout\);

-- Location: LCCOMB_X12_Y20_N18
\inst11|v_character_address~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~34_combout\ = ((\inst11|process_0~125_combout\ & ((\inst|SYNC|pixel_column\(9)) # (!\inst11|process_0~127_combout\)))) # (!\inst11|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst11|process_0~127_combout\,
	datac => \inst11|process_0~116_combout\,
	datad => \inst11|process_0~125_combout\,
	combout => \inst11|v_character_address~34_combout\);

-- Location: LCCOMB_X12_Y20_N20
\inst11|v_character_address~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~35_combout\ = (\inst11|v_character_address~31_combout\) # (((\inst11|v_character_address~33_combout\ & \inst11|process_0~198_combout\)) # (!\inst11|v_character_address~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~31_combout\,
	datab => \inst11|v_character_address~34_combout\,
	datac => \inst11|v_character_address~33_combout\,
	datad => \inst11|process_0~198_combout\,
	combout => \inst11|v_character_address~35_combout\);

-- Location: LCCOMB_X11_Y20_N0
\inst11|v_character_address~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~36_combout\ = (!\inst11|process_0~130_combout\ & (!\inst11|process_0~199_combout\ & ((\inst11|process_0~128_combout\) # (!\inst11|process_0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~128_combout\,
	datab => \inst11|process_0~116_combout\,
	datac => \inst11|process_0~130_combout\,
	datad => \inst11|process_0~199_combout\,
	combout => \inst11|v_character_address~36_combout\);

-- Location: LCCOMB_X11_Y19_N4
\inst11|v_character_address~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~37_combout\ = (!\inst11|process_0~133_combout\ & (\inst11|v_character_address~36_combout\ & \inst11|v_character_address~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~133_combout\,
	datac => \inst11|v_character_address~36_combout\,
	datad => \inst11|v_character_address~33_combout\,
	combout => \inst11|v_character_address~37_combout\);

-- Location: LCCOMB_X11_Y19_N10
\inst11|v_character_address~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~39_combout\ = ((\inst11|process_0~136_combout\ & ((!\inst11|LessThan37~0_combout\) # (!\inst11|process_0~137_combout\)))) # (!\inst11|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datab => \inst11|process_0~137_combout\,
	datac => \inst11|process_0~136_combout\,
	datad => \inst11|LessThan37~0_combout\,
	combout => \inst11|v_character_address~39_combout\);

-- Location: LCCOMB_X14_Y20_N18
\inst11|process_0~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~138_combout\ = (\inst|SYNC|pixel_row\(8) & (\inst11|LessThan125~1_combout\ & ((!\inst|SYNC|pixel_row\(4)) # (!\inst|SYNC|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst|SYNC|pixel_row\(4),
	datad => \inst11|LessThan125~1_combout\,
	combout => \inst11|process_0~138_combout\);

-- Location: LCCOMB_X14_Y18_N22
\inst11|LessThan88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|LessThan88~0_combout\ = (!\inst|SYNC|pixel_row\(5) & (\inst11|LessThan125~1_combout\ & ((!\inst11|LessThan10~0_combout\) # (!\inst|SYNC|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datab => \inst|SYNC|pixel_row\(4),
	datac => \inst11|LessThan10~0_combout\,
	datad => \inst11|LessThan125~1_combout\,
	combout => \inst11|LessThan88~0_combout\);

-- Location: LCCOMB_X11_Y19_N2
\inst11|process_0~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~204_combout\ = (\inst11|process_0~138_combout\ & (!\inst11|LessThan88~0_combout\ & !\inst11|process_0~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~138_combout\,
	datab => \inst11|LessThan88~0_combout\,
	datad => \inst11|process_0~147_combout\,
	combout => \inst11|process_0~204_combout\);

-- Location: LCCOMB_X12_Y19_N22
\inst11|v_character_address~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~58_combout\ = ((\inst11|process_0~84_combout\ & (!\inst|SYNC|pixel_column\(9) & \inst11|process_0~118_combout\))) # (!\inst11|process_0~161_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~84_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|process_0~161_combout\,
	datad => \inst11|process_0~118_combout\,
	combout => \inst11|v_character_address~58_combout\);

-- Location: LCCOMB_X14_Y22_N4
\inst11|process_0~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~139_combout\ = (\inst11|process_0~138_combout\ & !\inst11|LessThan88~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|process_0~138_combout\,
	datad => \inst11|LessThan88~0_combout\,
	combout => \inst11|process_0~139_combout\);

-- Location: LCCOMB_X12_Y19_N2
\inst11|process_0~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~150_combout\ = (\inst11|process_0~84_combout\ & (!\inst|SYNC|pixel_column\(6) & (\inst11|process_0~117_combout\ & \inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~84_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|process_0~117_combout\,
	datad => \inst11|process_0~139_combout\,
	combout => \inst11|process_0~150_combout\);

-- Location: LCCOMB_X12_Y19_N30
\inst11|v_character_address~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~59_combout\ = (!\inst11|process_0~204_combout\ & (!\inst11|process_0~150_combout\ & ((\inst11|v_character_address~58_combout\) # (!\inst11|process_0~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~204_combout\,
	datab => \inst11|process_0~162_combout\,
	datac => \inst11|v_character_address~58_combout\,
	datad => \inst11|process_0~150_combout\,
	combout => \inst11|v_character_address~59_combout\);

-- Location: LCCOMB_X12_Y19_N18
\inst11|v_character_address~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~57_combout\ = (\inst11|process_0~139_combout\ & (\inst11|process_0~191_combout\ & ((!\inst11|process_0~124_combout\) # (!\inst11|process_0~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~191_combout\,
	datac => \inst11|process_0~123_combout\,
	datad => \inst11|process_0~124_combout\,
	combout => \inst11|v_character_address~57_combout\);

-- Location: LCCOMB_X12_Y18_N22
\inst11|process_0~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~148_combout\ = (\inst11|process_0~139_combout\ & (\inst11|process_0~124_combout\ & (\inst11|LessThan120~0_combout\ & !\inst11|LessThan34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~124_combout\,
	datac => \inst11|LessThan120~0_combout\,
	datad => \inst11|LessThan34~0_combout\,
	combout => \inst11|process_0~148_combout\);

-- Location: LCCOMB_X12_Y18_N24
\inst11|process_0~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~149_combout\ = (\inst11|process_0~139_combout\ & (!\inst|SYNC|pixel_column\(6) & (\inst11|process_0~78_combout\ & \inst11|LessThan38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|process_0~78_combout\,
	datad => \inst11|LessThan38~0_combout\,
	combout => \inst11|process_0~149_combout\);

-- Location: LCCOMB_X12_Y18_N10
\inst11|v_character_address~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~44_combout\ = (!\inst11|process_0~148_combout\ & (!\inst11|process_0~149_combout\ & ((\inst11|process_0~147_combout\) # (!\inst11|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~147_combout\,
	datac => \inst11|process_0~148_combout\,
	datad => \inst11|process_0~149_combout\,
	combout => \inst11|v_character_address~44_combout\);

-- Location: LCCOMB_X12_Y19_N26
\inst11|process_0~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~155_combout\ = (\inst|SYNC|pixel_column\(6) & (\inst11|process_0~78_combout\ & (\inst11|process_0~129_combout\ & \inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst11|process_0~78_combout\,
	datac => \inst11|process_0~129_combout\,
	datad => \inst11|process_0~139_combout\,
	combout => \inst11|process_0~155_combout\);

-- Location: LCCOMB_X12_Y18_N8
\inst11|process_0~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~151_combout\ = (\inst11|process_0~139_combout\ & (!\inst|SYNC|pixel_column\(6) & (\inst11|process_0~78_combout\ & \inst11|process_0~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|process_0~78_combout\,
	datad => \inst11|process_0~129_combout\,
	combout => \inst11|process_0~151_combout\);

-- Location: LCCOMB_X16_Y21_N10
\inst11|process_0~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~152_combout\ = (\inst|SYNC|pixel_column\(6) & (\inst|SYNC|pixel_column\(4) & (!\inst11|LessThan32~0_combout\ & !\inst|SYNC|pixel_column\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|SYNC|pixel_column\(4),
	datac => \inst11|LessThan32~0_combout\,
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst11|process_0~152_combout\);

-- Location: LCCOMB_X16_Y21_N24
\inst11|process_0~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~153_combout\ = (!\inst11|LessThan88~0_combout\ & (\inst11|process_0~78_combout\ & (\inst11|process_0~138_combout\ & \inst11|process_0~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan88~0_combout\,
	datab => \inst11|process_0~78_combout\,
	datac => \inst11|process_0~138_combout\,
	datad => \inst11|process_0~152_combout\,
	combout => \inst11|process_0~153_combout\);

-- Location: LCCOMB_X12_Y18_N18
\inst11|process_0~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~154_combout\ = (!\inst11|LessThan88~0_combout\ & (\inst11|process_0~138_combout\ & (\inst11|process_0~78_combout\ & \inst11|process_0~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan88~0_combout\,
	datab => \inst11|process_0~138_combout\,
	datac => \inst11|process_0~78_combout\,
	datad => \inst11|process_0~118_combout\,
	combout => \inst11|process_0~154_combout\);

-- Location: LCCOMB_X12_Y18_N20
\inst11|v_character_address~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~50_combout\ = (!\inst11|process_0~155_combout\ & (!\inst11|process_0~151_combout\ & (!\inst11|process_0~153_combout\ & !\inst11|process_0~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~155_combout\,
	datab => \inst11|process_0~151_combout\,
	datac => \inst11|process_0~153_combout\,
	datad => \inst11|process_0~154_combout\,
	combout => \inst11|v_character_address~50_combout\);

-- Location: LCCOMB_X12_Y18_N26
\inst11|process_0~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~158_combout\ = (\inst11|process_0~139_combout\ & (!\inst11|LessThan45~0_combout\ & (\inst11|process_0~78_combout\ & !\inst11|LessThan44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|LessThan45~0_combout\,
	datac => \inst11|process_0~78_combout\,
	datad => \inst11|LessThan44~0_combout\,
	combout => \inst11|process_0~158_combout\);

-- Location: LCCOMB_X15_Y21_N18
\inst11|v_character_address~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~53_combout\ = ((\inst11|process_0~194_combout\ & ((!\inst11|process_0~75_combout\) # (!\inst11|process_0~120_combout\)))) # (!\inst11|process_0~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~194_combout\,
	datac => \inst11|process_0~120_combout\,
	datad => \inst11|process_0~75_combout\,
	combout => \inst11|v_character_address~53_combout\);

-- Location: LCCOMB_X12_Y18_N28
\inst11|v_character_address~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~54_combout\ = ((\inst11|process_0~158_combout\ & !\inst11|process_0~151_combout\)) # (!\inst11|v_character_address~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~158_combout\,
	datac => \inst11|process_0~151_combout\,
	datad => \inst11|v_character_address~53_combout\,
	combout => \inst11|v_character_address~54_combout\);

-- Location: LCCOMB_X12_Y19_N6
\inst11|process_0~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~159_combout\ = (\inst11|process_0~139_combout\ & (\inst11|LessThan112~0_combout\ & (\inst11|process_0~72_combout\ & !\inst11|LessThan38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|LessThan112~0_combout\,
	datac => \inst11|process_0~72_combout\,
	datad => \inst11|LessThan38~0_combout\,
	combout => \inst11|process_0~159_combout\);

-- Location: LCCOMB_X16_Y21_N12
\inst11|process_0~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~203_combout\ = (!\inst11|LessThan88~0_combout\ & (!\inst11|process_0~132_combout\ & \inst11|process_0~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan88~0_combout\,
	datab => \inst11|process_0~132_combout\,
	datac => \inst11|process_0~138_combout\,
	combout => \inst11|process_0~203_combout\);

-- Location: LCCOMB_X12_Y18_N2
\inst11|v_character_address~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~55_combout\ = (\inst11|v_character_address~54_combout\) # ((\inst11|v_character_address~50_combout\ & ((\inst11|process_0~159_combout\) # (\inst11|process_0~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~50_combout\,
	datab => \inst11|v_character_address~54_combout\,
	datac => \inst11|process_0~159_combout\,
	datad => \inst11|process_0~203_combout\,
	combout => \inst11|v_character_address~55_combout\);

-- Location: LCCOMB_X12_Y19_N20
\inst11|process_0~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~201_combout\ = (\inst11|process_0~139_combout\ & (!\inst|SYNC|pixel_column\(8) & (\inst11|process_0~123_combout\ & !\inst|SYNC|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst11|process_0~123_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~201_combout\);

-- Location: LCCOMB_X12_Y19_N14
\inst11|v_character_address~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~45_combout\ = (!\inst11|process_0~150_combout\ & (!\inst11|process_0~201_combout\ & ((\inst11|process_0~191_combout\) # (!\inst11|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~150_combout\,
	datac => \inst11|process_0~201_combout\,
	datad => \inst11|process_0~191_combout\,
	combout => \inst11|v_character_address~45_combout\);

-- Location: LCCOMB_X16_Y21_N6
\inst11|process_0~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~156_combout\ = (\inst11|process_0~95_combout\ & (\inst11|process_0~138_combout\ & (!\inst11|LessThan88~0_combout\ & \inst11|LessThan38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~95_combout\,
	datab => \inst11|process_0~138_combout\,
	datac => \inst11|LessThan88~0_combout\,
	datad => \inst11|LessThan38~0_combout\,
	combout => \inst11|process_0~156_combout\);

-- Location: LCCOMB_X11_Y21_N28
\inst11|v_character_address~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~51_combout\ = (!\inst11|process_0~156_combout\ & (((\inst11|process_0~128_combout\ & \inst11|process_0~134_combout\)) # (!\inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~156_combout\,
	datac => \inst11|process_0~128_combout\,
	datad => \inst11|process_0~134_combout\,
	combout => \inst11|v_character_address~51_combout\);

-- Location: LCCOMB_X16_Y21_N28
\inst11|process_0~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~157_combout\ = (\inst11|process_0~72_combout\ & (!\inst|SYNC|pixel_column\(6) & (\inst11|process_0~129_combout\ & \inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~72_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|process_0~129_combout\,
	datad => \inst11|process_0~139_combout\,
	combout => \inst11|process_0~157_combout\);

-- Location: LCCOMB_X15_Y21_N8
\inst11|v_character_address~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~46_combout\ = (!\inst|SYNC|pixel_column\(8) & (!\inst|SYNC|pixel_column\(7) & (\inst11|LessThan56~0_combout\ & \inst|SYNC|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst11|LessThan56~0_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|v_character_address~46_combout\);

-- Location: LCCOMB_X11_Y19_N20
\inst11|v_character_address~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~47_combout\ = (!\inst11|LessThan88~0_combout\ & (!\inst11|process_0~82_combout\ & (\inst11|v_character_address~46_combout\ & \inst11|process_0~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan88~0_combout\,
	datab => \inst11|process_0~82_combout\,
	datac => \inst11|v_character_address~46_combout\,
	datad => \inst11|process_0~138_combout\,
	combout => \inst11|v_character_address~47_combout\);

-- Location: LCCOMB_X11_Y19_N26
\inst11|v_character_address~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~48_combout\ = (\inst11|v_character_address~47_combout\) # ((!\inst11|LessThan34~0_combout\ & (\inst11|process_0~137_combout\ & \inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan34~0_combout\,
	datab => \inst11|process_0~137_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|v_character_address~47_combout\,
	combout => \inst11|v_character_address~48_combout\);

-- Location: LCCOMB_X11_Y19_N0
\inst11|v_character_address~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~242_combout\ = (\inst11|LessThan88~0_combout\) # (((\inst11|process_0~136_combout\ & \inst11|process_0~143_combout\)) # (!\inst11|process_0~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~136_combout\,
	datab => \inst11|LessThan88~0_combout\,
	datac => \inst11|process_0~143_combout\,
	datad => \inst11|process_0~138_combout\,
	combout => \inst11|v_character_address~242_combout\);

-- Location: LCCOMB_X11_Y19_N8
\inst11|v_character_address~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~49_combout\ = (\inst11|v_character_address~48_combout\ & ((\inst11|v_character_address~242_combout\) # ((\inst11|process_0~139_combout\ & !\inst11|process_0~202_combout\)))) # (!\inst11|v_character_address~48_combout\ & 
-- (\inst11|process_0~139_combout\ & (!\inst11|process_0~202_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~48_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~202_combout\,
	datad => \inst11|v_character_address~242_combout\,
	combout => \inst11|v_character_address~49_combout\);

-- Location: LCCOMB_X11_Y18_N24
\inst11|v_character_address~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~52_combout\ = (\inst11|v_character_address~50_combout\ & (\inst11|v_character_address~51_combout\ & (!\inst11|process_0~157_combout\ & \inst11|v_character_address~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~50_combout\,
	datab => \inst11|v_character_address~51_combout\,
	datac => \inst11|process_0~157_combout\,
	datad => \inst11|v_character_address~49_combout\,
	combout => \inst11|v_character_address~52_combout\);

-- Location: LCCOMB_X12_Y18_N0
\inst11|v_character_address~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~56_combout\ = (\inst11|v_character_address~44_combout\ & (\inst11|v_character_address~45_combout\ & ((\inst11|v_character_address~55_combout\) # (\inst11|v_character_address~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~44_combout\,
	datab => \inst11|v_character_address~55_combout\,
	datac => \inst11|v_character_address~45_combout\,
	datad => \inst11|v_character_address~52_combout\,
	combout => \inst11|v_character_address~56_combout\);

-- Location: LCCOMB_X12_Y19_N10
\inst11|v_character_address~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~60_combout\ = (\inst11|v_character_address~56_combout\) # ((\inst11|v_character_address~57_combout\ & ((\inst11|v_character_address~59_combout\) # (!\inst11|process_0~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~59_combout\,
	datab => \inst11|v_character_address~57_combout\,
	datac => \inst11|process_0~205_combout\,
	datad => \inst11|v_character_address~56_combout\,
	combout => \inst11|v_character_address~60_combout\);

-- Location: LCCOMB_X14_Y21_N0
\inst11|process_0~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~144_combout\ = ((\inst11|LessThan44~0_combout\) # ((\inst11|LessThan45~0_combout\) # (\inst|SYNC|pixel_column\(7)))) # (!\inst11|process_0~124_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~124_combout\,
	datab => \inst11|LessThan44~0_combout\,
	datac => \inst11|LessThan45~0_combout\,
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|process_0~144_combout\);

-- Location: LCCOMB_X14_Y22_N24
\inst11|process_0~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~145_combout\ = (\inst11|process_0~117_combout\ & (\inst11|process_0~138_combout\ & (\inst11|LessThan127~0_combout\ & !\inst11|LessThan88~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~117_combout\,
	datab => \inst11|process_0~138_combout\,
	datac => \inst11|LessThan127~0_combout\,
	datad => \inst11|LessThan88~0_combout\,
	combout => \inst11|process_0~145_combout\);

-- Location: LCCOMB_X14_Y22_N10
\inst11|v_character_address~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~42_combout\ = (\inst11|v_character_address~41_combout\ & (!\inst11|process_0~145_combout\ & ((\inst11|process_0~144_combout\) # (!\inst11|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~41_combout\,
	datab => \inst11|process_0~144_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|process_0~145_combout\,
	combout => \inst11|v_character_address~42_combout\);

-- Location: LCCOMB_X14_Y22_N2
\inst11|v_character_address~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~40_combout\ = (!\inst11|process_0~140_combout\ & (\inst11|process_0~139_combout\ & (\inst11|process_0~191_combout\ & !\inst11|process_0~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~140_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~191_combout\,
	datad => \inst11|process_0~201_combout\,
	combout => \inst11|v_character_address~40_combout\);

-- Location: LCCOMB_X12_Y18_N12
\inst11|process_0~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~141_combout\ = (\inst11|process_0~139_combout\ & (!\inst|SYNC|pixel_column\(9) & (\inst11|v_font_col[2]~0_combout\ & \inst11|process_0~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|v_font_col[2]~0_combout\,
	datad => \inst11|process_0~118_combout\,
	combout => \inst11|process_0~141_combout\);

-- Location: LCCOMB_X14_Y22_N20
\inst11|v_character_address~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~43_combout\ = ((\inst11|v_character_address~40_combout\) # ((\inst11|process_0~141_combout\ & !\inst11|process_0~201_combout\))) # (!\inst11|v_character_address~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~42_combout\,
	datab => \inst11|v_character_address~40_combout\,
	datac => \inst11|process_0~141_combout\,
	datad => \inst11|process_0~201_combout\,
	combout => \inst11|v_character_address~43_combout\);

-- Location: LCCOMB_X11_Y19_N18
\inst11|v_character_address~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~61_combout\ = (\inst11|v_character_address~39_combout\ & (\inst11|v_character_address~38_combout\ & ((\inst11|v_character_address~60_combout\) # (\inst11|v_character_address~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~39_combout\,
	datab => \inst11|v_character_address~38_combout\,
	datac => \inst11|v_character_address~60_combout\,
	datad => \inst11|v_character_address~43_combout\,
	combout => \inst11|v_character_address~61_combout\);

-- Location: LCCOMB_X11_Y19_N30
\inst11|v_character_address~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~63_combout\ = (\inst11|v_character_address~35_combout\) # ((\inst11|v_character_address~37_combout\ & ((\inst11|v_character_address~62_combout\) # (\inst11|v_character_address~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~62_combout\,
	datab => \inst11|v_character_address~35_combout\,
	datac => \inst11|v_character_address~37_combout\,
	datad => \inst11|v_character_address~61_combout\,
	combout => \inst11|v_character_address~63_combout\);

-- Location: LCCOMB_X12_Y21_N14
\inst11|process_0~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~206_combout\ = (!\inst11|LessThan25~0_combout\ & (!\inst11|process_0~162_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~0_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst11|LessThan25~0_combout\,
	datad => \inst11|process_0~162_combout\,
	combout => \inst11|process_0~206_combout\);

-- Location: LCCOMB_X11_Y19_N24
\inst11|v_character_address~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~64_combout\ = (\inst11|v_character_address~63_combout\ & (!\inst11|process_0~206_combout\ & (!\inst11|process_0~207_combout\ & !\inst11|process_0~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~63_combout\,
	datab => \inst11|process_0~206_combout\,
	datac => \inst11|process_0~207_combout\,
	datad => \inst11|process_0~164_combout\,
	combout => \inst11|v_character_address~64_combout\);

-- Location: LCCOMB_X11_Y17_N30
\inst11|process_0~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~188_combout\ = (!\inst11|LessThan10~1_combout\ & (!\inst|SYNC|pixel_column\(9) & (!\inst|SYNC|pixel_row\(8) & \inst|SYNC|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan10~1_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst|SYNC|pixel_row\(8),
	datad => \inst|SYNC|pixel_row\(7),
	combout => \inst11|process_0~188_combout\);

-- Location: LCCOMB_X11_Y17_N16
\inst11|process_0~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~90_combout\ = (!\inst11|process_0~82_combout\ & (\inst11|v_font_row[2]~0_combout\ & (!\inst|SYNC|pixel_row\(8) & \inst11|process_0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~82_combout\,
	datab => \inst11|v_font_row[2]~0_combout\,
	datac => \inst|SYNC|pixel_row\(8),
	datad => \inst11|process_0~78_combout\,
	combout => \inst11|process_0~90_combout\);

-- Location: LCCOMB_X11_Y17_N18
\inst11|process_0~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~89_combout\ = (\inst|SYNC|pixel_row\(8)) # (((\inst11|process_0~82_combout\) # (!\inst11|v_font_row[2]~0_combout\)) # (!\inst11|process_0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|process_0~72_combout\,
	datac => \inst11|process_0~82_combout\,
	datad => \inst11|v_font_row[2]~0_combout\,
	combout => \inst11|process_0~89_combout\);

-- Location: LCCOMB_X11_Y17_N10
\inst11|v_character_address[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~24_combout\ = (!\inst11|process_0~90_combout\ & (\inst11|process_0~89_combout\ & ((\inst11|process_0~186_combout\) # (!\inst11|process_0~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~188_combout\,
	datab => \inst11|process_0~90_combout\,
	datac => \inst11|process_0~186_combout\,
	datad => \inst11|process_0~89_combout\,
	combout => \inst11|v_character_address[5]~24_combout\);

-- Location: LCCOMB_X11_Y17_N14
\inst11|v_character_address[0]~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~247_combout\ = (\inst11|process_0~188_combout\ & (!\inst11|process_0~187_combout\ & ((!\inst11|v_character_address[5]~24_combout\) # (!\inst11|process_0~81_combout\)))) # (!\inst11|process_0~188_combout\ & 
-- (((!\inst11|v_character_address[5]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~188_combout\,
	datab => \inst11|process_0~187_combout\,
	datac => \inst11|process_0~81_combout\,
	datad => \inst11|v_character_address[5]~24_combout\,
	combout => \inst11|v_character_address[0]~247_combout\);

-- Location: LCCOMB_X17_Y19_N18
\inst11|v_character_address[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~23_combout\ = (\inst9|STATE_OUT\(1) & (!\inst9|STATE_OUT\(0) & !\inst9|STATE_OUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(1),
	datac => \inst9|STATE_OUT\(0),
	datad => \inst9|STATE_OUT\(2),
	combout => \inst11|v_character_address[1]~23_combout\);

-- Location: LCCOMB_X11_Y17_N4
\inst11|v_character_address~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~21_combout\ = (\inst|SYNC|pixel_row\(8)) # ((\inst11|process_0~88_combout\) # ((\inst11|LessThan10~1_combout\) # (\inst|SYNC|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|process_0~88_combout\,
	datac => \inst11|LessThan10~1_combout\,
	datad => \inst|SYNC|pixel_row\(7),
	combout => \inst11|v_character_address~21_combout\);

-- Location: LCCOMB_X16_Y16_N26
\inst11|v_character_address~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~14_combout\ = ((\inst11|LessThan123~2_combout\ & (!\inst|SYNC|pixel_column\(4) & !\inst|SYNC|pixel_column\(5)))) # (!\inst|SYNC|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan123~2_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst|SYNC|pixel_column\(4),
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst11|v_character_address~14_combout\);

-- Location: LCCOMB_X16_Y21_N8
\inst11|v_character_address~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~15_combout\ = (\inst11|v_character_address~14_combout\ & (!\inst|SYNC|pixel_row\(8) & (!\inst11|LessThan6~1_combout\ & \inst11|process_0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~14_combout\,
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst11|LessThan6~1_combout\,
	datad => \inst11|process_0~78_combout\,
	combout => \inst11|v_character_address~15_combout\);

-- Location: LCCOMB_X17_Y17_N8
\inst11|v_character_address~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~241_combout\ = (\inst|SYNC|pixel_column\(6) & (!\inst11|LessThan118~1_combout\ & (!\inst|SYNC|pixel_column\(8) & \inst|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst11|LessThan118~1_combout\,
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|v_character_address~241_combout\);

-- Location: LCCOMB_X15_Y19_N28
\inst11|process_0~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~71_combout\ = (\inst|SYNC|pixel_column\(8) & (((\inst11|LessThan123~1_combout\)) # (!\inst11|LessThan55~0_combout\))) # (!\inst|SYNC|pixel_column\(8) & (((!\inst11|LessThan120~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan55~0_combout\,
	datab => \inst11|LessThan123~1_combout\,
	datac => \inst11|LessThan120~0_combout\,
	datad => \inst|SYNC|pixel_column\(8),
	combout => \inst11|process_0~71_combout\);

-- Location: LCCOMB_X11_Y17_N26
\inst11|process_0~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~70_combout\ = (!\inst|SYNC|pixel_row\(8) & !\inst|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|pixel_row\(8),
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~70_combout\);

-- Location: LCCOMB_X17_Y17_N4
\inst11|v_character_address~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~12_combout\ = (!\inst11|LessThan6~1_combout\ & (\inst11|process_0~70_combout\ & ((\inst11|v_character_address~241_combout\) # (!\inst11|process_0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan6~1_combout\,
	datab => \inst11|v_character_address~241_combout\,
	datac => \inst11|process_0~71_combout\,
	datad => \inst11|process_0~70_combout\,
	combout => \inst11|v_character_address~12_combout\);

-- Location: LCCOMB_X17_Y17_N24
\inst11|process_0~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~76_combout\ = (\inst11|process_0~75_combout\ & ((\inst|SYNC|pixel_column\(7)) # ((\inst|SYNC|pixel_column\(6) & \inst|SYNC|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst11|process_0~75_combout\,
	datac => \inst|SYNC|pixel_column\(5),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|process_0~76_combout\);

-- Location: LCCOMB_X15_Y21_N24
\inst11|process_0~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~77_combout\ = (!\inst|SYNC|pixel_row\(8) & (!\inst11|LessThan6~1_combout\ & (\inst11|process_0~76_combout\ & !\inst11|LessThan138~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst11|LessThan6~1_combout\,
	datac => \inst11|process_0~76_combout\,
	datad => \inst11|LessThan138~0_combout\,
	combout => \inst11|process_0~77_combout\);

-- Location: LCCOMB_X17_Y17_N26
\inst11|process_0~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~73_combout\ = (!\inst|SYNC|pixel_row\(8) & (!\inst11|LessThan118~1_combout\ & !\inst11|LessThan6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst11|LessThan118~1_combout\,
	datad => \inst11|LessThan6~1_combout\,
	combout => \inst11|process_0~73_combout\);

-- Location: LCCOMB_X17_Y21_N0
\inst11|process_0~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~74_combout\ = (!\inst|SYNC|pixel_column\(6) & (\inst11|process_0~72_combout\ & \inst11|process_0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst11|process_0~72_combout\,
	datad => \inst11|process_0~73_combout\,
	combout => \inst11|process_0~74_combout\);

-- Location: LCCOMB_X17_Y21_N30
\inst11|v_character_address[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~13_combout\ = (\inst11|v_character_address~12_combout\) # ((!\inst11|process_0~77_combout\ & \inst11|process_0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~12_combout\,
	datac => \inst11|process_0~77_combout\,
	datad => \inst11|process_0~74_combout\,
	combout => \inst11|v_character_address[0]~13_combout\);

-- Location: LCCOMB_X17_Y21_N28
\inst11|process_0~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~79_combout\ = (\inst11|process_0~78_combout\ & (\inst11|process_0~73_combout\ & \inst|SYNC|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~78_combout\,
	datac => \inst11|process_0~73_combout\,
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|process_0~79_combout\);

-- Location: LCCOMB_X17_Y21_N10
\inst11|v_character_address[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~16_combout\ = (\inst11|Equal0~0_combout\ & ((\inst11|v_character_address~15_combout\) # ((\inst11|v_character_address[0]~13_combout\) # (\inst11|process_0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~15_combout\,
	datab => \inst11|Equal0~0_combout\,
	datac => \inst11|v_character_address[0]~13_combout\,
	datad => \inst11|process_0~79_combout\,
	combout => \inst11|v_character_address[0]~16_combout\);

-- Location: LCCOMB_X12_Y17_N22
\inst11|process_0~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~85_combout\ = (\inst11|process_0~80_combout\ & (\inst11|process_0~187_combout\ & !\inst|SYNC|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~80_combout\,
	datab => \inst11|process_0~187_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~85_combout\);

-- Location: LCCOMB_X17_Y17_N12
\inst11|v_character_address[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~17_combout\ = (\inst11|Equal1~0_combout\ & (\inst11|process_0~80_combout\ & (!\inst|SYNC|pixel_column\(9) & \inst11|process_0~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~0_combout\,
	datab => \inst11|process_0~80_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst11|process_0~81_combout\,
	combout => \inst11|v_character_address[0]~17_combout\);

-- Location: LCCOMB_X17_Y17_N2
\inst11|v_character_address[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~18_combout\ = (\inst11|v_character_address[0]~17_combout\ & (((\inst|SYNC|pixel_column\(8) & !\inst11|process_0~82_combout\)) # (!\inst11|process_0~186_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~186_combout\,
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst11|v_character_address[0]~17_combout\,
	datad => \inst11|process_0~82_combout\,
	combout => \inst11|v_character_address[0]~18_combout\);

-- Location: LCCOMB_X12_Y17_N28
\inst11|v_character_address[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~19_combout\ = (\inst11|v_character_address[0]~18_combout\) # ((\inst11|Equal1~0_combout\ & ((\inst11|process_0~85_combout\) # (!\inst11|process_0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~0_combout\,
	datab => \inst11|process_0~87_combout\,
	datac => \inst11|process_0~85_combout\,
	datad => \inst11|v_character_address[0]~18_combout\,
	combout => \inst11|v_character_address[0]~19_combout\);

-- Location: LCCOMB_X12_Y17_N2
\inst11|v_character_address[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~22_combout\ = (\inst11|v_character_address[0]~16_combout\) # ((\inst11|v_character_address[0]~19_combout\) # ((\inst11|v_character_address[1]~20_combout\ & !\inst11|v_character_address~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~20_combout\,
	datab => \inst11|v_character_address~21_combout\,
	datac => \inst11|v_character_address[0]~16_combout\,
	datad => \inst11|v_character_address[0]~19_combout\,
	combout => \inst11|v_character_address[0]~22_combout\);

-- Location: LCCOMB_X12_Y17_N6
\inst11|v_character_address[0]~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~248_combout\ = (\inst11|v_character_address[0]~22_combout\) # ((\inst11|v_character_address[0]~247_combout\ & \inst11|v_character_address[1]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[0]~247_combout\,
	datac => \inst11|v_character_address[1]~23_combout\,
	datad => \inst11|v_character_address[0]~22_combout\,
	combout => \inst11|v_character_address[0]~248_combout\);

-- Location: LCCOMB_X16_Y16_N22
\inst11|process_0~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~190_combout\ = (\inst11|process_0~111_combout\ & ((\inst|SYNC|pixel_column\(6)) # ((\inst|SYNC|pixel_column\(5) & \inst|SYNC|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~111_combout\,
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(4),
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|process_0~190_combout\);

-- Location: LCCOMB_X17_Y18_N28
\inst11|process_0~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~110_combout\ = (\inst11|LessThan45~0_combout\ & (\inst11|process_0~97_combout\ & (\inst11|process_0~72_combout\ & !\inst11|LessThan118~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan45~0_combout\,
	datab => \inst11|process_0~97_combout\,
	datac => \inst11|process_0~72_combout\,
	datad => \inst11|LessThan118~1_combout\,
	combout => \inst11|process_0~110_combout\);

-- Location: LCCOMB_X17_Y20_N2
\inst11|process_0~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~105_combout\ = (\inst|SYNC|pixel_row\(5) & (\inst11|LessThan120~1_combout\ & !\inst|SYNC|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datab => \inst11|LessThan120~1_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~105_combout\);

-- Location: LCCOMB_X17_Y20_N6
\inst11|process_0~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~106_combout\ = (\inst11|process_0~105_combout\ & ((\inst11|LessThan123~2_combout\) # (!\inst|SYNC|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datac => \inst11|LessThan123~2_combout\,
	datad => \inst11|process_0~105_combout\,
	combout => \inst11|process_0~106_combout\);

-- Location: LCCOMB_X17_Y20_N8
\inst11|process_0~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~107_combout\ = (\inst11|LessThan125~0_combout\ & (\inst11|process_0~106_combout\ & ((\inst11|LessThan10~0_combout\) # (\inst|SYNC|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan10~0_combout\,
	datab => \inst|SYNC|pixel_row\(4),
	datac => \inst11|LessThan125~0_combout\,
	datad => \inst11|process_0~106_combout\,
	combout => \inst11|process_0~107_combout\);

-- Location: LCCOMB_X17_Y20_N26
\inst11|v_character_address[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~25_combout\ = (\inst11|process_0~104_combout\) # ((!\inst11|process_0~110_combout\ & ((\inst11|process_0~107_combout\) # (\inst11|process_0~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~110_combout\,
	datab => \inst11|process_0~107_combout\,
	datac => \inst11|process_0~109_combout\,
	datad => \inst11|process_0~104_combout\,
	combout => \inst11|v_character_address[0]~25_combout\);

-- Location: LCCOMB_X17_Y20_N16
\inst11|v_character_address[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~26_combout\ = (\inst11|process_0~99_combout\) # ((!\inst11|process_0~190_combout\ & (\inst11|v_character_address[0]~25_combout\ & \inst11|process_0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~99_combout\,
	datab => \inst11|process_0~190_combout\,
	datac => \inst11|v_character_address[0]~25_combout\,
	datad => \inst11|process_0~101_combout\,
	combout => \inst11|v_character_address[0]~26_combout\);

-- Location: LCCOMB_X15_Y16_N16
\inst11|v_character_address[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~27_combout\ = (\inst11|process_0~114_combout\ & (!\inst|life\(0))) # (!\inst11|process_0~114_combout\ & (((!\inst11|process_0~112_combout\ & \inst11|v_character_address[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|life\(0),
	datab => \inst11|process_0~112_combout\,
	datac => \inst11|process_0~114_combout\,
	datad => \inst11|v_character_address[0]~26_combout\,
	combout => \inst11|v_character_address[0]~27_combout\);

-- Location: LCCOMB_X15_Y16_N24
\inst11|v_character_address[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~28_combout\ = ((!\inst11|process_0~189_combout\ & ((\inst11|process_0~93_combout\) # (\inst11|v_character_address[0]~27_combout\)))) # (!\inst11|process_0~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~96_combout\,
	datab => \inst11|process_0~189_combout\,
	datac => \inst11|process_0~93_combout\,
	datad => \inst11|v_character_address[0]~27_combout\,
	combout => \inst11|v_character_address[0]~28_combout\);

-- Location: LCCOMB_X15_Y16_N28
\inst11|v_character_address[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~29_combout\ = (\inst11|v_character_address[0]~248_combout\) # ((\inst11|Equal2~0_combout\ & (\inst11|process_0~92_combout\ & \inst11|v_character_address[0]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~0_combout\,
	datab => \inst11|process_0~92_combout\,
	datac => \inst11|v_character_address[0]~248_combout\,
	datad => \inst11|v_character_address[0]~28_combout\,
	combout => \inst11|v_character_address[0]~29_combout\);

-- Location: LCCOMB_X12_Y18_N6
\inst11|v_character_address[0]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[0]~68_combout\ = (\inst11|v_character_address[0]~29_combout\) # ((\inst11|v_character_address[0]~30_combout\ & ((\inst11|v_character_address~67_combout\) # (\inst11|v_character_address~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~67_combout\,
	datab => \inst11|v_character_address[0]~30_combout\,
	datac => \inst11|v_character_address~64_combout\,
	datad => \inst11|v_character_address[0]~29_combout\,
	combout => \inst11|v_character_address[0]~68_combout\);

-- Location: LCCOMB_X11_Y17_N0
\inst11|v_character_address[1]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~105_combout\ = (\inst11|v_character_address[1]~23_combout\ & (((!\inst11|process_0~187_combout\ & \inst11|process_0~81_combout\)) # (!\inst11|process_0~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~23_combout\,
	datab => \inst11|process_0~187_combout\,
	datac => \inst11|process_0~81_combout\,
	datad => \inst11|process_0~188_combout\,
	combout => \inst11|v_character_address[1]~105_combout\);

-- Location: LCCOMB_X11_Y17_N22
\inst11|v_character_address[1]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~106_combout\ = (\inst11|process_0~188_combout\ & (!\inst11|process_0~90_combout\ & (!\inst11|process_0~186_combout\ & \inst11|v_character_address[1]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~188_combout\,
	datab => \inst11|process_0~90_combout\,
	datac => \inst11|process_0~186_combout\,
	datad => \inst11|v_character_address[1]~105_combout\,
	combout => \inst11|v_character_address[1]~106_combout\);

-- Location: LCCOMB_X12_Y21_N24
\inst11|v_character_address[1]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~114_combout\ = (\inst11|v_character_address~21_combout\ & (\inst11|v_character_address[1]~70_combout\ & (\inst11|Equal1~0_combout\ & \inst11|process_0~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~21_combout\,
	datab => \inst11|v_character_address[1]~70_combout\,
	datac => \inst11|Equal1~0_combout\,
	datad => \inst11|process_0~192_combout\,
	combout => \inst11|v_character_address[1]~114_combout\);

-- Location: LCCOMB_X12_Y17_N20
\inst11|process_0~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~172_combout\ = (!\inst11|process_0~186_combout\ & (\inst11|process_0~80_combout\ & !\inst|SYNC|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~186_combout\,
	datac => \inst11|process_0~80_combout\,
	datad => \inst|SYNC|pixel_column\(9),
	combout => \inst11|process_0~172_combout\);

-- Location: LCCOMB_X12_Y17_N10
\inst11|v_character_address[1]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~115_combout\ = (\inst11|v_character_address[1]~20_combout\ & (!\inst11|process_0~85_combout\ & ((\inst11|process_0~173_combout\) # (\inst11|process_0~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~173_combout\,
	datab => \inst11|v_character_address[1]~20_combout\,
	datac => \inst11|process_0~85_combout\,
	datad => \inst11|process_0~172_combout\,
	combout => \inst11|v_character_address[1]~115_combout\);

-- Location: LCCOMB_X15_Y21_N16
\inst11|v_character_address[1]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~107_combout\ = (!\inst11|process_0~86_combout\ & (\inst11|Equal1~0_combout\ & (\inst11|process_0~80_combout\ & !\inst11|LessThan138~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~86_combout\,
	datab => \inst11|Equal1~0_combout\,
	datac => \inst11|process_0~80_combout\,
	datad => \inst11|LessThan138~0_combout\,
	combout => \inst11|v_character_address[1]~107_combout\);

-- Location: LCCOMB_X15_Y21_N28
\inst11|process_0~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~170_combout\ = (\inst11|process_0~78_combout\ & (!\inst11|LessThan112~0_combout\ & (!\inst|SYNC|pixel_row\(8) & !\inst11|process_0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~78_combout\,
	datab => \inst11|LessThan112~0_combout\,
	datac => \inst|SYNC|pixel_row\(8),
	datad => \inst11|process_0~82_combout\,
	combout => \inst11|process_0~170_combout\);

-- Location: LCCOMB_X16_Y21_N14
\inst11|process_0~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~171_combout\ = (\inst11|process_0~170_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datac => \inst11|LessThan6~1_combout\,
	datad => \inst11|process_0~170_combout\,
	combout => \inst11|process_0~171_combout\);

-- Location: LCCOMB_X19_Y17_N4
\inst11|process_0~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~216_combout\ = (!\inst|SYNC|pixel_row\(8) & (!\inst|SYNC|pixel_column\(9) & !\inst11|LessThan6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst11|LessThan6~1_combout\,
	combout => \inst11|process_0~216_combout\);

-- Location: LCCOMB_X17_Y21_N20
\inst11|v_character_address[1]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~110_combout\ = (\inst11|process_0~216_combout\ & (\inst11|process_0~91_combout\ & !\inst11|process_0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~216_combout\,
	datac => \inst11|process_0~91_combout\,
	datad => \inst11|process_0~74_combout\,
	combout => \inst11|v_character_address[1]~110_combout\);

-- Location: LCCOMB_X17_Y21_N26
\inst11|v_character_address[1]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~111_combout\ = (!\inst11|process_0~77_combout\ & (((!\inst|SYNC|pixel_column\(6)) # (!\inst11|process_0~73_combout\)) # (!\inst11|process_0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~77_combout\,
	datab => \inst11|process_0~78_combout\,
	datac => \inst11|process_0~73_combout\,
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|v_character_address[1]~111_combout\);

-- Location: LCCOMB_X17_Y17_N20
\inst11|v_character_address~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~108_combout\ = (\inst|SYNC|pixel_column\(6)) # ((\inst11|LessThan118~1_combout\) # ((\inst|SYNC|pixel_column\(7)) # (!\inst|SYNC|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst11|LessThan118~1_combout\,
	datac => \inst|SYNC|pixel_column\(8),
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|v_character_address~108_combout\);

-- Location: LCCOMB_X17_Y17_N16
\inst11|v_character_address~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~109_combout\ = (\inst11|LessThan6~1_combout\) # (((\inst11|v_character_address~108_combout\ & \inst11|process_0~71_combout\)) # (!\inst11|process_0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan6~1_combout\,
	datab => \inst11|v_character_address~108_combout\,
	datac => \inst11|process_0~71_combout\,
	datad => \inst11|process_0~70_combout\,
	combout => \inst11|v_character_address~109_combout\);

-- Location: LCCOMB_X17_Y21_N12
\inst11|v_character_address[1]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~112_combout\ = (!\inst11|process_0~171_combout\ & (\inst11|v_character_address~109_combout\ & ((\inst11|v_character_address[1]~110_combout\) # (!\inst11|v_character_address[1]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~171_combout\,
	datab => \inst11|v_character_address[1]~110_combout\,
	datac => \inst11|v_character_address[1]~111_combout\,
	datad => \inst11|v_character_address~109_combout\,
	combout => \inst11|v_character_address[1]~112_combout\);

-- Location: LCCOMB_X17_Y17_N0
\inst11|v_character_address[1]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~113_combout\ = (\inst11|Equal0~0_combout\ & ((\inst11|v_character_address[1]~112_combout\) # ((\inst11|v_character_address~241_combout\ & \inst11|process_0~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst11|v_character_address[1]~112_combout\,
	datac => \inst11|v_character_address~241_combout\,
	datad => \inst11|process_0~216_combout\,
	combout => \inst11|v_character_address[1]~113_combout\);

-- Location: LCCOMB_X16_Y21_N20
\inst11|v_character_address[1]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~116_combout\ = (\inst11|v_character_address[1]~114_combout\) # ((\inst11|v_character_address[1]~115_combout\) # ((\inst11|v_character_address[1]~107_combout\) # (\inst11|v_character_address[1]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~114_combout\,
	datab => \inst11|v_character_address[1]~115_combout\,
	datac => \inst11|v_character_address[1]~107_combout\,
	datad => \inst11|v_character_address[1]~113_combout\,
	combout => \inst11|v_character_address[1]~116_combout\);

-- Location: LCCOMB_X16_Y19_N22
\inst11|v_character_address[1]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~101_combout\ = (\inst11|process_0~190_combout\) # ((!\inst11|process_0~104_combout\ & !\inst11|v_character_address[1]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~104_combout\,
	datab => \inst11|v_character_address[1]~100_combout\,
	datad => \inst11|process_0~190_combout\,
	combout => \inst11|v_character_address[1]~101_combout\);

-- Location: LCCOMB_X15_Y16_N0
\inst11|v_character_address[1]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~102_combout\ = (\inst11|process_0~114_combout\ & (((\inst|life\(1))))) # (!\inst11|process_0~114_combout\ & (\inst11|v_character_address[1]~101_combout\ & (!\inst11|process_0~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~101_combout\,
	datab => \inst11|process_0~114_combout\,
	datac => \inst11|process_0~99_combout\,
	datad => \inst|life\(1),
	combout => \inst11|v_character_address[1]~102_combout\);

-- Location: LCCOMB_X15_Y16_N12
\inst11|v_character_address[1]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~103_combout\ = (\inst11|v_character_address[1]~102_combout\ & (((\inst11|LessThan111~0_combout\) # (!\inst11|LessThan127~0_combout\)) # (!\inst|SYNC|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst11|LessThan127~0_combout\,
	datac => \inst11|v_character_address[1]~102_combout\,
	datad => \inst11|LessThan111~0_combout\,
	combout => \inst11|v_character_address[1]~103_combout\);

-- Location: LCCOMB_X15_Y16_N2
\inst11|v_character_address[1]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~104_combout\ = (\inst11|v_font_col[2]~1_combout\ & (\inst11|Equal2~0_combout\ & ((\inst11|process_0~189_combout\) # (\inst11|v_character_address[1]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~1_combout\,
	datab => \inst11|Equal2~0_combout\,
	datac => \inst11|process_0~189_combout\,
	datad => \inst11|v_character_address[1]~103_combout\,
	combout => \inst11|v_character_address[1]~104_combout\);

-- Location: LCCOMB_X12_Y21_N30
\inst11|process_0~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~215_combout\ = (!\inst11|process_0~161_combout\ & (!\inst11|LessThan25~0_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan24~0_combout\,
	datab => \inst11|process_0~161_combout\,
	datac => \inst11|LessThan25~0_combout\,
	datad => \inst|SYNC|pixel_row\(8),
	combout => \inst11|process_0~215_combout\);

-- Location: LCCOMB_X11_Y19_N12
\inst11|v_character_address~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~95_combout\ = (!\inst11|process_0~207_combout\ & ((\inst11|process_0~165_combout\) # ((!\inst11|process_0~215_combout\ & !\inst11|process_0~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~165_combout\,
	datab => \inst11|process_0~207_combout\,
	datac => \inst11|process_0~215_combout\,
	datad => \inst11|process_0~206_combout\,
	combout => \inst11|v_character_address~95_combout\);

-- Location: LCCOMB_X11_Y20_N24
\inst11|v_character_address~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~74_combout\ = (\inst11|process_0~130_combout\) # ((\inst11|process_0~209_combout\ & (!\inst11|process_0~133_combout\ & !\inst11|process_0~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~209_combout\,
	datab => \inst11|process_0~133_combout\,
	datac => \inst11|process_0~130_combout\,
	datad => \inst11|process_0~199_combout\,
	combout => \inst11|v_character_address~74_combout\);

-- Location: LCCOMB_X11_Y20_N6
\inst11|v_character_address~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~89_combout\ = ((\inst11|process_0~191_combout\ & (\inst11|process_0~140_combout\ & \inst11|process_0~205_combout\))) # (!\inst11|process_0~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~191_combout\,
	datab => \inst11|process_0~140_combout\,
	datac => \inst11|process_0~205_combout\,
	datad => \inst11|process_0~139_combout\,
	combout => \inst11|v_character_address~89_combout\);

-- Location: LCCOMB_X12_Y22_N4
\inst11|process_0~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~214_combout\ = (\inst11|process_0~138_combout\ & (!\inst11|LessThan88~0_combout\ & !\inst11|process_0~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~138_combout\,
	datab => \inst11|LessThan88~0_combout\,
	datad => \inst11|process_0~161_combout\,
	combout => \inst11|process_0~214_combout\);

-- Location: LCCOMB_X12_Y19_N24
\inst11|v_character_address~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~90_combout\ = (\inst11|process_0~147_combout\ & (((\inst|SYNC|pixel_column\(6)) # (!\inst11|process_0~117_combout\)) # (!\inst11|process_0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~84_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|process_0~117_combout\,
	datad => \inst11|process_0~147_combout\,
	combout => \inst11|v_character_address~90_combout\);

-- Location: LCCOMB_X12_Y22_N0
\inst11|v_character_address~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~91_combout\ = ((\inst11|v_character_address~90_combout\ & ((!\inst11|process_0~146_combout\) # (!\inst11|process_0~135_combout\)))) # (!\inst11|process_0~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~135_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~146_combout\,
	datad => \inst11|v_character_address~90_combout\,
	combout => \inst11|v_character_address~91_combout\);

-- Location: LCCOMB_X12_Y19_N28
\inst11|process_0~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~168_combout\ = (\inst11|process_0~139_combout\ & (!\inst|SYNC|pixel_column\(9) & (\inst11|process_0~84_combout\ & \inst11|process_0~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|process_0~84_combout\,
	datad => \inst11|process_0~118_combout\,
	combout => \inst11|process_0~168_combout\);

-- Location: LCCOMB_X11_Y22_N18
\inst11|v_character_address~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~92_combout\ = (!\inst11|process_0~214_combout\ & (\inst11|v_character_address~91_combout\ & (\inst11|v_character_address~42_combout\ & !\inst11|process_0~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~214_combout\,
	datab => \inst11|v_character_address~91_combout\,
	datac => \inst11|v_character_address~42_combout\,
	datad => \inst11|process_0~168_combout\,
	combout => \inst11|v_character_address~92_combout\);

-- Location: LCCOMB_X12_Y21_N16
\inst11|process_0~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~212_combout\ = (\inst11|process_0~138_combout\ & (!\inst11|LessThan88~0_combout\ & !\inst11|process_0~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~138_combout\,
	datab => \inst11|LessThan88~0_combout\,
	datad => \inst11|process_0~128_combout\,
	combout => \inst11|process_0~212_combout\);

-- Location: LCCOMB_X11_Y21_N4
\inst11|v_character_address~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~82_combout\ = (!\inst11|process_0~203_combout\ & (!\inst11|process_0~212_combout\ & (!\inst11|process_0~156_combout\ & !\inst11|process_0~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~203_combout\,
	datab => \inst11|process_0~212_combout\,
	datac => \inst11|process_0~156_combout\,
	datad => \inst11|process_0~157_combout\,
	combout => \inst11|v_character_address~82_combout\);

-- Location: LCCOMB_X17_Y20_N14
\inst11|process_0~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~211_combout\ = ((\inst|SYNC|pixel_column\(6)) # ((\inst11|LessThan38~0_combout\) # (\inst|SYNC|pixel_column\(5)))) # (!\inst11|process_0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~72_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|LessThan38~0_combout\,
	datad => \inst|SYNC|pixel_column\(5),
	combout => \inst11|process_0~211_combout\);

-- Location: LCCOMB_X11_Y21_N22
\inst11|v_character_address~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~81_combout\ = (\inst11|process_0~155_combout\) # ((!\inst11|process_0~203_combout\ & (\inst11|process_0~139_combout\ & !\inst11|process_0~211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~203_combout\,
	datab => \inst11|process_0~155_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|process_0~211_combout\,
	combout => \inst11|v_character_address~81_combout\);

-- Location: LCCOMB_X16_Y21_N2
\inst11|process_0~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~213_combout\ = (!\inst11|process_0~134_combout\ & (\inst11|process_0~138_combout\ & !\inst11|LessThan88~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~134_combout\,
	datab => \inst11|process_0~138_combout\,
	datac => \inst11|LessThan88~0_combout\,
	combout => \inst11|process_0~213_combout\);

-- Location: LCCOMB_X15_Y21_N12
\inst11|process_0~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~167_combout\ = ((\inst|SYNC|pixel_column\(8)) # (!\inst11|process_0~120_combout\)) # (!\inst|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst11|process_0~120_combout\,
	combout => \inst11|process_0~167_combout\);

-- Location: LCCOMB_X11_Y21_N18
\inst11|v_character_address~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~83_combout\ = ((\inst11|process_0~167_combout\ & ((\inst11|LessThan34~0_combout\) # (!\inst11|process_0~137_combout\)))) # (!\inst11|process_0~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~137_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|LessThan34~0_combout\,
	datad => \inst11|process_0~167_combout\,
	combout => \inst11|v_character_address~83_combout\);

-- Location: LCCOMB_X11_Y19_N14
\inst11|v_character_address~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~84_combout\ = (!\inst11|v_character_address~83_combout\ & (\inst11|v_character_address~242_combout\ & ((\inst11|process_0~202_combout\) # (!\inst11|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~83_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~202_combout\,
	datad => \inst11|v_character_address~242_combout\,
	combout => \inst11|v_character_address~84_combout\);

-- Location: LCCOMB_X10_Y21_N4
\inst11|v_character_address~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~85_combout\ = (\inst11|v_character_address~81_combout\) # ((\inst11|v_character_address~82_combout\ & ((\inst11|process_0~213_combout\) # (\inst11|v_character_address~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~82_combout\,
	datab => \inst11|v_character_address~81_combout\,
	datac => \inst11|process_0~213_combout\,
	datad => \inst11|v_character_address~84_combout\,
	combout => \inst11|v_character_address~85_combout\);

-- Location: LCCOMB_X12_Y20_N14
\inst11|v_character_address~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~80_combout\ = (\inst11|process_0~194_combout\ & (!\inst11|process_0~195_combout\ & (\inst11|process_0~139_combout\ & !\inst11|process_0~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~194_combout\,
	datab => \inst11|process_0~195_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|process_0~149_combout\,
	combout => \inst11|v_character_address~80_combout\);

-- Location: LCCOMB_X12_Y18_N16
\inst11|v_character_address~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~86_combout\ = (!\inst11|process_0~153_combout\ & (!\inst11|process_0~149_combout\ & (!\inst11|process_0~158_combout\ & !\inst11|process_0~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~153_combout\,
	datab => \inst11|process_0~149_combout\,
	datac => \inst11|process_0~158_combout\,
	datad => \inst11|process_0~154_combout\,
	combout => \inst11|v_character_address~86_combout\);

-- Location: LCCOMB_X12_Y18_N14
\inst11|v_character_address~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~87_combout\ = (!\inst11|process_0~151_combout\ & (\inst11|v_character_address~86_combout\ & ((\inst11|process_0~194_combout\) # (!\inst11|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~194_combout\,
	datac => \inst11|process_0~151_combout\,
	datad => \inst11|v_character_address~86_combout\,
	combout => \inst11|v_character_address~87_combout\);

-- Location: LCCOMB_X11_Y20_N26
\inst11|v_character_address~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~88_combout\ = (\inst11|process_0~148_combout\) # ((\inst11|v_character_address~80_combout\) # ((\inst11|v_character_address~85_combout\ & \inst11|v_character_address~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~148_combout\,
	datab => \inst11|v_character_address~85_combout\,
	datac => \inst11|v_character_address~80_combout\,
	datad => \inst11|v_character_address~87_combout\,
	combout => \inst11|v_character_address~88_combout\);

-- Location: LCCOMB_X14_Y22_N14
\inst11|v_character_address~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~77_combout\ = (\inst11|v_character_address~42_combout\ & ((\inst11|process_0~141_combout\) # (\inst11|process_0~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~42_combout\,
	datac => \inst11|process_0~141_combout\,
	datad => \inst11|process_0~201_combout\,
	combout => \inst11|v_character_address~77_combout\);

-- Location: LCCOMB_X11_Y22_N12
\inst11|v_character_address~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~79_combout\ = (\inst11|process_0~145_combout\) # ((\inst11|v_character_address~77_combout\) # (!\inst11|v_character_address~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~145_combout\,
	datac => \inst11|v_character_address~78_combout\,
	datad => \inst11|v_character_address~77_combout\,
	combout => \inst11|v_character_address~79_combout\);

-- Location: LCCOMB_X11_Y20_N2
\inst11|v_character_address~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~93_combout\ = (\inst11|v_character_address~79_combout\) # ((\inst11|v_character_address~89_combout\ & (\inst11|v_character_address~92_combout\ & \inst11|v_character_address~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~89_combout\,
	datab => \inst11|v_character_address~92_combout\,
	datac => \inst11|v_character_address~88_combout\,
	datad => \inst11|v_character_address~79_combout\,
	combout => \inst11|v_character_address~93_combout\);

-- Location: LCCOMB_X11_Y20_N18
\inst11|v_character_address~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~94_combout\ = (\inst11|v_character_address[4]~73_combout\ & ((\inst11|v_character_address~74_combout\) # ((\inst11|v_character_address~76_combout\ & \inst11|v_character_address~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[4]~73_combout\,
	datab => \inst11|v_character_address~74_combout\,
	datac => \inst11|v_character_address~76_combout\,
	datad => \inst11|v_character_address~93_combout\,
	combout => \inst11|v_character_address~94_combout\);

-- Location: LCCOMB_X12_Y20_N12
\inst11|v_character_address~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~96_combout\ = ((\inst11|v_character_address~94_combout\) # ((\inst11|v_character_address~72_combout\ & \inst11|process_0~169_combout\))) # (!\inst11|v_character_address~95_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~72_combout\,
	datab => \inst11|process_0~169_combout\,
	datac => \inst11|v_character_address~95_combout\,
	datad => \inst11|v_character_address~94_combout\,
	combout => \inst11|v_character_address~96_combout\);

-- Location: LCCOMB_X12_Y20_N6
\inst11|v_character_address[1]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~97_combout\ = (\inst11|v_character_address~21_combout\ & (\inst11|v_character_address[1]~71_combout\ & (\inst11|Equal1~0_combout\ & \inst11|v_character_address~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~21_combout\,
	datab => \inst11|v_character_address[1]~71_combout\,
	datac => \inst11|Equal1~0_combout\,
	datad => \inst11|v_character_address~96_combout\,
	combout => \inst11|v_character_address[1]~97_combout\);

-- Location: LCCOMB_X14_Y18_N8
\inst11|v_character_address[1]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[1]~117_combout\ = (\inst11|v_character_address[1]~106_combout\) # ((\inst11|v_character_address[1]~116_combout\) # ((\inst11|v_character_address[1]~104_combout\) # (\inst11|v_character_address[1]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~106_combout\,
	datab => \inst11|v_character_address[1]~116_combout\,
	datac => \inst11|v_character_address[1]~104_combout\,
	datad => \inst11|v_character_address[1]~97_combout\,
	combout => \inst11|v_character_address[1]~117_combout\);

-- Location: LCCOMB_X12_Y17_N8
\inst11|v_character_address~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~244_combout\ = (\inst11|process_0~115_combout\ & (((\inst11|process_0~82_combout\) # (!\inst11|process_0~78_combout\)) # (!\inst11|process_0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~80_combout\,
	datab => \inst11|process_0~115_combout\,
	datac => \inst11|process_0~78_combout\,
	datad => \inst11|process_0~82_combout\,
	combout => \inst11|v_character_address~244_combout\);

-- Location: LCCOMB_X12_Y16_N4
\inst11|v_character_address~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~154_combout\ = (((\inst11|process_0~193_combout\ & \inst11|v_character_address~244_combout\)) # (!\inst11|v_character_address~69_combout\)) # (!\inst11|process_0~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~87_combout\,
	datab => \inst11|process_0~193_combout\,
	datac => \inst11|v_character_address~69_combout\,
	datad => \inst11|v_character_address~244_combout\,
	combout => \inst11|v_character_address~154_combout\);

-- Location: LCCOMB_X17_Y17_N30
\inst11|v_character_address~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~155_combout\ = (\inst11|process_0~80_combout\ & (((!\inst11|process_0~186_combout\ & !\inst|SYNC|pixel_column\(9))) # (!\inst11|v_font_row[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~186_combout\,
	datab => \inst11|process_0~80_combout\,
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst11|v_font_row[2]~1_combout\,
	combout => \inst11|v_character_address~155_combout\);

-- Location: LCCOMB_X12_Y16_N2
\inst11|v_character_address~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~156_combout\ = (\inst11|v_character_address~154_combout\) # ((!\inst11|process_0~173_combout\ & \inst11|v_character_address~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~173_combout\,
	datac => \inst11|v_character_address~154_combout\,
	datad => \inst11|v_character_address~155_combout\,
	combout => \inst11|v_character_address~156_combout\);

-- Location: LCCOMB_X11_Y19_N6
\inst11|v_character_address~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~131_combout\ = (!\inst11|process_0~165_combout\ & !\inst11|process_0~164_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~165_combout\,
	datad => \inst11|process_0~164_combout\,
	combout => \inst11|v_character_address~131_combout\);

-- Location: LCCOMB_X11_Y20_N12
\inst11|v_character_address~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~129_combout\ = (\inst11|process_0~140_combout\ & ((\inst|SYNC|pixel_column\(8)) # ((!\inst11|LessThan112~0_combout\) # (!\inst11|process_0~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst11|process_0~140_combout\,
	datac => \inst11|process_0~160_combout\,
	datad => \inst11|LessThan112~0_combout\,
	combout => \inst11|v_character_address~129_combout\);

-- Location: LCCOMB_X12_Y16_N8
\inst11|v_character_address~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~130_combout\ = (\inst11|v_character_address~244_combout\ & (((\inst11|process_0~191_combout\ & \inst11|v_character_address~129_combout\)) # (!\inst11|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~191_combout\,
	datab => \inst11|process_0~116_combout\,
	datac => \inst11|v_character_address~129_combout\,
	datad => \inst11|v_character_address~244_combout\,
	combout => \inst11|v_character_address~130_combout\);

-- Location: LCCOMB_X12_Y20_N16
\inst11|v_character_address~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~132_combout\ = (\inst11|process_0~208_combout\) # (((!\inst11|process_0~194_combout\ & \inst11|process_0~116_combout\)) # (!\inst11|v_character_address~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~194_combout\,
	datab => \inst11|process_0~208_combout\,
	datac => \inst11|process_0~116_combout\,
	datad => \inst11|v_character_address~34_combout\,
	combout => \inst11|v_character_address~132_combout\);

-- Location: LCCOMB_X14_Y21_N8
\inst11|process_0~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~175_combout\ = (!\inst11|LessThan45~0_combout\ & (!\inst11|LessThan44~0_combout\ & (\inst11|process_0~78_combout\ & \inst11|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan45~0_combout\,
	datab => \inst11|LessThan44~0_combout\,
	datac => \inst11|process_0~78_combout\,
	datad => \inst11|process_0~116_combout\,
	combout => \inst11|process_0~175_combout\);

-- Location: LCCOMB_X11_Y20_N8
\inst11|v_character_address~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~133_combout\ = ((\inst11|process_0~128_combout\ & ((!\inst11|process_0~200_combout\) # (!\inst11|process_0~72_combout\)))) # (!\inst11|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~128_combout\,
	datab => \inst11|process_0~72_combout\,
	datac => \inst11|process_0~200_combout\,
	datad => \inst11|process_0~116_combout\,
	combout => \inst11|v_character_address~133_combout\);

-- Location: LCCOMB_X14_Y21_N16
\inst11|v_character_address~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~150_combout\ = (!\inst11|process_0~198_combout\ & (!\inst11|process_0~196_combout\ & !\inst11|process_0~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~198_combout\,
	datab => \inst11|process_0~196_combout\,
	datad => \inst11|process_0~130_combout\,
	combout => \inst11|v_character_address~150_combout\);

-- Location: LCCOMB_X12_Y19_N4
\inst11|v_character_address~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~134_combout\ = (\inst11|process_0~136_combout\ & (\inst11|process_0~134_combout\ & ((!\inst11|process_0~118_combout\) # (!\inst11|process_0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~72_combout\,
	datab => \inst11|process_0~136_combout\,
	datac => \inst11|process_0~134_combout\,
	datad => \inst11|process_0~118_combout\,
	combout => \inst11|v_character_address~134_combout\);

-- Location: LCCOMB_X12_Y19_N8
\inst11|v_character_address~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~135_combout\ = ((\inst11|process_0~116_combout\ & !\inst11|v_character_address~134_combout\)) # (!\inst11|v_character_address~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~116_combout\,
	datac => \inst11|v_character_address~134_combout\,
	datad => \inst11|v_character_address~75_combout\,
	combout => \inst11|v_character_address~135_combout\);

-- Location: LCCOMB_X12_Y22_N18
\inst11|process_0~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~217_combout\ = (\inst11|process_0~138_combout\ & (!\inst11|LessThan88~0_combout\ & (\inst11|process_0~146_combout\ & \inst11|process_0~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~138_combout\,
	datab => \inst11|LessThan88~0_combout\,
	datac => \inst11|process_0~146_combout\,
	datad => \inst11|process_0~135_combout\,
	combout => \inst11|process_0~217_combout\);

-- Location: LCCOMB_X11_Y22_N26
\inst11|v_character_address~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~146_combout\ = (!\inst11|process_0~214_combout\ & (\inst11|process_0~168_combout\ & (!\inst11|process_0~204_combout\ & !\inst11|process_0~217_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~214_combout\,
	datab => \inst11|process_0~168_combout\,
	datac => \inst11|process_0~204_combout\,
	datad => \inst11|process_0~217_combout\,
	combout => \inst11|v_character_address~146_combout\);

-- Location: LCCOMB_X11_Y22_N8
\inst11|v_character_address~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~145_combout\ = (\inst11|process_0~150_combout\ & (((\inst11|process_0~139_combout\ & !\inst11|process_0~140_combout\)) # (!\inst11|process_0~204_combout\))) # (!\inst11|process_0~150_combout\ & (\inst11|process_0~139_combout\ & 
-- ((!\inst11|process_0~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~150_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~204_combout\,
	datad => \inst11|process_0~140_combout\,
	combout => \inst11|v_character_address~145_combout\);

-- Location: LCCOMB_X12_Y19_N16
\inst11|process_0~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~218_combout\ = (\inst|SYNC|pixel_column\(9)) # ((\inst|SYNC|pixel_column\(8)) # (!\inst11|process_0~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst11|process_0~123_combout\,
	combout => \inst11|process_0~218_combout\);

-- Location: LCCOMB_X12_Y22_N26
\inst11|v_character_address~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~147_combout\ = (((!\inst11|process_0~218_combout\) # (!\inst11|process_0~205_combout\)) # (!\inst11|process_0~119_combout\)) # (!\inst11|process_0~191_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~191_combout\,
	datab => \inst11|process_0~119_combout\,
	datac => \inst11|process_0~205_combout\,
	datad => \inst11|process_0~218_combout\,
	combout => \inst11|v_character_address~147_combout\);

-- Location: LCCOMB_X11_Y22_N28
\inst11|v_character_address~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~148_combout\ = (\inst11|v_character_address~146_combout\) # ((\inst11|v_character_address~145_combout\) # ((\inst11|process_0~139_combout\ & \inst11|v_character_address~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~146_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|v_character_address~145_combout\,
	datad => \inst11|v_character_address~147_combout\,
	combout => \inst11|v_character_address~148_combout\);

-- Location: LCCOMB_X12_Y18_N4
\inst11|process_0~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~174_combout\ = ((\inst|SYNC|pixel_column\(6)) # (!\inst11|process_0~129_combout\)) # (!\inst11|process_0~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~78_combout\,
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst11|process_0~129_combout\,
	combout => \inst11|process_0~174_combout\);

-- Location: LCCOMB_X12_Y18_N30
\inst11|v_character_address~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~143_combout\ = (\inst11|process_0~139_combout\ & (((!\inst11|process_0~195_combout\) # (!\inst11|process_0~194_combout\)) # (!\inst11|process_0~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~174_combout\,
	datac => \inst11|process_0~194_combout\,
	datad => \inst11|process_0~195_combout\,
	combout => \inst11|v_character_address~143_combout\);

-- Location: LCCOMB_X11_Y22_N0
\inst11|v_character_address~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~136_combout\ = (!\inst11|process_0~217_combout\ & (\inst11|v_character_address~44_combout\ & !\inst11|process_0~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~217_combout\,
	datac => \inst11|v_character_address~44_combout\,
	datad => \inst11|process_0~214_combout\,
	combout => \inst11|v_character_address~136_combout\);

-- Location: LCCOMB_X16_Y21_N26
\inst11|v_character_address~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~137_combout\ = (\inst11|process_0~132_combout\ & (((!\inst11|process_0~78_combout\) # (!\inst|SYNC|pixel_column\(6))) # (!\inst11|process_0~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~129_combout\,
	datab => \inst|SYNC|pixel_column\(6),
	datac => \inst11|process_0~132_combout\,
	datad => \inst11|process_0~78_combout\,
	combout => \inst11|v_character_address~137_combout\);

-- Location: LCCOMB_X16_Y21_N16
\inst11|v_character_address~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~138_combout\ = (!\inst11|process_0~153_combout\ & (((\inst11|v_character_address~137_combout\ & \inst11|process_0~197_combout\)) # (!\inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~137_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~197_combout\,
	datad => \inst11|process_0~153_combout\,
	combout => \inst11|v_character_address~138_combout\);

-- Location: LCCOMB_X11_Y21_N20
\inst11|v_character_address~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~139_combout\ = (\inst11|process_0~139_combout\ & (((\inst11|process_0~128_combout\ & !\inst11|process_0~163_combout\)) # (!\inst11|process_0~211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~128_combout\,
	datab => \inst11|process_0~163_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|process_0~211_combout\,
	combout => \inst11|v_character_address~139_combout\);

-- Location: LCCOMB_X16_Y21_N22
\inst11|v_character_address~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~140_combout\ = ((\inst11|process_0~143_combout\ & (\inst11|process_0~202_combout\ & \inst11|process_0~136_combout\))) # (!\inst11|process_0~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~143_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~202_combout\,
	datad => \inst11|process_0~136_combout\,
	combout => \inst11|v_character_address~140_combout\);

-- Location: LCCOMB_X11_Y21_N26
\inst11|v_character_address~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~141_combout\ = (!\inst11|v_character_address~140_combout\) # (!\inst11|v_character_address~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|v_character_address~83_combout\,
	datad => \inst11|v_character_address~140_combout\,
	combout => \inst11|v_character_address~141_combout\);

-- Location: LCCOMB_X11_Y21_N0
\inst11|v_character_address~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~142_combout\ = (\inst11|v_character_address~138_combout\ & ((\inst11|v_character_address~139_combout\) # ((\inst11|v_character_address~141_combout\ & \inst11|v_character_address~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~138_combout\,
	datab => \inst11|v_character_address~139_combout\,
	datac => \inst11|v_character_address~141_combout\,
	datad => \inst11|v_character_address~51_combout\,
	combout => \inst11|v_character_address~142_combout\);

-- Location: LCCOMB_X11_Y22_N10
\inst11|v_character_address~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~144_combout\ = (\inst11|v_character_address~136_combout\ & ((\inst11|v_character_address~143_combout\) # ((\inst11|process_0~158_combout\) # (\inst11|v_character_address~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~143_combout\,
	datab => \inst11|v_character_address~136_combout\,
	datac => \inst11|process_0~158_combout\,
	datad => \inst11|v_character_address~142_combout\,
	combout => \inst11|v_character_address~144_combout\);

-- Location: LCCOMB_X11_Y22_N30
\inst11|v_character_address~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~149_combout\ = (\inst11|v_character_address~135_combout\) # ((\inst11|v_character_address~42_combout\ & ((\inst11|v_character_address~148_combout\) # (\inst11|v_character_address~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~135_combout\,
	datab => \inst11|v_character_address~148_combout\,
	datac => \inst11|v_character_address~42_combout\,
	datad => \inst11|v_character_address~144_combout\,
	combout => \inst11|v_character_address~149_combout\);

-- Location: LCCOMB_X11_Y20_N10
\inst11|v_character_address~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~151_combout\ = (\inst11|process_0~199_combout\) # (((\inst11|v_character_address~133_combout\ & \inst11|v_character_address~149_combout\)) # (!\inst11|v_character_address~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~199_combout\,
	datab => \inst11|v_character_address~133_combout\,
	datac => \inst11|v_character_address~150_combout\,
	datad => \inst11|v_character_address~149_combout\,
	combout => \inst11|v_character_address~151_combout\);

-- Location: LCCOMB_X11_Y20_N4
\inst11|v_character_address~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~152_combout\ = (\inst11|v_character_address~132_combout\) # ((!\inst11|process_0~121_combout\ & (!\inst11|process_0~175_combout\ & \inst11|v_character_address~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~121_combout\,
	datab => \inst11|v_character_address~132_combout\,
	datac => \inst11|process_0~175_combout\,
	datad => \inst11|v_character_address~151_combout\,
	combout => \inst11|v_character_address~152_combout\);

-- Location: LCCOMB_X12_Y16_N6
\inst11|v_character_address~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~153_combout\ = (\inst11|v_character_address~130_combout\ & (((\inst11|v_character_address~131_combout\ & \inst11|v_character_address~152_combout\)) # (!\inst11|v_character_address~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~95_combout\,
	datab => \inst11|v_character_address~131_combout\,
	datac => \inst11|v_character_address~130_combout\,
	datad => \inst11|v_character_address~152_combout\,
	combout => \inst11|v_character_address~153_combout\);

-- Location: LCCOMB_X11_Y17_N24
\inst11|v_character_address[2]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~118_combout\ = (\inst11|process_0~90_combout\) # ((!\inst11|process_0~89_combout\ & ((\inst11|process_0~186_combout\) # (!\inst11|process_0~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~188_combout\,
	datab => \inst11|process_0~90_combout\,
	datac => \inst11|process_0~186_combout\,
	datad => \inst11|process_0~89_combout\,
	combout => \inst11|v_character_address[2]~118_combout\);

-- Location: LCCOMB_X17_Y21_N22
\inst11|v_character_address[5]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~120_combout\ = (!\inst11|v_character_address~15_combout\ & (!\inst11|process_0~79_combout\ & (!\inst11|process_0~77_combout\ & !\inst11|process_0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~15_combout\,
	datab => \inst11|process_0~79_combout\,
	datac => \inst11|process_0~77_combout\,
	datad => \inst11|process_0~74_combout\,
	combout => \inst11|v_character_address[5]~120_combout\);

-- Location: LCCOMB_X17_Y17_N22
\inst11|v_character_address[2]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~121_combout\ = (\inst11|process_0~216_combout\ & ((\inst11|v_character_address~241_combout\) # ((\inst11|process_0~71_combout\ & !\inst11|v_character_address[5]~120_combout\)))) # (!\inst11|process_0~216_combout\ & 
-- (((!\inst11|v_character_address[5]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~71_combout\,
	datab => \inst11|v_character_address~241_combout\,
	datac => \inst11|v_character_address[5]~120_combout\,
	datad => \inst11|process_0~216_combout\,
	combout => \inst11|v_character_address[2]~121_combout\);

-- Location: LCCOMB_X11_Y17_N2
\inst11|v_character_address~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~119_combout\ = (((\inst11|process_0~81_combout\ & !\inst11|process_0~187_combout\)) # (!\inst11|v_font_row[2]~0_combout\)) # (!\inst11|process_0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~70_combout\,
	datab => \inst11|process_0~81_combout\,
	datac => \inst11|process_0~187_combout\,
	datad => \inst11|v_font_row[2]~0_combout\,
	combout => \inst11|v_character_address~119_combout\);

-- Location: LCCOMB_X17_Y19_N22
\inst11|v_character_address[2]~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~243_combout\ = (\inst9|STATE_OUT\(1) & (!\inst9|STATE_OUT\(0) & (!\inst9|STATE_OUT\(2) & \inst11|v_character_address~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(1),
	datab => \inst9|STATE_OUT\(0),
	datac => \inst9|STATE_OUT\(2),
	datad => \inst11|v_character_address~119_combout\,
	combout => \inst11|v_character_address[2]~243_combout\);

-- Location: LCCOMB_X17_Y17_N6
\inst11|v_character_address[2]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~122_combout\ = (\inst11|Equal0~0_combout\ & ((\inst11|v_character_address[2]~121_combout\) # ((\inst11|v_character_address[2]~118_combout\ & \inst11|v_character_address[2]~243_combout\)))) # (!\inst11|Equal0~0_combout\ & 
-- (\inst11|v_character_address[2]~118_combout\ & ((\inst11|v_character_address[2]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~0_combout\,
	datab => \inst11|v_character_address[2]~118_combout\,
	datac => \inst11|v_character_address[2]~121_combout\,
	datad => \inst11|v_character_address[2]~243_combout\,
	combout => \inst11|v_character_address[2]~122_combout\);

-- Location: LCCOMB_X17_Y20_N30
\inst11|v_character_address[2]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~125_combout\ = (!\inst11|process_0~114_combout\ & (((!\inst11|process_0~110_combout\ & \inst11|process_0~107_combout\)) # (!\inst11|v_character_address[4]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~110_combout\,
	datab => \inst11|process_0~114_combout\,
	datac => \inst11|v_character_address[4]~124_combout\,
	datad => \inst11|process_0~107_combout\,
	combout => \inst11|v_character_address[2]~125_combout\);

-- Location: LCCOMB_X15_Y16_N26
\inst11|v_character_address[2]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~126_combout\ = (!\inst11|process_0~112_combout\ & ((\inst11|v_character_address[2]~125_combout\) # ((\inst11|process_0~114_combout\ & !\inst|life\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[2]~125_combout\,
	datab => \inst11|process_0~114_combout\,
	datac => \inst|life\(2),
	datad => \inst11|process_0~112_combout\,
	combout => \inst11|v_character_address[2]~126_combout\);

-- Location: LCCOMB_X15_Y16_N20
\inst11|v_character_address[2]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~127_combout\ = ((\inst11|process_0~96_combout\ & ((\inst11|v_character_address[2]~123_combout\) # (\inst11|v_character_address[2]~126_combout\)))) # (!\inst11|process_0~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[2]~123_combout\,
	datab => \inst11|process_0~96_combout\,
	datac => \inst11|process_0~92_combout\,
	datad => \inst11|v_character_address[2]~126_combout\,
	combout => \inst11|v_character_address[2]~127_combout\);

-- Location: LCCOMB_X15_Y16_N18
\inst11|v_character_address[2]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~128_combout\ = (\inst11|v_character_address[2]~122_combout\) # ((\inst11|Equal2~0_combout\ & \inst11|v_character_address[2]~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Equal2~0_combout\,
	datac => \inst11|v_character_address[2]~122_combout\,
	datad => \inst11|v_character_address[2]~127_combout\,
	combout => \inst11|v_character_address[2]~128_combout\);

-- Location: LCCOMB_X14_Y16_N30
\inst11|v_character_address[2]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[2]~157_combout\ = (\inst11|v_character_address[2]~128_combout\) # ((\inst11|Equal1~0_combout\ & ((\inst11|v_character_address~156_combout\) # (\inst11|v_character_address~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~156_combout\,
	datab => \inst11|Equal1~0_combout\,
	datac => \inst11|v_character_address~153_combout\,
	datad => \inst11|v_character_address[2]~128_combout\,
	combout => \inst11|v_character_address[2]~157_combout\);

-- Location: LCCOMB_X17_Y20_N12
\inst11|v_character_address[3]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[3]~160_combout\ = (\inst11|process_0~190_combout\) # ((\inst11|v_character_address[1]~100_combout\ & (\inst11|process_0~109_combout\ & !\inst11|process_0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~100_combout\,
	datab => \inst11|process_0~190_combout\,
	datac => \inst11|process_0~109_combout\,
	datad => \inst11|process_0~104_combout\,
	combout => \inst11|v_character_address[3]~160_combout\);

-- Location: LCCOMB_X17_Y20_N20
\inst11|v_font_col[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[2]~2_combout\ = (!\inst11|process_0~112_combout\ & (!\inst11|process_0~114_combout\ & (!\inst11|v_character_address[2]~123_combout\ & \inst11|process_0~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~112_combout\,
	datab => \inst11|process_0~114_combout\,
	datac => \inst11|v_character_address[2]~123_combout\,
	datad => \inst11|process_0~101_combout\,
	combout => \inst11|v_font_col[2]~2_combout\);

-- Location: LCCOMB_X17_Y20_N0
\inst11|v_character_address[3]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[3]~161_combout\ = ((\inst11|v_character_address[3]~160_combout\ & (\inst11|v_font_col[2]~2_combout\ & !\inst11|process_0~99_combout\))) # (!\inst11|v_font_col[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[3]~160_combout\,
	datab => \inst11|v_font_col[2]~2_combout\,
	datac => \inst11|v_font_col[2]~1_combout\,
	datad => \inst11|process_0~99_combout\,
	combout => \inst11|v_character_address[3]~161_combout\);

-- Location: LCCOMB_X17_Y21_N8
\inst11|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|Equal0~1_combout\ = (!\inst9|STATE_OUT\(0) & !\inst9|STATE_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(0),
	datad => \inst9|STATE_OUT\(1),
	combout => \inst11|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y21_N6
\inst11|v_character_address[3]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[3]~158_combout\ = (\inst11|process_0~78_combout\ & (\inst11|process_0~73_combout\ & ((!\inst|SYNC|pixel_column\(6)) # (!\inst11|process_0~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~171_combout\,
	datab => \inst11|process_0~78_combout\,
	datac => \inst11|process_0~73_combout\,
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|v_character_address[3]~158_combout\);

-- Location: LCCOMB_X17_Y21_N24
\inst11|v_character_address[3]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[3]~159_combout\ = (!\inst11|v_character_address~12_combout\ & (\inst11|Equal0~1_combout\ & (!\inst11|Equal1~0_combout\ & \inst11|v_character_address[3]~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~12_combout\,
	datab => \inst11|Equal0~1_combout\,
	datac => \inst11|Equal1~0_combout\,
	datad => \inst11|v_character_address[3]~158_combout\,
	combout => \inst11|v_character_address[3]~159_combout\);

-- Location: LCCOMB_X17_Y21_N2
\inst11|v_character_address[3]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[3]~162_combout\ = (\inst11|v_character_address[3]~159_combout\) # ((\inst11|Equal2~0_combout\ & (\inst11|v_character_address[3]~161_combout\ & !\inst11|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~0_combout\,
	datab => \inst11|v_character_address[3]~161_combout\,
	datac => \inst11|Equal0~1_combout\,
	datad => \inst11|v_character_address[3]~159_combout\,
	combout => \inst11|v_character_address[3]~162_combout\);

-- Location: LCCOMB_X12_Y21_N8
\inst11|v_character_address~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~185_combout\ = ((\inst11|process_0~119_combout\ & (\inst11|process_0~140_combout\ & \inst11|process_0~191_combout\))) # (!\inst11|process_0~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~119_combout\,
	datab => \inst11|process_0~140_combout\,
	datac => \inst11|process_0~116_combout\,
	datad => \inst11|process_0~191_combout\,
	combout => \inst11|v_character_address~185_combout\);

-- Location: LCCOMB_X12_Y21_N22
\inst11|v_character_address~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~186_combout\ = (\inst11|v_character_address~21_combout\ & (\inst11|v_character_address~185_combout\ & \inst11|v_character_address~244_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~21_combout\,
	datab => \inst11|v_character_address~185_combout\,
	datac => \inst11|v_character_address~244_combout\,
	combout => \inst11|v_character_address~186_combout\);

-- Location: LCCOMB_X12_Y17_N12
\inst11|process_0~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~177_combout\ = (\inst11|process_0~80_combout\ & (!\inst|SYNC|pixel_column\(9) & !\inst11|process_0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~80_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|process_0~81_combout\,
	combout => \inst11|process_0~177_combout\);

-- Location: LCCOMB_X12_Y17_N16
\inst11|v_character_address~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~188_combout\ = (\inst11|process_0~177_combout\) # ((!\inst11|process_0~173_combout\ & ((\inst11|process_0~166_combout\) # (\inst11|process_0~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~166_combout\,
	datab => \inst11|process_0~172_combout\,
	datac => \inst11|process_0~173_combout\,
	datad => \inst11|process_0~177_combout\,
	combout => \inst11|v_character_address~188_combout\);

-- Location: LCCOMB_X12_Y21_N10
\inst11|v_character_address~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~189_combout\ = (\inst11|process_0~116_combout\ & ((!\inst11|process_0~205_combout\) # (!\inst11|v_character_address~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|v_character_address~90_combout\,
	datac => \inst11|process_0~116_combout\,
	datad => \inst11|process_0~205_combout\,
	combout => \inst11|v_character_address~189_combout\);

-- Location: LCCOMB_X12_Y21_N28
\inst11|v_character_address~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~190_combout\ = (\inst11|v_character_address~188_combout\) # ((\inst11|v_character_address~186_combout\ & ((\inst11|process_0~206_combout\) # (\inst11|v_character_address~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~186_combout\,
	datab => \inst11|v_character_address~188_combout\,
	datac => \inst11|process_0~206_combout\,
	datad => \inst11|v_character_address~189_combout\,
	combout => \inst11|v_character_address~190_combout\);

-- Location: LCCOMB_X12_Y17_N14
\inst11|v_character_address[3]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[3]~163_combout\ = (\inst11|Equal0~1_combout\ & (\inst11|process_0~87_combout\ & (!\inst11|process_0~85_combout\ & \inst11|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal0~1_combout\,
	datab => \inst11|process_0~87_combout\,
	datac => \inst11|process_0~85_combout\,
	datad => \inst11|Equal1~0_combout\,
	combout => \inst11|v_character_address[3]~163_combout\);

-- Location: LCCOMB_X14_Y21_N12
\inst11|v_character_address~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~164_combout\ = (\inst11|v_character_address~32_combout\ & (!\inst11|process_0~208_combout\ & ((\inst11|process_0~175_combout\) # (\inst11|process_0~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~32_combout\,
	datab => \inst11|process_0~208_combout\,
	datac => \inst11|process_0~175_combout\,
	datad => \inst11|process_0~196_combout\,
	combout => \inst11|v_character_address~164_combout\);

-- Location: LCCOMB_X12_Y21_N18
\inst11|process_0~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~176_combout\ = (!\inst11|process_0~143_combout\ & (!\inst11|LessThan25~0_combout\ & ((\inst|SYNC|pixel_row\(8)) # (!\inst11|LessThan24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~143_combout\,
	datab => \inst11|LessThan25~0_combout\,
	datac => \inst11|LessThan24~0_combout\,
	datad => \inst|SYNC|pixel_row\(8),
	combout => \inst11|process_0~176_combout\);

-- Location: LCCOMB_X14_Y22_N12
\inst11|v_character_address~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~165_combout\ = (\inst11|v_character_address~41_combout\ & (((!\inst11|LessThan127~0_combout\) # (!\inst11|process_0~139_combout\)) # (!\inst11|process_0~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~117_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|LessThan127~0_combout\,
	datad => \inst11|v_character_address~41_combout\,
	combout => \inst11|v_character_address~165_combout\);

-- Location: LCCOMB_X12_Y22_N6
\inst11|v_character_address~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~172_combout\ = (!\inst11|process_0~141_combout\ & (!\inst11|process_0~217_combout\ & ((\inst11|process_0~140_combout\) # (!\inst11|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~141_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~140_combout\,
	datad => \inst11|process_0~217_combout\,
	combout => \inst11|v_character_address~172_combout\);

-- Location: LCCOMB_X11_Y22_N16
\inst11|v_character_address~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~173_combout\ = (!\inst11|process_0~168_combout\ & (\inst11|v_character_address~44_combout\ & \inst11|v_character_address~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~168_combout\,
	datac => \inst11|v_character_address~44_combout\,
	datad => \inst11|v_character_address~172_combout\,
	combout => \inst11|v_character_address~173_combout\);

-- Location: LCCOMB_X11_Y21_N16
\inst11|v_character_address~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~178_combout\ = (!\inst11|process_0~155_combout\ & ((\inst11|process_0~203_combout\) # ((!\inst11|process_0~159_combout\ & \inst11|process_0~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~203_combout\,
	datab => \inst11|process_0~155_combout\,
	datac => \inst11|process_0~159_combout\,
	datad => \inst11|process_0~212_combout\,
	combout => \inst11|v_character_address~178_combout\);

-- Location: LCCOMB_X11_Y21_N12
\inst11|v_character_address~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~176_combout\ = (\inst11|v_character_address~47_combout\ & (((\inst11|process_0~211_combout\) # (!\inst11|process_0~139_combout\)))) # (!\inst11|v_character_address~47_combout\ & (!\inst11|v_character_address~83_combout\ & 
-- ((\inst11|process_0~211_combout\) # (!\inst11|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~47_combout\,
	datab => \inst11|v_character_address~83_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|process_0~211_combout\,
	combout => \inst11|v_character_address~176_combout\);

-- Location: LCCOMB_X11_Y21_N2
\inst11|v_character_address~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~175_combout\ = ((\inst11|process_0~143_combout\ & (\inst11|process_0~163_combout\ & \inst11|v_character_address~134_combout\))) # (!\inst11|process_0~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~143_combout\,
	datab => \inst11|process_0~163_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|v_character_address~134_combout\,
	combout => \inst11|v_character_address~175_combout\);

-- Location: LCCOMB_X11_Y21_N6
\inst11|v_character_address~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~177_combout\ = (\inst11|v_character_address~176_combout\ & (!\inst11|process_0~155_combout\ & (!\inst11|process_0~156_combout\ & \inst11|v_character_address~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~176_combout\,
	datab => \inst11|process_0~155_combout\,
	datac => \inst11|process_0~156_combout\,
	datad => \inst11|v_character_address~175_combout\,
	combout => \inst11|v_character_address~177_combout\);

-- Location: LCCOMB_X12_Y21_N20
\inst11|v_character_address~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~174_combout\ = (!\inst11|process_0~153_combout\ & (((\inst11|process_0~122_combout\ & \inst11|process_0~174_combout\)) # (!\inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~122_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~153_combout\,
	datad => \inst11|process_0~174_combout\,
	combout => \inst11|v_character_address~174_combout\);

-- Location: LCCOMB_X12_Y21_N2
\inst11|v_character_address~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~179_combout\ = (\inst11|v_character_address~174_combout\ & ((\inst11|v_character_address~178_combout\) # ((\inst11|process_0~154_combout\) # (\inst11|v_character_address~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~178_combout\,
	datab => \inst11|process_0~154_combout\,
	datac => \inst11|v_character_address~177_combout\,
	datad => \inst11|v_character_address~174_combout\,
	combout => \inst11|v_character_address~179_combout\);

-- Location: LCCOMB_X12_Y22_N20
\inst11|v_character_address~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~168_combout\ = (\inst11|process_0~139_combout\ & (!\inst11|process_0~161_combout\ & ((!\inst11|process_0~146_combout\) # (!\inst11|process_0~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~135_combout\,
	datab => \inst11|process_0~146_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|process_0~161_combout\,
	combout => \inst11|v_character_address~168_combout\);

-- Location: LCCOMB_X12_Y22_N8
\inst11|v_character_address~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~166_combout\ = (\inst11|process_0~139_combout\ & (\inst11|process_0~140_combout\ & (!\inst11|process_0~205_combout\ & \inst11|process_0~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~140_combout\,
	datac => \inst11|process_0~205_combout\,
	datad => \inst11|process_0~119_combout\,
	combout => \inst11|v_character_address~166_combout\);

-- Location: LCCOMB_X12_Y22_N10
\inst11|v_character_address~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~167_combout\ = ((\inst11|process_0~140_combout\ & (\inst11|process_0~119_combout\ & \inst11|process_0~147_combout\))) # (!\inst11|process_0~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~140_combout\,
	datac => \inst11|process_0~119_combout\,
	datad => \inst11|process_0~147_combout\,
	combout => \inst11|v_character_address~167_combout\);

-- Location: LCCOMB_X12_Y22_N22
\inst11|v_character_address~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~169_combout\ = (\inst11|v_character_address~166_combout\) # ((\inst11|v_character_address~167_combout\ & ((\inst11|process_0~150_combout\) # (\inst11|v_character_address~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~150_combout\,
	datab => \inst11|v_character_address~168_combout\,
	datac => \inst11|v_character_address~166_combout\,
	datad => \inst11|v_character_address~167_combout\,
	combout => \inst11|v_character_address~169_combout\);

-- Location: LCCOMB_X14_Y22_N22
\inst11|v_character_address~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~170_combout\ = (\inst11|process_0~201_combout\) # ((!\inst11|process_0~191_combout\ & (\inst11|process_0~139_combout\ & !\inst11|process_0~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~191_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~141_combout\,
	datad => \inst11|process_0~201_combout\,
	combout => \inst11|v_character_address~170_combout\);

-- Location: LCCOMB_X12_Y22_N28
\inst11|v_character_address~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~171_combout\ = (\inst11|v_character_address~169_combout\) # ((\inst11|v_character_address~170_combout\) # ((!\inst11|process_0~144_combout\ & \inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~144_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|v_character_address~169_combout\,
	datad => \inst11|v_character_address~170_combout\,
	combout => \inst11|v_character_address~171_combout\);

-- Location: LCCOMB_X12_Y22_N16
\inst11|v_character_address~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~180_combout\ = (\inst11|v_character_address~171_combout\) # ((\inst11|v_character_address~173_combout\ & ((\inst11|v_character_address~179_combout\) # (!\inst11|v_character_address~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~173_combout\,
	datab => \inst11|v_character_address~53_combout\,
	datac => \inst11|v_character_address~179_combout\,
	datad => \inst11|v_character_address~171_combout\,
	combout => \inst11|v_character_address~180_combout\);

-- Location: LCCOMB_X12_Y22_N30
\inst11|v_character_address~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~181_combout\ = (\inst11|process_0~176_combout\) # (((\inst11|v_character_address~165_combout\ & \inst11|v_character_address~180_combout\)) # (!\inst11|v_character_address~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~176_combout\,
	datab => \inst11|v_character_address~165_combout\,
	datac => \inst11|v_character_address~78_combout\,
	datad => \inst11|v_character_address~180_combout\,
	combout => \inst11|v_character_address~181_combout\);

-- Location: LCCOMB_X11_Y20_N14
\inst11|v_character_address~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~182_combout\ = (!\inst11|process_0~208_combout\ & (\inst11|v_character_address~36_combout\ & (\inst11|v_character_address~75_combout\ & !\inst11|process_0~198_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~208_combout\,
	datab => \inst11|v_character_address~36_combout\,
	datac => \inst11|v_character_address~75_combout\,
	datad => \inst11|process_0~198_combout\,
	combout => \inst11|v_character_address~182_combout\);

-- Location: LCCOMB_X10_Y21_N14
\inst11|v_character_address~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~183_combout\ = (\inst11|v_character_address~32_combout\ & (!\inst11|process_0~210_combout\ & (!\inst11|process_0~133_combout\ & \inst11|v_character_address~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~32_combout\,
	datab => \inst11|process_0~210_combout\,
	datac => \inst11|process_0~133_combout\,
	datad => \inst11|v_character_address~182_combout\,
	combout => \inst11|v_character_address~183_combout\);

-- Location: LCCOMB_X11_Y21_N14
\inst11|v_character_address~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~184_combout\ = ((\inst11|v_character_address~164_combout\) # ((\inst11|v_character_address~181_combout\ & \inst11|v_character_address~183_combout\))) # (!\inst11|v_character_address~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~34_combout\,
	datab => \inst11|v_character_address~164_combout\,
	datac => \inst11|v_character_address~181_combout\,
	datad => \inst11|v_character_address~183_combout\,
	combout => \inst11|v_character_address~184_combout\);

-- Location: LCCOMB_X12_Y21_N0
\inst11|v_character_address~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~187_combout\ = (\inst11|v_character_address~186_combout\ & (!\inst11|process_0~164_combout\ & (!\inst11|process_0~215_combout\ & \inst11|v_character_address~184_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~186_combout\,
	datab => \inst11|process_0~164_combout\,
	datac => \inst11|process_0~215_combout\,
	datad => \inst11|v_character_address~184_combout\,
	combout => \inst11|v_character_address~187_combout\);

-- Location: LCCOMB_X12_Y21_N26
\inst11|v_character_address[3]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[3]~191_combout\ = (\inst11|v_character_address[3]~162_combout\) # ((\inst11|v_character_address[3]~163_combout\ & ((\inst11|v_character_address~190_combout\) # (\inst11|v_character_address~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[3]~162_combout\,
	datab => \inst11|v_character_address~190_combout\,
	datac => \inst11|v_character_address[3]~163_combout\,
	datad => \inst11|v_character_address~187_combout\,
	combout => \inst11|v_character_address[3]~191_combout\);

-- Location: LCCOMB_X12_Y16_N28
\inst11|v_character_address[4]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~194_combout\ = (!\inst11|v_character_address~155_combout\ & (\inst11|process_0~115_combout\ & (\inst11|Equal1~0_combout\ & \inst11|v_font_col[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~155_combout\,
	datab => \inst11|process_0~115_combout\,
	datac => \inst11|Equal1~0_combout\,
	datad => \inst11|v_font_col[2]~4_combout\,
	combout => \inst11|v_character_address[4]~194_combout\);

-- Location: LCCOMB_X17_Y20_N18
\inst11|v_character_address[4]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~207_combout\ = (\inst11|process_0~101_combout\ & ((\inst11|process_0~110_combout\) # ((\inst11|process_0~109_combout\ & !\inst11|process_0~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~110_combout\,
	datab => \inst11|process_0~109_combout\,
	datac => \inst11|process_0~107_combout\,
	datad => \inst11|process_0~101_combout\,
	combout => \inst11|v_character_address[4]~207_combout\);

-- Location: LCCOMB_X17_Y20_N24
\inst11|v_character_address[4]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~208_combout\ = (!\inst11|process_0~112_combout\ & ((\inst11|process_0~114_combout\) # ((\inst11|v_character_address[4]~124_combout\ & \inst11|v_character_address[4]~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~112_combout\,
	datab => \inst11|process_0~114_combout\,
	datac => \inst11|v_character_address[4]~124_combout\,
	datad => \inst11|v_character_address[4]~207_combout\,
	combout => \inst11|v_character_address[4]~208_combout\);

-- Location: LCCOMB_X14_Y16_N20
\inst11|v_character_address[4]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~209_combout\ = (\inst11|v_character_address[4]~208_combout\ & (\inst11|Equal2~0_combout\ & (!\inst11|v_character_address[2]~123_combout\ & \inst11|v_font_col[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[4]~208_combout\,
	datab => \inst11|Equal2~0_combout\,
	datac => \inst11|v_character_address[2]~123_combout\,
	datad => \inst11|v_font_col[2]~1_combout\,
	combout => \inst11|v_character_address[4]~209_combout\);

-- Location: LCCOMB_X12_Y16_N10
\inst11|v_character_address[4]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~210_combout\ = (\inst11|v_character_address[4]~209_combout\) # ((\inst11|v_character_address[4]~194_combout\ & ((\inst11|process_0~192_combout\) # (\inst11|process_0~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~192_combout\,
	datab => \inst11|v_character_address[4]~194_combout\,
	datac => \inst11|process_0~193_combout\,
	datad => \inst11|v_character_address[4]~209_combout\,
	combout => \inst11|v_character_address[4]~210_combout\);

-- Location: LCCOMB_X11_Y17_N12
\inst11|v_character_address[4]~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~245_combout\ = (\inst11|process_0~188_combout\ & (\inst11|process_0~81_combout\ & ((\inst11|process_0~90_combout\) # (!\inst11|process_0~186_combout\)))) # (!\inst11|process_0~188_combout\ & 
-- (((\inst11|process_0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~186_combout\,
	datab => \inst11|process_0~81_combout\,
	datac => \inst11|process_0~188_combout\,
	datad => \inst11|process_0~90_combout\,
	combout => \inst11|v_character_address[4]~245_combout\);

-- Location: LCCOMB_X11_Y17_N28
\inst11|v_character_address[4]~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~211_combout\ = (\inst11|v_character_address[1]~23_combout\ & ((\inst11|v_character_address[4]~245_combout\) # ((\inst11|process_0~187_combout\ & \inst11|process_0~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~23_combout\,
	datab => \inst11|process_0~187_combout\,
	datac => \inst11|process_0~188_combout\,
	datad => \inst11|v_character_address[4]~245_combout\,
	combout => \inst11|v_character_address[4]~211_combout\);

-- Location: LCCOMB_X17_Y21_N4
\inst11|process_0~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~178_combout\ = (\inst11|process_0~78_combout\ & (\inst11|process_0~73_combout\ & !\inst|SYNC|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~78_combout\,
	datac => \inst11|process_0~73_combout\,
	datad => \inst|SYNC|pixel_column\(6),
	combout => \inst11|process_0~178_combout\);

-- Location: LCCOMB_X17_Y21_N14
\inst11|v_character_address[5]~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~246_combout\ = (!\inst9|STATE_OUT\(1) & (\inst9|STATE_OUT\(2) & (!\inst9|STATE_OUT\(0) & !\inst11|v_character_address~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|STATE_OUT\(1),
	datab => \inst9|STATE_OUT\(2),
	datac => \inst9|STATE_OUT\(0),
	datad => \inst11|v_character_address~12_combout\,
	combout => \inst11|v_character_address[5]~246_combout\);

-- Location: LCCOMB_X17_Y21_N18
\inst11|v_character_address[4]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~212_combout\ = (!\inst11|process_0~171_combout\ & (!\inst11|process_0~178_combout\ & (\inst11|v_character_address[5]~246_combout\ & !\inst11|process_0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~171_combout\,
	datab => \inst11|process_0~178_combout\,
	datac => \inst11|v_character_address[5]~246_combout\,
	datad => \inst11|process_0~79_combout\,
	combout => \inst11|v_character_address[4]~212_combout\);

-- Location: LCCOMB_X16_Y21_N30
\inst11|v_character_address[4]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~213_combout\ = (\inst11|v_character_address[1]~107_combout\) # ((\inst11|v_character_address[4]~212_combout\ & ((\inst11|v_character_address[1]~110_combout\) # (\inst11|process_0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[1]~110_combout\,
	datab => \inst11|v_character_address[4]~212_combout\,
	datac => \inst11|v_character_address[1]~107_combout\,
	datad => \inst11|process_0~77_combout\,
	combout => \inst11|v_character_address[4]~213_combout\);

-- Location: LCCOMB_X12_Y16_N26
\inst11|v_character_address[4]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~195_combout\ = (\inst11|v_character_address[4]~194_combout\ & (((\inst11|process_0~147_combout\ & \inst11|v_character_address~129_combout\)) # (!\inst11|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~147_combout\,
	datab => \inst11|v_character_address[4]~194_combout\,
	datac => \inst11|v_character_address~129_combout\,
	datad => \inst11|process_0~116_combout\,
	combout => \inst11|v_character_address[4]~195_combout\);

-- Location: LCCOMB_X11_Y22_N14
\inst11|v_character_address~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~196_combout\ = (\inst11|process_0~210_combout\) # (((\inst11|process_0~145_combout\ & \inst11|v_character_address~78_combout\)) # (!\inst11|v_character_address~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~145_combout\,
	datab => \inst11|v_character_address~78_combout\,
	datac => \inst11|process_0~210_combout\,
	datad => \inst11|v_character_address~75_combout\,
	combout => \inst11|v_character_address~196_combout\);

-- Location: LCCOMB_X12_Y22_N12
\inst11|v_character_address~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~203_combout\ = ((\inst11|process_0~144_combout\ & (\inst11|process_0~119_combout\ & \inst11|process_0~218_combout\))) # (!\inst11|process_0~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~144_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~119_combout\,
	datad => \inst11|process_0~218_combout\,
	combout => \inst11|v_character_address~203_combout\);

-- Location: LCCOMB_X12_Y22_N14
\inst11|v_character_address~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~204_combout\ = (\inst11|v_character_address~89_combout\ & (\inst11|v_character_address~165_combout\ & (\inst11|v_character_address~78_combout\ & \inst11|v_character_address~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~89_combout\,
	datab => \inst11|v_character_address~165_combout\,
	datac => \inst11|v_character_address~78_combout\,
	datad => \inst11|v_character_address~203_combout\,
	combout => \inst11|v_character_address~204_combout\);

-- Location: LCCOMB_X16_Y21_N4
\inst11|v_character_address~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~197_combout\ = (\inst11|process_0~157_combout\) # ((!\inst11|process_0~156_combout\ & (!\inst11|process_0~213_combout\ & !\inst11|v_character_address~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~156_combout\,
	datab => \inst11|process_0~213_combout\,
	datac => \inst11|v_character_address~140_combout\,
	datad => \inst11|process_0~157_combout\,
	combout => \inst11|v_character_address~197_combout\);

-- Location: LCCOMB_X16_Y21_N18
\inst11|v_character_address~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~198_combout\ = ((\inst11|process_0~128_combout\ & (\inst11|process_0~132_combout\ & \inst11|process_0~211_combout\))) # (!\inst11|process_0~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~128_combout\,
	datab => \inst11|process_0~132_combout\,
	datac => \inst11|process_0~211_combout\,
	datad => \inst11|process_0~139_combout\,
	combout => \inst11|v_character_address~198_combout\);

-- Location: LCCOMB_X16_Y21_N0
\inst11|v_character_address~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~199_combout\ = (\inst11|process_0~155_combout\) # ((\inst11|v_character_address~197_combout\ & \inst11|v_character_address~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~155_combout\,
	datac => \inst11|v_character_address~197_combout\,
	datad => \inst11|v_character_address~198_combout\,
	combout => \inst11|v_character_address~199_combout\);

-- Location: LCCOMB_X11_Y22_N4
\inst11|v_character_address~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~200_combout\ = (!\inst11|v_character_address~143_combout\ & (\inst11|v_character_address~86_combout\ & (\inst11|v_character_address~199_combout\ & !\inst11|process_0~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~143_combout\,
	datab => \inst11|v_character_address~86_combout\,
	datac => \inst11|v_character_address~199_combout\,
	datad => \inst11|process_0~168_combout\,
	combout => \inst11|v_character_address~200_combout\);

-- Location: LCCOMB_X11_Y22_N22
\inst11|v_character_address~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~201_combout\ = (\inst11|process_0~214_combout\) # ((\inst11|v_character_address~200_combout\) # ((!\inst11|process_0~168_combout\ & \inst11|process_0~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~214_combout\,
	datab => \inst11|process_0~168_combout\,
	datac => \inst11|v_character_address~200_combout\,
	datad => \inst11|process_0~148_combout\,
	combout => \inst11|v_character_address~201_combout\);

-- Location: LCCOMB_X11_Y22_N24
\inst11|v_character_address~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~202_combout\ = (\inst11|process_0~204_combout\) # ((\inst11|v_character_address~201_combout\ & (!\inst11|process_0~217_combout\ & !\inst11|process_0~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~201_combout\,
	datab => \inst11|process_0~217_combout\,
	datac => \inst11|process_0~204_combout\,
	datad => \inst11|process_0~150_combout\,
	combout => \inst11|v_character_address~202_combout\);

-- Location: LCCOMB_X11_Y22_N2
\inst11|v_character_address~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~205_combout\ = (\inst11|v_character_address~133_combout\ & ((\inst11|v_character_address~196_combout\) # ((\inst11|v_character_address~204_combout\ & \inst11|v_character_address~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~133_combout\,
	datab => \inst11|v_character_address~196_combout\,
	datac => \inst11|v_character_address~204_combout\,
	datad => \inst11|v_character_address~202_combout\,
	combout => \inst11|v_character_address~205_combout\);

-- Location: LCCOMB_X12_Y16_N24
\inst11|v_character_address[4]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~206_combout\ = (\inst11|v_character_address[4]~195_combout\ & (\inst11|v_character_address[4]~193_combout\ & ((\inst11|process_0~199_combout\) # (\inst11|v_character_address~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[4]~195_combout\,
	datab => \inst11|process_0~199_combout\,
	datac => \inst11|v_character_address[4]~193_combout\,
	datad => \inst11|v_character_address~205_combout\,
	combout => \inst11|v_character_address[4]~206_combout\);

-- Location: LCCOMB_X12_Y16_N12
\inst11|v_character_address[4]~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[4]~214_combout\ = (\inst11|v_character_address[4]~210_combout\) # ((\inst11|v_character_address[4]~211_combout\) # ((\inst11|v_character_address[4]~213_combout\) # (\inst11|v_character_address[4]~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[4]~210_combout\,
	datab => \inst11|v_character_address[4]~211_combout\,
	datac => \inst11|v_character_address[4]~213_combout\,
	datad => \inst11|v_character_address[4]~206_combout\,
	combout => \inst11|v_character_address[4]~214_combout\);

-- Location: LCCOMB_X12_Y16_N22
\inst11|v_character_address[5]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~222_combout\ = (\inst11|process_0~87_combout\ & (\inst11|v_font_col[2]~4_combout\ & (\inst11|Equal1~0_combout\ & !\inst11|v_character_address~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~87_combout\,
	datab => \inst11|v_font_col[2]~4_combout\,
	datac => \inst11|Equal1~0_combout\,
	datad => \inst11|v_character_address~155_combout\,
	combout => \inst11|v_character_address[5]~222_combout\);

-- Location: LCCOMB_X12_Y21_N6
\inst11|v_character_address~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~237_combout\ = (!\inst11|process_0~206_combout\ & (\inst11|v_character_address~185_combout\ & !\inst11|v_character_address~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~206_combout\,
	datac => \inst11|v_character_address~185_combout\,
	datad => \inst11|v_character_address~189_combout\,
	combout => \inst11|v_character_address~237_combout\);

-- Location: LCCOMB_X14_Y21_N2
\inst11|v_character_address~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~239_combout\ = ((\inst11|process_0~164_combout\ & \inst11|v_character_address~237_combout\)) # (!\inst11|process_0~115_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~164_combout\,
	datac => \inst11|v_character_address~237_combout\,
	datad => \inst11|process_0~115_combout\,
	combout => \inst11|v_character_address~239_combout\);

-- Location: LCCOMB_X14_Y21_N20
\inst11|v_character_address~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~223_combout\ = (\inst11|v_character_address~34_combout\ & ((\inst11|process_0~194_combout\) # (!\inst11|process_0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~34_combout\,
	datac => \inst11|process_0~194_combout\,
	datad => \inst11|process_0~116_combout\,
	combout => \inst11|v_character_address~223_combout\);

-- Location: LCCOMB_X14_Y21_N24
\inst11|v_character_address~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~224_combout\ = (\inst11|process_0~121_combout\) # ((!\inst11|process_0~122_combout\ & (\inst11|process_0~116_combout\ & !\inst11|process_0~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~122_combout\,
	datab => \inst11|process_0~116_combout\,
	datac => \inst11|process_0~121_combout\,
	datad => \inst11|process_0~208_combout\,
	combout => \inst11|v_character_address~224_combout\);

-- Location: LCCOMB_X14_Y21_N10
\inst11|v_character_address~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~225_combout\ = (\inst11|v_character_address~224_combout\) # ((\inst11|process_0~133_combout\ & (!\inst11|process_0~208_combout\ & \inst11|v_character_address~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~133_combout\,
	datab => \inst11|v_character_address~224_combout\,
	datac => \inst11|process_0~208_combout\,
	datad => \inst11|v_character_address~150_combout\,
	combout => \inst11|v_character_address~225_combout\);

-- Location: LCCOMB_X11_Y21_N10
\inst11|v_character_address~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~235_combout\ = (!\inst11|process_0~145_combout\ & (\inst11|v_character_address~182_combout\ & ((\inst11|v_character_address~134_combout\) # (!\inst11|process_0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~116_combout\,
	datab => \inst11|v_character_address~134_combout\,
	datac => \inst11|process_0~145_combout\,
	datad => \inst11|v_character_address~182_combout\,
	combout => \inst11|v_character_address~235_combout\);

-- Location: LCCOMB_X11_Y22_N20
\inst11|v_character_address~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~227_combout\ = (!\inst11|process_0~168_combout\ & (\inst11|v_character_address~91_combout\ & !\inst11|process_0~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|process_0~168_combout\,
	datac => \inst11|v_character_address~91_combout\,
	datad => \inst11|process_0~214_combout\,
	combout => \inst11|v_character_address~227_combout\);

-- Location: LCCOMB_X12_Y21_N4
\inst11|v_character_address~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~228_combout\ = (\inst11|process_0~153_combout\) # ((\inst11|process_0~154_combout\ & ((\inst11|process_0~122_combout\) # (!\inst11|process_0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~122_combout\,
	datab => \inst11|process_0~139_combout\,
	datac => \inst11|process_0~153_combout\,
	datad => \inst11|process_0~154_combout\,
	combout => \inst11|v_character_address~228_combout\);

-- Location: LCCOMB_X11_Y21_N30
\inst11|v_character_address~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~230_combout\ = (!\inst11|process_0~158_combout\ & (((\inst11|v_character_address~137_combout\ & \inst11|process_0~211_combout\)) # (!\inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~158_combout\,
	datab => \inst11|v_character_address~137_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|process_0~211_combout\,
	combout => \inst11|v_character_address~230_combout\);

-- Location: LCCOMB_X11_Y21_N24
\inst11|v_character_address~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~229_combout\ = (\inst11|process_0~156_combout\) # ((\inst11|v_character_address~83_combout\ & \inst11|v_character_address~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|v_character_address~83_combout\,
	datac => \inst11|process_0~156_combout\,
	datad => \inst11|v_character_address~175_combout\,
	combout => \inst11|v_character_address~229_combout\);

-- Location: LCCOMB_X11_Y21_N8
\inst11|v_character_address~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~231_combout\ = (\inst11|v_character_address~228_combout\) # ((!\inst11|process_0~212_combout\ & (\inst11|v_character_address~230_combout\ & \inst11|v_character_address~229_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~228_combout\,
	datab => \inst11|process_0~212_combout\,
	datac => \inst11|v_character_address~230_combout\,
	datad => \inst11|v_character_address~229_combout\,
	combout => \inst11|v_character_address~231_combout\);

-- Location: LCCOMB_X11_Y22_N6
\inst11|v_character_address~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~232_combout\ = (!\inst11|v_character_address~143_combout\ & (!\inst11|process_0~148_combout\ & (\inst11|v_character_address~227_combout\ & \inst11|v_character_address~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~143_combout\,
	datab => \inst11|process_0~148_combout\,
	datac => \inst11|v_character_address~227_combout\,
	datad => \inst11|v_character_address~231_combout\,
	combout => \inst11|v_character_address~232_combout\);

-- Location: LCCOMB_X12_Y22_N24
\inst11|v_character_address~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~226_combout\ = (\inst11|v_character_address~203_combout\ & (((\inst11|process_0~140_combout\ & \inst11|process_0~191_combout\)) # (!\inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~139_combout\,
	datab => \inst11|process_0~140_combout\,
	datac => \inst11|process_0~191_combout\,
	datad => \inst11|v_character_address~203_combout\,
	combout => \inst11|v_character_address~226_combout\);

-- Location: LCCOMB_X12_Y22_N2
\inst11|v_character_address~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~233_combout\ = (\inst11|process_0~149_combout\ & ((\inst11|v_character_address~227_combout\) # ((!\inst11|process_0~205_combout\ & \inst11|process_0~139_combout\)))) # (!\inst11|process_0~149_combout\ & 
-- (!\inst11|process_0~205_combout\ & (\inst11|process_0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~149_combout\,
	datab => \inst11|process_0~205_combout\,
	datac => \inst11|process_0~139_combout\,
	datad => \inst11|v_character_address~227_combout\,
	combout => \inst11|v_character_address~233_combout\);

-- Location: LCCOMB_X14_Y22_N0
\inst11|v_character_address~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~234_combout\ = ((\inst11|v_character_address~226_combout\ & ((\inst11|v_character_address~232_combout\) # (\inst11|v_character_address~233_combout\)))) # (!\inst11|v_character_address~165_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~165_combout\,
	datab => \inst11|v_character_address~232_combout\,
	datac => \inst11|v_character_address~226_combout\,
	datad => \inst11|v_character_address~233_combout\,
	combout => \inst11|v_character_address~234_combout\);

-- Location: LCCOMB_X14_Y21_N28
\inst11|v_character_address~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~236_combout\ = (\inst11|v_character_address~225_combout\) # ((!\inst11|process_0~196_combout\ & (\inst11|v_character_address~235_combout\ & \inst11|v_character_address~234_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~225_combout\,
	datab => \inst11|process_0~196_combout\,
	datac => \inst11|v_character_address~235_combout\,
	datad => \inst11|v_character_address~234_combout\,
	combout => \inst11|v_character_address~236_combout\);

-- Location: LCCOMB_X14_Y21_N14
\inst11|v_character_address~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address~238_combout\ = (\inst11|v_character_address~223_combout\ & (!\inst11|process_0~215_combout\ & (\inst11|v_character_address~237_combout\ & \inst11|v_character_address~236_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~223_combout\,
	datab => \inst11|process_0~215_combout\,
	datac => \inst11|v_character_address~237_combout\,
	datad => \inst11|v_character_address~236_combout\,
	combout => \inst11|v_character_address~238_combout\);

-- Location: LCCOMB_X17_Y21_N16
\inst11|v_character_address[5]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~215_combout\ = (\inst11|v_character_address[5]~246_combout\ & (\inst11|v_character_address[5]~120_combout\ & ((!\inst11|process_0~216_combout\) # (!\inst11|process_0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~91_combout\,
	datab => \inst11|v_character_address[5]~246_combout\,
	datac => \inst11|v_character_address[5]~120_combout\,
	datad => \inst11|process_0~216_combout\,
	combout => \inst11|v_character_address[5]~215_combout\);

-- Location: LCCOMB_X15_Y16_N10
\inst11|v_character_address[5]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~217_combout\ = (\inst11|Equal2~0_combout\ & (!\inst11|v_character_address[2]~123_combout\ & \inst11|v_font_col[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal2~0_combout\,
	datab => \inst11|v_character_address[2]~123_combout\,
	datad => \inst11|v_font_col[2]~1_combout\,
	combout => \inst11|v_character_address[5]~217_combout\);

-- Location: LCCOMB_X17_Y19_N12
\inst11|v_character_address[5]~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~216_combout\ = (\inst11|v_font_row[2]~2_combout\ & (((\inst11|v_character_address~119_combout\ & \inst11|v_character_address[5]~24_combout\)) # (!\inst11|v_character_address[1]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address~119_combout\,
	datab => \inst11|v_character_address[1]~23_combout\,
	datac => \inst11|v_character_address[5]~24_combout\,
	datad => \inst11|v_font_row[2]~2_combout\,
	combout => \inst11|v_character_address[5]~216_combout\);

-- Location: LCCOMB_X16_Y18_N12
\inst11|process_0~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~181_combout\ = (\inst|SYNC|pixel_row\(2) & (\inst|SYNC|pixel_row\(3) & ((\inst|SYNC|pixel_row\(1)) # (\inst|SYNC|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(1),
	datab => \inst|SYNC|pixel_row\(2),
	datac => \inst|SYNC|pixel_row\(0),
	datad => \inst|SYNC|pixel_row\(3),
	combout => \inst11|process_0~181_combout\);

-- Location: LCCOMB_X16_Y16_N30
\inst11|process_0~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~182_combout\ = (\inst11|LessThan127~1_combout\) # (((\inst11|process_0~181_combout\) # (!\inst11|LessThan125~0_combout\)) # (!\inst|SYNC|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan127~1_combout\,
	datab => \inst|SYNC|pixel_column\(9),
	datac => \inst11|LessThan125~0_combout\,
	datad => \inst11|process_0~181_combout\,
	combout => \inst11|process_0~182_combout\);

-- Location: LCCOMB_X16_Y19_N4
\inst11|v_character_address[5]~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~218_combout\ = (((\inst11|process_0~180_combout\) # (\inst11|process_0~182_combout\)) # (!\inst|SYNC|pixel_row\(5))) # (!\inst|SYNC|pixel_row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|SYNC|pixel_row\(5),
	datac => \inst11|process_0~180_combout\,
	datad => \inst11|process_0~182_combout\,
	combout => \inst11|v_character_address[5]~218_combout\);

-- Location: LCCOMB_X16_Y19_N24
\inst11|v_character_address[5]~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~219_combout\ = (!\inst11|process_0~109_combout\ & (\inst11|v_character_address[1]~100_combout\ & \inst11|v_character_address[4]~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|process_0~109_combout\,
	datab => \inst11|v_character_address[1]~100_combout\,
	datad => \inst11|v_character_address[4]~124_combout\,
	combout => \inst11|v_character_address[5]~219_combout\);

-- Location: LCCOMB_X14_Y19_N26
\inst11|process_0~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|process_0~179_combout\ = (\inst11|LessThan128~18_combout\) # ((!\inst|SYNC|pixel_row\(1) & (!\inst|SYNC|pixel_row\(3) & !\inst|SYNC|pixel_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(1),
	datab => \inst|SYNC|pixel_row\(3),
	datac => \inst|SYNC|pixel_row\(2),
	datad => \inst11|LessThan128~18_combout\,
	combout => \inst11|process_0~179_combout\);

-- Location: LCCOMB_X14_Y19_N28
\inst11|v_character_address[5]~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~220_combout\ = ((\inst11|v_character_address[5]~219_combout\ & ((\inst11|v_character_address[5]~218_combout\) # (\inst11|process_0~179_combout\)))) # (!\inst11|v_font_col[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[5]~218_combout\,
	datab => \inst11|v_character_address[5]~219_combout\,
	datac => \inst11|process_0~179_combout\,
	datad => \inst11|v_font_col[2]~5_combout\,
	combout => \inst11|v_character_address[5]~220_combout\);

-- Location: LCCOMB_X14_Y19_N24
\inst11|v_character_address[5]~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~221_combout\ = (\inst11|v_character_address[5]~215_combout\) # ((\inst11|v_character_address[5]~216_combout\) # ((\inst11|v_character_address[5]~217_combout\ & \inst11|v_character_address[5]~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[5]~215_combout\,
	datab => \inst11|v_character_address[5]~217_combout\,
	datac => \inst11|v_character_address[5]~216_combout\,
	datad => \inst11|v_character_address[5]~220_combout\,
	combout => \inst11|v_character_address[5]~221_combout\);

-- Location: LCCOMB_X14_Y19_N30
\inst11|v_character_address[5]~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_character_address[5]~240_combout\ = (\inst11|v_character_address[5]~221_combout\) # ((\inst11|v_character_address[5]~222_combout\ & ((\inst11|v_character_address~239_combout\) # (\inst11|v_character_address~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_character_address[5]~222_combout\,
	datab => \inst11|v_character_address~239_combout\,
	datac => \inst11|v_character_address~238_combout\,
	datad => \inst11|v_character_address[5]~221_combout\,
	combout => \inst11|v_character_address[5]~240_combout\);

-- Location: M9K_X13_Y18_N0
\inst4|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "test.mif",
	init_file_layout => "port_a",
	logical_ram_name => "char_rom:inst4|altsyncram:altsyncram_component|altsyncram_8n91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X15_Y18_N2
\inst11|v_font_col[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[1]~16_combout\ = (\inst11|v_font_col[2]~13_combout\ & (((\inst11|v_font_col[2]~15_combout\)))) # (!\inst11|v_font_col[2]~13_combout\ & ((\inst11|v_font_col[2]~15_combout\ & ((\inst|SYNC|pixel_column\(3)))) # 
-- (!\inst11|v_font_col[2]~15_combout\ & (\inst|SYNC|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~13_combout\,
	datab => \inst|SYNC|pixel_column\(2),
	datac => \inst11|v_font_col[2]~15_combout\,
	datad => \inst|SYNC|pixel_column\(3),
	combout => \inst11|v_font_col[1]~16_combout\);

-- Location: LCCOMB_X15_Y18_N22
\inst11|v_font_col[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[1]~17_combout\ = (\inst11|v_font_col[2]~13_combout\ & ((\inst11|v_font_col[1]~16_combout\ & (\inst|SYNC|pixel_column\(4))) # (!\inst11|v_font_col[1]~16_combout\ & ((\inst|SYNC|pixel_column\(8)))))) # (!\inst11|v_font_col[2]~13_combout\ 
-- & (((\inst11|v_font_col[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(8),
	datac => \inst11|v_font_col[2]~13_combout\,
	datad => \inst11|v_font_col[1]~16_combout\,
	combout => \inst11|v_font_col[1]~17_combout\);

-- Location: LCCOMB_X17_Y18_N14
\inst11|v_font_col[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col\(1) = (GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & ((\inst11|v_font_col[1]~17_combout\))) # (!GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & (\inst11|v_font_col\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|v_font_col\(1),
	datac => \inst11|v_font_row[2]~23clkctrl_outclk\,
	datad => \inst11|v_font_col[1]~17_combout\,
	combout => \inst11|v_font_col\(1));

-- Location: LCCOMB_X15_Y18_N8
\inst11|v_font_col[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[0]~18_combout\ = (\inst11|v_font_col[2]~13_combout\ & (((\inst11|v_font_col[2]~15_combout\) # (\inst|SYNC|pixel_column\(7))))) # (!\inst11|v_font_col[2]~13_combout\ & (\inst|SYNC|pixel_column\(1) & (!\inst11|v_font_col[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~13_combout\,
	datab => \inst|SYNC|pixel_column\(1),
	datac => \inst11|v_font_col[2]~15_combout\,
	datad => \inst|SYNC|pixel_column\(7),
	combout => \inst11|v_font_col[0]~18_combout\);

-- Location: LCCOMB_X15_Y18_N4
\inst11|v_font_col[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col[0]~19_combout\ = (\inst11|v_font_col[2]~15_combout\ & ((\inst11|v_font_col[0]~18_combout\ & ((\inst|SYNC|pixel_column\(3)))) # (!\inst11|v_font_col[0]~18_combout\ & (\inst|SYNC|pixel_column\(2))))) # (!\inst11|v_font_col[2]~15_combout\ 
-- & (((\inst11|v_font_col[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|v_font_col[2]~15_combout\,
	datab => \inst|SYNC|pixel_column\(2),
	datac => \inst11|v_font_col[0]~18_combout\,
	datad => \inst|SYNC|pixel_column\(3),
	combout => \inst11|v_font_col[0]~19_combout\);

-- Location: LCCOMB_X15_Y18_N16
\inst11|v_font_col[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11|v_font_col\(0) = (GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & ((\inst11|v_font_col[0]~19_combout\))) # (!GLOBAL(\inst11|v_font_row[2]~23clkctrl_outclk\) & (\inst11|v_font_col\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|v_font_col\(0),
	datac => \inst11|v_font_row[2]~23clkctrl_outclk\,
	datad => \inst11|v_font_col[0]~19_combout\,
	combout => \inst11|v_font_col\(0));

-- Location: LCCOMB_X17_Y18_N12
\inst4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst11|v_font_col\(1) & (((\inst11|v_font_col\(0))))) # (!\inst11|v_font_col\(1) & ((\inst11|v_font_col\(0) & (\inst4|altsyncram_component|auto_generated|q_a\(2))) # (!\inst11|v_font_col\(0) & 
-- ((\inst4|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst4|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst11|v_font_col\(1),
	datad => \inst11|v_font_col\(0),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y18_N22
\inst4|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~1_combout\ = (\inst11|v_font_col\(1) & ((\inst4|Mux0~0_combout\ & (!\inst4|altsyncram_component|auto_generated|q_a\(0))) # (!\inst4|Mux0~0_combout\ & ((!\inst4|altsyncram_component|auto_generated|q_a\(1)))))) # (!\inst11|v_font_col\(1) & 
-- (((!\inst4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst4|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst11|v_font_col\(1),
	datad => \inst4|Mux0~0_combout\,
	combout => \inst4|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y18_N24
\inst4|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~2_combout\ = (\inst11|v_font_col\(1) & (((\inst11|v_font_col\(0))))) # (!\inst11|v_font_col\(1) & ((\inst11|v_font_col\(0) & ((!\inst4|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst11|v_font_col\(0) & 
-- (!\inst4|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst4|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst11|v_font_col\(1),
	datad => \inst11|v_font_col\(0),
	combout => \inst4|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y18_N2
\inst4|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~3_combout\ = (\inst11|v_font_col\(1) & ((\inst4|Mux0~2_combout\ & (!\inst4|altsyncram_component|auto_generated|q_a\(4))) # (!\inst4|Mux0~2_combout\ & ((!\inst4|altsyncram_component|auto_generated|q_a\(5)))))) # (!\inst11|v_font_col\(1) & 
-- (((\inst4|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst4|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst11|v_font_col\(1),
	datad => \inst4|Mux0~2_combout\,
	combout => \inst4|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y18_N16
\inst|red_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_data[0]~0_combout\ = (\inst11|v_font_col\(2) & (\inst4|Mux0~1_combout\)) # (!\inst11|v_font_col\(2) & ((\inst4|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|v_font_col\(2),
	datac => \inst4|Mux0~1_combout\,
	datad => \inst4|Mux0~3_combout\,
	combout => \inst|red_data[0]~0_combout\);

-- Location: LCCOMB_X17_Y18_N0
\inst|blue_data~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|blue_data~6_combout\ = (\inst|blue_data~5_combout\ & (!\inst|RGB_SWITCH~4_combout\)) # (!\inst|blue_data~5_combout\ & ((\inst|red_data[0]~0_combout\ & ((\inst|blue_data~4_combout\))) # (!\inst|red_data[0]~0_combout\ & 
-- (!\inst|RGB_SWITCH~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RGB_SWITCH~4_combout\,
	datab => \inst|blue_data~5_combout\,
	datac => \inst|blue_data~4_combout\,
	datad => \inst|red_data[0]~0_combout\,
	combout => \inst|blue_data~6_combout\);

-- Location: FF_X17_Y18_N1
\inst|blue_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|blue_data~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|blue_data\(0));

-- Location: LCCOMB_X29_Y19_N12
\inst|SYNC|video_on_v[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|video_on_v[0]~0_combout\ = !\inst|SYNC|LessThan7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|LessThan7~1_combout\,
	combout => \inst|SYNC|video_on_v[0]~0_combout\);

-- Location: FF_X29_Y19_N13
\inst|SYNC|video_on_v[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|video_on_v[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_v\(0));

-- Location: LCCOMB_X29_Y19_N26
\inst|SYNC|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|blue_out~0_combout\ = (\inst|SYNC|video_on_h\(0) & (\inst|blue_data\(0) & \inst|SYNC|video_on_v\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|video_on_h\(0),
	datac => \inst|blue_data\(0),
	datad => \inst|SYNC|video_on_v\(0),
	combout => \inst|SYNC|blue_out~0_combout\);

-- Location: FF_X40_Y21_N17
\inst|SYNC|blue_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|blue_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|blue_out\(3));

-- Location: LCCOMB_X40_Y19_N4
\inst|SYNC|blue_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|blue_out[2]~feeder_combout\ = \inst|SYNC|blue_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|blue_out~0_combout\,
	combout => \inst|SYNC|blue_out[2]~feeder_combout\);

-- Location: FF_X40_Y19_N5
\inst|SYNC|blue_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|blue_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|blue_out\(2));

-- Location: LCCOMB_X40_Y19_N6
\inst|SYNC|blue_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|blue_out[1]~feeder_combout\ = \inst|SYNC|blue_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|blue_out~0_combout\,
	combout => \inst|SYNC|blue_out[1]~feeder_combout\);

-- Location: FF_X40_Y19_N7
\inst|SYNC|blue_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|blue_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|blue_out\(1));

-- Location: LCCOMB_X40_Y19_N16
\inst|SYNC|blue_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|blue_out[0]~feeder_combout\ = \inst|SYNC|blue_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|blue_out~0_combout\,
	combout => \inst|SYNC|blue_out[0]~feeder_combout\);

-- Location: FF_X40_Y19_N17
\inst|SYNC|blue_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|blue_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|blue_out\(0));

-- Location: LCCOMB_X17_Y18_N30
\inst|red_data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_data[0]~1_combout\ = (\inst|red_data[0]~0_combout\ & (((!\inst|RGB_SWITCH~6_combout\) # (!\inst|RGB_SWITCH~2_combout\)) # (!\inst|RGB_SWITCH~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RGB_SWITCH~5_combout\,
	datab => \inst|RGB_SWITCH~2_combout\,
	datac => \inst|RGB_SWITCH~6_combout\,
	datad => \inst|red_data[0]~0_combout\,
	combout => \inst|red_data[0]~1_combout\);

-- Location: FF_X17_Y18_N31
\inst|green_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|red_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|green_data\(0));

-- Location: LCCOMB_X29_Y19_N0
\inst|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~0_combout\ = (\inst|SYNC|video_on_v\(0) & (\inst|SYNC|video_on_h\(0) & \inst|green_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|video_on_v\(0),
	datac => \inst|SYNC|video_on_h\(0),
	datad => \inst|green_data\(0),
	combout => \inst|SYNC|green_out~0_combout\);

-- Location: LCCOMB_X40_Y20_N16
\inst|SYNC|green_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out[3]~feeder_combout\ = \inst|SYNC|green_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|green_out~0_combout\,
	combout => \inst|SYNC|green_out[3]~feeder_combout\);

-- Location: FF_X40_Y20_N17
\inst|SYNC|green_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|green_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|green_out\(3));

-- Location: LCCOMB_X40_Y21_N6
\inst|SYNC|green_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out[2]~feeder_combout\ = \inst|SYNC|green_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|green_out~0_combout\,
	combout => \inst|SYNC|green_out[2]~feeder_combout\);

-- Location: FF_X40_Y21_N7
\inst|SYNC|green_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|green_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|green_out\(2));

-- Location: LCCOMB_X40_Y24_N16
\inst|SYNC|green_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out[1]~feeder_combout\ = \inst|SYNC|green_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|green_out~0_combout\,
	combout => \inst|SYNC|green_out[1]~feeder_combout\);

-- Location: FF_X40_Y24_N17
\inst|SYNC|green_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|green_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|green_out\(1));

-- Location: LCCOMB_X40_Y20_N6
\inst|SYNC|green_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out[0]~feeder_combout\ = \inst|SYNC|green_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|green_out~0_combout\,
	combout => \inst|SYNC|green_out[0]~feeder_combout\);

-- Location: FF_X40_Y20_N7
\inst|SYNC|green_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|green_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|green_out\(0));

-- Location: FF_X17_Y18_N9
\inst|red_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|RGB_SWITCH~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|red_data\(1));

-- Location: LCCOMB_X29_Y19_N22
\inst|SYNC|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~0_combout\ = (\inst|SYNC|video_on_h\(0) & (\inst|red_data\(1) & \inst|SYNC|video_on_v\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|video_on_h\(0),
	datac => \inst|red_data\(1),
	datad => \inst|SYNC|video_on_v\(0),
	combout => \inst|SYNC|red_out~0_combout\);

-- Location: FF_X40_Y21_N13
\inst|SYNC|red_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|red_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|red_out\(3));

-- Location: LCCOMB_X17_Y18_N10
\inst|red_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_data~2_combout\ = ((!\inst|RGB_SWITCH~5_combout\) # (!\inst|RGB_SWITCH~6_combout\)) # (!\inst|RGB_SWITCH~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RGB_SWITCH~2_combout\,
	datac => \inst|RGB_SWITCH~6_combout\,
	datad => \inst|RGB_SWITCH~5_combout\,
	combout => \inst|red_data~2_combout\);

-- Location: LCCOMB_X17_Y18_N18
\inst|red_data~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_data~3_combout\ = (\inst|RGB_SWITCH~4_combout\) # ((\inst|red_data~2_combout\ & (\inst|blue_data~4_combout\ & \inst|red_data[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|red_data~2_combout\,
	datab => \inst|RGB_SWITCH~4_combout\,
	datac => \inst|blue_data~4_combout\,
	datad => \inst|red_data[0]~0_combout\,
	combout => \inst|red_data~3_combout\);

-- Location: FF_X17_Y18_N19
\inst|red_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|red_data~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|red_data\(0));

-- Location: LCCOMB_X29_Y19_N24
\inst|SYNC|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out~1_combout\ = (\inst|SYNC|video_on_v\(0) & (\inst|SYNC|video_on_h\(0) & \inst|red_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|video_on_v\(0),
	datab => \inst|SYNC|video_on_h\(0),
	datac => \inst|red_data\(0),
	combout => \inst|SYNC|red_out~1_combout\);

-- Location: FF_X35_Y21_N1
\inst|SYNC|red_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|red_out~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|red_out\(2));

-- Location: FF_X40_Y21_N3
\inst|SYNC|red_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|red_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|red_out\(1));

-- Location: LCCOMB_X35_Y20_N4
\inst|SYNC|red_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|red_out[0]~feeder_combout\ = \inst|SYNC|red_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|red_out~1_combout\,
	combout => \inst|SYNC|red_out[0]~feeder_combout\);

-- Location: FF_X35_Y20_N5
\inst|SYNC|red_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|red_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|red_out\(0));

-- Location: LCCOMB_X24_Y21_N6
\inst7|PACKET_CHAR3[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR3[7]~feeder_combout\ = \inst7|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(7),
	combout => \inst7|PACKET_CHAR3[7]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst7|PACKET_CHAR3[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR3[7]~0_combout\ = (!\sw[1]~input_o\ & \inst7|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \inst7|READ_CHAR~q\,
	combout => \inst7|PACKET_CHAR3[7]~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst7|PACKET_CHAR3[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR3[7]~1_combout\ = (!\inst7|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst7|Equal4~0_combout\ & (\inst7|PACKET_CHAR3[7]~0_combout\ & !\inst7|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst7|Equal4~0_combout\,
	datac => \inst7|PACKET_CHAR3[7]~0_combout\,
	datad => \inst7|LessThan1~0_combout\,
	combout => \inst7|PACKET_CHAR3[7]~1_combout\);

-- Location: FF_X24_Y21_N7
\inst7|PACKET_CHAR3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR3[7]~feeder_combout\,
	ena => \inst7|PACKET_CHAR3[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR3\(7));

-- Location: LCCOMB_X23_Y21_N22
\inst7|new_cursor_row[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[8]~28_combout\ = ((\inst7|PACKET_CHAR3\(7) $ (\inst7|cursor_row\(8) $ (\inst7|new_cursor_row[7]~27\)))) # (GND)
-- \inst7|new_cursor_row[8]~29\ = CARRY((\inst7|PACKET_CHAR3\(7) & (\inst7|cursor_row\(8) & !\inst7|new_cursor_row[7]~27\)) # (!\inst7|PACKET_CHAR3\(7) & ((\inst7|cursor_row\(8)) # (!\inst7|new_cursor_row[7]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR3\(7),
	datab => \inst7|cursor_row\(8),
	datad => VCC,
	cin => \inst7|new_cursor_row[7]~27\,
	combout => \inst7|new_cursor_row[8]~28_combout\,
	cout => \inst7|new_cursor_row[8]~29\);

-- Location: LCCOMB_X23_Y21_N24
\inst7|new_cursor_row[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[9]~30_combout\ = \inst7|new_cursor_row[8]~29\ $ (!\inst7|PACKET_CHAR3\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|PACKET_CHAR3\(7),
	cin => \inst7|new_cursor_row[8]~29\,
	combout => \inst7|new_cursor_row[9]~30_combout\);

-- Location: FF_X23_Y21_N25
\inst7|new_cursor_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[9]~30_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(9));

-- Location: FF_X22_Y19_N11
\inst7|PACKET_CHAR3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|SHIFTIN\(6),
	sload => VCC,
	ena => \inst7|PACKET_CHAR3[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR3\(6));

-- Location: FF_X22_Y19_N29
\inst7|PACKET_CHAR3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|SHIFTIN\(5),
	sload => VCC,
	ena => \inst7|PACKET_CHAR3[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR3\(5));

-- Location: FF_X22_Y19_N13
\inst7|PACKET_CHAR3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|SHIFTIN\(4),
	sload => VCC,
	ena => \inst7|PACKET_CHAR3[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR3\(4));

-- Location: FF_X22_Y19_N31
\inst7|PACKET_CHAR3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|SHIFTIN\(3),
	sload => VCC,
	ena => \inst7|PACKET_CHAR3[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR3\(3));

-- Location: FF_X22_Y19_N21
\inst7|PACKET_CHAR3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst7|SHIFTIN\(2),
	sload => VCC,
	ena => \inst7|PACKET_CHAR3[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR3\(2));

-- Location: LCCOMB_X24_Y21_N4
\inst7|PACKET_CHAR3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR3[1]~feeder_combout\ = \inst7|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(1),
	combout => \inst7|PACKET_CHAR3[1]~feeder_combout\);

-- Location: FF_X24_Y21_N5
\inst7|PACKET_CHAR3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR3[1]~feeder_combout\,
	ena => \inst7|PACKET_CHAR3[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR3\(1));

-- Location: LCCOMB_X22_Y19_N0
\inst7|PACKET_CHAR3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|PACKET_CHAR3[0]~feeder_combout\ = \inst7|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|SHIFTIN\(0),
	combout => \inst7|PACKET_CHAR3[0]~feeder_combout\);

-- Location: FF_X22_Y19_N1
\inst7|PACKET_CHAR3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|PACKET_CHAR3[0]~feeder_combout\,
	ena => \inst7|PACKET_CHAR3[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|PACKET_CHAR3\(0));

-- Location: LCCOMB_X23_Y21_N6
\inst7|new_cursor_row[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[0]~10_combout\ = (\inst7|PACKET_CHAR3\(0) & (\inst7|cursor_row\(0) $ (VCC))) # (!\inst7|PACKET_CHAR3\(0) & ((\inst7|cursor_row\(0)) # (GND)))
-- \inst7|new_cursor_row[0]~11\ = CARRY((\inst7|cursor_row\(0)) # (!\inst7|PACKET_CHAR3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR3\(0),
	datab => \inst7|cursor_row\(0),
	datad => VCC,
	combout => \inst7|new_cursor_row[0]~10_combout\,
	cout => \inst7|new_cursor_row[0]~11\);

-- Location: FF_X23_Y21_N7
\inst7|new_cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(0));

-- Location: LCCOMB_X22_Y21_N20
\inst7|cursor_row~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~11_combout\ = (\inst7|cursor_row~0_combout\ & (\inst7|Equal3~0_combout\ & (\inst7|new_cursor_row\(0) & !\inst7|RECV_UART~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row~0_combout\,
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|new_cursor_row\(0),
	datad => \inst7|RECV_UART~3_combout\,
	combout => \inst7|cursor_row~11_combout\);

-- Location: FF_X22_Y21_N21
\inst7|cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_row~11_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_row\(0));

-- Location: LCCOMB_X23_Y21_N8
\inst7|new_cursor_row[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[1]~12_combout\ = (\inst7|PACKET_CHAR3\(1) & ((\inst7|cursor_row\(1) & (!\inst7|new_cursor_row[0]~11\)) # (!\inst7|cursor_row\(1) & ((\inst7|new_cursor_row[0]~11\) # (GND))))) # (!\inst7|PACKET_CHAR3\(1) & ((\inst7|cursor_row\(1) & 
-- (\inst7|new_cursor_row[0]~11\ & VCC)) # (!\inst7|cursor_row\(1) & (!\inst7|new_cursor_row[0]~11\))))
-- \inst7|new_cursor_row[1]~13\ = CARRY((\inst7|PACKET_CHAR3\(1) & ((!\inst7|new_cursor_row[0]~11\) # (!\inst7|cursor_row\(1)))) # (!\inst7|PACKET_CHAR3\(1) & (!\inst7|cursor_row\(1) & !\inst7|new_cursor_row[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR3\(1),
	datab => \inst7|cursor_row\(1),
	datad => VCC,
	cin => \inst7|new_cursor_row[0]~11\,
	combout => \inst7|new_cursor_row[1]~12_combout\,
	cout => \inst7|new_cursor_row[1]~13\);

-- Location: FF_X23_Y21_N9
\inst7|new_cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(1));

-- Location: LCCOMB_X22_Y21_N30
\inst7|cursor_row~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~10_combout\ = (\inst7|cursor_row~0_combout\ & (\inst7|Equal3~0_combout\ & (\inst7|new_cursor_row\(1) & !\inst7|RECV_UART~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row~0_combout\,
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|new_cursor_row\(1),
	datad => \inst7|RECV_UART~3_combout\,
	combout => \inst7|cursor_row~10_combout\);

-- Location: FF_X22_Y21_N31
\inst7|cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_row~10_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_row\(1));

-- Location: LCCOMB_X23_Y21_N10
\inst7|new_cursor_row[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[2]~14_combout\ = ((\inst7|cursor_row\(2) $ (\inst7|PACKET_CHAR3\(2) $ (\inst7|new_cursor_row[1]~13\)))) # (GND)
-- \inst7|new_cursor_row[2]~15\ = CARRY((\inst7|cursor_row\(2) & ((!\inst7|new_cursor_row[1]~13\) # (!\inst7|PACKET_CHAR3\(2)))) # (!\inst7|cursor_row\(2) & (!\inst7|PACKET_CHAR3\(2) & !\inst7|new_cursor_row[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row\(2),
	datab => \inst7|PACKET_CHAR3\(2),
	datad => VCC,
	cin => \inst7|new_cursor_row[1]~13\,
	combout => \inst7|new_cursor_row[2]~14_combout\,
	cout => \inst7|new_cursor_row[2]~15\);

-- Location: FF_X23_Y21_N11
\inst7|new_cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(2));

-- Location: LCCOMB_X22_Y21_N12
\inst7|cursor_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~9_combout\ = (\inst7|cursor_row~0_combout\ & (\inst7|Equal3~0_combout\ & (\inst7|new_cursor_row\(2) & !\inst7|RECV_UART~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row~0_combout\,
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|new_cursor_row\(2),
	datad => \inst7|RECV_UART~3_combout\,
	combout => \inst7|cursor_row~9_combout\);

-- Location: FF_X22_Y21_N13
\inst7|cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_row~9_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_row\(2));

-- Location: LCCOMB_X23_Y21_N12
\inst7|new_cursor_row[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[3]~16_combout\ = (\inst7|cursor_row\(3) & ((\inst7|PACKET_CHAR3\(3) & (!\inst7|new_cursor_row[2]~15\)) # (!\inst7|PACKET_CHAR3\(3) & (\inst7|new_cursor_row[2]~15\ & VCC)))) # (!\inst7|cursor_row\(3) & ((\inst7|PACKET_CHAR3\(3) & 
-- ((\inst7|new_cursor_row[2]~15\) # (GND))) # (!\inst7|PACKET_CHAR3\(3) & (!\inst7|new_cursor_row[2]~15\))))
-- \inst7|new_cursor_row[3]~17\ = CARRY((\inst7|cursor_row\(3) & (\inst7|PACKET_CHAR3\(3) & !\inst7|new_cursor_row[2]~15\)) # (!\inst7|cursor_row\(3) & ((\inst7|PACKET_CHAR3\(3)) # (!\inst7|new_cursor_row[2]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row\(3),
	datab => \inst7|PACKET_CHAR3\(3),
	datad => VCC,
	cin => \inst7|new_cursor_row[2]~15\,
	combout => \inst7|new_cursor_row[3]~16_combout\,
	cout => \inst7|new_cursor_row[3]~17\);

-- Location: FF_X23_Y21_N13
\inst7|new_cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(3));

-- Location: LCCOMB_X22_Y21_N14
\inst7|cursor_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~8_combout\ = (\inst7|new_cursor_row\(3) & (\inst7|Equal3~0_combout\ & (\inst7|cursor_row~0_combout\ & !\inst7|RECV_UART~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_row\(3),
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|cursor_row~0_combout\,
	datad => \inst7|RECV_UART~3_combout\,
	combout => \inst7|cursor_row~8_combout\);

-- Location: FF_X22_Y21_N15
\inst7|cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_row~8_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_row\(3));

-- Location: LCCOMB_X23_Y21_N14
\inst7|new_cursor_row[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[4]~18_combout\ = ((\inst7|PACKET_CHAR3\(4) $ (\inst7|cursor_row\(4) $ (\inst7|new_cursor_row[3]~17\)))) # (GND)
-- \inst7|new_cursor_row[4]~19\ = CARRY((\inst7|PACKET_CHAR3\(4) & (\inst7|cursor_row\(4) & !\inst7|new_cursor_row[3]~17\)) # (!\inst7|PACKET_CHAR3\(4) & ((\inst7|cursor_row\(4)) # (!\inst7|new_cursor_row[3]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR3\(4),
	datab => \inst7|cursor_row\(4),
	datad => VCC,
	cin => \inst7|new_cursor_row[3]~17\,
	combout => \inst7|new_cursor_row[4]~18_combout\,
	cout => \inst7|new_cursor_row[4]~19\);

-- Location: FF_X23_Y21_N15
\inst7|new_cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[4]~18_combout\,
	asdata => VCC,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(4));

-- Location: LCCOMB_X22_Y21_N28
\inst7|cursor_row~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~7_combout\ = ((\inst7|cursor_row~0_combout\ & (\inst7|new_cursor_row\(4) & !\inst7|RECV_UART~3_combout\))) # (!\inst7|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row~0_combout\,
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|new_cursor_row\(4),
	datad => \inst7|RECV_UART~3_combout\,
	combout => \inst7|cursor_row~7_combout\);

-- Location: FF_X22_Y21_N29
\inst7|cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_row~7_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_row\(4));

-- Location: LCCOMB_X23_Y21_N16
\inst7|new_cursor_row[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[5]~20_combout\ = (\inst7|cursor_row\(5) & ((\inst7|PACKET_CHAR3\(5) & (!\inst7|new_cursor_row[4]~19\)) # (!\inst7|PACKET_CHAR3\(5) & (\inst7|new_cursor_row[4]~19\ & VCC)))) # (!\inst7|cursor_row\(5) & ((\inst7|PACKET_CHAR3\(5) & 
-- ((\inst7|new_cursor_row[4]~19\) # (GND))) # (!\inst7|PACKET_CHAR3\(5) & (!\inst7|new_cursor_row[4]~19\))))
-- \inst7|new_cursor_row[5]~21\ = CARRY((\inst7|cursor_row\(5) & (\inst7|PACKET_CHAR3\(5) & !\inst7|new_cursor_row[4]~19\)) # (!\inst7|cursor_row\(5) & ((\inst7|PACKET_CHAR3\(5)) # (!\inst7|new_cursor_row[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row\(5),
	datab => \inst7|PACKET_CHAR3\(5),
	datad => VCC,
	cin => \inst7|new_cursor_row[4]~19\,
	combout => \inst7|new_cursor_row[5]~20_combout\,
	cout => \inst7|new_cursor_row[5]~21\);

-- Location: FF_X23_Y21_N17
\inst7|new_cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[5]~20_combout\,
	asdata => VCC,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(5));

-- Location: LCCOMB_X22_Y21_N2
\inst7|cursor_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~6_combout\ = ((!\inst7|RECV_UART~3_combout\ & ((\inst7|new_cursor_row\(5)) # (!\inst7|cursor_row~0_combout\)))) # (!\inst7|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_row\(5),
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|cursor_row~0_combout\,
	datad => \inst7|RECV_UART~3_combout\,
	combout => \inst7|cursor_row~6_combout\);

-- Location: FF_X22_Y21_N3
\inst7|cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_row~6_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_row\(5));

-- Location: LCCOMB_X23_Y21_N18
\inst7|new_cursor_row[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[6]~22_combout\ = ((\inst7|cursor_row\(6) $ (\inst7|PACKET_CHAR3\(6) $ (\inst7|new_cursor_row[5]~21\)))) # (GND)
-- \inst7|new_cursor_row[6]~23\ = CARRY((\inst7|cursor_row\(6) & ((!\inst7|new_cursor_row[5]~21\) # (!\inst7|PACKET_CHAR3\(6)))) # (!\inst7|cursor_row\(6) & (!\inst7|PACKET_CHAR3\(6) & !\inst7|new_cursor_row[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row\(6),
	datab => \inst7|PACKET_CHAR3\(6),
	datad => VCC,
	cin => \inst7|new_cursor_row[5]~21\,
	combout => \inst7|new_cursor_row[6]~22_combout\,
	cout => \inst7|new_cursor_row[6]~23\);

-- Location: LCCOMB_X23_Y21_N20
\inst7|new_cursor_row[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|new_cursor_row[7]~26_combout\ = (\inst7|PACKET_CHAR3\(7) & ((\inst7|cursor_row\(7) & (!\inst7|new_cursor_row[6]~23\)) # (!\inst7|cursor_row\(7) & ((\inst7|new_cursor_row[6]~23\) # (GND))))) # (!\inst7|PACKET_CHAR3\(7) & ((\inst7|cursor_row\(7) & 
-- (\inst7|new_cursor_row[6]~23\ & VCC)) # (!\inst7|cursor_row\(7) & (!\inst7|new_cursor_row[6]~23\))))
-- \inst7|new_cursor_row[7]~27\ = CARRY((\inst7|PACKET_CHAR3\(7) & ((!\inst7|new_cursor_row[6]~23\) # (!\inst7|cursor_row\(7)))) # (!\inst7|PACKET_CHAR3\(7) & (!\inst7|cursor_row\(7) & !\inst7|new_cursor_row[6]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|PACKET_CHAR3\(7),
	datab => \inst7|cursor_row\(7),
	datad => VCC,
	cin => \inst7|new_cursor_row[6]~23\,
	combout => \inst7|new_cursor_row[7]~26_combout\,
	cout => \inst7|new_cursor_row[7]~27\);

-- Location: FF_X23_Y21_N21
\inst7|new_cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[7]~26_combout\,
	asdata => VCC,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(7));

-- Location: LCCOMB_X23_Y21_N28
\inst7|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|RECV_UART~1_combout\ = (\inst7|new_cursor_row\(6)) # ((\inst7|new_cursor_row\(7)) # (\inst7|new_cursor_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|new_cursor_row\(6),
	datac => \inst7|new_cursor_row\(7),
	datad => \inst7|new_cursor_row\(5),
	combout => \inst7|RECV_UART~1_combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst7|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|RECV_UART~0_combout\ = (!\inst7|new_cursor_row\(2) & (!\inst7|new_cursor_row\(1) & (!\inst7|new_cursor_row\(4) & !\inst7|new_cursor_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_row\(2),
	datab => \inst7|new_cursor_row\(1),
	datac => \inst7|new_cursor_row\(4),
	datad => \inst7|new_cursor_row\(3),
	combout => \inst7|RECV_UART~0_combout\);

-- Location: LCCOMB_X23_Y21_N2
\inst7|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|RECV_UART~2_combout\ = (\inst7|new_cursor_row\(8) & ((\inst7|RECV_UART~1_combout\) # ((\inst7|new_cursor_row\(0)) # (!\inst7|RECV_UART~0_combout\)))) # (!\inst7|new_cursor_row\(8) & (!\inst7|RECV_UART~1_combout\ & (\inst7|RECV_UART~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_row\(8),
	datab => \inst7|RECV_UART~1_combout\,
	datac => \inst7|RECV_UART~0_combout\,
	datad => \inst7|new_cursor_row\(0),
	combout => \inst7|RECV_UART~2_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst7|RECV_UART~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|RECV_UART~3_combout\ = (!\inst7|cursor_row\(8) & (!\inst7|cursor_row\(7) & ((\inst7|new_cursor_row\(9)) # (\inst7|RECV_UART~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row\(8),
	datab => \inst7|new_cursor_row\(9),
	datac => \inst7|cursor_row\(7),
	datad => \inst7|RECV_UART~2_combout\,
	combout => \inst7|RECV_UART~3_combout\);

-- Location: LCCOMB_X22_Y21_N16
\inst7|cursor_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~1_combout\ = ((!\inst7|RECV_UART~3_combout\ & ((\inst7|new_cursor_row\(6)) # (!\inst7|cursor_row~0_combout\)))) # (!\inst7|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal3~0_combout\,
	datab => \inst7|new_cursor_row\(6),
	datac => \inst7|cursor_row~0_combout\,
	datad => \inst7|RECV_UART~3_combout\,
	combout => \inst7|cursor_row~1_combout\);

-- Location: FF_X22_Y21_N17
\inst7|cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_row~1_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_row\(6));

-- Location: FF_X23_Y21_N19
\inst7|new_cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[6]~22_combout\,
	asdata => VCC,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(6));

-- Location: LCCOMB_X23_Y21_N30
\inst7|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan5~0_combout\ = (\inst7|new_cursor_row\(8) & (\inst7|new_cursor_row\(6) & (\inst7|new_cursor_row\(7) & \inst7|new_cursor_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_row\(8),
	datab => \inst7|new_cursor_row\(6),
	datac => \inst7|new_cursor_row\(7),
	datad => \inst7|new_cursor_row\(5),
	combout => \inst7|LessThan5~0_combout\);

-- Location: LCCOMB_X22_Y21_N22
\inst7|cursor_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~0_combout\ = (!\inst7|new_cursor_row\(9) & (((!\inst7|new_cursor_row\(0) & \inst7|RECV_UART~0_combout\)) # (!\inst7|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan5~0_combout\,
	datab => \inst7|new_cursor_row\(9),
	datac => \inst7|new_cursor_row\(0),
	datad => \inst7|RECV_UART~0_combout\,
	combout => \inst7|cursor_row~0_combout\);

-- Location: LCCOMB_X22_Y21_N24
\inst7|cursor_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~5_combout\ = ((!\inst7|RECV_UART~3_combout\ & ((\inst7|new_cursor_row\(7)) # (!\inst7|cursor_row~0_combout\)))) # (!\inst7|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row~0_combout\,
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|new_cursor_row\(7),
	datad => \inst7|RECV_UART~3_combout\,
	combout => \inst7|cursor_row~5_combout\);

-- Location: FF_X22_Y21_N25
\inst7|cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_row~5_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_row\(7));

-- Location: FF_X23_Y21_N23
\inst7|new_cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|new_cursor_row[8]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst7|ALT_INV_Equal4~0_combout\,
	ena => \inst7|new_cursor_row[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|new_cursor_row\(8));

-- Location: LCCOMB_X22_Y21_N6
\inst7|cursor_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|cursor_row~4_combout\ = (\inst7|Equal3~0_combout\ & (!\inst7|RECV_UART~3_combout\ & ((\inst7|new_cursor_row\(8)) # (!\inst7|cursor_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|new_cursor_row\(8),
	datab => \inst7|Equal3~0_combout\,
	datac => \inst7|cursor_row~0_combout\,
	datad => \inst7|RECV_UART~3_combout\,
	combout => \inst7|cursor_row~4_combout\);

-- Location: FF_X22_Y21_N7
\inst7|cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst7|cursor_row~4_combout\,
	ena => \inst7|cursor_row[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cursor_row\(8));

-- Location: LCCOMB_X22_Y21_N10
\inst1|LED_out[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LED_out[6]~0_combout\ = (\inst7|cursor_row\(8) & (\inst7|cursor_row\(7) & \inst7|cursor_row\(6))) # (!\inst7|cursor_row\(8) & (!\inst7|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row\(8),
	datab => \inst7|cursor_row\(7),
	datad => \inst7|cursor_row\(6),
	combout => \inst1|LED_out[6]~0_combout\);

-- Location: LCCOMB_X26_Y20_N0
\inst1|LED_out[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LED_out[5]~1_combout\ = (\inst7|cursor_row\(7) & ((\inst7|cursor_row\(6)) # (!\inst7|cursor_row\(8)))) # (!\inst7|cursor_row\(7) & (!\inst7|cursor_row\(8) & \inst7|cursor_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cursor_row\(7),
	datac => \inst7|cursor_row\(8),
	datad => \inst7|cursor_row\(6),
	combout => \inst1|LED_out[5]~1_combout\);

-- Location: LCCOMB_X26_Y20_N6
\inst1|LED_out[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LED_out[4]~2_combout\ = (\inst7|cursor_row\(6)) # ((!\inst7|cursor_row\(7) & \inst7|cursor_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cursor_row\(7),
	datac => \inst7|cursor_row\(8),
	datad => \inst7|cursor_row\(6),
	combout => \inst1|LED_out[4]~2_combout\);

-- Location: LCCOMB_X26_Y20_N4
\inst1|LED_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LED_out[3]~3_combout\ = (\inst7|cursor_row\(7) & (\inst7|cursor_row\(8) & \inst7|cursor_row\(6))) # (!\inst7|cursor_row\(7) & (\inst7|cursor_row\(8) $ (\inst7|cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cursor_row\(7),
	datac => \inst7|cursor_row\(8),
	datad => \inst7|cursor_row\(6),
	combout => \inst1|LED_out[3]~3_combout\);

-- Location: LCCOMB_X26_Y20_N10
\inst1|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal7~0_combout\ = (\inst7|cursor_row\(7) & (!\inst7|cursor_row\(8) & !\inst7|cursor_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cursor_row\(7),
	datac => \inst7|cursor_row\(8),
	datad => \inst7|cursor_row\(6),
	combout => \inst1|Equal7~0_combout\);

-- Location: LCCOMB_X26_Y20_N28
\inst1|LED_out[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LED_out[1]~4_combout\ = (\inst7|cursor_row\(8) & (\inst7|cursor_row\(7) $ (\inst7|cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cursor_row\(7),
	datac => \inst7|cursor_row\(8),
	datad => \inst7|cursor_row\(6),
	combout => \inst1|LED_out[1]~4_combout\);

-- Location: LCCOMB_X22_Y21_N4
\inst1|LED_out[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LED_out[0]~5_combout\ = (!\inst7|cursor_row\(7) & (\inst7|cursor_row\(8) $ (\inst7|cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cursor_row\(8),
	datab => \inst7|cursor_row\(7),
	datad => \inst7|cursor_row\(6),
	combout => \inst1|LED_out[0]~5_combout\);

-- Location: LCCOMB_X22_Y28_N12
\inst5|TEMP_RANDOM[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|TEMP_RANDOM[1]~feeder_combout\ = \inst5|TEMP_RANDOM\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|TEMP_RANDOM\(2),
	combout => \inst5|TEMP_RANDOM[1]~feeder_combout\);

-- Location: IOIBUF_X0_Y25_N22
\sw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: FF_X22_Y28_N13
\inst5|TEMP_RANDOM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|TEMP_RANDOM[1]~feeder_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TEMP_RANDOM\(1));

-- Location: LCCOMB_X22_Y28_N8
\inst5|TAP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|TAP~0_combout\ = \inst5|TEMP_RANDOM\(3) $ (\inst5|TEMP_RANDOM\(2) $ (\inst5|TEMP_RANDOM\(5) $ (\inst5|TEMP_RANDOM\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|TEMP_RANDOM\(3),
	datab => \inst5|TEMP_RANDOM\(2),
	datac => \inst5|TEMP_RANDOM\(5),
	datad => \inst5|TEMP_RANDOM\(1),
	combout => \inst5|TAP~0_combout\);

-- Location: FF_X22_Y28_N9
\inst5|TEMP_RANDOM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|TAP~0_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TEMP_RANDOM\(7));

-- Location: FF_X22_Y28_N19
\inst5|TEMP_RANDOM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|TEMP_RANDOM\(7),
	sload => VCC,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TEMP_RANDOM\(6));

-- Location: LCCOMB_X22_Y28_N26
\inst5|TEMP_RANDOM[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|TEMP_RANDOM[5]~0_combout\ = !\inst5|TEMP_RANDOM\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|TEMP_RANDOM\(6),
	combout => \inst5|TEMP_RANDOM[5]~0_combout\);

-- Location: FF_X22_Y28_N27
\inst5|TEMP_RANDOM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|TEMP_RANDOM[5]~0_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TEMP_RANDOM\(5));

-- Location: FF_X22_Y28_N29
\inst5|TEMP_RANDOM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|TEMP_RANDOM\(5),
	sload => VCC,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TEMP_RANDOM\(4));

-- Location: LCCOMB_X22_Y28_N30
\inst5|TEMP_RANDOM[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|TEMP_RANDOM[3]~2_combout\ = !\inst5|TEMP_RANDOM\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|TEMP_RANDOM\(4),
	combout => \inst5|TEMP_RANDOM[3]~2_combout\);

-- Location: FF_X22_Y28_N31
\inst5|TEMP_RANDOM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|TEMP_RANDOM[3]~2_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TEMP_RANDOM\(3));

-- Location: LCCOMB_X22_Y28_N20
\inst5|TEMP_RANDOM[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|TEMP_RANDOM[2]~3_combout\ = !\inst5|TEMP_RANDOM\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|TEMP_RANDOM\(3),
	combout => \inst5|TEMP_RANDOM[2]~3_combout\);

-- Location: FF_X22_Y28_N21
\inst5|TEMP_RANDOM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|TEMP_RANDOM[2]~3_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TEMP_RANDOM\(2));

-- Location: LCCOMB_X22_Y28_N22
\inst5|TEMP_RANDOM[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|TEMP_RANDOM[0]~feeder_combout\ = \inst5|TEMP_RANDOM\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|TEMP_RANDOM\(1),
	combout => \inst5|TEMP_RANDOM[0]~feeder_combout\);

-- Location: FF_X22_Y28_N23
\inst5|TEMP_RANDOM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|TEMP_RANDOM[0]~feeder_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|TEMP_RANDOM\(0));

-- Location: LCCOMB_X22_Y28_N10
\inst5|RANDOM[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|RANDOM[1]~2_combout\ = (\inst5|TEMP_RANDOM\(2)) # ((\inst5|TEMP_RANDOM\(0)) # (\inst5|TEMP_RANDOM\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|TEMP_RANDOM\(2),
	datac => \inst5|TEMP_RANDOM\(0),
	datad => \inst5|TEMP_RANDOM\(1),
	combout => \inst5|RANDOM[1]~2_combout\);

-- Location: LCCOMB_X22_Y28_N4
\inst5|RANDOM[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|RANDOM[1]~3_combout\ = (\inst5|TEMP_RANDOM\(3) & (!\inst5|TEMP_RANDOM\(5) & !\inst5|TEMP_RANDOM\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|TEMP_RANDOM\(3),
	datac => \inst5|TEMP_RANDOM\(5),
	datad => \inst5|TEMP_RANDOM\(4),
	combout => \inst5|RANDOM[1]~3_combout\);

-- Location: LCCOMB_X22_Y28_N6
\inst5|RANDOM[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|RANDOM[1]~4_combout\ = (\inst5|TEMP_RANDOM\(7) & ((\inst5|RANDOM[1]~2_combout\) # ((!\inst5|TEMP_RANDOM\(6)) # (!\inst5|RANDOM[1]~3_combout\)))) # (!\inst5|TEMP_RANDOM\(7) & (((\inst5|RANDOM[1]~3_combout\) # (\inst5|TEMP_RANDOM\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM[1]~2_combout\,
	datab => \inst5|TEMP_RANDOM\(7),
	datac => \inst5|RANDOM[1]~3_combout\,
	datad => \inst5|TEMP_RANDOM\(6),
	combout => \inst5|RANDOM[1]~4_combout\);

-- Location: LCCOMB_X22_Y28_N2
\inst5|RANDOM~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|RANDOM~5_combout\ = (\inst5|RANDOM[1]~4_combout\ & \inst5|TEMP_RANDOM\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM[1]~4_combout\,
	datad => \inst5|TEMP_RANDOM\(1),
	combout => \inst5|RANDOM~5_combout\);

-- Location: FF_X22_Y28_N3
\inst5|RANDOM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|RANDOM~5_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|RANDOM\(1));

-- Location: LCCOMB_X22_Y28_N24
\inst5|RANDOM~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|RANDOM~6_combout\ = (\inst5|RANDOM[1]~4_combout\ & \inst5|TEMP_RANDOM\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM[1]~4_combout\,
	datad => \inst5|TEMP_RANDOM\(2),
	combout => \inst5|RANDOM~6_combout\);

-- Location: FF_X22_Y28_N25
\inst5|RANDOM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|RANDOM~6_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|RANDOM\(2));

-- Location: LCCOMB_X22_Y28_N0
\inst5|RANDOM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|RANDOM~0_combout\ = (!\inst5|TEMP_RANDOM\(7) & (!\inst5|TEMP_RANDOM\(6) & ((\inst5|TEMP_RANDOM\(5)) # (\inst5|TEMP_RANDOM\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|TEMP_RANDOM\(5),
	datab => \inst5|TEMP_RANDOM\(4),
	datac => \inst5|TEMP_RANDOM\(7),
	datad => \inst5|TEMP_RANDOM\(6),
	combout => \inst5|RANDOM~0_combout\);

-- Location: LCCOMB_X22_Y28_N16
\inst5|RANDOM~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|RANDOM~1_combout\ = (\inst5|RANDOM~0_combout\) # (!\inst5|TEMP_RANDOM\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|TEMP_RANDOM\(3),
	datad => \inst5|RANDOM~0_combout\,
	combout => \inst5|RANDOM~1_combout\);

-- Location: FF_X22_Y28_N17
\inst5|RANDOM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|RANDOM~1_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|RANDOM\(3));

-- Location: LCCOMB_X22_Y28_N14
\inst5|RANDOM~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|RANDOM~7_combout\ = (\inst5|TEMP_RANDOM\(0) & \inst5|RANDOM[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|TEMP_RANDOM\(0),
	datad => \inst5|RANDOM[1]~4_combout\,
	combout => \inst5|RANDOM~7_combout\);

-- Location: FF_X22_Y28_N15
\inst5|RANDOM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|RANDOM~7_combout\,
	ena => \sw[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|RANDOM\(0));

-- Location: LCCOMB_X23_Y28_N0
\inst3|LED_out[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LED_out[6]~0_combout\ = (\inst5|RANDOM\(1) & ((\inst5|RANDOM\(3)) # ((\inst5|RANDOM\(2) & \inst5|RANDOM\(0))))) # (!\inst5|RANDOM\(1) & (\inst5|RANDOM\(2) $ ((!\inst5|RANDOM\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM\(1),
	datab => \inst5|RANDOM\(2),
	datac => \inst5|RANDOM\(3),
	datad => \inst5|RANDOM\(0),
	combout => \inst3|LED_out[6]~0_combout\);

-- Location: LCCOMB_X23_Y28_N14
\inst3|LED_out[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LED_out[5]~1_combout\ = (!\inst5|RANDOM\(3) & ((\inst5|RANDOM\(1) & ((\inst5|RANDOM\(0)) # (!\inst5|RANDOM\(2)))) # (!\inst5|RANDOM\(1) & (!\inst5|RANDOM\(2) & \inst5|RANDOM\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM\(1),
	datab => \inst5|RANDOM\(2),
	datac => \inst5|RANDOM\(3),
	datad => \inst5|RANDOM\(0),
	combout => \inst3|LED_out[5]~1_combout\);

-- Location: LCCOMB_X23_Y28_N24
\inst3|LED_out[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LED_out[4]~2_combout\ = (\inst5|RANDOM\(1) & (((!\inst5|RANDOM\(3) & \inst5|RANDOM\(0))))) # (!\inst5|RANDOM\(1) & ((\inst5|RANDOM\(2) & (!\inst5|RANDOM\(3))) # (!\inst5|RANDOM\(2) & ((\inst5|RANDOM\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM\(1),
	datab => \inst5|RANDOM\(2),
	datac => \inst5|RANDOM\(3),
	datad => \inst5|RANDOM\(0),
	combout => \inst3|LED_out[4]~2_combout\);

-- Location: LCCOMB_X23_Y28_N22
\inst3|LED_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LED_out[3]~3_combout\ = (!\inst5|RANDOM\(3) & ((\inst5|RANDOM\(1) & (\inst5|RANDOM\(2) & \inst5|RANDOM\(0))) # (!\inst5|RANDOM\(1) & (\inst5|RANDOM\(2) $ (\inst5|RANDOM\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM\(1),
	datab => \inst5|RANDOM\(2),
	datac => \inst5|RANDOM\(3),
	datad => \inst5|RANDOM\(0),
	combout => \inst3|LED_out[3]~3_combout\);

-- Location: LCCOMB_X23_Y28_N8
\inst3|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Equal7~0_combout\ = (\inst5|RANDOM\(1) & (!\inst5|RANDOM\(2) & (!\inst5|RANDOM\(3) & !\inst5|RANDOM\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM\(1),
	datab => \inst5|RANDOM\(2),
	datac => \inst5|RANDOM\(3),
	datad => \inst5|RANDOM\(0),
	combout => \inst3|Equal7~0_combout\);

-- Location: LCCOMB_X23_Y28_N6
\inst3|LED_out[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LED_out[1]~4_combout\ = (\inst5|RANDOM\(2) & (!\inst5|RANDOM\(3) & (\inst5|RANDOM\(1) $ (\inst5|RANDOM\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM\(1),
	datab => \inst5|RANDOM\(2),
	datac => \inst5|RANDOM\(3),
	datad => \inst5|RANDOM\(0),
	combout => \inst3|LED_out[1]~4_combout\);

-- Location: LCCOMB_X23_Y28_N12
\inst3|LED_out[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LED_out[0]~5_combout\ = (!\inst5|RANDOM\(1) & (!\inst5|RANDOM\(3) & (\inst5|RANDOM\(2) $ (\inst5|RANDOM\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|RANDOM\(1),
	datab => \inst5|RANDOM\(2),
	datac => \inst5|RANDOM\(3),
	datad => \inst5|RANDOM\(0),
	combout => \inst3|LED_out[0]~5_combout\);

-- Location: IOIBUF_X0_Y23_N1
\bt2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);
END structure;


