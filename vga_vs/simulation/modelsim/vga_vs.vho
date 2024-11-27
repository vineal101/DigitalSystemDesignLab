-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "11/26/2024 18:59:27"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	vga_h_sync : OUT std_logic;
	vga_v_sync : OUT std_logic;
	clk_out : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	vga_sync : OUT std_logic;
	vga_blank : OUT std_logic
	);
END top;

-- Design Ports Information
-- vga_h_sync	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_v_sync	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_sync	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blank	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_vga_h_sync : std_logic;
SIGNAL ww_vga_v_sync : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_sync : std_logic;
SIGNAL ww_vga_blank : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_div_inst|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_h_sync~output_o\ : std_logic;
SIGNAL \vga_v_sync~output_o\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \vga_sync~output_o\ : std_logic;
SIGNAL \vga_blank~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_div_inst|counter_down[22]~3_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~10_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~1\ : std_logic;
SIGNAL \clk_div_inst|Add0~2_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[1]~7_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~3\ : std_logic;
SIGNAL \clk_div_inst|Add0~4_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[2]~6_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~5\ : std_logic;
SIGNAL \clk_div_inst|Add0~6_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[3]~5_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~7\ : std_logic;
SIGNAL \clk_div_inst|Add0~8_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[4]~4_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~9\ : std_logic;
SIGNAL \clk_div_inst|Add0~10_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[5]~8_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~11\ : std_logic;
SIGNAL \clk_div_inst|Add0~12_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[6]~9_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~13\ : std_logic;
SIGNAL \clk_div_inst|Add0~14_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[7]~10_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~15\ : std_logic;
SIGNAL \clk_div_inst|Add0~16_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[8]~11_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~17\ : std_logic;
SIGNAL \clk_div_inst|Add0~18_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[9]~12_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~19\ : std_logic;
SIGNAL \clk_div_inst|Add0~20_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[10]~13_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~21\ : std_logic;
SIGNAL \clk_div_inst|Add0~22_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[11]~14_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~23\ : std_logic;
SIGNAL \clk_div_inst|Add0~24_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[12]~15_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~25\ : std_logic;
SIGNAL \clk_div_inst|Add0~26_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[13]~16_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~27\ : std_logic;
SIGNAL \clk_div_inst|Add0~28_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[14]~17_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~29\ : std_logic;
SIGNAL \clk_div_inst|Add0~30_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[15]~18_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~31\ : std_logic;
SIGNAL \clk_div_inst|Add0~32_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[16]~19_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~33\ : std_logic;
SIGNAL \clk_div_inst|Add0~34_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[17]~20_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~35\ : std_logic;
SIGNAL \clk_div_inst|Add0~36_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[18]~21_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~37\ : std_logic;
SIGNAL \clk_div_inst|Add0~38_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[19]~22_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~39\ : std_logic;
SIGNAL \clk_div_inst|Add0~40_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[20]~23_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \clk_div_inst|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~41\ : std_logic;
SIGNAL \clk_div_inst|Add0~42_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[21]~24_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~43\ : std_logic;
SIGNAL \clk_div_inst|Add0~44_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[22]~25_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~45\ : std_logic;
SIGNAL \clk_div_inst|Add0~46_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[23]~26_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~47\ : std_logic;
SIGNAL \clk_div_inst|Add0~48_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[24]~27_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~49\ : std_logic;
SIGNAL \clk_div_inst|Add0~50_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[25]~28_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~51\ : std_logic;
SIGNAL \clk_div_inst|Add0~52_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[26]~29_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~53\ : std_logic;
SIGNAL \clk_div_inst|Add0~54_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[27]~30_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~55\ : std_logic;
SIGNAL \clk_div_inst|Add0~56_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[28]~31_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~57\ : std_logic;
SIGNAL \clk_div_inst|Add0~58_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[29]~32_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~59\ : std_logic;
SIGNAL \clk_div_inst|Add0~60_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[30]~33_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \clk_div_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~61\ : std_logic;
SIGNAL \clk_div_inst|Add0~62_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[31]~34_combout\ : std_logic;
SIGNAL \clk_div_inst|Add0~0_combout\ : std_logic;
SIGNAL \clk_div_inst|counter_down[0]~2_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_out~0_combout\ : std_logic;
SIGNAL \clk_div_inst|clk_out~q\ : std_logic;
SIGNAL \clk_div_inst|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \sync_gen|Add0~0_combout\ : std_logic;
SIGNAL \sync_gen|xcounter~2_combout\ : std_logic;
SIGNAL \sync_gen|Add0~1\ : std_logic;
SIGNAL \sync_gen|Add0~2_combout\ : std_logic;
SIGNAL \sync_gen|Add0~3\ : std_logic;
SIGNAL \sync_gen|Add0~4_combout\ : std_logic;
SIGNAL \sync_gen|Add0~5\ : std_logic;
SIGNAL \sync_gen|Add0~6_combout\ : std_logic;
SIGNAL \sync_gen|Add0~7\ : std_logic;
SIGNAL \sync_gen|Add0~8_combout\ : std_logic;
SIGNAL \sync_gen|Add0~9\ : std_logic;
SIGNAL \sync_gen|Add0~10_combout\ : std_logic;
SIGNAL \sync_gen|xcounter~3_combout\ : std_logic;
SIGNAL \sync_gen|Add0~11\ : std_logic;
SIGNAL \sync_gen|Add0~12_combout\ : std_logic;
SIGNAL \sync_gen|Add0~13\ : std_logic;
SIGNAL \sync_gen|Add0~14_combout\ : std_logic;
SIGNAL \sync_gen|Add0~15\ : std_logic;
SIGNAL \sync_gen|Add0~16_combout\ : std_logic;
SIGNAL \sync_gen|xcounter~0_combout\ : std_logic;
SIGNAL \sync_gen|Equal0~1_combout\ : std_logic;
SIGNAL \sync_gen|Equal0~0_combout\ : std_logic;
SIGNAL \sync_gen|Equal0~2_combout\ : std_logic;
SIGNAL \sync_gen|Add0~17\ : std_logic;
SIGNAL \sync_gen|Add0~18_combout\ : std_logic;
SIGNAL \sync_gen|xcounter~1_combout\ : std_logic;
SIGNAL \sync_gen|h_sync~0_combout\ : std_logic;
SIGNAL \sync_gen|h_sync~1_combout\ : std_logic;
SIGNAL \sync_gen|h_sync~q\ : std_logic;
SIGNAL \sync_gen|Add1~0_combout\ : std_logic;
SIGNAL \sync_gen|Add1~1\ : std_logic;
SIGNAL \sync_gen|Add1~3\ : std_logic;
SIGNAL \sync_gen|Add1~4_combout\ : std_logic;
SIGNAL \sync_gen|ycounter~2_combout\ : std_logic;
SIGNAL \sync_gen|Add1~5\ : std_logic;
SIGNAL \sync_gen|Add1~6_combout\ : std_logic;
SIGNAL \sync_gen|ycounter~1_combout\ : std_logic;
SIGNAL \sync_gen|Add1~7\ : std_logic;
SIGNAL \sync_gen|Add1~8_combout\ : std_logic;
SIGNAL \sync_gen|Add1~9\ : std_logic;
SIGNAL \sync_gen|Add1~10_combout\ : std_logic;
SIGNAL \sync_gen|Add1~11\ : std_logic;
SIGNAL \sync_gen|Add1~12_combout\ : std_logic;
SIGNAL \sync_gen|Add1~13\ : std_logic;
SIGNAL \sync_gen|Add1~14_combout\ : std_logic;
SIGNAL \sync_gen|Add1~15\ : std_logic;
SIGNAL \sync_gen|Add1~16_combout\ : std_logic;
SIGNAL \sync_gen|Equal1~1_combout\ : std_logic;
SIGNAL \sync_gen|Add1~17\ : std_logic;
SIGNAL \sync_gen|Add1~18_combout\ : std_logic;
SIGNAL \sync_gen|ycounter~3_combout\ : std_logic;
SIGNAL \sync_gen|Equal1~0_combout\ : std_logic;
SIGNAL \sync_gen|Equal1~2_combout\ : std_logic;
SIGNAL \sync_gen|Add1~2_combout\ : std_logic;
SIGNAL \sync_gen|ycounter~0_combout\ : std_logic;
SIGNAL \sync_gen|v_sync~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \sync_gen|v_sync~1_combout\ : std_logic;
SIGNAL \sync_gen|v_sync~q\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \inDisplayArea~q\ : std_logic;
SIGNAL \VGA_R~0_combout\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \VGA_R~1_combout\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \VGA_R~2_combout\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
SIGNAL \VGA_R~3_combout\ : std_logic;
SIGNAL \VGA_R[3]~reg0_q\ : std_logic;
SIGNAL \VGA_R~4_combout\ : std_logic;
SIGNAL \VGA_R[4]~reg0_q\ : std_logic;
SIGNAL \VGA_R~5_combout\ : std_logic;
SIGNAL \VGA_R[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[5]~reg0_q\ : std_logic;
SIGNAL \VGA_R~6_combout\ : std_logic;
SIGNAL \VGA_R[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[6]~reg0_q\ : std_logic;
SIGNAL \VGA_R~7_combout\ : std_logic;
SIGNAL \VGA_R[7]~reg0_q\ : std_logic;
SIGNAL \VGA_G~0_combout\ : std_logic;
SIGNAL \VGA_G[0]~reg0_q\ : std_logic;
SIGNAL \VGA_G~1_combout\ : std_logic;
SIGNAL \VGA_G[1]~reg0_q\ : std_logic;
SIGNAL \VGA_G~2_combout\ : std_logic;
SIGNAL \VGA_G[2]~reg0_q\ : std_logic;
SIGNAL \VGA_G~3_combout\ : std_logic;
SIGNAL \VGA_G[3]~reg0_q\ : std_logic;
SIGNAL \VGA_G~4_combout\ : std_logic;
SIGNAL \VGA_G[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[4]~reg0_q\ : std_logic;
SIGNAL \VGA_G~5_combout\ : std_logic;
SIGNAL \VGA_G[5]~reg0_q\ : std_logic;
SIGNAL \VGA_G~6_combout\ : std_logic;
SIGNAL \VGA_G[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[6]~reg0_q\ : std_logic;
SIGNAL \VGA_G~7_combout\ : std_logic;
SIGNAL \VGA_G[7]~reg0_q\ : std_logic;
SIGNAL \VGA_B[0]~reg0_q\ : std_logic;
SIGNAL \VGA_B[1]~reg0_q\ : std_logic;
SIGNAL \VGA_B[2]~reg0_q\ : std_logic;
SIGNAL \VGA_B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_B[4]~reg0_q\ : std_logic;
SIGNAL \VGA_B[5]~reg0_q\ : std_logic;
SIGNAL \VGA_B[6]~reg0_q\ : std_logic;
SIGNAL \VGA_B[7]~reg0_q\ : std_logic;
SIGNAL \clk_div_inst|counter_down\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sync_gen|ycounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sync_gen|xcounter\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
vga_h_sync <= ww_vga_h_sync;
vga_v_sync <= ww_vga_v_sync;
clk_out <= ww_clk_out;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
vga_sync <= ww_vga_sync;
vga_blank <= ww_vga_blank;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clk_div_inst|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div_inst|clk_out~q\);

-- Location: IOOBUF_X38_Y73_N16
\vga_h_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sync_gen|h_sync~q\,
	devoe => ww_devoe,
	o => \vga_h_sync~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\vga_v_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sync_gen|v_sync~q\,
	devoe => ww_devoe,
	o => \vga_v_sync~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\clk_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_div_inst|clk_out~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[4]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[5]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[6]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[7]~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\vga_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_sync~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\vga_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inDisplayArea~q\,
	devoe => ww_devoe,
	o => \vga_blank~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y27_N18
\clk_div_inst|counter_down[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[22]~3_combout\ = (!\clk_div_inst|counter_down\(31) & !\clk_div_inst|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(31),
	datad => \clk_div_inst|LessThan0~9_combout\,
	combout => \clk_div_inst|counter_down[22]~3_combout\);

-- Location: LCCOMB_X77_Y27_N2
\clk_div_inst|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~10_combout\ = (\clk_div_inst|counter_down\(31)) # ((!\clk_div_inst|counter_down\(0) & \clk_div_inst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(0),
	datab => \clk_div_inst|counter_down\(31),
	datad => \clk_div_inst|LessThan0~9_combout\,
	combout => \clk_div_inst|LessThan0~10_combout\);

-- Location: LCCOMB_X76_Y28_N0
\clk_div_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~0_combout\ = \clk_div_inst|counter_down\(0) $ (VCC)
-- \clk_div_inst|Add0~1\ = CARRY(\clk_div_inst|counter_down\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(0),
	datad => VCC,
	combout => \clk_div_inst|Add0~0_combout\,
	cout => \clk_div_inst|Add0~1\);

-- Location: LCCOMB_X76_Y28_N2
\clk_div_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~2_combout\ = (\clk_div_inst|counter_down\(1) & (!\clk_div_inst|Add0~1\)) # (!\clk_div_inst|counter_down\(1) & ((\clk_div_inst|Add0~1\) # (GND)))
-- \clk_div_inst|Add0~3\ = CARRY((!\clk_div_inst|Add0~1\) # (!\clk_div_inst|counter_down\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(1),
	datad => VCC,
	cin => \clk_div_inst|Add0~1\,
	combout => \clk_div_inst|Add0~2_combout\,
	cout => \clk_div_inst|Add0~3\);

-- Location: LCCOMB_X77_Y28_N14
\clk_div_inst|counter_down[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[1]~7_combout\ = (\clk_div_inst|Add0~2_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(1))))) # (!\clk_div_inst|Add0~2_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~2_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(1),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[1]~7_combout\);

-- Location: FF_X77_Y28_N15
\clk_div_inst|counter_down[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(1));

-- Location: LCCOMB_X76_Y28_N4
\clk_div_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~4_combout\ = (\clk_div_inst|counter_down\(2) & (\clk_div_inst|Add0~3\ $ (GND))) # (!\clk_div_inst|counter_down\(2) & (!\clk_div_inst|Add0~3\ & VCC))
-- \clk_div_inst|Add0~5\ = CARRY((\clk_div_inst|counter_down\(2) & !\clk_div_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(2),
	datad => VCC,
	cin => \clk_div_inst|Add0~3\,
	combout => \clk_div_inst|Add0~4_combout\,
	cout => \clk_div_inst|Add0~5\);

-- Location: LCCOMB_X77_Y28_N20
\clk_div_inst|counter_down[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[2]~6_combout\ = (\clk_div_inst|Add0~4_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(2))))) # (!\clk_div_inst|Add0~4_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~4_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(2),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[2]~6_combout\);

