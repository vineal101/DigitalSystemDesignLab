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

-- DATE "11/19/2024 13:55:11"

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
	ALUResult : OUT std_logic_vector(31 DOWNTO 0);
	RD1 : OUT std_logic_vector(31 DOWNTO 0);
	RD2 : OUT std_logic_vector(31 DOWNTO 0);
	prode_register_file : OUT std_logic_vector(31 DOWNTO 0);
	display_led : OUT std_logic_vector(6 DOWNTO 0);
	prode_data : OUT std_logic_vector(31 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- ALUResult[0]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[3]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[4]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[5]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[7]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[8]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[9]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[10]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[11]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[12]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[13]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[14]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[16]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[17]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[18]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[19]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[20]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[21]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[22]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[23]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[24]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[25]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[26]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[27]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[28]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[29]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[30]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[31]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[2]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[3]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[7]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[8]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[9]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[11]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[13]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[14]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[16]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[17]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[18]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[19]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[20]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[21]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[22]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[23]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[24]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[25]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[26]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[27]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[28]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[29]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[30]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[31]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[3]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[8]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[9]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[10]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[11]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[12]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[13]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[14]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[15]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[16]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[17]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[18]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[19]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[20]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[21]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[22]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[23]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[24]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[25]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[26]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[27]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[28]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[29]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[30]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[31]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[1]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[5]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[7]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[8]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[9]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[13]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[14]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[15]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[16]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[17]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[18]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[19]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[20]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[21]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[22]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[23]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[24]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[25]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[26]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[27]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[28]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[29]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[30]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[31]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[5]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[8]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[9]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[10]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[11]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[12]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[13]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[14]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[15]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[16]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[17]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[18]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[19]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[20]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[21]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[22]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[23]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[24]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[25]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[26]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[27]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[28]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[29]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[30]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_data[31]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \r_f|rf_regs[1][2]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \r_f|rf_regs[1][2]~q\ : std_logic;
SIGNAL \r_f|Mux61~0_combout\ : std_logic;
SIGNAL \r_f|ALT_INV_rf_regs[1][2]~q\ : std_logic;

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
\r_f|ALT_INV_rf_regs[1][2]~q\ <= NOT \r_f|rf_regs[1][2]~q\;

-- Location: IOOBUF_X0_Y34_N16
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

-- Location: IOOBUF_X0_Y35_N9
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

-- Location: IOOBUF_X0_Y34_N2
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

-- Location: IOOBUF_X115_Y4_N16
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

-- Location: IOOBUF_X79_Y73_N9
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

-- Location: IOOBUF_X115_Y19_N9
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

-- Location: IOOBUF_X79_Y0_N2
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

-- Location: IOOBUF_X109_Y0_N2
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

-- Location: IOOBUF_X81_Y0_N16
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

-- Location: IOOBUF_X29_Y73_N9
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

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X81_Y73_N2
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X115_Y21_N16
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

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X42_Y73_N2
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

-- Location: IOOBUF_X16_Y73_N2
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X9_Y73_N9
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

-- Location: IOOBUF_X0_Y16_N16
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

-- Location: IOOBUF_X113_Y73_N9
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

-- Location: IOOBUF_X100_Y73_N23
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

-- Location: IOOBUF_X111_Y0_N9
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

-- Location: IOOBUF_X49_Y73_N16
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

-- Location: IOOBUF_X13_Y0_N23
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

-- Location: IOOBUF_X3_Y73_N23
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X115_Y69_N23
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

-- Location: IOOBUF_X0_Y24_N23
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

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X5_Y73_N23
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

-- Location: IOOBUF_X0_Y43_N16
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

-- Location: IOOBUF_X5_Y0_N9
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

-- Location: IOOBUF_X98_Y0_N23
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X0_Y4_N9
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOOBUF_X25_Y73_N16
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

-- Location: IOOBUF_X40_Y73_N9
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X38_Y73_N2
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

-- Location: IOOBUF_X79_Y0_N16
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

-- Location: IOOBUF_X115_Y28_N2
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X33_Y0_N2
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

-- Location: IOOBUF_X115_Y13_N9
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

-- Location: IOOBUF_X13_Y73_N23
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

-- Location: IOOBUF_X115_Y66_N23
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

-- Location: IOOBUF_X115_Y11_N9
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

-- Location: IOOBUF_X107_Y73_N2
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

-- Location: IOOBUF_X81_Y0_N23
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

-- Location: IOOBUF_X115_Y56_N16
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X115_Y27_N2
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X0_Y35_N16
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

-- Location: IOOBUF_X0_Y35_N2
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X27_Y73_N9
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X107_Y0_N9
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X3_Y73_N2
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

-- Location: IOOBUF_X89_Y0_N23
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

-- Location: IOOBUF_X85_Y73_N16
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

-- Location: IOOBUF_X111_Y73_N2
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

-- Location: IOOBUF_X1_Y73_N9
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

-- Location: IOOBUF_X42_Y73_N9
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

-- Location: IOOBUF_X81_Y73_N16
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

-- Location: IOOBUF_X11_Y73_N9
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

-- Location: IOOBUF_X7_Y73_N23
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

-- Location: IOOBUF_X105_Y0_N23
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

-- Location: IOOBUF_X31_Y73_N9
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X0_Y58_N16
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

-- Location: IOOBUF_X38_Y73_N9
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

-- Location: IOOBUF_X83_Y73_N23
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

-- Location: IOOBUF_X0_Y63_N23
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

-- Location: IOOBUF_X0_Y61_N23
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

-- Location: IOOBUF_X38_Y73_N16
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

-- Location: IOOBUF_X0_Y33_N23
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

-- Location: IOOBUF_X72_Y73_N16
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

-- Location: IOOBUF_X1_Y73_N16
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

-- Location: IOOBUF_X102_Y73_N9
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

-- Location: IOOBUF_X111_Y73_N9
\prode_register_file[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \prode_register_file[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X107_Y73_N16
\prode_register_file[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][2]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[2]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
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

-- Location: IOOBUF_X83_Y0_N23
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

-- Location: IOOBUF_X0_Y32_N16
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

-- Location: IOOBUF_X115_Y6_N16
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X0_Y51_N16
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

-- Location: IOOBUF_X115_Y62_N9
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

-- Location: IOOBUF_X0_Y44_N9
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

-- Location: IOOBUF_X81_Y73_N9
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

-- Location: IOOBUF_X27_Y73_N23
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

-- Location: IOOBUF_X47_Y0_N9
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

-- Location: IOOBUF_X0_Y53_N2
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

-- Location: IOOBUF_X115_Y50_N9
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

-- Location: IOOBUF_X45_Y73_N2
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

-- Location: IOOBUF_X42_Y0_N16
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

-- Location: IOOBUF_X0_Y42_N9
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

-- Location: IOOBUF_X52_Y0_N16
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

-- Location: IOOBUF_X79_Y73_N2
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

-- Location: IOOBUF_X109_Y73_N9
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

-- Location: IOOBUF_X115_Y23_N9
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

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X5_Y73_N2
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

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X38_Y73_N23
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

-- Location: IOOBUF_X87_Y73_N9
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X69_Y73_N23
\display_led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|ALT_INV_rf_regs[1][2]~q\,
	devoe => ww_devoe,
	o => \display_led[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\display_led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][2]~q\,
	devoe => ww_devoe,
	o => \display_led[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X115_Y50_N2
\display_led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|ALT_INV_rf_regs[1][2]~q\,
	devoe => ww_devoe,
	o => \display_led[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\display_led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display_led[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\display_led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|ALT_INV_rf_regs[1][2]~q\,
	devoe => ww_devoe,
	o => \display_led[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\display_led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|ALT_INV_rf_regs[1][2]~q\,
	devoe => ww_devoe,
	o => \display_led[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\prode_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[0]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\prode_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \prode_data[1]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\prode_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \prode_data[2]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
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

-- Location: IOOBUF_X0_Y66_N23
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X0_Y24_N9
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

-- Location: IOOBUF_X94_Y0_N9
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

-- Location: IOOBUF_X91_Y0_N16
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

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X115_Y62_N23
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

-- Location: IOOBUF_X115_Y35_N16
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

-- Location: IOOBUF_X115_Y46_N9
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

-- Location: IOOBUF_X67_Y0_N2
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

-- Location: IOOBUF_X47_Y73_N2
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

-- Location: IOOBUF_X0_Y21_N16
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

-- Location: IOOBUF_X29_Y73_N2
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

-- Location: IOOBUF_X0_Y21_N23
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

-- Location: IOOBUF_X102_Y73_N2
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

-- Location: IOOBUF_X96_Y73_N23
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

-- Location: IOOBUF_X33_Y73_N9
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

-- Location: IOOBUF_X115_Y20_N9
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

-- Location: IOOBUF_X115_Y56_N23
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X115_Y61_N23
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

-- Location: IOOBUF_X47_Y73_N16
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

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X0_Y24_N2
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X115_Y27_N9
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

-- Location: IOOBUF_X115_Y18_N9
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

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X1_Y36_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\sw[1]~input_o\ & \sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y36_N18
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\sw[1]~input_o\ & !\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Equal1~0_combout\);

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

-- Location: LCCOMB_X1_Y36_N12
\r_f|rf_regs[1][2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|rf_regs[1][2]~0_combout\ = (\r_f|rf_regs[1][2]~q\) # ((!\sw[1]~input_o\ & \sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \sw[0]~input_o\,
	combout => \r_f|rf_regs[1][2]~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X1_Y36_N13
\r_f|rf_regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \r_f|rf_regs[1][2]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][2]~q\);

-- Location: LCCOMB_X1_Y36_N30
\r_f|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux61~0_combout\ = (\r_f|rf_regs[1][2]~q\ & (!\sw[1]~input_o\ & \sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|rf_regs[1][2]~q\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \r_f|Mux61~0_combout\);

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


