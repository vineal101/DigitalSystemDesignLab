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

-- DATE "11/13/2024 23:39:59"

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
	rst : IN std_logic;
	sw : IN std_logic_vector(1 DOWNTO 0);
	ALUResult : BUFFER std_logic_vector(31 DOWNTO 0);
	RD1 : BUFFER std_logic_vector(31 DOWNTO 0);
	RD2 : BUFFER std_logic_vector(31 DOWNTO 0);
	prode_register_file : BUFFER std_logic_vector(31 DOWNTO 0);
	display_led : BUFFER std_logic_vector(6 DOWNTO 0);
	prode_data : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- ALUResult[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[3]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[8]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[9]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[10]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[11]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[12]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[14]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[15]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[16]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[17]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[18]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[19]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[20]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[21]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[22]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[23]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[24]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[25]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[26]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[27]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[28]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[29]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[30]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[31]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[2]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[4]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[5]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[6]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[7]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[9]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[10]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[11]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[12]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[13]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[14]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[15]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[16]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[17]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[18]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[19]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[20]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[21]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[22]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[23]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[24]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[25]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[26]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[27]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[28]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[29]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[30]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[31]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[5]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[6]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[9]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[10]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[11]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[12]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[13]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[14]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[15]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[16]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[17]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[18]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[19]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[20]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[21]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[22]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[23]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[24]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[25]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[26]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[27]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[28]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[29]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[30]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[31]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[3]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[4]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[5]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[7]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[8]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[9]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[10]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[11]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[12]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[13]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[15]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[16]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[17]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[18]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[19]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[20]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[21]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[22]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[23]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[24]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[25]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[26]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[27]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[28]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[29]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[30]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[31]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[1]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[3]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[6]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[0]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[3]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[6]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[7]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[8]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[10]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[11]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[12]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[13]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[14]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[15]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[16]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[17]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[18]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[19]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[20]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[21]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[22]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[23]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[24]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[25]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[26]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[27]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[28]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[29]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[30]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[31]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_rst : std_logic;
SIGNAL ww_sw : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALUResult : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RD1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RD2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_prode_register_file : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_display_led : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_prode_data : std_logic_vector(31 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUResult[0]~output_o\ : std_logic;
SIGNAL \ALUResult[1]~output_o\ : std_logic;
SIGNAL \ALUResult[2]~output_o\ : std_logic;
SIGNAL \ALUResult[3]~output_o\ : std_logic;
SIGNAL \ALUResult[4]~output_o\ : std_logic;
SIGNAL \ALUResult[5]~output_o\ : std_logic;
SIGNAL \ALUResult[6]~output_o\ : std_logic;
SIGNAL \ALUResult[7]~output_o\ : std_logic;
SIGNAL \ALUResult[8]~output_o\ : std_logic;
SIGNAL \ALUResult[9]~output_o\ : std_logic;
SIGNAL \ALUResult[10]~output_o\ : std_logic;
SIGNAL \ALUResult[11]~output_o\ : std_logic;
SIGNAL \ALUResult[12]~output_o\ : std_logic;
SIGNAL \ALUResult[13]~output_o\ : std_logic;
SIGNAL \ALUResult[14]~output_o\ : std_logic;
SIGNAL \ALUResult[15]~output_o\ : std_logic;
SIGNAL \ALUResult[16]~output_o\ : std_logic;
SIGNAL \ALUResult[17]~output_o\ : std_logic;
SIGNAL \ALUResult[18]~output_o\ : std_logic;
SIGNAL \ALUResult[19]~output_o\ : std_logic;
SIGNAL \ALUResult[20]~output_o\ : std_logic;
SIGNAL \ALUResult[21]~output_o\ : std_logic;
SIGNAL \ALUResult[22]~output_o\ : std_logic;
SIGNAL \ALUResult[23]~output_o\ : std_logic;
SIGNAL \ALUResult[24]~output_o\ : std_logic;
SIGNAL \ALUResult[25]~output_o\ : std_logic;
SIGNAL \ALUResult[26]~output_o\ : std_logic;
SIGNAL \ALUResult[27]~output_o\ : std_logic;
SIGNAL \ALUResult[28]~output_o\ : std_logic;
SIGNAL \ALUResult[29]~output_o\ : std_logic;
SIGNAL \ALUResult[30]~output_o\ : std_logic;
SIGNAL \ALUResult[31]~output_o\ : std_logic;
SIGNAL \RD1[0]~output_o\ : std_logic;
SIGNAL \RD1[1]~output_o\ : std_logic;
SIGNAL \RD1[2]~output_o\ : std_logic;
SIGNAL \RD1[3]~output_o\ : std_logic;
SIGNAL \RD1[4]~output_o\ : std_logic;
SIGNAL \RD1[5]~output_o\ : std_logic;
SIGNAL \RD1[6]~output_o\ : std_logic;
SIGNAL \RD1[7]~output_o\ : std_logic;
SIGNAL \RD1[8]~output_o\ : std_logic;
SIGNAL \RD1[9]~output_o\ : std_logic;
SIGNAL \RD1[10]~output_o\ : std_logic;
SIGNAL \RD1[11]~output_o\ : std_logic;
SIGNAL \RD1[12]~output_o\ : std_logic;
SIGNAL \RD1[13]~output_o\ : std_logic;
SIGNAL \RD1[14]~output_o\ : std_logic;
SIGNAL \RD1[15]~output_o\ : std_logic;
SIGNAL \RD1[16]~output_o\ : std_logic;
SIGNAL \RD1[17]~output_o\ : std_logic;
SIGNAL \RD1[18]~output_o\ : std_logic;
SIGNAL \RD1[19]~output_o\ : std_logic;
SIGNAL \RD1[20]~output_o\ : std_logic;
SIGNAL \RD1[21]~output_o\ : std_logic;
SIGNAL \RD1[22]~output_o\ : std_logic;
SIGNAL \RD1[23]~output_o\ : std_logic;
SIGNAL \RD1[24]~output_o\ : std_logic;
SIGNAL \RD1[25]~output_o\ : std_logic;
SIGNAL \RD1[26]~output_o\ : std_logic;
SIGNAL \RD1[27]~output_o\ : std_logic;
SIGNAL \RD1[28]~output_o\ : std_logic;
SIGNAL \RD1[29]~output_o\ : std_logic;
SIGNAL \RD1[30]~output_o\ : std_logic;
SIGNAL \RD1[31]~output_o\ : std_logic;
SIGNAL \RD2[0]~output_o\ : std_logic;
SIGNAL \RD2[1]~output_o\ : std_logic;
SIGNAL \RD2[2]~output_o\ : std_logic;
SIGNAL \RD2[3]~output_o\ : std_logic;
SIGNAL \RD2[4]~output_o\ : std_logic;
SIGNAL \RD2[5]~output_o\ : std_logic;
SIGNAL \RD2[6]~output_o\ : std_logic;
SIGNAL \RD2[7]~output_o\ : std_logic;
SIGNAL \RD2[8]~output_o\ : std_logic;
SIGNAL \RD2[9]~output_o\ : std_logic;
SIGNAL \RD2[10]~output_o\ : std_logic;
SIGNAL \RD2[11]~output_o\ : std_logic;
SIGNAL \RD2[12]~output_o\ : std_logic;
SIGNAL \RD2[13]~output_o\ : std_logic;
SIGNAL \RD2[14]~output_o\ : std_logic;
SIGNAL \RD2[15]~output_o\ : std_logic;
SIGNAL \RD2[16]~output_o\ : std_logic;
SIGNAL \RD2[17]~output_o\ : std_logic;
SIGNAL \RD2[18]~output_o\ : std_logic;
SIGNAL \RD2[19]~output_o\ : std_logic;
SIGNAL \RD2[20]~output_o\ : std_logic;
SIGNAL \RD2[21]~output_o\ : std_logic;
SIGNAL \RD2[22]~output_o\ : std_logic;
SIGNAL \RD2[23]~output_o\ : std_logic;
SIGNAL \RD2[24]~output_o\ : std_logic;
SIGNAL \RD2[25]~output_o\ : std_logic;
SIGNAL \RD2[26]~output_o\ : std_logic;
SIGNAL \RD2[27]~output_o\ : std_logic;
SIGNAL \RD2[28]~output_o\ : std_logic;
SIGNAL \RD2[29]~output_o\ : std_logic;
SIGNAL \RD2[30]~output_o\ : std_logic;
SIGNAL \RD2[31]~output_o\ : std_logic;
SIGNAL \prode_register_file[0]~output_o\ : std_logic;
SIGNAL \prode_register_file[1]~output_o\ : std_logic;
SIGNAL \prode_register_file[2]~output_o\ : std_logic;
SIGNAL \prode_register_file[3]~output_o\ : std_logic;
SIGNAL \prode_register_file[4]~output_o\ : std_logic;
SIGNAL \prode_register_file[5]~output_o\ : std_logic;
SIGNAL \prode_register_file[6]~output_o\ : std_logic;
SIGNAL \prode_register_file[7]~output_o\ : std_logic;
SIGNAL \prode_register_file[8]~output_o\ : std_logic;
SIGNAL \prode_register_file[9]~output_o\ : std_logic;
SIGNAL \prode_register_file[10]~output_o\ : std_logic;
SIGNAL \prode_register_file[11]~output_o\ : std_logic;
SIGNAL \prode_register_file[12]~output_o\ : std_logic;
SIGNAL \prode_register_file[13]~output_o\ : std_logic;
SIGNAL \prode_register_file[14]~output_o\ : std_logic;
SIGNAL \prode_register_file[15]~output_o\ : std_logic;
SIGNAL \prode_register_file[16]~output_o\ : std_logic;
SIGNAL \prode_register_file[17]~output_o\ : std_logic;
SIGNAL \prode_register_file[18]~output_o\ : std_logic;
SIGNAL \prode_register_file[19]~output_o\ : std_logic;
SIGNAL \prode_register_file[20]~output_o\ : std_logic;
SIGNAL \prode_register_file[21]~output_o\ : std_logic;
SIGNAL \prode_register_file[22]~output_o\ : std_logic;
SIGNAL \prode_register_file[23]~output_o\ : std_logic;
SIGNAL \prode_register_file[24]~output_o\ : std_logic;
SIGNAL \prode_register_file[25]~output_o\ : std_logic;
SIGNAL \prode_register_file[26]~output_o\ : std_logic;
SIGNAL \prode_register_file[27]~output_o\ : std_logic;
SIGNAL \prode_register_file[28]~output_o\ : std_logic;
SIGNAL \prode_register_file[29]~output_o\ : std_logic;
SIGNAL \prode_register_file[30]~output_o\ : std_logic;
SIGNAL \prode_register_file[31]~output_o\ : std_logic;
SIGNAL \display_led[0]~output_o\ : std_logic;
SIGNAL \display_led[1]~output_o\ : std_logic;
SIGNAL \display_led[2]~output_o\ : std_logic;
SIGNAL \display_led[3]~output_o\ : std_logic;
SIGNAL \display_led[4]~output_o\ : std_logic;
SIGNAL \display_led[5]~output_o\ : std_logic;
SIGNAL \display_led[6]~output_o\ : std_logic;
SIGNAL \prode_data[0]~output_o\ : std_logic;
SIGNAL \prode_data[1]~output_o\ : std_logic;
SIGNAL \prode_data[2]~output_o\ : std_logic;
SIGNAL \prode_data[3]~output_o\ : std_logic;
SIGNAL \prode_data[4]~output_o\ : std_logic;
SIGNAL \prode_data[5]~output_o\ : std_logic;
SIGNAL \prode_data[6]~output_o\ : std_logic;
SIGNAL \prode_data[7]~output_o\ : std_logic;
SIGNAL \prode_data[8]~output_o\ : std_logic;
SIGNAL \prode_data[9]~output_o\ : std_logic;
SIGNAL \prode_data[10]~output_o\ : std_logic;
SIGNAL \prode_data[11]~output_o\ : std_logic;
SIGNAL \prode_data[12]~output_o\ : std_logic;
SIGNAL \prode_data[13]~output_o\ : std_logic;
SIGNAL \prode_data[14]~output_o\ : std_logic;
SIGNAL \prode_data[15]~output_o\ : std_logic;
SIGNAL \prode_data[16]~output_o\ : std_logic;
SIGNAL \prode_data[17]~output_o\ : std_logic;
SIGNAL \prode_data[18]~output_o\ : std_logic;
SIGNAL \prode_data[19]~output_o\ : std_logic;
SIGNAL \prode_data[20]~output_o\ : std_logic;
SIGNAL \prode_data[21]~output_o\ : std_logic;
SIGNAL \prode_data[22]~output_o\ : std_logic;
SIGNAL \prode_data[23]~output_o\ : std_logic;
SIGNAL \prode_data[24]~output_o\ : std_logic;
SIGNAL \prode_data[25]~output_o\ : std_logic;
SIGNAL \prode_data[26]~output_o\ : std_logic;
SIGNAL \prode_data[27]~output_o\ : std_logic;
SIGNAL \prode_data[28]~output_o\ : std_logic;
SIGNAL \prode_data[29]~output_o\ : std_logic;
SIGNAL \prode_data[30]~output_o\ : std_logic;
SIGNAL \prode_data[31]~output_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \r_f|rf_regs[1][2]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \r_f|rf_regs[1][2]~q\ : std_logic;
SIGNAL \r_f|Mux61~0_combout\ : std_logic;
SIGNAL \d_mem|memory[2][0]~q\ : std_logic;
SIGNAL \d_mem|memory[2][1]~0_combout\ : std_logic;
SIGNAL \d_mem|memory[2][1]~q\ : std_logic;
SIGNAL \d_mem|memory[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \d_mem|ALT_INV_memory[2][1]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_sw <= sw;
ALUResult <= ww_ALUResult;
RD1 <= ww_RD1;
RD2 <= ww_RD2;
prode_register_file <= ww_prode_register_file;
display_led <= ww_display_led;
prode_data <= ww_prode_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\d_mem|ALT_INV_memory[2][1]~q\ <= NOT \d_mem|memory[2][1]~q\;

-- Location: IOOBUF_X13_Y73_N2
\ALUResult[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ALUResult[0]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\ALUResult[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \ALUResult[1]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\ALUResult[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \ALUResult[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\ALUResult[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\ALUResult[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[4]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\ALUResult[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\ALUResult[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[6]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\ALUResult[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\ALUResult[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\ALUResult[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[9]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\ALUResult[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[10]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\ALUResult[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ALUResult[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\ALUResult[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[13]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\ALUResult[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[14]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\ALUResult[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[15]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\ALUResult[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\ALUResult[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[17]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\ALUResult[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[18]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\ALUResult[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[19]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\ALUResult[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[20]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\ALUResult[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[21]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\ALUResult[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[22]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\ALUResult[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[23]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\ALUResult[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[24]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ALUResult[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[25]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\ALUResult[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[26]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\ALUResult[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[27]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\ALUResult[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[28]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\ALUResult[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[29]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\ALUResult[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[30]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\ALUResult[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUResult[31]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\RD1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[0]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\RD1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[1]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\RD1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\RD1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\RD1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[4]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\RD1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\RD1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[6]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\RD1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\RD1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[8]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\RD1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[9]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\RD1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[10]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\RD1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[11]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\RD1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[12]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\RD1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[13]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\RD1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[14]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\RD1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[15]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\RD1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[16]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\RD1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[17]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\RD1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[18]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\RD1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[19]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\RD1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[20]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\RD1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[21]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\RD1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[22]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\RD1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[23]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\RD1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[24]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\RD1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[25]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\RD1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[26]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\RD1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[27]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\RD1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[28]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\RD1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[29]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\RD1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[30]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\RD1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD1[31]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\RD2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \RD2[0]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\RD2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \RD2[1]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\RD2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux61~0_combout\,
	devoe => ww_devoe,
	o => \RD2[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\RD2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\RD2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\RD2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\RD2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\RD2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[7]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\RD2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[8]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\RD2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[9]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\RD2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[10]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\RD2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[11]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\RD2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[12]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\RD2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[13]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\RD2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[14]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\RD2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[15]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\RD2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[16]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\RD2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[17]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\RD2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[18]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\RD2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[19]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\RD2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[20]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\RD2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[21]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\RD2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[22]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\RD2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[23]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\RD2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[24]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\RD2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[25]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\RD2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[26]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\RD2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[27]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\RD2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[28]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\RD2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[29]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\RD2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[30]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\RD2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD2[31]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\prode_register_file[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[0]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\prode_register_file[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\prode_register_file[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[2]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\prode_register_file[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[3]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\prode_register_file[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\prode_register_file[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\prode_register_file[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[6]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\prode_register_file[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[7]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\prode_register_file[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[8]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\prode_register_file[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[9]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\prode_register_file[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\prode_register_file[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[11]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\prode_register_file[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[12]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\prode_register_file[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[13]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\prode_register_file[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[14]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\prode_register_file[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[15]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\prode_register_file[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[16]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\prode_register_file[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[17]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\prode_register_file[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[18]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\prode_register_file[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[19]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\prode_register_file[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[20]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\prode_register_file[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[21]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\prode_register_file[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[22]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\prode_register_file[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[23]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\prode_register_file[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[24]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\prode_register_file[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[25]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\prode_register_file[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[26]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\prode_register_file[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[27]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\prode_register_file[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[28]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\prode_register_file[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[29]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\prode_register_file[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[30]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\prode_register_file[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_register_file[31]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\display_led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_led[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\display_led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_led[1]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\display_led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_led[2]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\display_led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_led[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\display_led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_led[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\display_led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display_led[5]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\display_led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_led[6]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\prode_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_mem|memory[2][0]~q\,
	devoe => ww_devoe,
	o => \prode_data[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\prode_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_mem|ALT_INV_memory[2][1]~q\,
	devoe => ww_devoe,
	o => \prode_data[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\prode_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_mem|memory[2][2]~q\,
	devoe => ww_devoe,
	o => \prode_data[2]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\prode_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[3]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\prode_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\prode_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\prode_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\prode_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\prode_data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[8]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\prode_data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\prode_data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[10]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\prode_data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[11]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\prode_data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[12]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\prode_data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[13]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\prode_data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[14]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\prode_data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[15]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\prode_data[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[16]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\prode_data[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[17]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\prode_data[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[18]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\prode_data[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[19]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\prode_data[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[20]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\prode_data[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[21]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\prode_data[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[22]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\prode_data[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[23]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\prode_data[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[24]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\prode_data[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[25]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\prode_data[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[26]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\prode_data[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[27]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\prode_data[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[28]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\prode_data[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[29]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\prode_data[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[30]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\prode_data[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[31]~output_o\);

-- Location: IOIBUF_X11_Y73_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X11_Y72_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\sw[0]~input_o\ & !\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y72_N6
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\sw[0]~input_o\ & \sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X11_Y72_N28
\r_f|rf_regs[1][2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|rf_regs[1][2]~0_combout\ = (\r_f|rf_regs[1][2]~q\) # ((\sw[0]~input_o\ & !\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \sw[1]~input_o\,
	combout => \r_f|rf_regs[1][2]~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X11_Y72_N29
\r_f|rf_regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_f|rf_regs[1][2]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][2]~q\);

-- Location: LCCOMB_X11_Y72_N2
\r_f|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux61~0_combout\ = (\sw[1]~input_o\ & (!\sw[0]~input_o\)) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[1][2]~q\,
	combout => \r_f|Mux61~0_combout\);

-- Location: FF_X11_Y72_N13
\d_mem|memory[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Equal0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_mem|memory[2][0]~q\);

-- Location: LCCOMB_X11_Y72_N30
\d_mem|memory[2][1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_mem|memory[2][1]~0_combout\ = !\Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal1~0_combout\,
	combout => \d_mem|memory[2][1]~0_combout\);

-- Location: FF_X11_Y72_N31
\d_mem|memory[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_mem|memory[2][1]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_mem|memory[2][1]~q\);

-- Location: FF_X11_Y72_N3
\d_mem|memory[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_f|Mux61~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_mem|memory[2][2]~q\);

ww_ALUResult(0) <= \ALUResult[0]~output_o\;

ww_ALUResult(1) <= \ALUResult[1]~output_o\;

ww_ALUResult(2) <= \ALUResult[2]~output_o\;

ww_ALUResult(3) <= \ALUResult[3]~output_o\;

ww_ALUResult(4) <= \ALUResult[4]~output_o\;

ww_ALUResult(5) <= \ALUResult[5]~output_o\;

ww_ALUResult(6) <= \ALUResult[6]~output_o\;

ww_ALUResult(7) <= \ALUResult[7]~output_o\;

ww_ALUResult(8) <= \ALUResult[8]~output_o\;

ww_ALUResult(9) <= \ALUResult[9]~output_o\;

ww_ALUResult(10) <= \ALUResult[10]~output_o\;

ww_ALUResult(11) <= \ALUResult[11]~output_o\;

ww_ALUResult(12) <= \ALUResult[12]~output_o\;

ww_ALUResult(13) <= \ALUResult[13]~output_o\;

ww_ALUResult(14) <= \ALUResult[14]~output_o\;

ww_ALUResult(15) <= \ALUResult[15]~output_o\;

ww_ALUResult(16) <= \ALUResult[16]~output_o\;

ww_ALUResult(17) <= \ALUResult[17]~output_o\;

ww_ALUResult(18) <= \ALUResult[18]~output_o\;

ww_ALUResult(19) <= \ALUResult[19]~output_o\;

ww_ALUResult(20) <= \ALUResult[20]~output_o\;

ww_ALUResult(21) <= \ALUResult[21]~output_o\;

ww_ALUResult(22) <= \ALUResult[22]~output_o\;

ww_ALUResult(23) <= \ALUResult[23]~output_o\;

ww_ALUResult(24) <= \ALUResult[24]~output_o\;

ww_ALUResult(25) <= \ALUResult[25]~output_o\;

ww_ALUResult(26) <= \ALUResult[26]~output_o\;

ww_ALUResult(27) <= \ALUResult[27]~output_o\;

ww_ALUResult(28) <= \ALUResult[28]~output_o\;

ww_ALUResult(29) <= \ALUResult[29]~output_o\;

ww_ALUResult(30) <= \ALUResult[30]~output_o\;

ww_ALUResult(31) <= \ALUResult[31]~output_o\;

ww_RD1(0) <= \RD1[0]~output_o\;

ww_RD1(1) <= \RD1[1]~output_o\;

ww_RD1(2) <= \RD1[2]~output_o\;

ww_RD1(3) <= \RD1[3]~output_o\;

ww_RD1(4) <= \RD1[4]~output_o\;

ww_RD1(5) <= \RD1[5]~output_o\;

ww_RD1(6) <= \RD1[6]~output_o\;

ww_RD1(7) <= \RD1[7]~output_o\;

ww_RD1(8) <= \RD1[8]~output_o\;

ww_RD1(9) <= \RD1[9]~output_o\;

ww_RD1(10) <= \RD1[10]~output_o\;

ww_RD1(11) <= \RD1[11]~output_o\;

ww_RD1(12) <= \RD1[12]~output_o\;

ww_RD1(13) <= \RD1[13]~output_o\;

ww_RD1(14) <= \RD1[14]~output_o\;

ww_RD1(15) <= \RD1[15]~output_o\;

ww_RD1(16) <= \RD1[16]~output_o\;

ww_RD1(17) <= \RD1[17]~output_o\;

ww_RD1(18) <= \RD1[18]~output_o\;

ww_RD1(19) <= \RD1[19]~output_o\;

ww_RD1(20) <= \RD1[20]~output_o\;

ww_RD1(21) <= \RD1[21]~output_o\;

ww_RD1(22) <= \RD1[22]~output_o\;

ww_RD1(23) <= \RD1[23]~output_o\;

ww_RD1(24) <= \RD1[24]~output_o\;

ww_RD1(25) <= \RD1[25]~output_o\;

ww_RD1(26) <= \RD1[26]~output_o\;

ww_RD1(27) <= \RD1[27]~output_o\;

ww_RD1(28) <= \RD1[28]~output_o\;

ww_RD1(29) <= \RD1[29]~output_o\;

ww_RD1(30) <= \RD1[30]~output_o\;

ww_RD1(31) <= \RD1[31]~output_o\;

ww_RD2(0) <= \RD2[0]~output_o\;

ww_RD2(1) <= \RD2[1]~output_o\;

ww_RD2(2) <= \RD2[2]~output_o\;

ww_RD2(3) <= \RD2[3]~output_o\;

ww_RD2(4) <= \RD2[4]~output_o\;

ww_RD2(5) <= \RD2[5]~output_o\;

ww_RD2(6) <= \RD2[6]~output_o\;

ww_RD2(7) <= \RD2[7]~output_o\;

ww_RD2(8) <= \RD2[8]~output_o\;

ww_RD2(9) <= \RD2[9]~output_o\;

ww_RD2(10) <= \RD2[10]~output_o\;

ww_RD2(11) <= \RD2[11]~output_o\;

ww_RD2(12) <= \RD2[12]~output_o\;

ww_RD2(13) <= \RD2[13]~output_o\;

ww_RD2(14) <= \RD2[14]~output_o\;

ww_RD2(15) <= \RD2[15]~output_o\;

ww_RD2(16) <= \RD2[16]~output_o\;

ww_RD2(17) <= \RD2[17]~output_o\;

ww_RD2(18) <= \RD2[18]~output_o\;

ww_RD2(19) <= \RD2[19]~output_o\;

ww_RD2(20) <= \RD2[20]~output_o\;

ww_RD2(21) <= \RD2[21]~output_o\;

ww_RD2(22) <= \RD2[22]~output_o\;

ww_RD2(23) <= \RD2[23]~output_o\;

ww_RD2(24) <= \RD2[24]~output_o\;

ww_RD2(25) <= \RD2[25]~output_o\;

ww_RD2(26) <= \RD2[26]~output_o\;

ww_RD2(27) <= \RD2[27]~output_o\;

ww_RD2(28) <= \RD2[28]~output_o\;

ww_RD2(29) <= \RD2[29]~output_o\;

ww_RD2(30) <= \RD2[30]~output_o\;

ww_RD2(31) <= \RD2[31]~output_o\;

ww_prode_register_file(0) <= \prode_register_file[0]~output_o\;

ww_prode_register_file(1) <= \prode_register_file[1]~output_o\;

ww_prode_register_file(2) <= \prode_register_file[2]~output_o\;

ww_prode_register_file(3) <= \prode_register_file[3]~output_o\;

ww_prode_register_file(4) <= \prode_register_file[4]~output_o\;

ww_prode_register_file(5) <= \prode_register_file[5]~output_o\;

ww_prode_register_file(6) <= \prode_register_file[6]~output_o\;

ww_prode_register_file(7) <= \prode_register_file[7]~output_o\;

ww_prode_register_file(8) <= \prode_register_file[8]~output_o\;

ww_prode_register_file(9) <= \prode_register_file[9]~output_o\;

ww_prode_register_file(10) <= \prode_register_file[10]~output_o\;

ww_prode_register_file(11) <= \prode_register_file[11]~output_o\;

ww_prode_register_file(12) <= \prode_register_file[12]~output_o\;

ww_prode_register_file(13) <= \prode_register_file[13]~output_o\;

ww_prode_register_file(14) <= \prode_register_file[14]~output_o\;

ww_prode_register_file(15) <= \prode_register_file[15]~output_o\;

ww_prode_register_file(16) <= \prode_register_file[16]~output_o\;

ww_prode_register_file(17) <= \prode_register_file[17]~output_o\;

ww_prode_register_file(18) <= \prode_register_file[18]~output_o\;

ww_prode_register_file(19) <= \prode_register_file[19]~output_o\;

ww_prode_register_file(20) <= \prode_register_file[20]~output_o\;

ww_prode_register_file(21) <= \prode_register_file[21]~output_o\;

ww_prode_register_file(22) <= \prode_register_file[22]~output_o\;

ww_prode_register_file(23) <= \prode_register_file[23]~output_o\;

ww_prode_register_file(24) <= \prode_register_file[24]~output_o\;

ww_prode_register_file(25) <= \prode_register_file[25]~output_o\;

ww_prode_register_file(26) <= \prode_register_file[26]~output_o\;

ww_prode_register_file(27) <= \prode_register_file[27]~output_o\;

ww_prode_register_file(28) <= \prode_register_file[28]~output_o\;

ww_prode_register_file(29) <= \prode_register_file[29]~output_o\;

ww_prode_register_file(30) <= \prode_register_file[30]~output_o\;

ww_prode_register_file(31) <= \prode_register_file[31]~output_o\;

ww_display_led(0) <= \display_led[0]~output_o\;

ww_display_led(1) <= \display_led[1]~output_o\;

ww_display_led(2) <= \display_led[2]~output_o\;

ww_display_led(3) <= \display_led[3]~output_o\;

ww_display_led(4) <= \display_led[4]~output_o\;

ww_display_led(5) <= \display_led[5]~output_o\;

ww_display_led(6) <= \display_led[6]~output_o\;

ww_prode_data(0) <= \prode_data[0]~output_o\;

ww_prode_data(1) <= \prode_data[1]~output_o\;

ww_prode_data(2) <= \prode_data[2]~output_o\;

ww_prode_data(3) <= \prode_data[3]~output_o\;

ww_prode_data(4) <= \prode_data[4]~output_o\;

ww_prode_data(5) <= \prode_data[5]~output_o\;

ww_prode_data(6) <= \prode_data[6]~output_o\;

ww_prode_data(7) <= \prode_data[7]~output_o\;

ww_prode_data(8) <= \prode_data[8]~output_o\;

ww_prode_data(9) <= \prode_data[9]~output_o\;

ww_prode_data(10) <= \prode_data[10]~output_o\;

ww_prode_data(11) <= \prode_data[11]~output_o\;

ww_prode_data(12) <= \prode_data[12]~output_o\;

ww_prode_data(13) <= \prode_data[13]~output_o\;

ww_prode_data(14) <= \prode_data[14]~output_o\;

ww_prode_data(15) <= \prode_data[15]~output_o\;

ww_prode_data(16) <= \prode_data[16]~output_o\;

ww_prode_data(17) <= \prode_data[17]~output_o\;

ww_prode_data(18) <= \prode_data[18]~output_o\;

ww_prode_data(19) <= \prode_data[19]~output_o\;

ww_prode_data(20) <= \prode_data[20]~output_o\;

ww_prode_data(21) <= \prode_data[21]~output_o\;

ww_prode_data(22) <= \prode_data[22]~output_o\;

ww_prode_data(23) <= \prode_data[23]~output_o\;

ww_prode_data(24) <= \prode_data[24]~output_o\;

ww_prode_data(25) <= \prode_data[25]~output_o\;

ww_prode_data(26) <= \prode_data[26]~output_o\;

ww_prode_data(27) <= \prode_data[27]~output_o\;

ww_prode_data(28) <= \prode_data[28]~output_o\;

ww_prode_data(29) <= \prode_data[29]~output_o\;

ww_prode_data(30) <= \prode_data[30]~output_o\;

ww_prode_data(31) <= \prode_data[31]~output_o\;
END structure;