-- Location: FF_X77_Y28_N21
\clk_div_inst|counter_down[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(2));

-- Location: LCCOMB_X76_Y28_N6
\clk_div_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~6_combout\ = (\clk_div_inst|counter_down\(3) & (!\clk_div_inst|Add0~5\)) # (!\clk_div_inst|counter_down\(3) & ((\clk_div_inst|Add0~5\) # (GND)))
-- \clk_div_inst|Add0~7\ = CARRY((!\clk_div_inst|Add0~5\) # (!\clk_div_inst|counter_down\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(3),
	datad => VCC,
	cin => \clk_div_inst|Add0~5\,
	combout => \clk_div_inst|Add0~6_combout\,
	cout => \clk_div_inst|Add0~7\);

-- Location: LCCOMB_X77_Y28_N10
\clk_div_inst|counter_down[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[3]~5_combout\ = (\clk_div_inst|Add0~6_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(3))))) # (!\clk_div_inst|Add0~6_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~6_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(3),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[3]~5_combout\);

-- Location: FF_X77_Y28_N11
\clk_div_inst|counter_down[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(3));

-- Location: LCCOMB_X76_Y28_N8
\clk_div_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~8_combout\ = (\clk_div_inst|counter_down\(4) & (\clk_div_inst|Add0~7\ $ (GND))) # (!\clk_div_inst|counter_down\(4) & (!\clk_div_inst|Add0~7\ & VCC))
-- \clk_div_inst|Add0~9\ = CARRY((\clk_div_inst|counter_down\(4) & !\clk_div_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(4),
	datad => VCC,
	cin => \clk_div_inst|Add0~7\,
	combout => \clk_div_inst|Add0~8_combout\,
	cout => \clk_div_inst|Add0~9\);

-- Location: LCCOMB_X77_Y28_N12
\clk_div_inst|counter_down[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[4]~4_combout\ = (\clk_div_inst|Add0~8_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(4))))) # (!\clk_div_inst|Add0~8_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~8_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(4),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[4]~4_combout\);

-- Location: FF_X77_Y28_N13
\clk_div_inst|counter_down[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(4));

-- Location: LCCOMB_X76_Y28_N10
\clk_div_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~10_combout\ = (\clk_div_inst|counter_down\(5) & (!\clk_div_inst|Add0~9\)) # (!\clk_div_inst|counter_down\(5) & ((\clk_div_inst|Add0~9\) # (GND)))
-- \clk_div_inst|Add0~11\ = CARRY((!\clk_div_inst|Add0~9\) # (!\clk_div_inst|counter_down\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(5),
	datad => VCC,
	cin => \clk_div_inst|Add0~9\,
	combout => \clk_div_inst|Add0~10_combout\,
	cout => \clk_div_inst|Add0~11\);

-- Location: LCCOMB_X77_Y28_N18
\clk_div_inst|counter_down[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[5]~8_combout\ = (\clk_div_inst|Add0~10_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(5))))) # (!\clk_div_inst|Add0~10_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~10_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(5),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[5]~8_combout\);

-- Location: FF_X77_Y28_N19
\clk_div_inst|counter_down[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(5));

-- Location: LCCOMB_X76_Y28_N12
\clk_div_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~12_combout\ = (\clk_div_inst|counter_down\(6) & (\clk_div_inst|Add0~11\ $ (GND))) # (!\clk_div_inst|counter_down\(6) & (!\clk_div_inst|Add0~11\ & VCC))
-- \clk_div_inst|Add0~13\ = CARRY((\clk_div_inst|counter_down\(6) & !\clk_div_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(6),
	datad => VCC,
	cin => \clk_div_inst|Add0~11\,
	combout => \clk_div_inst|Add0~12_combout\,
	cout => \clk_div_inst|Add0~13\);

-- Location: LCCOMB_X77_Y28_N24
\clk_div_inst|counter_down[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[6]~9_combout\ = (\clk_div_inst|Add0~12_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(6))))) # (!\clk_div_inst|Add0~12_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~12_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(6),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[6]~9_combout\);

-- Location: FF_X77_Y28_N25
\clk_div_inst|counter_down[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(6));

-- Location: LCCOMB_X76_Y28_N14
\clk_div_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~14_combout\ = (\clk_div_inst|counter_down\(7) & (!\clk_div_inst|Add0~13\)) # (!\clk_div_inst|counter_down\(7) & ((\clk_div_inst|Add0~13\) # (GND)))
-- \clk_div_inst|Add0~15\ = CARRY((!\clk_div_inst|Add0~13\) # (!\clk_div_inst|counter_down\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(7),
	datad => VCC,
	cin => \clk_div_inst|Add0~13\,
	combout => \clk_div_inst|Add0~14_combout\,
	cout => \clk_div_inst|Add0~15\);

-- Location: LCCOMB_X77_Y28_N22
\clk_div_inst|counter_down[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[7]~10_combout\ = (\clk_div_inst|Add0~14_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(7))))) # (!\clk_div_inst|Add0~14_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~14_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(7),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[7]~10_combout\);

-- Location: FF_X77_Y28_N23
\clk_div_inst|counter_down[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(7));

-- Location: LCCOMB_X76_Y28_N16
\clk_div_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~16_combout\ = (\clk_div_inst|counter_down\(8) & (\clk_div_inst|Add0~15\ $ (GND))) # (!\clk_div_inst|counter_down\(8) & (!\clk_div_inst|Add0~15\ & VCC))
-- \clk_div_inst|Add0~17\ = CARRY((\clk_div_inst|counter_down\(8) & !\clk_div_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(8),
	datad => VCC,
	cin => \clk_div_inst|Add0~15\,
	combout => \clk_div_inst|Add0~16_combout\,
	cout => \clk_div_inst|Add0~17\);

-- Location: LCCOMB_X77_Y28_N8
\clk_div_inst|counter_down[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[8]~11_combout\ = (\clk_div_inst|Add0~16_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(8))))) # (!\clk_div_inst|Add0~16_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~16_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(8),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[8]~11_combout\);

-- Location: FF_X77_Y28_N9
\clk_div_inst|counter_down[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(8));

-- Location: LCCOMB_X76_Y28_N18
\clk_div_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~18_combout\ = (\clk_div_inst|counter_down\(9) & (!\clk_div_inst|Add0~17\)) # (!\clk_div_inst|counter_down\(9) & ((\clk_div_inst|Add0~17\) # (GND)))
-- \clk_div_inst|Add0~19\ = CARRY((!\clk_div_inst|Add0~17\) # (!\clk_div_inst|counter_down\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(9),
	datad => VCC,
	cin => \clk_div_inst|Add0~17\,
	combout => \clk_div_inst|Add0~18_combout\,
	cout => \clk_div_inst|Add0~19\);

-- Location: LCCOMB_X75_Y27_N8
\clk_div_inst|counter_down[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[9]~12_combout\ = (\clk_div_inst|Add0~18_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down\(9) & \clk_div_inst|counter_down[22]~3_combout\)))) # (!\clk_div_inst|Add0~18_combout\ & 
-- (((\clk_div_inst|counter_down\(9) & \clk_div_inst|counter_down[22]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~18_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(9),
	datad => \clk_div_inst|counter_down[22]~3_combout\,
	combout => \clk_div_inst|counter_down[9]~12_combout\);

-- Location: FF_X75_Y27_N9
\clk_div_inst|counter_down[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(9));

-- Location: LCCOMB_X76_Y28_N20
\clk_div_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~20_combout\ = (\clk_div_inst|counter_down\(10) & (\clk_div_inst|Add0~19\ $ (GND))) # (!\clk_div_inst|counter_down\(10) & (!\clk_div_inst|Add0~19\ & VCC))
-- \clk_div_inst|Add0~21\ = CARRY((\clk_div_inst|counter_down\(10) & !\clk_div_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(10),
	datad => VCC,
	cin => \clk_div_inst|Add0~19\,
	combout => \clk_div_inst|Add0~20_combout\,
	cout => \clk_div_inst|Add0~21\);

-- Location: LCCOMB_X75_Y27_N22
\clk_div_inst|counter_down[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[10]~13_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(10)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~20_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(10),
	datad => \clk_div_inst|Add0~20_combout\,
	combout => \clk_div_inst|counter_down[10]~13_combout\);

-- Location: FF_X75_Y27_N23
\clk_div_inst|counter_down[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(10));

-- Location: LCCOMB_X76_Y28_N22
\clk_div_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~22_combout\ = (\clk_div_inst|counter_down\(11) & (!\clk_div_inst|Add0~21\)) # (!\clk_div_inst|counter_down\(11) & ((\clk_div_inst|Add0~21\) # (GND)))
-- \clk_div_inst|Add0~23\ = CARRY((!\clk_div_inst|Add0~21\) # (!\clk_div_inst|counter_down\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(11),
	datad => VCC,
	cin => \clk_div_inst|Add0~21\,
	combout => \clk_div_inst|Add0~22_combout\,
	cout => \clk_div_inst|Add0~23\);

-- Location: LCCOMB_X75_Y27_N0
\clk_div_inst|counter_down[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[11]~14_combout\ = (\clk_div_inst|Add0~22_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down\(11) & \clk_div_inst|counter_down[22]~3_combout\)))) # (!\clk_div_inst|Add0~22_combout\ & 
-- (((\clk_div_inst|counter_down\(11) & \clk_div_inst|counter_down[22]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~22_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(11),
	datad => \clk_div_inst|counter_down[22]~3_combout\,
	combout => \clk_div_inst|counter_down[11]~14_combout\);

-- Location: FF_X75_Y27_N1
\clk_div_inst|counter_down[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(11));

-- Location: LCCOMB_X76_Y28_N24
\clk_div_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~24_combout\ = (\clk_div_inst|counter_down\(12) & (\clk_div_inst|Add0~23\ $ (GND))) # (!\clk_div_inst|counter_down\(12) & (!\clk_div_inst|Add0~23\ & VCC))
-- \clk_div_inst|Add0~25\ = CARRY((\clk_div_inst|counter_down\(12) & !\clk_div_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(12),
	datad => VCC,
	cin => \clk_div_inst|Add0~23\,
	combout => \clk_div_inst|Add0~24_combout\,
	cout => \clk_div_inst|Add0~25\);

-- Location: LCCOMB_X75_Y27_N2
\clk_div_inst|counter_down[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[12]~15_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(12)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~24_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(12),
	datad => \clk_div_inst|Add0~24_combout\,
	combout => \clk_div_inst|counter_down[12]~15_combout\);

-- Location: FF_X75_Y27_N3
\clk_div_inst|counter_down[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(12));

-- Location: LCCOMB_X76_Y28_N26
\clk_div_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~26_combout\ = (\clk_div_inst|counter_down\(13) & (!\clk_div_inst|Add0~25\)) # (!\clk_div_inst|counter_down\(13) & ((\clk_div_inst|Add0~25\) # (GND)))
-- \clk_div_inst|Add0~27\ = CARRY((!\clk_div_inst|Add0~25\) # (!\clk_div_inst|counter_down\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(13),
	datad => VCC,
	cin => \clk_div_inst|Add0~25\,
	combout => \clk_div_inst|Add0~26_combout\,
	cout => \clk_div_inst|Add0~27\);

-- Location: LCCOMB_X77_Y28_N0
\clk_div_inst|counter_down[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[13]~16_combout\ = (\clk_div_inst|Add0~26_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(13))))) # (!\clk_div_inst|Add0~26_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~26_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(13),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[13]~16_combout\);

-- Location: FF_X77_Y28_N1
\clk_div_inst|counter_down[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(13));

-- Location: LCCOMB_X76_Y28_N28
\clk_div_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~28_combout\ = (\clk_div_inst|counter_down\(14) & (\clk_div_inst|Add0~27\ $ (GND))) # (!\clk_div_inst|counter_down\(14) & (!\clk_div_inst|Add0~27\ & VCC))
-- \clk_div_inst|Add0~29\ = CARRY((\clk_div_inst|counter_down\(14) & !\clk_div_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(14),
	datad => VCC,
	cin => \clk_div_inst|Add0~27\,
	combout => \clk_div_inst|Add0~28_combout\,
	cout => \clk_div_inst|Add0~29\);

-- Location: LCCOMB_X77_Y28_N6
\clk_div_inst|counter_down[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[14]~17_combout\ = (\clk_div_inst|Add0~28_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(14))))) # (!\clk_div_inst|Add0~28_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~28_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(14),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[14]~17_combout\);

-- Location: FF_X77_Y28_N7
\clk_div_inst|counter_down[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(14));

-- Location: LCCOMB_X76_Y28_N30
\clk_div_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~30_combout\ = (\clk_div_inst|counter_down\(15) & (!\clk_div_inst|Add0~29\)) # (!\clk_div_inst|counter_down\(15) & ((\clk_div_inst|Add0~29\) # (GND)))
-- \clk_div_inst|Add0~31\ = CARRY((!\clk_div_inst|Add0~29\) # (!\clk_div_inst|counter_down\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(15),
	datad => VCC,
	cin => \clk_div_inst|Add0~29\,
	combout => \clk_div_inst|Add0~30_combout\,
	cout => \clk_div_inst|Add0~31\);

-- Location: LCCOMB_X77_Y28_N4
\clk_div_inst|counter_down[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[15]~18_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(15)) # ((\clk_div_inst|Add0~30_combout\ & \clk_div_inst|LessThan0~10_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|Add0~30_combout\ & ((\clk_div_inst|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|Add0~30_combout\,
	datac => \clk_div_inst|counter_down\(15),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[15]~18_combout\);

-- Location: FF_X77_Y28_N5
\clk_div_inst|counter_down[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(15));

-- Location: LCCOMB_X76_Y27_N0
\clk_div_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~32_combout\ = (\clk_div_inst|counter_down\(16) & (\clk_div_inst|Add0~31\ $ (GND))) # (!\clk_div_inst|counter_down\(16) & (!\clk_div_inst|Add0~31\ & VCC))
-- \clk_div_inst|Add0~33\ = CARRY((\clk_div_inst|counter_down\(16) & !\clk_div_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(16),
	datad => VCC,
	cin => \clk_div_inst|Add0~31\,
	combout => \clk_div_inst|Add0~32_combout\,
	cout => \clk_div_inst|Add0~33\);

-- Location: LCCOMB_X77_Y28_N26
\clk_div_inst|counter_down[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[16]~19_combout\ = (\clk_div_inst|Add0~32_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down[22]~3_combout\ & \clk_div_inst|counter_down\(16))))) # (!\clk_div_inst|Add0~32_combout\ & 
-- (\clk_div_inst|counter_down[22]~3_combout\ & (\clk_div_inst|counter_down\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~32_combout\,
	datab => \clk_div_inst|counter_down[22]~3_combout\,
	datac => \clk_div_inst|counter_down\(16),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[16]~19_combout\);

-- Location: FF_X77_Y28_N27
\clk_div_inst|counter_down[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[16]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(16));

-- Location: LCCOMB_X76_Y27_N2
\clk_div_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~34_combout\ = (\clk_div_inst|counter_down\(17) & (!\clk_div_inst|Add0~33\)) # (!\clk_div_inst|counter_down\(17) & ((\clk_div_inst|Add0~33\) # (GND)))
-- \clk_div_inst|Add0~35\ = CARRY((!\clk_div_inst|Add0~33\) # (!\clk_div_inst|counter_down\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(17),
	datad => VCC,
	cin => \clk_div_inst|Add0~33\,
	combout => \clk_div_inst|Add0~34_combout\,
	cout => \clk_div_inst|Add0~35\);

-- Location: LCCOMB_X75_Y27_N6
\clk_div_inst|counter_down[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[17]~20_combout\ = (\clk_div_inst|Add0~34_combout\ & ((\clk_div_inst|LessThan0~10_combout\) # ((\clk_div_inst|counter_down\(17) & \clk_div_inst|counter_down[22]~3_combout\)))) # (!\clk_div_inst|Add0~34_combout\ & 
-- (((\clk_div_inst|counter_down\(17) & \clk_div_inst|counter_down[22]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~34_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(17),
	datad => \clk_div_inst|counter_down[22]~3_combout\,
	combout => \clk_div_inst|counter_down[17]~20_combout\);

-- Location: FF_X75_Y27_N7
\clk_div_inst|counter_down[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(17));

-- Location: LCCOMB_X76_Y27_N4
\clk_div_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~36_combout\ = (\clk_div_inst|counter_down\(18) & (\clk_div_inst|Add0~35\ $ (GND))) # (!\clk_div_inst|counter_down\(18) & (!\clk_div_inst|Add0~35\ & VCC))
-- \clk_div_inst|Add0~37\ = CARRY((\clk_div_inst|counter_down\(18) & !\clk_div_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(18),
	datad => VCC,
	cin => \clk_div_inst|Add0~35\,
	combout => \clk_div_inst|Add0~36_combout\,
	cout => \clk_div_inst|Add0~37\);

-- Location: LCCOMB_X75_Y27_N4
\clk_div_inst|counter_down[18]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[18]~21_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(18)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~36_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(18),
	datad => \clk_div_inst|Add0~36_combout\,
	combout => \clk_div_inst|counter_down[18]~21_combout\);

-- Location: FF_X75_Y27_N5
\clk_div_inst|counter_down[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[18]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(18));

-- Location: LCCOMB_X76_Y27_N6
\clk_div_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~38_combout\ = (\clk_div_inst|counter_down\(19) & (!\clk_div_inst|Add0~37\)) # (!\clk_div_inst|counter_down\(19) & ((\clk_div_inst|Add0~37\) # (GND)))
-- \clk_div_inst|Add0~39\ = CARRY((!\clk_div_inst|Add0~37\) # (!\clk_div_inst|counter_down\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(19),
	datad => VCC,
	cin => \clk_div_inst|Add0~37\,
	combout => \clk_div_inst|Add0~38_combout\,
	cout => \clk_div_inst|Add0~39\);

-- Location: LCCOMB_X75_Y27_N10
\clk_div_inst|counter_down[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[19]~22_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(19)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~38_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(19),
	datad => \clk_div_inst|Add0~38_combout\,
	combout => \clk_div_inst|counter_down[19]~22_combout\);

-- Location: FF_X75_Y27_N11
\clk_div_inst|counter_down[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[19]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(19));

-- Location: LCCOMB_X76_Y27_N8
\clk_div_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~40_combout\ = (\clk_div_inst|counter_down\(20) & (\clk_div_inst|Add0~39\ $ (GND))) # (!\clk_div_inst|counter_down\(20) & (!\clk_div_inst|Add0~39\ & VCC))
-- \clk_div_inst|Add0~41\ = CARRY((\clk_div_inst|counter_down\(20) & !\clk_div_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(20),
	datad => VCC,
	cin => \clk_div_inst|Add0~39\,
	combout => \clk_div_inst|Add0~40_combout\,
	cout => \clk_div_inst|Add0~41\);

-- Location: LCCOMB_X75_Y27_N20
\clk_div_inst|counter_down[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[20]~23_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(20)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~40_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(20),
	datad => \clk_div_inst|Add0~40_combout\,
	combout => \clk_div_inst|counter_down[20]~23_combout\);

-- Location: FF_X75_Y27_N21
\clk_div_inst|counter_down[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[20]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(20));

-- Location: LCCOMB_X75_Y27_N30
\clk_div_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~5_combout\ = (!\clk_div_inst|counter_down\(19) & (!\clk_div_inst|counter_down\(20) & (!\clk_div_inst|counter_down\(18) & !\clk_div_inst|counter_down\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(19),
	datab => \clk_div_inst|counter_down\(20),
	datac => \clk_div_inst|counter_down\(18),
	datad => \clk_div_inst|counter_down\(17),
	combout => \clk_div_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X77_Y27_N4
\clk_div_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Equal0~0_combout\ = ((\clk_div_inst|counter_down\(31)) # (!\clk_div_inst|LessThan0~9_combout\)) # (!\clk_div_inst|counter_down\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(0),
	datab => \clk_div_inst|counter_down\(31),
	datad => \clk_div_inst|LessThan0~9_combout\,
	combout => \clk_div_inst|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y27_N10
\clk_div_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~42_combout\ = (\clk_div_inst|counter_down\(21) & (!\clk_div_inst|Add0~41\)) # (!\clk_div_inst|counter_down\(21) & ((\clk_div_inst|Add0~41\) # (GND)))
-- \clk_div_inst|Add0~43\ = CARRY((!\clk_div_inst|Add0~41\) # (!\clk_div_inst|counter_down\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(21),
	datad => VCC,
	cin => \clk_div_inst|Add0~41\,
	combout => \clk_div_inst|Add0~42_combout\,
	cout => \clk_div_inst|Add0~43\);

-- Location: LCCOMB_X75_Y27_N24
\clk_div_inst|counter_down[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[21]~24_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(21)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~42_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(21),
	datad => \clk_div_inst|Add0~42_combout\,
	combout => \clk_div_inst|counter_down[21]~24_combout\);

-- Location: FF_X75_Y27_N25
\clk_div_inst|counter_down[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[21]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(21));

-- Location: LCCOMB_X76_Y27_N12
\clk_div_inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~44_combout\ = (\clk_div_inst|counter_down\(22) & (\clk_div_inst|Add0~43\ $ (GND))) # (!\clk_div_inst|counter_down\(22) & (!\clk_div_inst|Add0~43\ & VCC))
-- \clk_div_inst|Add0~45\ = CARRY((\clk_div_inst|counter_down\(22) & !\clk_div_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(22),
	datad => VCC,
	cin => \clk_div_inst|Add0~43\,
	combout => \clk_div_inst|Add0~44_combout\,
	cout => \clk_div_inst|Add0~45\);

-- Location: LCCOMB_X75_Y27_N14
\clk_div_inst|counter_down[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[22]~25_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(22)) # ((\clk_div_inst|Add0~44_combout\ & \clk_div_inst|LessThan0~10_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|Add0~44_combout\ & ((\clk_div_inst|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|Add0~44_combout\,
	datac => \clk_div_inst|counter_down\(22),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[22]~25_combout\);

-- Location: FF_X75_Y27_N15
\clk_div_inst|counter_down[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[22]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(22));

-- Location: LCCOMB_X76_Y27_N14
\clk_div_inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~46_combout\ = (\clk_div_inst|counter_down\(23) & (!\clk_div_inst|Add0~45\)) # (!\clk_div_inst|counter_down\(23) & ((\clk_div_inst|Add0~45\) # (GND)))
-- \clk_div_inst|Add0~47\ = CARRY((!\clk_div_inst|Add0~45\) # (!\clk_div_inst|counter_down\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(23),
	datad => VCC,
	cin => \clk_div_inst|Add0~45\,
	combout => \clk_div_inst|Add0~46_combout\,
	cout => \clk_div_inst|Add0~47\);

-- Location: LCCOMB_X75_Y27_N28
\clk_div_inst|counter_down[23]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[23]~26_combout\ = (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~46_combout\) # ((\clk_div_inst|counter_down\(23) & \clk_div_inst|counter_down[22]~3_combout\)))) # (!\clk_div_inst|LessThan0~10_combout\ & 
-- (((\clk_div_inst|counter_down\(23) & \clk_div_inst|counter_down[22]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|LessThan0~10_combout\,
	datab => \clk_div_inst|Add0~46_combout\,
	datac => \clk_div_inst|counter_down\(23),
	datad => \clk_div_inst|counter_down[22]~3_combout\,
	combout => \clk_div_inst|counter_down[23]~26_combout\);

-- Location: FF_X75_Y27_N29
\clk_div_inst|counter_down[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[23]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(23));

-- Location: LCCOMB_X76_Y27_N16
\clk_div_inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~48_combout\ = (\clk_div_inst|counter_down\(24) & (\clk_div_inst|Add0~47\ $ (GND))) # (!\clk_div_inst|counter_down\(24) & (!\clk_div_inst|Add0~47\ & VCC))
-- \clk_div_inst|Add0~49\ = CARRY((\clk_div_inst|counter_down\(24) & !\clk_div_inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(24),
	datad => VCC,
	cin => \clk_div_inst|Add0~47\,
	combout => \clk_div_inst|Add0~48_combout\,
	cout => \clk_div_inst|Add0~49\);

-- Location: LCCOMB_X75_Y27_N26
\clk_div_inst|counter_down[24]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[24]~27_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(24)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~48_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(24),
	datad => \clk_div_inst|Add0~48_combout\,
	combout => \clk_div_inst|counter_down[24]~27_combout\);

-- Location: FF_X75_Y27_N27
\clk_div_inst|counter_down[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[24]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(24));

-- Location: LCCOMB_X76_Y27_N18
\clk_div_inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~50_combout\ = (\clk_div_inst|counter_down\(25) & (!\clk_div_inst|Add0~49\)) # (!\clk_div_inst|counter_down\(25) & ((\clk_div_inst|Add0~49\) # (GND)))
-- \clk_div_inst|Add0~51\ = CARRY((!\clk_div_inst|Add0~49\) # (!\clk_div_inst|counter_down\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(25),
	datad => VCC,
	cin => \clk_div_inst|Add0~49\,
	combout => \clk_div_inst|Add0~50_combout\,
	cout => \clk_div_inst|Add0~51\);

-- Location: LCCOMB_X77_Y27_N26
\clk_div_inst|counter_down[25]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[25]~28_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(25)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~50_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(25),
	datad => \clk_div_inst|Add0~50_combout\,
	combout => \clk_div_inst|counter_down[25]~28_combout\);

-- Location: FF_X77_Y27_N27
\clk_div_inst|counter_down[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[25]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(25));

-- Location: LCCOMB_X76_Y27_N20
\clk_div_inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~52_combout\ = (\clk_div_inst|counter_down\(26) & (\clk_div_inst|Add0~51\ $ (GND))) # (!\clk_div_inst|counter_down\(26) & (!\clk_div_inst|Add0~51\ & VCC))
-- \clk_div_inst|Add0~53\ = CARRY((\clk_div_inst|counter_down\(26) & !\clk_div_inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(26),
	datad => VCC,
	cin => \clk_div_inst|Add0~51\,
	combout => \clk_div_inst|Add0~52_combout\,
	cout => \clk_div_inst|Add0~53\);

-- Location: LCCOMB_X77_Y27_N6
\clk_div_inst|counter_down[26]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[26]~29_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(26)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~52_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(26),
	datad => \clk_div_inst|Add0~52_combout\,
	combout => \clk_div_inst|counter_down[26]~29_combout\);

-- Location: FF_X77_Y27_N7
\clk_div_inst|counter_down[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[26]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(26));

-- Location: LCCOMB_X76_Y27_N22
\clk_div_inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~54_combout\ = (\clk_div_inst|counter_down\(27) & (!\clk_div_inst|Add0~53\)) # (!\clk_div_inst|counter_down\(27) & ((\clk_div_inst|Add0~53\) # (GND)))
-- \clk_div_inst|Add0~55\ = CARRY((!\clk_div_inst|Add0~53\) # (!\clk_div_inst|counter_down\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(27),
	datad => VCC,
	cin => \clk_div_inst|Add0~53\,
	combout => \clk_div_inst|Add0~54_combout\,
	cout => \clk_div_inst|Add0~55\);

-- Location: LCCOMB_X77_Y27_N16
\clk_div_inst|counter_down[27]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[27]~30_combout\ = (\clk_div_inst|counter_down[22]~3_combout\ & ((\clk_div_inst|counter_down\(27)) # ((\clk_div_inst|LessThan0~10_combout\ & \clk_div_inst|Add0~54_combout\)))) # (!\clk_div_inst|counter_down[22]~3_combout\ & 
-- (\clk_div_inst|LessThan0~10_combout\ & ((\clk_div_inst|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down[22]~3_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(27),
	datad => \clk_div_inst|Add0~54_combout\,
	combout => \clk_div_inst|counter_down[27]~30_combout\);

-- Location: FF_X77_Y27_N17
\clk_div_inst|counter_down[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(27));

-- Location: LCCOMB_X76_Y27_N24
\clk_div_inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~56_combout\ = (\clk_div_inst|counter_down\(28) & (\clk_div_inst|Add0~55\ $ (GND))) # (!\clk_div_inst|counter_down\(28) & (!\clk_div_inst|Add0~55\ & VCC))
-- \clk_div_inst|Add0~57\ = CARRY((\clk_div_inst|counter_down\(28) & !\clk_div_inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(28),
	datad => VCC,
	cin => \clk_div_inst|Add0~55\,
	combout => \clk_div_inst|Add0~56_combout\,
	cout => \clk_div_inst|Add0~57\);

-- Location: LCCOMB_X77_Y27_N14
\clk_div_inst|counter_down[28]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[28]~31_combout\ = (\clk_div_inst|LessThan0~10_combout\ & (((\clk_div_inst|Add0~56_combout\)))) # (!\clk_div_inst|LessThan0~10_combout\ & (\clk_div_inst|Equal0~0_combout\ & (\clk_div_inst|counter_down\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Equal0~0_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(28),
	datad => \clk_div_inst|Add0~56_combout\,
	combout => \clk_div_inst|counter_down[28]~31_combout\);

-- Location: FF_X77_Y27_N15
\clk_div_inst|counter_down[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[28]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(28));

-- Location: LCCOMB_X76_Y27_N26
\clk_div_inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~58_combout\ = (\clk_div_inst|counter_down\(29) & (!\clk_div_inst|Add0~57\)) # (!\clk_div_inst|counter_down\(29) & ((\clk_div_inst|Add0~57\) # (GND)))
-- \clk_div_inst|Add0~59\ = CARRY((!\clk_div_inst|Add0~57\) # (!\clk_div_inst|counter_down\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_inst|counter_down\(29),
	datad => VCC,
	cin => \clk_div_inst|Add0~57\,
	combout => \clk_div_inst|Add0~58_combout\,
	cout => \clk_div_inst|Add0~59\);

-- Location: LCCOMB_X77_Y27_N10
\clk_div_inst|counter_down[29]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[29]~32_combout\ = (\clk_div_inst|LessThan0~10_combout\ & (\clk_div_inst|Add0~58_combout\)) # (!\clk_div_inst|LessThan0~10_combout\ & (((\clk_div_inst|Equal0~0_combout\ & \clk_div_inst|counter_down\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Add0~58_combout\,
	datab => \clk_div_inst|Equal0~0_combout\,
	datac => \clk_div_inst|counter_down\(29),
	datad => \clk_div_inst|LessThan0~10_combout\,
	combout => \clk_div_inst|counter_down[29]~32_combout\);

-- Location: FF_X77_Y27_N11
\clk_div_inst|counter_down[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[29]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(29));

-- Location: LCCOMB_X76_Y27_N28
\clk_div_inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~60_combout\ = (\clk_div_inst|counter_down\(30) & (\clk_div_inst|Add0~59\ $ (GND))) # (!\clk_div_inst|counter_down\(30) & (!\clk_div_inst|Add0~59\ & VCC))
-- \clk_div_inst|Add0~61\ = CARRY((\clk_div_inst|counter_down\(30) & !\clk_div_inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(30),
	datad => VCC,
	cin => \clk_div_inst|Add0~59\,
	combout => \clk_div_inst|Add0~60_combout\,
	cout => \clk_div_inst|Add0~61\);

-- Location: LCCOMB_X77_Y27_N30
\clk_div_inst|counter_down[30]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[30]~33_combout\ = (\clk_div_inst|LessThan0~10_combout\ & (((\clk_div_inst|Add0~60_combout\)))) # (!\clk_div_inst|LessThan0~10_combout\ & (\clk_div_inst|Equal0~0_combout\ & (\clk_div_inst|counter_down\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|Equal0~0_combout\,
	datab => \clk_div_inst|LessThan0~10_combout\,
	datac => \clk_div_inst|counter_down\(30),
	datad => \clk_div_inst|Add0~60_combout\,
	combout => \clk_div_inst|counter_down[30]~33_combout\);

-- Location: FF_X77_Y27_N31
\clk_div_inst|counter_down[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[30]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(30));

-- Location: LCCOMB_X77_Y27_N12
\clk_div_inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~7_combout\ = (!\clk_div_inst|counter_down\(25) & (!\clk_div_inst|counter_down\(27) & (!\clk_div_inst|counter_down\(28) & !\clk_div_inst|counter_down\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(25),
	datab => \clk_div_inst|counter_down\(27),
	datac => \clk_div_inst|counter_down\(28),
	datad => \clk_div_inst|counter_down\(26),
	combout => \clk_div_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X77_Y27_N8
\clk_div_inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~8_combout\ = (!\clk_div_inst|counter_down\(29) & (!\clk_div_inst|counter_down\(30) & \clk_div_inst|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(29),
	datac => \clk_div_inst|counter_down\(30),
	datad => \clk_div_inst|LessThan0~7_combout\,
	combout => \clk_div_inst|LessThan0~8_combout\);

-- Location: LCCOMB_X75_Y27_N16
\clk_div_inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~6_combout\ = (!\clk_div_inst|counter_down\(24) & (!\clk_div_inst|counter_down\(23) & (!\clk_div_inst|counter_down\(22) & !\clk_div_inst|counter_down\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(24),
	datab => \clk_div_inst|counter_down\(23),
	datac => \clk_div_inst|counter_down\(22),
	datad => \clk_div_inst|counter_down\(21),
	combout => \clk_div_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X77_Y28_N30
\clk_div_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~1_combout\ = (!\clk_div_inst|counter_down\(7) & (!\clk_div_inst|counter_down\(5) & (!\clk_div_inst|counter_down\(8) & !\clk_div_inst|counter_down\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(7),
	datab => \clk_div_inst|counter_down\(5),
	datac => \clk_div_inst|counter_down\(8),
	datad => \clk_div_inst|counter_down\(6),
	combout => \clk_div_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X77_Y28_N16
\clk_div_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~0_combout\ = (!\clk_div_inst|counter_down\(3) & (!\clk_div_inst|counter_down\(2) & (!\clk_div_inst|counter_down\(1) & !\clk_div_inst|counter_down\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(3),
	datab => \clk_div_inst|counter_down\(2),
	datac => \clk_div_inst|counter_down\(1),
	datad => \clk_div_inst|counter_down\(4),
	combout => \clk_div_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X75_Y27_N12
\clk_div_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~2_combout\ = (!\clk_div_inst|counter_down\(10) & (!\clk_div_inst|counter_down\(12) & (!\clk_div_inst|counter_down\(9) & !\clk_div_inst|counter_down\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(10),
	datab => \clk_div_inst|counter_down\(12),
	datac => \clk_div_inst|counter_down\(9),
	datad => \clk_div_inst|counter_down\(11),
	combout => \clk_div_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X77_Y28_N28
\clk_div_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~3_combout\ = (!\clk_div_inst|counter_down\(16) & (!\clk_div_inst|counter_down\(13) & (!\clk_div_inst|counter_down\(15) & !\clk_div_inst|counter_down\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(16),
	datab => \clk_div_inst|counter_down\(13),
	datac => \clk_div_inst|counter_down\(15),
	datad => \clk_div_inst|counter_down\(14),
	combout => \clk_div_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X77_Y27_N24
\clk_div_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~4_combout\ = (\clk_div_inst|LessThan0~1_combout\ & (\clk_div_inst|LessThan0~0_combout\ & (\clk_div_inst|LessThan0~2_combout\ & \clk_div_inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|LessThan0~1_combout\,
	datab => \clk_div_inst|LessThan0~0_combout\,
	datac => \clk_div_inst|LessThan0~2_combout\,
	datad => \clk_div_inst|LessThan0~3_combout\,
	combout => \clk_div_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X77_Y27_N20
\clk_div_inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|LessThan0~9_combout\ = (\clk_div_inst|LessThan0~5_combout\ & (\clk_div_inst|LessThan0~8_combout\ & (\clk_div_inst|LessThan0~6_combout\ & \clk_div_inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|LessThan0~5_combout\,
	datab => \clk_div_inst|LessThan0~8_combout\,
	datac => \clk_div_inst|LessThan0~6_combout\,
	datad => \clk_div_inst|LessThan0~4_combout\,
	combout => \clk_div_inst|LessThan0~9_combout\);

-- Location: LCCOMB_X76_Y27_N30
\clk_div_inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|Add0~62_combout\ = \clk_div_inst|Add0~61\ $ (\clk_div_inst|counter_down\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_div_inst|counter_down\(31),
	cin => \clk_div_inst|Add0~61\,
	combout => \clk_div_inst|Add0~62_combout\);

-- Location: LCCOMB_X77_Y27_N28
\clk_div_inst|counter_down[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[31]~34_combout\ = (\clk_div_inst|Add0~62_combout\ & ((\clk_div_inst|counter_down\(31)) # ((!\clk_div_inst|counter_down\(0) & \clk_div_inst|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(0),
	datab => \clk_div_inst|LessThan0~9_combout\,
	datac => \clk_div_inst|counter_down\(31),
	datad => \clk_div_inst|Add0~62_combout\,
	combout => \clk_div_inst|counter_down[31]~34_combout\);

-- Location: FF_X77_Y27_N29
\clk_div_inst|counter_down[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div_inst|counter_down[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(31));

-- Location: LCCOMB_X77_Y27_N0
\clk_div_inst|counter_down[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|counter_down[0]~2_combout\ = (\clk_div_inst|counter_down\(31) & (((\clk_div_inst|Add0~0_combout\)))) # (!\clk_div_inst|counter_down\(31) & ((\clk_div_inst|counter_down\(0) & ((!\clk_div_inst|LessThan0~9_combout\))) # 
-- (!\clk_div_inst|counter_down\(0) & (\clk_div_inst|Add0~0_combout\ & \clk_div_inst|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(0),
	datab => \clk_div_inst|counter_down\(31),
	datac => \clk_div_inst|Add0~0_combout\,
	datad => \clk_div_inst|LessThan0~9_combout\,
	combout => \clk_div_inst|counter_down[0]~2_combout\);

-- Location: FF_X76_Y28_N13
\clk_div_inst|counter_down[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div_inst|counter_down[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|counter_down\(0));

-- Location: LCCOMB_X77_Y27_N22
\clk_div_inst|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div_inst|clk_out~0_combout\ = (!\clk_div_inst|counter_down\(31) & ((\clk_div_inst|LessThan0~9_combout\ & (\clk_div_inst|counter_down\(0))) # (!\clk_div_inst|LessThan0~9_combout\ & ((\clk_div_inst|clk_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_inst|counter_down\(0),
	datab => \clk_div_inst|counter_down\(31),
	datac => \clk_div_inst|LessThan0~9_combout\,
	datad => \clk_div_inst|clk_out~q\,
	combout => \clk_div_inst|clk_out~0_combout\);

-- Location: FF_X77_Y27_N5
\clk_div_inst|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_div_inst|clk_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div_inst|clk_out~q\);

-- Location: CLKCTRL_G16
\clk_div_inst|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div_inst|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div_inst|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y72_N10
\sync_gen|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~0_combout\ = \sync_gen|xcounter\(0) $ (VCC)
-- \sync_gen|Add0~1\ = CARRY(\sync_gen|xcounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|xcounter\(0),
	datad => VCC,
	combout => \sync_gen|Add0~0_combout\,
	cout => \sync_gen|Add0~1\);

-- Location: LCCOMB_X28_Y72_N4
\sync_gen|xcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|xcounter~2_combout\ = (\sync_gen|Add0~0_combout\ & !\sync_gen|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|Add0~0_combout\,
	datad => \sync_gen|Equal0~2_combout\,
	combout => \sync_gen|xcounter~2_combout\);

-- Location: FF_X28_Y72_N5
\sync_gen|xcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|xcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(0));

-- Location: LCCOMB_X28_Y72_N12
\sync_gen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~2_combout\ = (\sync_gen|xcounter\(1) & (!\sync_gen|Add0~1\)) # (!\sync_gen|xcounter\(1) & ((\sync_gen|Add0~1\) # (GND)))
-- \sync_gen|Add0~3\ = CARRY((!\sync_gen|Add0~1\) # (!\sync_gen|xcounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(1),
	datad => VCC,
	cin => \sync_gen|Add0~1\,
	combout => \sync_gen|Add0~2_combout\,
	cout => \sync_gen|Add0~3\);

-- Location: FF_X28_Y72_N13
\sync_gen|xcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(1));

-- Location: LCCOMB_X28_Y72_N14
\sync_gen|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~4_combout\ = (\sync_gen|xcounter\(2) & (\sync_gen|Add0~3\ $ (GND))) # (!\sync_gen|xcounter\(2) & (!\sync_gen|Add0~3\ & VCC))
-- \sync_gen|Add0~5\ = CARRY((\sync_gen|xcounter\(2) & !\sync_gen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|xcounter\(2),
	datad => VCC,
	cin => \sync_gen|Add0~3\,
	combout => \sync_gen|Add0~4_combout\,
	cout => \sync_gen|Add0~5\);

-- Location: FF_X28_Y72_N15
\sync_gen|xcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(2));

-- Location: LCCOMB_X28_Y72_N16
\sync_gen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~6_combout\ = (\sync_gen|xcounter\(3) & (!\sync_gen|Add0~5\)) # (!\sync_gen|xcounter\(3) & ((\sync_gen|Add0~5\) # (GND)))
-- \sync_gen|Add0~7\ = CARRY((!\sync_gen|Add0~5\) # (!\sync_gen|xcounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|xcounter\(3),
	datad => VCC,
	cin => \sync_gen|Add0~5\,
	combout => \sync_gen|Add0~6_combout\,
	cout => \sync_gen|Add0~7\);

-- Location: FF_X28_Y72_N17
\sync_gen|xcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(3));

-- Location: LCCOMB_X28_Y72_N18
\sync_gen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~8_combout\ = (\sync_gen|xcounter\(4) & (\sync_gen|Add0~7\ $ (GND))) # (!\sync_gen|xcounter\(4) & (!\sync_gen|Add0~7\ & VCC))
-- \sync_gen|Add0~9\ = CARRY((\sync_gen|xcounter\(4) & !\sync_gen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|xcounter\(4),
	datad => VCC,
	cin => \sync_gen|Add0~7\,
	combout => \sync_gen|Add0~8_combout\,
	cout => \sync_gen|Add0~9\);

-- Location: FF_X28_Y72_N19
\sync_gen|xcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(4));

-- Location: LCCOMB_X28_Y72_N20
\sync_gen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~10_combout\ = (\sync_gen|xcounter\(5) & (!\sync_gen|Add0~9\)) # (!\sync_gen|xcounter\(5) & ((\sync_gen|Add0~9\) # (GND)))
-- \sync_gen|Add0~11\ = CARRY((!\sync_gen|Add0~9\) # (!\sync_gen|xcounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(5),
	datad => VCC,
	cin => \sync_gen|Add0~9\,
	combout => \sync_gen|Add0~10_combout\,
	cout => \sync_gen|Add0~11\);

-- Location: LCCOMB_X27_Y72_N16
\sync_gen|xcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|xcounter~3_combout\ = (!\sync_gen|Equal0~2_combout\ & \sync_gen|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|Equal0~2_combout\,
	datac => \sync_gen|Add0~10_combout\,
	combout => \sync_gen|xcounter~3_combout\);

-- Location: FF_X27_Y72_N17
\sync_gen|xcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|xcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(5));

-- Location: LCCOMB_X28_Y72_N22
\sync_gen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~12_combout\ = (\sync_gen|xcounter\(6) & (\sync_gen|Add0~11\ $ (GND))) # (!\sync_gen|xcounter\(6) & (!\sync_gen|Add0~11\ & VCC))
-- \sync_gen|Add0~13\ = CARRY((\sync_gen|xcounter\(6) & !\sync_gen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(6),
	datad => VCC,
	cin => \sync_gen|Add0~11\,
	combout => \sync_gen|Add0~12_combout\,
	cout => \sync_gen|Add0~13\);

-- Location: FF_X28_Y72_N23
\sync_gen|xcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(6));

-- Location: LCCOMB_X28_Y72_N24
\sync_gen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~14_combout\ = (\sync_gen|xcounter\(7) & (!\sync_gen|Add0~13\)) # (!\sync_gen|xcounter\(7) & ((\sync_gen|Add0~13\) # (GND)))
-- \sync_gen|Add0~15\ = CARRY((!\sync_gen|Add0~13\) # (!\sync_gen|xcounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|xcounter\(7),
	datad => VCC,
	cin => \sync_gen|Add0~13\,
	combout => \sync_gen|Add0~14_combout\,
	cout => \sync_gen|Add0~15\);

-- Location: FF_X28_Y72_N25
\sync_gen|xcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(7));

-- Location: LCCOMB_X28_Y72_N26
\sync_gen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~16_combout\ = (\sync_gen|xcounter\(8) & (\sync_gen|Add0~15\ $ (GND))) # (!\sync_gen|xcounter\(8) & (!\sync_gen|Add0~15\ & VCC))
-- \sync_gen|Add0~17\ = CARRY((\sync_gen|xcounter\(8) & !\sync_gen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(8),
	datad => VCC,
	cin => \sync_gen|Add0~15\,
	combout => \sync_gen|Add0~16_combout\,
	cout => \sync_gen|Add0~17\);

-- Location: LCCOMB_X28_Y72_N0
\sync_gen|xcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|xcounter~0_combout\ = (\sync_gen|Add0~16_combout\ & !\sync_gen|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen|Add0~16_combout\,
	datad => \sync_gen|Equal0~2_combout\,
	combout => \sync_gen|xcounter~0_combout\);

-- Location: FF_X28_Y72_N1
\sync_gen|xcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|xcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(8));

-- Location: LCCOMB_X27_Y72_N4
\sync_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Equal0~1_combout\ = (\sync_gen|xcounter\(5) & (!\sync_gen|xcounter\(6) & (!\sync_gen|xcounter\(4) & !\sync_gen|xcounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(5),
	datab => \sync_gen|xcounter\(6),
	datac => \sync_gen|xcounter\(4),
	datad => \sync_gen|xcounter\(7),
	combout => \sync_gen|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y72_N2
\sync_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Equal0~0_combout\ = (!\sync_gen|xcounter\(1) & (!\sync_gen|xcounter\(0) & (!\sync_gen|xcounter\(2) & !\sync_gen|xcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(1),
	datab => \sync_gen|xcounter\(0),
	datac => \sync_gen|xcounter\(2),
	datad => \sync_gen|xcounter\(3),
	combout => \sync_gen|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y72_N22
\sync_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Equal0~2_combout\ = (\sync_gen|xcounter\(9) & (\sync_gen|xcounter\(8) & (\sync_gen|Equal0~1_combout\ & \sync_gen|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(9),
	datab => \sync_gen|xcounter\(8),
	datac => \sync_gen|Equal0~1_combout\,
	datad => \sync_gen|Equal0~0_combout\,
	combout => \sync_gen|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y72_N28
\sync_gen|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add0~18_combout\ = \sync_gen|Add0~17\ $ (\sync_gen|xcounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sync_gen|xcounter\(9),
	cin => \sync_gen|Add0~17\,
	combout => \sync_gen|Add0~18_combout\);

-- Location: LCCOMB_X28_Y72_N6
\sync_gen|xcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|xcounter~1_combout\ = (!\sync_gen|Equal0~2_combout\ & \sync_gen|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|Equal0~2_combout\,
	datad => \sync_gen|Add0~18_combout\,
	combout => \sync_gen|xcounter~1_combout\);

-- Location: FF_X28_Y72_N7
\sync_gen|xcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|xcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|xcounter\(9));

-- Location: LCCOMB_X27_Y72_N18
\sync_gen|h_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|h_sync~0_combout\ = (\sync_gen|xcounter\(6) & (((!\sync_gen|xcounter\(4)) # (!\sync_gen|xcounter\(5))))) # (!\sync_gen|xcounter\(6) & ((\sync_gen|xcounter\(5)) # ((!\sync_gen|Equal0~0_combout\ & \sync_gen|xcounter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|Equal0~0_combout\,
	datab => \sync_gen|xcounter\(6),
	datac => \sync_gen|xcounter\(5),
	datad => \sync_gen|xcounter\(4),
	combout => \sync_gen|h_sync~0_combout\);

-- Location: LCCOMB_X27_Y72_N8
\sync_gen|h_sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|h_sync~1_combout\ = (\sync_gen|xcounter\(9) & (\sync_gen|xcounter\(7) & (!\sync_gen|xcounter\(8) & \sync_gen|h_sync~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(9),
	datab => \sync_gen|xcounter\(7),
	datac => \sync_gen|xcounter\(8),
	datad => \sync_gen|h_sync~0_combout\,
	combout => \sync_gen|h_sync~1_combout\);

-- Location: FF_X27_Y72_N9
\sync_gen|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|h_sync~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|h_sync~q\);

-- Location: LCCOMB_X26_Y72_N6
\sync_gen|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~0_combout\ = \sync_gen|ycounter\(0) $ (VCC)
-- \sync_gen|Add1~1\ = CARRY(\sync_gen|ycounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(0),
	datad => VCC,
	combout => \sync_gen|Add1~0_combout\,
	cout => \sync_gen|Add1~1\);

-- Location: FF_X26_Y72_N7
\sync_gen|ycounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add1~0_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(0));

-- Location: LCCOMB_X26_Y72_N8
\sync_gen|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~2_combout\ = (\sync_gen|ycounter\(1) & (!\sync_gen|Add1~1\)) # (!\sync_gen|ycounter\(1) & ((\sync_gen|Add1~1\) # (GND)))
-- \sync_gen|Add1~3\ = CARRY((!\sync_gen|Add1~1\) # (!\sync_gen|ycounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|ycounter\(1),
	datad => VCC,
	cin => \sync_gen|Add1~1\,
	combout => \sync_gen|Add1~2_combout\,
	cout => \sync_gen|Add1~3\);

-- Location: LCCOMB_X26_Y72_N10
\sync_gen|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~4_combout\ = (\sync_gen|ycounter\(2) & (\sync_gen|Add1~3\ $ (GND))) # (!\sync_gen|ycounter\(2) & (!\sync_gen|Add1~3\ & VCC))
-- \sync_gen|Add1~5\ = CARRY((\sync_gen|ycounter\(2) & !\sync_gen|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(2),
	datad => VCC,
	cin => \sync_gen|Add1~3\,
	combout => \sync_gen|Add1~4_combout\,
	cout => \sync_gen|Add1~5\);

-- Location: LCCOMB_X26_Y72_N30
\sync_gen|ycounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|ycounter~2_combout\ = (!\sync_gen|Equal1~2_combout\ & \sync_gen|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen|Equal1~2_combout\,
	datad => \sync_gen|Add1~4_combout\,
	combout => \sync_gen|ycounter~2_combout\);

-- Location: FF_X26_Y72_N31
\sync_gen|ycounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|ycounter~2_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(2));

-- Location: LCCOMB_X26_Y72_N12
\sync_gen|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~6_combout\ = (\sync_gen|ycounter\(3) & (!\sync_gen|Add1~5\)) # (!\sync_gen|ycounter\(3) & ((\sync_gen|Add1~5\) # (GND)))
-- \sync_gen|Add1~7\ = CARRY((!\sync_gen|Add1~5\) # (!\sync_gen|ycounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(3),
	datad => VCC,
	cin => \sync_gen|Add1~5\,
	combout => \sync_gen|Add1~6_combout\,
	cout => \sync_gen|Add1~7\);

-- Location: LCCOMB_X27_Y72_N20
\sync_gen|ycounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|ycounter~1_combout\ = (!\sync_gen|Equal1~2_combout\ & \sync_gen|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen|Equal1~2_combout\,
	datad => \sync_gen|Add1~6_combout\,
	combout => \sync_gen|ycounter~1_combout\);

-- Location: FF_X27_Y72_N21
\sync_gen|ycounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|ycounter~1_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(3));

-- Location: LCCOMB_X26_Y72_N14
\sync_gen|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~8_combout\ = (\sync_gen|ycounter\(4) & (\sync_gen|Add1~7\ $ (GND))) # (!\sync_gen|ycounter\(4) & (!\sync_gen|Add1~7\ & VCC))
-- \sync_gen|Add1~9\ = CARRY((\sync_gen|ycounter\(4) & !\sync_gen|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|ycounter\(4),
	datad => VCC,
	cin => \sync_gen|Add1~7\,
	combout => \sync_gen|Add1~8_combout\,
	cout => \sync_gen|Add1~9\);

-- Location: FF_X26_Y72_N15
\sync_gen|ycounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add1~8_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(4));

-- Location: LCCOMB_X26_Y72_N16
\sync_gen|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~10_combout\ = (\sync_gen|ycounter\(5) & (!\sync_gen|Add1~9\)) # (!\sync_gen|ycounter\(5) & ((\sync_gen|Add1~9\) # (GND)))
-- \sync_gen|Add1~11\ = CARRY((!\sync_gen|Add1~9\) # (!\sync_gen|ycounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|ycounter\(5),
	datad => VCC,
	cin => \sync_gen|Add1~9\,
	combout => \sync_gen|Add1~10_combout\,
	cout => \sync_gen|Add1~11\);

-- Location: FF_X26_Y72_N17
\sync_gen|ycounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add1~10_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(5));

-- Location: LCCOMB_X26_Y72_N18
\sync_gen|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~12_combout\ = (\sync_gen|ycounter\(6) & (\sync_gen|Add1~11\ $ (GND))) # (!\sync_gen|ycounter\(6) & (!\sync_gen|Add1~11\ & VCC))
-- \sync_gen|Add1~13\ = CARRY((\sync_gen|ycounter\(6) & !\sync_gen|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|ycounter\(6),
	datad => VCC,
	cin => \sync_gen|Add1~11\,
	combout => \sync_gen|Add1~12_combout\,
	cout => \sync_gen|Add1~13\);

-- Location: FF_X26_Y72_N19
\sync_gen|ycounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add1~12_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(6));

-- Location: LCCOMB_X26_Y72_N20
\sync_gen|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~14_combout\ = (\sync_gen|ycounter\(7) & (!\sync_gen|Add1~13\)) # (!\sync_gen|ycounter\(7) & ((\sync_gen|Add1~13\) # (GND)))
-- \sync_gen|Add1~15\ = CARRY((!\sync_gen|Add1~13\) # (!\sync_gen|ycounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|ycounter\(7),
	datad => VCC,
	cin => \sync_gen|Add1~13\,
	combout => \sync_gen|Add1~14_combout\,
	cout => \sync_gen|Add1~15\);

-- Location: FF_X26_Y72_N21
\sync_gen|ycounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add1~14_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(7));

-- Location: LCCOMB_X26_Y72_N22
\sync_gen|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~16_combout\ = (\sync_gen|ycounter\(8) & (\sync_gen|Add1~15\ $ (GND))) # (!\sync_gen|ycounter\(8) & (!\sync_gen|Add1~15\ & VCC))
-- \sync_gen|Add1~17\ = CARRY((\sync_gen|ycounter\(8) & !\sync_gen|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(8),
	datad => VCC,
	cin => \sync_gen|Add1~15\,
	combout => \sync_gen|Add1~16_combout\,
	cout => \sync_gen|Add1~17\);

-- Location: FF_X26_Y72_N23
\sync_gen|ycounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|Add1~16_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(8));

-- Location: LCCOMB_X26_Y72_N28
\sync_gen|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Equal1~1_combout\ = (\sync_gen|ycounter\(2) & (!\sync_gen|ycounter\(5) & (!\sync_gen|ycounter\(7) & !\sync_gen|ycounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(2),
	datab => \sync_gen|ycounter\(5),
	datac => \sync_gen|ycounter\(7),
	datad => \sync_gen|ycounter\(6),
	combout => \sync_gen|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y72_N24
\sync_gen|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Add1~18_combout\ = \sync_gen|ycounter\(9) $ (\sync_gen|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|ycounter\(9),
	cin => \sync_gen|Add1~17\,
	combout => \sync_gen|Add1~18_combout\);

-- Location: LCCOMB_X26_Y72_N4
\sync_gen|ycounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|ycounter~3_combout\ = (!\sync_gen|Equal1~2_combout\ & \sync_gen|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen|Equal1~2_combout\,
	datad => \sync_gen|Add1~18_combout\,
	combout => \sync_gen|ycounter~3_combout\);

-- Location: FF_X26_Y72_N5
\sync_gen|ycounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|ycounter~3_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(9));

-- Location: LCCOMB_X26_Y72_N2
\sync_gen|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Equal1~0_combout\ = (\sync_gen|ycounter\(3) & (!\sync_gen|ycounter\(4) & (\sync_gen|ycounter\(0) & !\sync_gen|ycounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(3),
	datab => \sync_gen|ycounter\(4),
	datac => \sync_gen|ycounter\(0),
	datad => \sync_gen|ycounter\(1),
	combout => \sync_gen|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y72_N26
\sync_gen|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|Equal1~2_combout\ = (!\sync_gen|ycounter\(8) & (\sync_gen|Equal1~1_combout\ & (\sync_gen|ycounter\(9) & \sync_gen|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(8),
	datab => \sync_gen|Equal1~1_combout\,
	datac => \sync_gen|ycounter\(9),
	datad => \sync_gen|Equal1~0_combout\,
	combout => \sync_gen|Equal1~2_combout\);

-- Location: LCCOMB_X26_Y72_N0
\sync_gen|ycounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|ycounter~0_combout\ = (!\sync_gen|Equal1~2_combout\ & \sync_gen|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|Equal1~2_combout\,
	datac => \sync_gen|Add1~2_combout\,
	combout => \sync_gen|ycounter~0_combout\);

-- Location: FF_X26_Y72_N1
\sync_gen|ycounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|ycounter~0_combout\,
	ena => \sync_gen|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|ycounter\(1));

-- Location: LCCOMB_X27_Y72_N30
\sync_gen|v_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|v_sync~0_combout\ = (((\sync_gen|ycounter\(4)) # (!\sync_gen|ycounter\(0))) # (!\sync_gen|ycounter\(3))) # (!\sync_gen|ycounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(1),
	datab => \sync_gen|ycounter\(3),
	datac => \sync_gen|ycounter\(0),
	datad => \sync_gen|ycounter\(4),
	combout => \sync_gen|v_sync~0_combout\);

-- Location: LCCOMB_X27_Y72_N24
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\sync_gen|ycounter\(5) & (\sync_gen|ycounter\(7) & (\sync_gen|ycounter\(6) & \sync_gen|ycounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(5),
	datab => \sync_gen|ycounter\(7),
	datac => \sync_gen|ycounter\(6),
	datad => \sync_gen|ycounter\(8),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y72_N26
\sync_gen|v_sync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|v_sync~1_combout\ = (!\sync_gen|v_sync~0_combout\ & (!\sync_gen|ycounter\(2) & (!\sync_gen|ycounter\(9) & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|v_sync~0_combout\,
	datab => \sync_gen|ycounter\(2),
	datac => \sync_gen|ycounter\(9),
	datad => \LessThan1~0_combout\,
	combout => \sync_gen|v_sync~1_combout\);

-- Location: FF_X27_Y72_N27
\sync_gen|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \sync_gen|v_sync~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|v_sync~q\);

-- Location: LCCOMB_X27_Y72_N14
\always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (!\sync_gen|ycounter\(9) & (((!\sync_gen|xcounter\(8) & !\sync_gen|xcounter\(7))) # (!\sync_gen|xcounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(9),
	datab => \sync_gen|ycounter\(9),
	datac => \sync_gen|xcounter\(8),
	datad => \sync_gen|xcounter\(7),
	combout => \always0~0_combout\);

-- Location: LCCOMB_X27_Y72_N2
\always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (\always0~0_combout\ & !\LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \always0~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \always0~1_combout\);

-- Location: FF_X27_Y72_N3
inDisplayArea : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inDisplayArea~q\);

-- Location: LCCOMB_X29_Y72_N12
\VGA_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~0_combout\ = (\inDisplayArea~q\ & \sync_gen|xcounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inDisplayArea~q\,
	datac => \sync_gen|xcounter\(0),
	combout => \VGA_R~0_combout\);

-- Location: FF_X29_Y72_N13
\VGA_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[0]~reg0_q\);

-- Location: LCCOMB_X29_Y72_N6
\VGA_R~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~1_combout\ = (\inDisplayArea~q\ & \sync_gen|xcounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inDisplayArea~q\,
	datad => \sync_gen|xcounter\(1),
	combout => \VGA_R~1_combout\);

-- Location: FF_X29_Y72_N7
\VGA_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[1]~reg0_q\);

-- Location: LCCOMB_X29_Y72_N24
\VGA_R~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~2_combout\ = (\sync_gen|xcounter\(2) & \inDisplayArea~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|xcounter\(2),
	datac => \inDisplayArea~q\,
	combout => \VGA_R~2_combout\);

-- Location: FF_X29_Y72_N25
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: LCCOMB_X29_Y72_N10
\VGA_R~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~3_combout\ = (\inDisplayArea~q\ & \sync_gen|xcounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inDisplayArea~q\,
	datad => \sync_gen|xcounter\(3),
	combout => \VGA_R~3_combout\);

-- Location: FF_X29_Y72_N11
\VGA_R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[3]~reg0_q\);

-- Location: LCCOMB_X27_Y72_N12
\VGA_R~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~4_combout\ = (\inDisplayArea~q\ & \sync_gen|xcounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inDisplayArea~q\,
	datad => \sync_gen|xcounter\(4),
	combout => \VGA_R~4_combout\);

-- Location: FF_X26_Y72_N13
\VGA_R[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	asdata => \VGA_R~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[4]~reg0_q\);

-- Location: LCCOMB_X28_Y72_N8
\VGA_R~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~5_combout\ = (\sync_gen|xcounter\(5) & \inDisplayArea~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen|xcounter\(5),
	datad => \inDisplayArea~q\,
	combout => \VGA_R~5_combout\);

-- Location: LCCOMB_X29_Y72_N8
\VGA_R[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[5]~reg0feeder_combout\ = \VGA_R~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_R~5_combout\,
	combout => \VGA_R[5]~reg0feeder_combout\);

-- Location: FF_X29_Y72_N9
\VGA_R[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[5]~reg0_q\);

-- Location: LCCOMB_X25_Y72_N22
\VGA_R~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~6_combout\ = (\inDisplayArea~q\ & \sync_gen|xcounter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inDisplayArea~q\,
	datad => \sync_gen|xcounter\(6),
	combout => \VGA_R~6_combout\);

-- Location: LCCOMB_X25_Y72_N24
\VGA_R[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[6]~reg0feeder_combout\ = \VGA_R~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_R~6_combout\,
	combout => \VGA_R[6]~reg0feeder_combout\);

-- Location: FF_X25_Y72_N25
\VGA_R[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[6]~reg0_q\);

-- Location: LCCOMB_X28_Y72_N30
\VGA_R~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~7_combout\ = (\sync_gen|xcounter\(7) & \inDisplayArea~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|xcounter\(7),
	datad => \inDisplayArea~q\,
	combout => \VGA_R~7_combout\);

-- Location: FF_X28_Y72_N27
\VGA_R[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	asdata => \VGA_R~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[7]~reg0_q\);

-- Location: LCCOMB_X25_Y72_N26
\VGA_G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~0_combout\ = (\inDisplayArea~q\ & \sync_gen|ycounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inDisplayArea~q\,
	datad => \sync_gen|ycounter\(0),
	combout => \VGA_G~0_combout\);

-- Location: FF_X25_Y72_N27
\VGA_G[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[0]~reg0_q\);

-- Location: LCCOMB_X25_Y72_N4
\VGA_G~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~1_combout\ = (\inDisplayArea~q\ & \sync_gen|ycounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inDisplayArea~q\,
	datac => \sync_gen|ycounter\(1),
	combout => \VGA_G~1_combout\);

-- Location: FF_X25_Y72_N5
\VGA_G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[1]~reg0_q\);

-- Location: LCCOMB_X25_Y72_N18
\VGA_G~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~2_combout\ = (\inDisplayArea~q\ & \sync_gen|ycounter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inDisplayArea~q\,
	datac => \sync_gen|ycounter\(2),
	combout => \VGA_G~2_combout\);

-- Location: FF_X25_Y72_N19
\VGA_G[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[2]~reg0_q\);

-- Location: LCCOMB_X25_Y72_N16
\VGA_G~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~3_combout\ = (\inDisplayArea~q\ & \sync_gen|ycounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inDisplayArea~q\,
	datad => \sync_gen|ycounter\(3),
	combout => \VGA_G~3_combout\);

-- Location: FF_X25_Y72_N17
\VGA_G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[3]~reg0_q\);

-- Location: LCCOMB_X27_Y72_N0
\VGA_G~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~4_combout\ = (\sync_gen|ycounter\(4) & \inDisplayArea~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|ycounter\(4),
	datad => \inDisplayArea~q\,
	combout => \VGA_G~4_combout\);

-- Location: LCCOMB_X27_Y72_N28
\VGA_G[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[4]~reg0feeder_combout\ = \VGA_G~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_G~4_combout\,
	combout => \VGA_G[4]~reg0feeder_combout\);

-- Location: FF_X27_Y72_N29
\VGA_G[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[4]~reg0_q\);

-- Location: LCCOMB_X27_Y72_N10
\VGA_G~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~5_combout\ = (\sync_gen|ycounter\(5) & \inDisplayArea~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen|ycounter\(5),
	datad => \inDisplayArea~q\,
	combout => \VGA_G~5_combout\);

-- Location: FF_X26_Y72_N11
\VGA_G[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	asdata => \VGA_G~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[5]~reg0_q\);

-- Location: LCCOMB_X25_Y72_N28
\VGA_G~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~6_combout\ = (\inDisplayArea~q\ & \sync_gen|ycounter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inDisplayArea~q\,
	datad => \sync_gen|ycounter\(6),
	combout => \VGA_G~6_combout\);

-- Location: LCCOMB_X25_Y72_N10
\VGA_G[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G[6]~reg0feeder_combout\ = \VGA_G~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_G~6_combout\,
	combout => \VGA_G[6]~reg0feeder_combout\);

-- Location: FF_X25_Y72_N11
\VGA_G[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[6]~reg0_q\);

-- Location: LCCOMB_X27_Y72_N6
\VGA_G~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~7_combout\ = (\inDisplayArea~q\ & \sync_gen|ycounter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inDisplayArea~q\,
	datad => \sync_gen|ycounter\(7),
	combout => \VGA_G~7_combout\);

-- Location: FF_X27_Y72_N7
\VGA_G[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[7]~reg0_q\);

-- Location: FF_X27_Y72_N1
\VGA_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[0]~reg0_q\);

-- Location: FF_X27_Y72_N11
\VGA_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[1]~reg0_q\);

-- Location: FF_X25_Y72_N29
\VGA_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_G~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[2]~reg0_q\);

-- Location: FF_X28_Y72_N29
\VGA_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	asdata => \VGA_G~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[3]~reg0_q\);

-- Location: FF_X27_Y72_N13
\VGA_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[4]~reg0_q\);

-- Location: FF_X28_Y72_N9
\VGA_B[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[5]~reg0_q\);

-- Location: FF_X25_Y72_N23
\VGA_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[6]~reg0_q\);

-- Location: FF_X28_Y72_N31
\VGA_B[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_inst|clk_out~clkctrl_outclk\,
	d => \VGA_R~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[7]~reg0_q\);

ww_vga_h_sync <= \vga_h_sync~output_o\;

ww_vga_v_sync <= \vga_v_sync~output_o\;

ww_clk_out <= \clk_out~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_vga_sync <= \vga_sync~output_o\;

ww_vga_blank <= \vga_blank~output_o\;
END structure;


