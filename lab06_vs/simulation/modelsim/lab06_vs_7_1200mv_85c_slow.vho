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

-- DATE "11/10/2024 18:25:16"

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
	display_led : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- ALUResult[0]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[2]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[3]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[6]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[7]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[8]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[9]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[10]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[11]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[12]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[13]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[14]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[15]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[16]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[17]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[18]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[19]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[20]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[21]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[22]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[23]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[24]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[25]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[26]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[27]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[28]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[29]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[30]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUResult[31]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[0]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[1]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[3]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[4]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[5]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[6]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[7]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[8]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[9]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[10]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[11]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[12]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[13]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[14]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[15]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[16]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[17]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[18]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[19]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[20]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[21]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[22]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[23]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[24]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[25]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[26]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[27]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[28]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[29]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[30]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD1[31]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[1]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[3]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[4]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[5]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[6]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[7]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[8]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[9]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[10]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[11]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[12]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[13]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[14]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[15]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[16]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[17]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[18]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[19]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[20]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[21]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[22]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[23]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[24]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[25]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[26]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[27]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[28]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[29]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[30]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD2[31]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[0]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[2]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[3]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[6]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[7]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[8]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[9]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[10]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[11]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[12]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[13]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[14]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[15]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[16]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[17]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[18]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[19]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[20]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[21]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[22]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[23]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[24]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[25]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[26]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[27]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[28]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[29]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[30]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prode_register_file[31]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_led[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \inst_ex[28]~0_combout\ : std_logic;
SIGNAL \t1|Add0~1_cout\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \r_f|rf_regs[0][1]~q\ : std_logic;
SIGNAL \t1|Add0~5_combout\ : std_logic;
SIGNAL \r_f|Mux30~0_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|Add0~8_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][2]~q\ : std_logic;
SIGNAL \r_f|Mux29~0_combout\ : std_logic;
SIGNAL \t1|Add0~9_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|Add0~12_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][3]~q\ : std_logic;
SIGNAL \r_f|Mux60~0_combout\ : std_logic;
SIGNAL \t1|Add0~13_combout\ : std_logic;
SIGNAL \t1|Add0~11\ : std_logic;
SIGNAL \t1|Add0~14_combout\ : std_logic;
SIGNAL \t1|Add0~16_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][4]~q\ : std_logic;
SIGNAL \t1|Add0~17_combout\ : std_logic;
SIGNAL \r_f|Mux59~0_combout\ : std_logic;
SIGNAL \t1|Add0~15\ : std_logic;
SIGNAL \t1|Add0~18_combout\ : std_logic;
SIGNAL \t1|Add0~20_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][5]~q\ : std_logic;
SIGNAL \r_f|Mux58~0_combout\ : std_logic;
SIGNAL \t1|Add0~21_combout\ : std_logic;
SIGNAL \t1|Add0~19\ : std_logic;
SIGNAL \t1|Add0~22_combout\ : std_logic;
SIGNAL \t1|Add0~24_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][6]~q\ : std_logic;
SIGNAL \r_f|Mux57~0_combout\ : std_logic;
SIGNAL \t1|Add0~25_combout\ : std_logic;
SIGNAL \t1|Add0~23\ : std_logic;
SIGNAL \t1|Add0~26_combout\ : std_logic;
SIGNAL \t1|Add0~28_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][7]~q\ : std_logic;
SIGNAL \r_f|Mux56~0_combout\ : std_logic;
SIGNAL \t1|Add0~29_combout\ : std_logic;
SIGNAL \t1|Add0~27\ : std_logic;
SIGNAL \t1|Add0~30_combout\ : std_logic;
SIGNAL \t1|Add0~32_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][8]~q\ : std_logic;
SIGNAL \t1|Add0~33_combout\ : std_logic;
SIGNAL \r_f|Mux55~0_combout\ : std_logic;
SIGNAL \t1|Add0~31\ : std_logic;
SIGNAL \t1|Add0~34_combout\ : std_logic;
SIGNAL \t1|Add0~36_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][9]~q\ : std_logic;
SIGNAL \t1|Add0~37_combout\ : std_logic;
SIGNAL \r_f|Mux54~0_combout\ : std_logic;
SIGNAL \t1|Add0~35\ : std_logic;
SIGNAL \t1|Add0~38_combout\ : std_logic;
SIGNAL \t1|Add0~40_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][10]~q\ : std_logic;
SIGNAL \t1|Add0~41_combout\ : std_logic;
SIGNAL \r_f|Mux53~0_combout\ : std_logic;
SIGNAL \t1|Add0~39\ : std_logic;
SIGNAL \t1|Add0~42_combout\ : std_logic;
SIGNAL \t1|Add0~44_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][11]~q\ : std_logic;
SIGNAL \r_f|Mux52~0_combout\ : std_logic;
SIGNAL \t1|Add0~45_combout\ : std_logic;
SIGNAL \t1|Add0~43\ : std_logic;
SIGNAL \t1|Add0~46_combout\ : std_logic;
SIGNAL \t1|Add0~48_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][12]~q\ : std_logic;
SIGNAL \r_f|Mux51~0_combout\ : std_logic;
SIGNAL \t1|Add0~49_combout\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~50_combout\ : std_logic;
SIGNAL \t1|Add0~52_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][13]~q\ : std_logic;
SIGNAL \t1|Add0~53_combout\ : std_logic;
SIGNAL \r_f|Mux50~0_combout\ : std_logic;
SIGNAL \t1|Add0~51\ : std_logic;
SIGNAL \t1|Add0~54_combout\ : std_logic;
SIGNAL \t1|Add0~56_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][14]~q\ : std_logic;
SIGNAL \r_f|Mux49~0_combout\ : std_logic;
SIGNAL \t1|Add0~57_combout\ : std_logic;
SIGNAL \t1|Add0~55\ : std_logic;
SIGNAL \t1|Add0~58_combout\ : std_logic;
SIGNAL \t1|Add0~60_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][15]~q\ : std_logic;
SIGNAL \r_f|Mux48~0_combout\ : std_logic;
SIGNAL \t1|Add0~61_combout\ : std_logic;
SIGNAL \t1|Add0~59\ : std_logic;
SIGNAL \t1|Add0~62_combout\ : std_logic;
SIGNAL \t1|Add0~64_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][16]~feeder_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][16]~q\ : std_logic;
SIGNAL \t1|Add0~65_combout\ : std_logic;
SIGNAL \r_f|Mux47~0_combout\ : std_logic;
SIGNAL \t1|Add0~63\ : std_logic;
SIGNAL \t1|Add0~66_combout\ : std_logic;
SIGNAL \t1|Add0~68_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][17]~q\ : std_logic;
SIGNAL \r_f|Mux46~0_combout\ : std_logic;
SIGNAL \t1|Add0~69_combout\ : std_logic;
SIGNAL \t1|Add0~67\ : std_logic;
SIGNAL \t1|Add0~70_combout\ : std_logic;
SIGNAL \t1|Add0~72_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][18]~q\ : std_logic;
SIGNAL \r_f|Mux45~0_combout\ : std_logic;
SIGNAL \t1|Add0~73_combout\ : std_logic;
SIGNAL \t1|Add0~71\ : std_logic;
SIGNAL \t1|Add0~74_combout\ : std_logic;
SIGNAL \t1|Add0~76_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][19]~q\ : std_logic;
SIGNAL \t1|Add0~77_combout\ : std_logic;
SIGNAL \r_f|Mux44~0_combout\ : std_logic;
SIGNAL \t1|Add0~75\ : std_logic;
SIGNAL \t1|Add0~78_combout\ : std_logic;
SIGNAL \t1|Add0~80_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][20]~feeder_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][20]~q\ : std_logic;
SIGNAL \r_f|Mux43~0_combout\ : std_logic;
SIGNAL \t1|Add0~81_combout\ : std_logic;
SIGNAL \t1|Add0~79\ : std_logic;
SIGNAL \t1|Add0~82_combout\ : std_logic;
SIGNAL \t1|Add0~84_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][21]~q\ : std_logic;
SIGNAL \r_f|Mux42~0_combout\ : std_logic;
SIGNAL \t1|Add0~85_combout\ : std_logic;
SIGNAL \t1|Add0~83\ : std_logic;
SIGNAL \t1|Add0~86_combout\ : std_logic;
SIGNAL \t1|Add0~88_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][22]~q\ : std_logic;
SIGNAL \r_f|Mux41~0_combout\ : std_logic;
SIGNAL \t1|Add0~89_combout\ : std_logic;
SIGNAL \t1|Add0~87\ : std_logic;
SIGNAL \t1|Add0~90_combout\ : std_logic;
SIGNAL \t1|Add0~92_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][23]~q\ : std_logic;
SIGNAL \t1|Add0~93_combout\ : std_logic;
SIGNAL \r_f|Mux40~0_combout\ : std_logic;
SIGNAL \t1|Add0~91\ : std_logic;
SIGNAL \t1|Add0~94_combout\ : std_logic;
SIGNAL \t1|Add0~96_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][24]~q\ : std_logic;
SIGNAL \r_f|Mux39~0_combout\ : std_logic;
SIGNAL \t1|Add0~97_combout\ : std_logic;
SIGNAL \t1|Add0~95\ : std_logic;
SIGNAL \t1|Add0~98_combout\ : std_logic;
SIGNAL \t1|Add0~100_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][25]~q\ : std_logic;
SIGNAL \r_f|Mux38~0_combout\ : std_logic;
SIGNAL \t1|Add0~101_combout\ : std_logic;
SIGNAL \t1|Add0~99\ : std_logic;
SIGNAL \t1|Add0~102_combout\ : std_logic;
SIGNAL \t1|Add0~104_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][26]~feeder_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][26]~q\ : std_logic;
SIGNAL \r_f|Mux37~0_combout\ : std_logic;
SIGNAL \t1|Add0~105_combout\ : std_logic;
SIGNAL \t1|Add0~103\ : std_logic;
SIGNAL \t1|Add0~106_combout\ : std_logic;
SIGNAL \t1|Add0~108_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][27]~feeder_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][27]~q\ : std_logic;
SIGNAL \r_f|Mux36~0_combout\ : std_logic;
SIGNAL \t1|Add0~109_combout\ : std_logic;
SIGNAL \t1|Add0~107\ : std_logic;
SIGNAL \t1|Add0~110_combout\ : std_logic;
SIGNAL \t1|Add0~112_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][28]~q\ : std_logic;
SIGNAL \r_f|Mux35~0_combout\ : std_logic;
SIGNAL \t1|Add0~113_combout\ : std_logic;
SIGNAL \t1|Add0~111\ : std_logic;
SIGNAL \t1|Add0~114_combout\ : std_logic;
SIGNAL \t1|Add0~116_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][29]~q\ : std_logic;
SIGNAL \r_f|Mux34~0_combout\ : std_logic;
SIGNAL \t1|Add0~117_combout\ : std_logic;
SIGNAL \t1|Add0~115\ : std_logic;
SIGNAL \t1|Add0~118_combout\ : std_logic;
SIGNAL \t1|Add0~120_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][30]~q\ : std_logic;
SIGNAL \r_f|Mux33~0_combout\ : std_logic;
SIGNAL \t1|Add0~121_combout\ : std_logic;
SIGNAL \t1|Add0~119\ : std_logic;
SIGNAL \t1|Add0~122_combout\ : std_logic;
SIGNAL \t1|Add0~124_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][31]~q\ : std_logic;
SIGNAL \t1|Add0~125_combout\ : std_logic;
SIGNAL \r_f|Mux32~0_combout\ : std_logic;
SIGNAL \t1|Add0~123\ : std_logic;
SIGNAL \t1|Add0~126_combout\ : std_logic;
SIGNAL \t1|Add0~128_combout\ : std_logic;
SIGNAL \r_f|rf_regs[0][0]~q\ : std_logic;
SIGNAL \r_f|Mux31~0_combout\ : std_logic;
SIGNAL \r_f|Mux63~0_combout\ : std_logic;
SIGNAL \r_f|Mux62~0_combout\ : std_logic;
SIGNAL \r_f|Mux61~0_combout\ : std_logic;
SIGNAL \r_f|rf_regs[1][0]~0_combout\ : std_logic;
SIGNAL \r_f|rf_regs[1][0]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][1]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][2]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][3]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][4]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][5]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][6]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][7]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][8]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][9]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][10]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][11]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][12]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][13]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][14]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][15]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][16]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][17]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][18]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][19]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][20]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][21]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][22]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][23]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][24]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][25]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][26]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][27]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][28]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][29]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][30]~q\ : std_logic;
SIGNAL \r_f|rf_regs[1][31]~q\ : std_logic;
SIGNAL \t2|WideOr6~0_combout\ : std_logic;
SIGNAL \t2|WideOr5~0_combout\ : std_logic;
SIGNAL \t2|WideOr4~0_combout\ : std_logic;
SIGNAL \t2|WideOr3~0_combout\ : std_logic;
SIGNAL \t2|WideOr2~0_combout\ : std_logic;
SIGNAL \t2|WideOr1~0_combout\ : std_logic;
SIGNAL \t2|WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst_ex[28]~0_combout\ : std_logic;
SIGNAL \t2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \r_f|ALT_INV_rf_regs[1][0]~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_sw <= sw;
ALUResult <= ww_ALUResult;
RD1 <= ww_RD1;
RD2 <= ww_RD2;
prode_register_file <= ww_prode_register_file;
display_led <= ww_display_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_inst_ex[28]~0_combout\ <= NOT \inst_ex[28]~0_combout\;
\t2|ALT_INV_WideOr0~0_combout\ <= NOT \t2|WideOr0~0_combout\;
\r_f|ALT_INV_rf_regs[1][0]~q\ <= NOT \r_f|rf_regs[1][0]~q\;

-- Location: IOOBUF_X115_Y28_N9
\ALUResult[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~4_combout\,
	devoe => ww_devoe,
	o => \ALUResult[0]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\ALUResult[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~8_combout\,
	devoe => ww_devoe,
	o => \ALUResult[1]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\ALUResult[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~12_combout\,
	devoe => ww_devoe,
	o => \ALUResult[2]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\ALUResult[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~16_combout\,
	devoe => ww_devoe,
	o => \ALUResult[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\ALUResult[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~20_combout\,
	devoe => ww_devoe,
	o => \ALUResult[4]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\ALUResult[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~24_combout\,
	devoe => ww_devoe,
	o => \ALUResult[5]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\ALUResult[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~28_combout\,
	devoe => ww_devoe,
	o => \ALUResult[6]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\ALUResult[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~32_combout\,
	devoe => ww_devoe,
	o => \ALUResult[7]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\ALUResult[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~36_combout\,
	devoe => ww_devoe,
	o => \ALUResult[8]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\ALUResult[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~40_combout\,
	devoe => ww_devoe,
	o => \ALUResult[9]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\ALUResult[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~44_combout\,
	devoe => ww_devoe,
	o => \ALUResult[10]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\ALUResult[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~48_combout\,
	devoe => ww_devoe,
	o => \ALUResult[11]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\ALUResult[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~52_combout\,
	devoe => ww_devoe,
	o => \ALUResult[12]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\ALUResult[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~56_combout\,
	devoe => ww_devoe,
	o => \ALUResult[13]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\ALUResult[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~60_combout\,
	devoe => ww_devoe,
	o => \ALUResult[14]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\ALUResult[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~64_combout\,
	devoe => ww_devoe,
	o => \ALUResult[15]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\ALUResult[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~68_combout\,
	devoe => ww_devoe,
	o => \ALUResult[16]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\ALUResult[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~72_combout\,
	devoe => ww_devoe,
	o => \ALUResult[17]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\ALUResult[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~76_combout\,
	devoe => ww_devoe,
	o => \ALUResult[18]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\ALUResult[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~80_combout\,
	devoe => ww_devoe,
	o => \ALUResult[19]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\ALUResult[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~84_combout\,
	devoe => ww_devoe,
	o => \ALUResult[20]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\ALUResult[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~88_combout\,
	devoe => ww_devoe,
	o => \ALUResult[21]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\ALUResult[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~92_combout\,
	devoe => ww_devoe,
	o => \ALUResult[22]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\ALUResult[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~96_combout\,
	devoe => ww_devoe,
	o => \ALUResult[23]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\ALUResult[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~100_combout\,
	devoe => ww_devoe,
	o => \ALUResult[24]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\ALUResult[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~104_combout\,
	devoe => ww_devoe,
	o => \ALUResult[25]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\ALUResult[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~108_combout\,
	devoe => ww_devoe,
	o => \ALUResult[26]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\ALUResult[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~112_combout\,
	devoe => ww_devoe,
	o => \ALUResult[27]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\ALUResult[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~116_combout\,
	devoe => ww_devoe,
	o => \ALUResult[28]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\ALUResult[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~120_combout\,
	devoe => ww_devoe,
	o => \ALUResult[29]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\ALUResult[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~124_combout\,
	devoe => ww_devoe,
	o => \ALUResult[30]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\ALUResult[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \t1|Add0~128_combout\,
	devoe => ww_devoe,
	o => \ALUResult[31]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\RD1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \RD1[0]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\RD1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \RD1[1]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\RD1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \RD1[2]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\RD1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux60~0_combout\,
	devoe => ww_devoe,
	o => \RD1[3]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\RD1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux59~0_combout\,
	devoe => ww_devoe,
	o => \RD1[4]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\RD1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux58~0_combout\,
	devoe => ww_devoe,
	o => \RD1[5]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\RD1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux57~0_combout\,
	devoe => ww_devoe,
	o => \RD1[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\RD1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux56~0_combout\,
	devoe => ww_devoe,
	o => \RD1[7]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\RD1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux55~0_combout\,
	devoe => ww_devoe,
	o => \RD1[8]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\RD1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux54~0_combout\,
	devoe => ww_devoe,
	o => \RD1[9]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\RD1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux53~0_combout\,
	devoe => ww_devoe,
	o => \RD1[10]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\RD1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux52~0_combout\,
	devoe => ww_devoe,
	o => \RD1[11]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\RD1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux51~0_combout\,
	devoe => ww_devoe,
	o => \RD1[12]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\RD1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux50~0_combout\,
	devoe => ww_devoe,
	o => \RD1[13]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\RD1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux49~0_combout\,
	devoe => ww_devoe,
	o => \RD1[14]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\RD1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux48~0_combout\,
	devoe => ww_devoe,
	o => \RD1[15]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\RD1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux47~0_combout\,
	devoe => ww_devoe,
	o => \RD1[16]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\RD1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux46~0_combout\,
	devoe => ww_devoe,
	o => \RD1[17]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\RD1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux45~0_combout\,
	devoe => ww_devoe,
	o => \RD1[18]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\RD1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux44~0_combout\,
	devoe => ww_devoe,
	o => \RD1[19]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\RD1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux43~0_combout\,
	devoe => ww_devoe,
	o => \RD1[20]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\RD1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux42~0_combout\,
	devoe => ww_devoe,
	o => \RD1[21]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\RD1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux41~0_combout\,
	devoe => ww_devoe,
	o => \RD1[22]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\RD1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux40~0_combout\,
	devoe => ww_devoe,
	o => \RD1[23]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\RD1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux39~0_combout\,
	devoe => ww_devoe,
	o => \RD1[24]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\RD1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux38~0_combout\,
	devoe => ww_devoe,
	o => \RD1[25]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\RD1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux37~0_combout\,
	devoe => ww_devoe,
	o => \RD1[26]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\RD1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux36~0_combout\,
	devoe => ww_devoe,
	o => \RD1[27]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\RD1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux35~0_combout\,
	devoe => ww_devoe,
	o => \RD1[28]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\RD1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux34~0_combout\,
	devoe => ww_devoe,
	o => \RD1[29]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\RD1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux33~0_combout\,
	devoe => ww_devoe,
	o => \RD1[30]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\RD1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \RD1[31]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\RD2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux63~0_combout\,
	devoe => ww_devoe,
	o => \RD2[0]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\RD2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux62~0_combout\,
	devoe => ww_devoe,
	o => \RD2[1]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
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

-- Location: IOOBUF_X100_Y0_N23
\RD2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux60~0_combout\,
	devoe => ww_devoe,
	o => \RD2[3]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\RD2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux59~0_combout\,
	devoe => ww_devoe,
	o => \RD2[4]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\RD2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux58~0_combout\,
	devoe => ww_devoe,
	o => \RD2[5]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\RD2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux57~0_combout\,
	devoe => ww_devoe,
	o => \RD2[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\RD2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux56~0_combout\,
	devoe => ww_devoe,
	o => \RD2[7]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\RD2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux55~0_combout\,
	devoe => ww_devoe,
	o => \RD2[8]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\RD2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux54~0_combout\,
	devoe => ww_devoe,
	o => \RD2[9]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\RD2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux53~0_combout\,
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
	i => \r_f|Mux52~0_combout\,
	devoe => ww_devoe,
	o => \RD2[11]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\RD2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux51~0_combout\,
	devoe => ww_devoe,
	o => \RD2[12]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\RD2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux50~0_combout\,
	devoe => ww_devoe,
	o => \RD2[13]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\RD2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux49~0_combout\,
	devoe => ww_devoe,
	o => \RD2[14]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\RD2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux48~0_combout\,
	devoe => ww_devoe,
	o => \RD2[15]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\RD2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux47~0_combout\,
	devoe => ww_devoe,
	o => \RD2[16]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\RD2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux46~0_combout\,
	devoe => ww_devoe,
	o => \RD2[17]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\RD2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux45~0_combout\,
	devoe => ww_devoe,
	o => \RD2[18]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\RD2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux44~0_combout\,
	devoe => ww_devoe,
	o => \RD2[19]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\RD2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux43~0_combout\,
	devoe => ww_devoe,
	o => \RD2[20]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\RD2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux42~0_combout\,
	devoe => ww_devoe,
	o => \RD2[21]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\RD2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux41~0_combout\,
	devoe => ww_devoe,
	o => \RD2[22]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\RD2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux40~0_combout\,
	devoe => ww_devoe,
	o => \RD2[23]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\RD2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux39~0_combout\,
	devoe => ww_devoe,
	o => \RD2[24]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\RD2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux38~0_combout\,
	devoe => ww_devoe,
	o => \RD2[25]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\RD2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux37~0_combout\,
	devoe => ww_devoe,
	o => \RD2[26]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\RD2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux36~0_combout\,
	devoe => ww_devoe,
	o => \RD2[27]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\RD2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux35~0_combout\,
	devoe => ww_devoe,
	o => \RD2[28]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\RD2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux34~0_combout\,
	devoe => ww_devoe,
	o => \RD2[29]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\RD2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux33~0_combout\,
	devoe => ww_devoe,
	o => \RD2[30]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\RD2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|Mux32~0_combout\,
	devoe => ww_devoe,
	o => \RD2[31]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\prode_register_file[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|ALT_INV_rf_regs[1][0]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[0]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\prode_register_file[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][1]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[1]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
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

-- Location: IOOBUF_X115_Y24_N9
\prode_register_file[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][3]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[3]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\prode_register_file[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][4]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[4]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\prode_register_file[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][5]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[5]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\prode_register_file[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][6]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[6]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\prode_register_file[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][7]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[7]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\prode_register_file[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][8]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[8]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\prode_register_file[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][9]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[9]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\prode_register_file[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][10]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[10]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\prode_register_file[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][11]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[11]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\prode_register_file[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][12]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[12]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\prode_register_file[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][13]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[13]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\prode_register_file[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][14]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[14]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\prode_register_file[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][15]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[15]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\prode_register_file[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][16]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[16]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\prode_register_file[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][17]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[17]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\prode_register_file[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][18]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[18]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\prode_register_file[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][19]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[19]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\prode_register_file[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][20]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[20]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\prode_register_file[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][21]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[21]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\prode_register_file[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][22]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[22]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\prode_register_file[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][23]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[23]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\prode_register_file[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][24]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[24]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\prode_register_file[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][25]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[25]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\prode_register_file[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][26]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[26]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\prode_register_file[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][27]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[27]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\prode_register_file[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][28]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[28]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\prode_register_file[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][29]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[29]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\prode_register_file[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][30]~q\,
	devoe => ww_devoe,
	o => \prode_register_file[30]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\prode_register_file[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_f|rf_regs[1][31]~q\,
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
	i => \t2|WideOr6~0_combout\,
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
	i => \t2|WideOr5~0_combout\,
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
	i => \t2|WideOr4~0_combout\,
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
	i => \t2|WideOr3~0_combout\,
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
	i => \t2|WideOr2~0_combout\,
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
	i => \t2|WideOr1~0_combout\,
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
	i => \t2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \display_led[6]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X112_Y20_N18
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

-- Location: LCCOMB_X112_Y20_N24
\inst_ex[28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst_ex[28]~0_combout\ = \sw[0]~input_o\ $ (\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \inst_ex[28]~0_combout\);

-- Location: LCCOMB_X113_Y20_N16
\t1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~1_cout\ = CARRY((\Equal1~0_combout\) # (!\inst_ex[28]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \inst_ex[28]~0_combout\,
	datad => VCC,
	cout => \t1|Add0~1_cout\);

-- Location: LCCOMB_X113_Y20_N18
\t1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~2_combout\ = !\t1|Add0~1_cout\
-- \t1|Add0~3\ = CARRY(!\t1|Add0~1_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \t1|Add0~1_cout\,
	combout => \t1|Add0~2_combout\,
	cout => \t1|Add0~3\);

-- Location: LCCOMB_X112_Y20_N6
\t1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~4_combout\ = (\t1|Add0~2_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Add0~2_combout\,
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~4_combout\);

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

-- Location: IOIBUF_X115_Y15_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X113_Y20_N1
\r_f|rf_regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~8_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][1]~q\);

-- Location: LCCOMB_X113_Y20_N8
\t1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~5_combout\ = (\sw[1]~input_o\ & ((\r_f|rf_regs[0][1]~q\) # (!\sw[0]~input_o\))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & \r_f|rf_regs[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][1]~q\,
	combout => \t1|Add0~5_combout\);

-- Location: LCCOMB_X113_Y20_N2
\r_f|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux30~0_combout\ = (\r_f|rf_regs[0][1]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][1]~q\,
	combout => \r_f|Mux30~0_combout\);

-- Location: LCCOMB_X113_Y20_N20
\t1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~6_combout\ = ((\t1|Add0~5_combout\ $ (\r_f|Mux30~0_combout\ $ (\t1|Add0~3\)))) # (GND)
-- \t1|Add0~7\ = CARRY((\t1|Add0~5_combout\ & (\r_f|Mux30~0_combout\ & !\t1|Add0~3\)) # (!\t1|Add0~5_combout\ & ((\r_f|Mux30~0_combout\) # (!\t1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~5_combout\,
	datab => \r_f|Mux30~0_combout\,
	datad => VCC,
	cin => \t1|Add0~3\,
	combout => \t1|Add0~6_combout\,
	cout => \t1|Add0~7\);

-- Location: LCCOMB_X112_Y20_N20
\t1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~8_combout\ = (\t1|Add0~6_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \t1|Add0~6_combout\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~8_combout\);

-- Location: FF_X113_Y20_N7
\r_f|rf_regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~12_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][2]~q\);

-- Location: LCCOMB_X113_Y20_N12
\r_f|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux29~0_combout\ = (\r_f|rf_regs[0][2]~q\) # (\sw[1]~input_o\ $ (\sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][2]~q\,
	combout => \r_f|Mux29~0_combout\);

-- Location: LCCOMB_X113_Y20_N14
\t1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~9_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][2]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][2]~q\,
	combout => \t1|Add0~9_combout\);

-- Location: LCCOMB_X113_Y20_N22
\t1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~10_combout\ = (\r_f|Mux29~0_combout\ & ((\t1|Add0~9_combout\ & (!\t1|Add0~7\)) # (!\t1|Add0~9_combout\ & (\t1|Add0~7\ & VCC)))) # (!\r_f|Mux29~0_combout\ & ((\t1|Add0~9_combout\ & ((\t1|Add0~7\) # (GND))) # (!\t1|Add0~9_combout\ & 
-- (!\t1|Add0~7\))))
-- \t1|Add0~11\ = CARRY((\r_f|Mux29~0_combout\ & (\t1|Add0~9_combout\ & !\t1|Add0~7\)) # (!\r_f|Mux29~0_combout\ & ((\t1|Add0~9_combout\) # (!\t1|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux29~0_combout\,
	datab => \t1|Add0~9_combout\,
	datad => VCC,
	cin => \t1|Add0~7\,
	combout => \t1|Add0~10_combout\,
	cout => \t1|Add0~11\);

-- Location: LCCOMB_X112_Y20_N26
\t1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~12_combout\ = (\t1|Add0~10_combout\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \t1|Add0~10_combout\,
	combout => \t1|Add0~12_combout\);

-- Location: FF_X113_Y20_N9
\r_f|rf_regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~16_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][3]~q\);

-- Location: LCCOMB_X113_Y20_N4
\r_f|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux60~0_combout\ = (\r_f|rf_regs[0][3]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][3]~q\,
	combout => \r_f|Mux60~0_combout\);

-- Location: LCCOMB_X113_Y20_N6
\t1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~13_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][3]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][3]~q\,
	combout => \t1|Add0~13_combout\);

-- Location: LCCOMB_X113_Y20_N24
\t1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~14_combout\ = ((\r_f|Mux60~0_combout\ $ (\t1|Add0~13_combout\ $ (\t1|Add0~11\)))) # (GND)
-- \t1|Add0~15\ = CARRY((\r_f|Mux60~0_combout\ & ((!\t1|Add0~11\) # (!\t1|Add0~13_combout\))) # (!\r_f|Mux60~0_combout\ & (!\t1|Add0~13_combout\ & !\t1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux60~0_combout\,
	datab => \t1|Add0~13_combout\,
	datad => VCC,
	cin => \t1|Add0~11\,
	combout => \t1|Add0~14_combout\,
	cout => \t1|Add0~15\);

-- Location: LCCOMB_X112_Y20_N8
\t1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~16_combout\ = (\t1|Add0~14_combout\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \t1|Add0~14_combout\,
	combout => \t1|Add0~16_combout\);

-- Location: FF_X113_Y20_N5
\r_f|rf_regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][4]~q\);

-- Location: LCCOMB_X113_Y20_N0
\t1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~17_combout\ = (\sw[1]~input_o\ & (\r_f|rf_regs[0][4]~q\ & \sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\r_f|rf_regs[0][4]~q\) # (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \r_f|rf_regs[0][4]~q\,
	datad => \sw[0]~input_o\,
	combout => \t1|Add0~17_combout\);

-- Location: LCCOMB_X113_Y20_N10
\r_f|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux59~0_combout\ = (\r_f|rf_regs[0][4]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \r_f|rf_regs[0][4]~q\,
	combout => \r_f|Mux59~0_combout\);

-- Location: LCCOMB_X113_Y20_N26
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|Add0~17_combout\ & ((\r_f|Mux59~0_combout\ & (!\t1|Add0~15\)) # (!\r_f|Mux59~0_combout\ & ((\t1|Add0~15\) # (GND))))) # (!\t1|Add0~17_combout\ & ((\r_f|Mux59~0_combout\ & (\t1|Add0~15\ & VCC)) # (!\r_f|Mux59~0_combout\ & 
-- (!\t1|Add0~15\))))
-- \t1|Add0~19\ = CARRY((\t1|Add0~17_combout\ & ((!\t1|Add0~15\) # (!\r_f|Mux59~0_combout\))) # (!\t1|Add0~17_combout\ & (!\r_f|Mux59~0_combout\ & !\t1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~17_combout\,
	datab => \r_f|Mux59~0_combout\,
	datad => VCC,
	cin => \t1|Add0~15\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: LCCOMB_X114_Y20_N24
\t1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~20_combout\ = (\t1|Add0~18_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~18_combout\,
	combout => \t1|Add0~20_combout\);

-- Location: FF_X114_Y20_N11
\r_f|rf_regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~24_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][5]~q\);

-- Location: LCCOMB_X114_Y20_N28
\r_f|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux58~0_combout\ = (\r_f|rf_regs[0][5]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][5]~q\,
	combout => \r_f|Mux58~0_combout\);

-- Location: LCCOMB_X114_Y20_N2
\t1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~21_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][5]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \r_f|rf_regs[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][5]~q\,
	combout => \t1|Add0~21_combout\);

-- Location: LCCOMB_X113_Y20_N28
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = ((\r_f|Mux58~0_combout\ $ (\t1|Add0~21_combout\ $ (\t1|Add0~19\)))) # (GND)
-- \t1|Add0~23\ = CARRY((\r_f|Mux58~0_combout\ & ((!\t1|Add0~19\) # (!\t1|Add0~21_combout\))) # (!\r_f|Mux58~0_combout\ & (!\t1|Add0~21_combout\ & !\t1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux58~0_combout\,
	datab => \t1|Add0~21_combout\,
	datad => VCC,
	cin => \t1|Add0~19\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: LCCOMB_X114_Y20_N0
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|Add0~22_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~22_combout\,
	combout => \t1|Add0~24_combout\);

-- Location: FF_X114_Y20_N19
\r_f|rf_regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~28_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][6]~q\);

-- Location: LCCOMB_X114_Y20_N20
\r_f|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux57~0_combout\ = (\r_f|rf_regs[0][6]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][6]~q\,
	combout => \r_f|Mux57~0_combout\);

-- Location: LCCOMB_X114_Y20_N22
\t1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~25_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][6]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \r_f|rf_regs[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][6]~q\,
	combout => \t1|Add0~25_combout\);

-- Location: LCCOMB_X113_Y20_N30
\t1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~26_combout\ = (\r_f|Mux57~0_combout\ & ((\t1|Add0~25_combout\ & (!\t1|Add0~23\)) # (!\t1|Add0~25_combout\ & (\t1|Add0~23\ & VCC)))) # (!\r_f|Mux57~0_combout\ & ((\t1|Add0~25_combout\ & ((\t1|Add0~23\) # (GND))) # (!\t1|Add0~25_combout\ & 
-- (!\t1|Add0~23\))))
-- \t1|Add0~27\ = CARRY((\r_f|Mux57~0_combout\ & (\t1|Add0~25_combout\ & !\t1|Add0~23\)) # (!\r_f|Mux57~0_combout\ & ((\t1|Add0~25_combout\) # (!\t1|Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux57~0_combout\,
	datab => \t1|Add0~25_combout\,
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~26_combout\,
	cout => \t1|Add0~27\);

-- Location: LCCOMB_X114_Y20_N10
\t1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~28_combout\ = (\t1|Add0~26_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~26_combout\,
	combout => \t1|Add0~28_combout\);

-- Location: FF_X114_Y20_N9
\r_f|rf_regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~32_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][7]~q\);

-- Location: LCCOMB_X114_Y20_N30
\r_f|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux56~0_combout\ = (\r_f|rf_regs[0][7]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \r_f|rf_regs[0][7]~q\,
	datad => \sw[0]~input_o\,
	combout => \r_f|Mux56~0_combout\);

-- Location: LCCOMB_X114_Y20_N4
\t1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~29_combout\ = (\sw[1]~input_o\ & (\r_f|rf_regs[0][7]~q\ & \sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\r_f|rf_regs[0][7]~q\) # (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \r_f|rf_regs[0][7]~q\,
	datad => \sw[0]~input_o\,
	combout => \t1|Add0~29_combout\);

-- Location: LCCOMB_X113_Y19_N0
\t1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~30_combout\ = ((\r_f|Mux56~0_combout\ $ (\t1|Add0~29_combout\ $ (\t1|Add0~27\)))) # (GND)
-- \t1|Add0~31\ = CARRY((\r_f|Mux56~0_combout\ & ((!\t1|Add0~27\) # (!\t1|Add0~29_combout\))) # (!\r_f|Mux56~0_combout\ & (!\t1|Add0~29_combout\ & !\t1|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux56~0_combout\,
	datab => \t1|Add0~29_combout\,
	datad => VCC,
	cin => \t1|Add0~27\,
	combout => \t1|Add0~30_combout\,
	cout => \t1|Add0~31\);

-- Location: LCCOMB_X114_Y20_N18
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|Add0~30_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~30_combout\,
	combout => \t1|Add0~32_combout\);

-- Location: FF_X114_Y20_N25
\r_f|rf_regs[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~36_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][8]~q\);

-- Location: LCCOMB_X114_Y20_N12
\t1|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~33_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][8]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][8]~q\,
	combout => \t1|Add0~33_combout\);

-- Location: LCCOMB_X114_Y20_N26
\r_f|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux55~0_combout\ = (\r_f|rf_regs[0][8]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][8]~q\,
	combout => \r_f|Mux55~0_combout\);

-- Location: LCCOMB_X113_Y19_N2
\t1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~34_combout\ = (\t1|Add0~33_combout\ & ((\r_f|Mux55~0_combout\ & (!\t1|Add0~31\)) # (!\r_f|Mux55~0_combout\ & ((\t1|Add0~31\) # (GND))))) # (!\t1|Add0~33_combout\ & ((\r_f|Mux55~0_combout\ & (\t1|Add0~31\ & VCC)) # (!\r_f|Mux55~0_combout\ & 
-- (!\t1|Add0~31\))))
-- \t1|Add0~35\ = CARRY((\t1|Add0~33_combout\ & ((!\t1|Add0~31\) # (!\r_f|Mux55~0_combout\))) # (!\t1|Add0~33_combout\ & (!\r_f|Mux55~0_combout\ & !\t1|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~33_combout\,
	datab => \r_f|Mux55~0_combout\,
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~34_combout\,
	cout => \t1|Add0~35\);

-- Location: LCCOMB_X114_Y20_N8
\t1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~36_combout\ = (\t1|Add0~34_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~34_combout\,
	combout => \t1|Add0~36_combout\);

-- Location: FF_X114_Y20_N1
\r_f|rf_regs[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~40_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][9]~q\);

-- Location: LCCOMB_X114_Y20_N16
\t1|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~37_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][9]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \r_f|rf_regs[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][9]~q\,
	combout => \t1|Add0~37_combout\);

-- Location: LCCOMB_X114_Y20_N6
\r_f|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux54~0_combout\ = (\r_f|rf_regs[0][9]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][9]~q\,
	combout => \r_f|Mux54~0_combout\);

-- Location: LCCOMB_X113_Y19_N4
\t1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~38_combout\ = ((\t1|Add0~37_combout\ $ (\r_f|Mux54~0_combout\ $ (\t1|Add0~35\)))) # (GND)
-- \t1|Add0~39\ = CARRY((\t1|Add0~37_combout\ & (\r_f|Mux54~0_combout\ & !\t1|Add0~35\)) # (!\t1|Add0~37_combout\ & ((\r_f|Mux54~0_combout\) # (!\t1|Add0~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~37_combout\,
	datab => \r_f|Mux54~0_combout\,
	datad => VCC,
	cin => \t1|Add0~35\,
	combout => \t1|Add0~38_combout\,
	cout => \t1|Add0~39\);

-- Location: LCCOMB_X114_Y20_N14
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|Add0~38_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~38_combout\,
	combout => \t1|Add0~40_combout\);

-- Location: FF_X114_Y19_N21
\r_f|rf_regs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~44_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][10]~q\);

-- Location: LCCOMB_X114_Y19_N8
\t1|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~41_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][10]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \r_f|rf_regs[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][10]~q\,
	combout => \t1|Add0~41_combout\);

-- Location: LCCOMB_X114_Y19_N10
\r_f|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux53~0_combout\ = (\r_f|rf_regs[0][10]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][10]~q\,
	combout => \r_f|Mux53~0_combout\);

-- Location: LCCOMB_X113_Y19_N6
\t1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~42_combout\ = (\t1|Add0~41_combout\ & ((\r_f|Mux53~0_combout\ & (!\t1|Add0~39\)) # (!\r_f|Mux53~0_combout\ & ((\t1|Add0~39\) # (GND))))) # (!\t1|Add0~41_combout\ & ((\r_f|Mux53~0_combout\ & (\t1|Add0~39\ & VCC)) # (!\r_f|Mux53~0_combout\ & 
-- (!\t1|Add0~39\))))
-- \t1|Add0~43\ = CARRY((\t1|Add0~41_combout\ & ((!\t1|Add0~39\) # (!\r_f|Mux53~0_combout\))) # (!\t1|Add0~41_combout\ & (!\r_f|Mux53~0_combout\ & !\t1|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~41_combout\,
	datab => \r_f|Mux53~0_combout\,
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~42_combout\,
	cout => \t1|Add0~43\);

-- Location: LCCOMB_X114_Y19_N2
\t1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~44_combout\ = (\t1|Add0~42_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~42_combout\,
	combout => \t1|Add0~44_combout\);

-- Location: FF_X112_Y19_N17
\r_f|rf_regs[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~48_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][11]~q\);

-- Location: LCCOMB_X112_Y19_N10
\r_f|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux52~0_combout\ = (\r_f|rf_regs[0][11]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][11]~q\,
	combout => \r_f|Mux52~0_combout\);

-- Location: LCCOMB_X112_Y19_N20
\t1|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~45_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][11]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][11]~q\,
	combout => \t1|Add0~45_combout\);

-- Location: LCCOMB_X113_Y19_N8
\t1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~46_combout\ = ((\r_f|Mux52~0_combout\ $ (\t1|Add0~45_combout\ $ (\t1|Add0~43\)))) # (GND)
-- \t1|Add0~47\ = CARRY((\r_f|Mux52~0_combout\ & ((!\t1|Add0~43\) # (!\t1|Add0~45_combout\))) # (!\r_f|Mux52~0_combout\ & (!\t1|Add0~45_combout\ & !\t1|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux52~0_combout\,
	datab => \t1|Add0~45_combout\,
	datad => VCC,
	cin => \t1|Add0~43\,
	combout => \t1|Add0~46_combout\,
	cout => \t1|Add0~47\);

-- Location: LCCOMB_X112_Y19_N26
\t1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~48_combout\ = (\t1|Add0~46_combout\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \t1|Add0~46_combout\,
	datad => \sw[0]~input_o\,
	combout => \t1|Add0~48_combout\);

-- Location: FF_X112_Y19_N27
\r_f|rf_regs[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~52_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][12]~q\);

-- Location: LCCOMB_X112_Y19_N12
\r_f|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux51~0_combout\ = (\r_f|rf_regs[0][12]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][12]~q\,
	combout => \r_f|Mux51~0_combout\);

-- Location: LCCOMB_X112_Y19_N30
\t1|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~49_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][12]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][12]~q\,
	combout => \t1|Add0~49_combout\);

-- Location: LCCOMB_X113_Y19_N10
\t1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~50_combout\ = (\r_f|Mux51~0_combout\ & ((\t1|Add0~49_combout\ & (!\t1|Add0~47\)) # (!\t1|Add0~49_combout\ & (\t1|Add0~47\ & VCC)))) # (!\r_f|Mux51~0_combout\ & ((\t1|Add0~49_combout\ & ((\t1|Add0~47\) # (GND))) # (!\t1|Add0~49_combout\ & 
-- (!\t1|Add0~47\))))
-- \t1|Add0~51\ = CARRY((\r_f|Mux51~0_combout\ & (\t1|Add0~49_combout\ & !\t1|Add0~47\)) # (!\r_f|Mux51~0_combout\ & ((\t1|Add0~49_combout\) # (!\t1|Add0~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux51~0_combout\,
	datab => \t1|Add0~49_combout\,
	datad => VCC,
	cin => \t1|Add0~47\,
	combout => \t1|Add0~50_combout\,
	cout => \t1|Add0~51\);

-- Location: LCCOMB_X112_Y19_N4
\t1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~52_combout\ = (\t1|Add0~50_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \t1|Add0~50_combout\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~52_combout\);

-- Location: FF_X112_Y19_N7
\r_f|rf_regs[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~56_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][13]~q\);

-- Location: LCCOMB_X112_Y19_N0
\t1|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~53_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][13]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][13]~q\,
	combout => \t1|Add0~53_combout\);

-- Location: LCCOMB_X112_Y19_N6
\r_f|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux50~0_combout\ = (\r_f|rf_regs[0][13]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \r_f|rf_regs[0][13]~q\,
	datad => \sw[1]~input_o\,
	combout => \r_f|Mux50~0_combout\);

-- Location: LCCOMB_X113_Y19_N12
\t1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~54_combout\ = ((\t1|Add0~53_combout\ $ (\r_f|Mux50~0_combout\ $ (\t1|Add0~51\)))) # (GND)
-- \t1|Add0~55\ = CARRY((\t1|Add0~53_combout\ & (\r_f|Mux50~0_combout\ & !\t1|Add0~51\)) # (!\t1|Add0~53_combout\ & ((\r_f|Mux50~0_combout\) # (!\t1|Add0~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~53_combout\,
	datab => \r_f|Mux50~0_combout\,
	datad => VCC,
	cin => \t1|Add0~51\,
	combout => \t1|Add0~54_combout\,
	cout => \t1|Add0~55\);

-- Location: LCCOMB_X112_Y19_N22
\t1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~56_combout\ = (\t1|Add0~54_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \t1|Add0~54_combout\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~56_combout\);

-- Location: FF_X112_Y19_N25
\r_f|rf_regs[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~60_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][14]~q\);

-- Location: LCCOMB_X112_Y19_N14
\r_f|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux49~0_combout\ = (\r_f|rf_regs[0][14]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][14]~q\,
	combout => \r_f|Mux49~0_combout\);

-- Location: LCCOMB_X112_Y19_N28
\t1|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~57_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][14]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][14]~q\,
	combout => \t1|Add0~57_combout\);

-- Location: LCCOMB_X113_Y19_N14
\t1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~58_combout\ = (\r_f|Mux49~0_combout\ & ((\t1|Add0~57_combout\ & (!\t1|Add0~55\)) # (!\t1|Add0~57_combout\ & (\t1|Add0~55\ & VCC)))) # (!\r_f|Mux49~0_combout\ & ((\t1|Add0~57_combout\ & ((\t1|Add0~55\) # (GND))) # (!\t1|Add0~57_combout\ & 
-- (!\t1|Add0~55\))))
-- \t1|Add0~59\ = CARRY((\r_f|Mux49~0_combout\ & (\t1|Add0~57_combout\ & !\t1|Add0~55\)) # (!\r_f|Mux49~0_combout\ & ((\t1|Add0~57_combout\) # (!\t1|Add0~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux49~0_combout\,
	datab => \t1|Add0~57_combout\,
	datad => VCC,
	cin => \t1|Add0~55\,
	combout => \t1|Add0~58_combout\,
	cout => \t1|Add0~59\);

-- Location: LCCOMB_X112_Y19_N2
\t1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~60_combout\ = (\t1|Add0~58_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \t1|Add0~58_combout\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~60_combout\);

-- Location: FF_X114_Y18_N13
\r_f|rf_regs[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~64_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][15]~q\);

-- Location: LCCOMB_X114_Y18_N10
\r_f|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux48~0_combout\ = (\r_f|rf_regs[0][15]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][15]~q\,
	combout => \r_f|Mux48~0_combout\);

-- Location: LCCOMB_X114_Y18_N0
\t1|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~61_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][15]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][15]~q\,
	combout => \t1|Add0~61_combout\);

-- Location: LCCOMB_X113_Y19_N16
\t1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~62_combout\ = ((\r_f|Mux48~0_combout\ $ (\t1|Add0~61_combout\ $ (\t1|Add0~59\)))) # (GND)
-- \t1|Add0~63\ = CARRY((\r_f|Mux48~0_combout\ & ((!\t1|Add0~59\) # (!\t1|Add0~61_combout\))) # (!\r_f|Mux48~0_combout\ & (!\t1|Add0~61_combout\ & !\t1|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux48~0_combout\,
	datab => \t1|Add0~61_combout\,
	datad => VCC,
	cin => \t1|Add0~59\,
	combout => \t1|Add0~62_combout\,
	cout => \t1|Add0~63\);

-- Location: LCCOMB_X114_Y18_N26
\t1|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~64_combout\ = (\t1|Add0~62_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \t1|Add0~62_combout\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~64_combout\);

-- Location: LCCOMB_X114_Y18_N16
\r_f|rf_regs[0][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|rf_regs[0][16]~feeder_combout\ = \t1|Add0~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~68_combout\,
	combout => \r_f|rf_regs[0][16]~feeder_combout\);

-- Location: FF_X114_Y18_N17
\r_f|rf_regs[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_f|rf_regs[0][16]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][16]~q\);

-- Location: LCCOMB_X114_Y18_N24
\t1|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~65_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][16]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][16]~q\,
	combout => \t1|Add0~65_combout\);

-- Location: LCCOMB_X114_Y18_N22
\r_f|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux47~0_combout\ = (\r_f|rf_regs[0][16]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][16]~q\,
	combout => \r_f|Mux47~0_combout\);

-- Location: LCCOMB_X113_Y19_N18
\t1|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~66_combout\ = (\t1|Add0~65_combout\ & ((\r_f|Mux47~0_combout\ & (!\t1|Add0~63\)) # (!\r_f|Mux47~0_combout\ & ((\t1|Add0~63\) # (GND))))) # (!\t1|Add0~65_combout\ & ((\r_f|Mux47~0_combout\ & (\t1|Add0~63\ & VCC)) # (!\r_f|Mux47~0_combout\ & 
-- (!\t1|Add0~63\))))
-- \t1|Add0~67\ = CARRY((\t1|Add0~65_combout\ & ((!\t1|Add0~63\) # (!\r_f|Mux47~0_combout\))) # (!\t1|Add0~65_combout\ & (!\r_f|Mux47~0_combout\ & !\t1|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~65_combout\,
	datab => \r_f|Mux47~0_combout\,
	datad => VCC,
	cin => \t1|Add0~63\,
	combout => \t1|Add0~66_combout\,
	cout => \t1|Add0~67\);

-- Location: LCCOMB_X114_Y18_N30
\t1|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~68_combout\ = (\t1|Add0~66_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \t1|Add0~66_combout\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~68_combout\);

-- Location: FF_X114_Y19_N1
\r_f|rf_regs[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~72_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][17]~q\);

-- Location: LCCOMB_X114_Y19_N18
\r_f|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux46~0_combout\ = (\r_f|rf_regs[0][17]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][17]~q\,
	combout => \r_f|Mux46~0_combout\);

-- Location: LCCOMB_X114_Y19_N16
\t1|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~69_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][17]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \r_f|rf_regs[0][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][17]~q\,
	combout => \t1|Add0~69_combout\);

-- Location: LCCOMB_X113_Y19_N20
\t1|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~70_combout\ = ((\r_f|Mux46~0_combout\ $ (\t1|Add0~69_combout\ $ (\t1|Add0~67\)))) # (GND)
-- \t1|Add0~71\ = CARRY((\r_f|Mux46~0_combout\ & ((!\t1|Add0~67\) # (!\t1|Add0~69_combout\))) # (!\r_f|Mux46~0_combout\ & (!\t1|Add0~69_combout\ & !\t1|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux46~0_combout\,
	datab => \t1|Add0~69_combout\,
	datad => VCC,
	cin => \t1|Add0~67\,
	combout => \t1|Add0~70_combout\,
	cout => \t1|Add0~71\);

-- Location: LCCOMB_X114_Y19_N22
\t1|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~72_combout\ = (\t1|Add0~70_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \t1|Add0~70_combout\,
	combout => \t1|Add0~72_combout\);

-- Location: FF_X114_Y19_N13
\r_f|rf_regs[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~76_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][18]~q\);

-- Location: LCCOMB_X114_Y19_N6
\r_f|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux45~0_combout\ = (\r_f|rf_regs[0][18]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][18]~q\,
	combout => \r_f|Mux45~0_combout\);

-- Location: LCCOMB_X114_Y19_N4
\t1|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~73_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][18]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \r_f|rf_regs[0][18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][18]~q\,
	combout => \t1|Add0~73_combout\);

-- Location: LCCOMB_X113_Y19_N22
\t1|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~74_combout\ = (\r_f|Mux45~0_combout\ & ((\t1|Add0~73_combout\ & (!\t1|Add0~71\)) # (!\t1|Add0~73_combout\ & (\t1|Add0~71\ & VCC)))) # (!\r_f|Mux45~0_combout\ & ((\t1|Add0~73_combout\ & ((\t1|Add0~71\) # (GND))) # (!\t1|Add0~73_combout\ & 
-- (!\t1|Add0~71\))))
-- \t1|Add0~75\ = CARRY((\r_f|Mux45~0_combout\ & (\t1|Add0~73_combout\ & !\t1|Add0~71\)) # (!\r_f|Mux45~0_combout\ & ((\t1|Add0~73_combout\) # (!\t1|Add0~71\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux45~0_combout\,
	datab => \t1|Add0~73_combout\,
	datad => VCC,
	cin => \t1|Add0~71\,
	combout => \t1|Add0~74_combout\,
	cout => \t1|Add0~75\);

-- Location: LCCOMB_X114_Y19_N30
\t1|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~76_combout\ = (\t1|Add0~74_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \t1|Add0~74_combout\,
	combout => \t1|Add0~76_combout\);

-- Location: FF_X112_Y19_N11
\r_f|rf_regs[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~80_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][19]~q\);

-- Location: LCCOMB_X112_Y19_N16
\t1|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~77_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][19]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][19]~q\,
	combout => \t1|Add0~77_combout\);

-- Location: LCCOMB_X112_Y19_N24
\r_f|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux44~0_combout\ = (\r_f|rf_regs[0][19]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][19]~q\,
	combout => \r_f|Mux44~0_combout\);

-- Location: LCCOMB_X113_Y19_N24
\t1|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~78_combout\ = ((\t1|Add0~77_combout\ $ (\r_f|Mux44~0_combout\ $ (\t1|Add0~75\)))) # (GND)
-- \t1|Add0~79\ = CARRY((\t1|Add0~77_combout\ & (\r_f|Mux44~0_combout\ & !\t1|Add0~75\)) # (!\t1|Add0~77_combout\ & ((\r_f|Mux44~0_combout\) # (!\t1|Add0~75\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~77_combout\,
	datab => \r_f|Mux44~0_combout\,
	datad => VCC,
	cin => \t1|Add0~75\,
	combout => \t1|Add0~78_combout\,
	cout => \t1|Add0~79\);

-- Location: LCCOMB_X112_Y19_N8
\t1|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~80_combout\ = (\t1|Add0~78_combout\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \t1|Add0~78_combout\,
	combout => \t1|Add0~80_combout\);

-- Location: LCCOMB_X111_Y19_N24
\r_f|rf_regs[0][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|rf_regs[0][20]~feeder_combout\ = \t1|Add0~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t1|Add0~84_combout\,
	combout => \r_f|rf_regs[0][20]~feeder_combout\);

-- Location: FF_X111_Y19_N25
\r_f|rf_regs[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_f|rf_regs[0][20]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][20]~q\);

-- Location: LCCOMB_X111_Y19_N10
\r_f|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux43~0_combout\ = (\r_f|rf_regs[0][20]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][20]~q\,
	combout => \r_f|Mux43~0_combout\);

-- Location: LCCOMB_X111_Y19_N28
\t1|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~81_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][20]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \r_f|rf_regs[0][20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][20]~q\,
	combout => \t1|Add0~81_combout\);

-- Location: LCCOMB_X113_Y19_N26
\t1|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~82_combout\ = (\r_f|Mux43~0_combout\ & ((\t1|Add0~81_combout\ & (!\t1|Add0~79\)) # (!\t1|Add0~81_combout\ & (\t1|Add0~79\ & VCC)))) # (!\r_f|Mux43~0_combout\ & ((\t1|Add0~81_combout\ & ((\t1|Add0~79\) # (GND))) # (!\t1|Add0~81_combout\ & 
-- (!\t1|Add0~79\))))
-- \t1|Add0~83\ = CARRY((\r_f|Mux43~0_combout\ & (\t1|Add0~81_combout\ & !\t1|Add0~79\)) # (!\r_f|Mux43~0_combout\ & ((\t1|Add0~81_combout\) # (!\t1|Add0~79\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux43~0_combout\,
	datab => \t1|Add0~81_combout\,
	datad => VCC,
	cin => \t1|Add0~79\,
	combout => \t1|Add0~82_combout\,
	cout => \t1|Add0~83\);

-- Location: LCCOMB_X112_Y19_N18
\t1|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~84_combout\ = (\t1|Add0~82_combout\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \t1|Add0~82_combout\,
	combout => \t1|Add0~84_combout\);

-- Location: FF_X114_Y19_N29
\r_f|rf_regs[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~88_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][21]~q\);

-- Location: LCCOMB_X114_Y19_N28
\r_f|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux42~0_combout\ = (\r_f|rf_regs[0][21]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \r_f|rf_regs[0][21]~q\,
	combout => \r_f|Mux42~0_combout\);

-- Location: LCCOMB_X114_Y19_N14
\t1|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~85_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][21]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \r_f|rf_regs[0][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][21]~q\,
	combout => \t1|Add0~85_combout\);

-- Location: LCCOMB_X113_Y19_N28
\t1|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~86_combout\ = ((\r_f|Mux42~0_combout\ $ (\t1|Add0~85_combout\ $ (\t1|Add0~83\)))) # (GND)
-- \t1|Add0~87\ = CARRY((\r_f|Mux42~0_combout\ & ((!\t1|Add0~83\) # (!\t1|Add0~85_combout\))) # (!\r_f|Mux42~0_combout\ & (!\t1|Add0~85_combout\ & !\t1|Add0~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux42~0_combout\,
	datab => \t1|Add0~85_combout\,
	datad => VCC,
	cin => \t1|Add0~83\,
	combout => \t1|Add0~86_combout\,
	cout => \t1|Add0~87\);

-- Location: LCCOMB_X114_Y19_N24
\t1|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~88_combout\ = (\t1|Add0~86_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \t1|Add0~86_combout\,
	combout => \t1|Add0~88_combout\);

-- Location: FF_X114_Y19_N3
\r_f|rf_regs[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~92_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][22]~q\);

-- Location: LCCOMB_X114_Y19_N20
\r_f|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux41~0_combout\ = (\r_f|rf_regs[0][22]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][22]~q\,
	combout => \r_f|Mux41~0_combout\);

-- Location: LCCOMB_X114_Y19_N12
\t1|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~89_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][22]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & \r_f|rf_regs[0][22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][22]~q\,
	combout => \t1|Add0~89_combout\);

-- Location: LCCOMB_X113_Y19_N30
\t1|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~90_combout\ = (\r_f|Mux41~0_combout\ & ((\t1|Add0~89_combout\ & (!\t1|Add0~87\)) # (!\t1|Add0~89_combout\ & (\t1|Add0~87\ & VCC)))) # (!\r_f|Mux41~0_combout\ & ((\t1|Add0~89_combout\ & ((\t1|Add0~87\) # (GND))) # (!\t1|Add0~89_combout\ & 
-- (!\t1|Add0~87\))))
-- \t1|Add0~91\ = CARRY((\r_f|Mux41~0_combout\ & (\t1|Add0~89_combout\ & !\t1|Add0~87\)) # (!\r_f|Mux41~0_combout\ & ((\t1|Add0~89_combout\) # (!\t1|Add0~87\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux41~0_combout\,
	datab => \t1|Add0~89_combout\,
	datad => VCC,
	cin => \t1|Add0~87\,
	combout => \t1|Add0~90_combout\,
	cout => \t1|Add0~91\);

-- Location: LCCOMB_X114_Y19_N26
\t1|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~92_combout\ = (\t1|Add0~90_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \t1|Add0~90_combout\,
	combout => \t1|Add0~92_combout\);

-- Location: FF_X113_Y18_N31
\r_f|rf_regs[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~96_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][23]~q\);

-- Location: LCCOMB_X112_Y18_N14
\t1|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~93_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][23]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][23]~q\,
	combout => \t1|Add0~93_combout\);

-- Location: LCCOMB_X112_Y18_N4
\r_f|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux40~0_combout\ = (\r_f|rf_regs[0][23]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][23]~q\,
	combout => \r_f|Mux40~0_combout\);

-- Location: LCCOMB_X113_Y18_N0
\t1|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~94_combout\ = ((\t1|Add0~93_combout\ $ (\r_f|Mux40~0_combout\ $ (\t1|Add0~91\)))) # (GND)
-- \t1|Add0~95\ = CARRY((\t1|Add0~93_combout\ & (\r_f|Mux40~0_combout\ & !\t1|Add0~91\)) # (!\t1|Add0~93_combout\ & ((\r_f|Mux40~0_combout\) # (!\t1|Add0~91\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~93_combout\,
	datab => \r_f|Mux40~0_combout\,
	datad => VCC,
	cin => \t1|Add0~91\,
	combout => \t1|Add0~94_combout\,
	cout => \t1|Add0~95\);

-- Location: LCCOMB_X113_Y18_N24
\t1|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~96_combout\ = (\t1|Add0~94_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~94_combout\,
	combout => \t1|Add0~96_combout\);

-- Location: FF_X113_Y18_N23
\r_f|rf_regs[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~100_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][24]~q\);

-- Location: LCCOMB_X114_Y18_N4
\r_f|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux39~0_combout\ = (\r_f|rf_regs[0][24]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][24]~q\,
	combout => \r_f|Mux39~0_combout\);

-- Location: LCCOMB_X114_Y18_N14
\t1|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~97_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][24]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][24]~q\,
	combout => \t1|Add0~97_combout\);

-- Location: LCCOMB_X113_Y18_N2
\t1|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~98_combout\ = (\r_f|Mux39~0_combout\ & ((\t1|Add0~97_combout\ & (!\t1|Add0~95\)) # (!\t1|Add0~97_combout\ & (\t1|Add0~95\ & VCC)))) # (!\r_f|Mux39~0_combout\ & ((\t1|Add0~97_combout\ & ((\t1|Add0~95\) # (GND))) # (!\t1|Add0~97_combout\ & 
-- (!\t1|Add0~95\))))
-- \t1|Add0~99\ = CARRY((\r_f|Mux39~0_combout\ & (\t1|Add0~97_combout\ & !\t1|Add0~95\)) # (!\r_f|Mux39~0_combout\ & ((\t1|Add0~97_combout\) # (!\t1|Add0~95\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux39~0_combout\,
	datab => \t1|Add0~97_combout\,
	datad => VCC,
	cin => \t1|Add0~95\,
	combout => \t1|Add0~98_combout\,
	cout => \t1|Add0~99\);

-- Location: LCCOMB_X113_Y18_N28
\t1|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~100_combout\ = (\t1|Add0~98_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~98_combout\,
	combout => \t1|Add0~100_combout\);

-- Location: FF_X113_Y18_N27
\r_f|rf_regs[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~104_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][25]~q\);

-- Location: LCCOMB_X112_Y18_N16
\r_f|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux38~0_combout\ = (\r_f|rf_regs[0][25]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][25]~q\,
	combout => \r_f|Mux38~0_combout\);

-- Location: LCCOMB_X112_Y18_N6
\t1|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~101_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][25]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][25]~q\,
	combout => \t1|Add0~101_combout\);

-- Location: LCCOMB_X113_Y18_N4
\t1|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~102_combout\ = ((\r_f|Mux38~0_combout\ $ (\t1|Add0~101_combout\ $ (\t1|Add0~99\)))) # (GND)
-- \t1|Add0~103\ = CARRY((\r_f|Mux38~0_combout\ & ((!\t1|Add0~99\) # (!\t1|Add0~101_combout\))) # (!\r_f|Mux38~0_combout\ & (!\t1|Add0~101_combout\ & !\t1|Add0~99\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux38~0_combout\,
	datab => \t1|Add0~101_combout\,
	datad => VCC,
	cin => \t1|Add0~99\,
	combout => \t1|Add0~102_combout\,
	cout => \t1|Add0~103\);

-- Location: LCCOMB_X113_Y18_N26
\t1|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~104_combout\ = (\t1|Add0~102_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \t1|Add0~102_combout\,
	combout => \t1|Add0~104_combout\);

-- Location: LCCOMB_X114_Y18_N8
\r_f|rf_regs[0][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|rf_regs[0][26]~feeder_combout\ = \t1|Add0~108_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t1|Add0~108_combout\,
	combout => \r_f|rf_regs[0][26]~feeder_combout\);

-- Location: FF_X114_Y18_N9
\r_f|rf_regs[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_f|rf_regs[0][26]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][26]~q\);

-- Location: LCCOMB_X114_Y18_N2
\r_f|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux37~0_combout\ = (\r_f|rf_regs[0][26]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \r_f|rf_regs[0][26]~q\,
	datad => \sw[0]~input_o\,
	combout => \r_f|Mux37~0_combout\);

-- Location: LCCOMB_X114_Y18_N28
\t1|Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~105_combout\ = (\sw[1]~input_o\ & (\r_f|rf_regs[0][26]~q\ & \sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((\r_f|rf_regs[0][26]~q\) # (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \r_f|rf_regs[0][26]~q\,
	datad => \sw[0]~input_o\,
	combout => \t1|Add0~105_combout\);

-- Location: LCCOMB_X113_Y18_N6
\t1|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~106_combout\ = (\r_f|Mux37~0_combout\ & ((\t1|Add0~105_combout\ & (!\t1|Add0~103\)) # (!\t1|Add0~105_combout\ & (\t1|Add0~103\ & VCC)))) # (!\r_f|Mux37~0_combout\ & ((\t1|Add0~105_combout\ & ((\t1|Add0~103\) # (GND))) # (!\t1|Add0~105_combout\ & 
-- (!\t1|Add0~103\))))
-- \t1|Add0~107\ = CARRY((\r_f|Mux37~0_combout\ & (\t1|Add0~105_combout\ & !\t1|Add0~103\)) # (!\r_f|Mux37~0_combout\ & ((\t1|Add0~105_combout\) # (!\t1|Add0~103\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux37~0_combout\,
	datab => \t1|Add0~105_combout\,
	datad => VCC,
	cin => \t1|Add0~103\,
	combout => \t1|Add0~106_combout\,
	cout => \t1|Add0~107\);

-- Location: LCCOMB_X114_Y18_N6
\t1|Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~108_combout\ = (\t1|Add0~106_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \t1|Add0~106_combout\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~108_combout\);

-- Location: LCCOMB_X112_Y18_N20
\r_f|rf_regs[0][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|rf_regs[0][27]~feeder_combout\ = \t1|Add0~112_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \t1|Add0~112_combout\,
	combout => \r_f|rf_regs[0][27]~feeder_combout\);

-- Location: FF_X112_Y18_N21
\r_f|rf_regs[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_f|rf_regs[0][27]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][27]~q\);

-- Location: LCCOMB_X112_Y18_N26
\r_f|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux36~0_combout\ = (\r_f|rf_regs[0][27]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][27]~q\,
	combout => \r_f|Mux36~0_combout\);

-- Location: LCCOMB_X112_Y18_N24
\t1|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~109_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][27]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][27]~q\,
	combout => \t1|Add0~109_combout\);

-- Location: LCCOMB_X113_Y18_N8
\t1|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~110_combout\ = ((\r_f|Mux36~0_combout\ $ (\t1|Add0~109_combout\ $ (\t1|Add0~107\)))) # (GND)
-- \t1|Add0~111\ = CARRY((\r_f|Mux36~0_combout\ & ((!\t1|Add0~107\) # (!\t1|Add0~109_combout\))) # (!\r_f|Mux36~0_combout\ & (!\t1|Add0~109_combout\ & !\t1|Add0~107\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux36~0_combout\,
	datab => \t1|Add0~109_combout\,
	datad => VCC,
	cin => \t1|Add0~107\,
	combout => \t1|Add0~110_combout\,
	cout => \t1|Add0~111\);

-- Location: LCCOMB_X112_Y18_N18
\t1|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~112_combout\ = (\t1|Add0~110_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \t1|Add0~110_combout\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~112_combout\);

-- Location: FF_X113_Y18_N25
\r_f|rf_regs[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~116_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][28]~q\);

-- Location: LCCOMB_X112_Y18_N8
\r_f|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux35~0_combout\ = (\r_f|rf_regs[0][28]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][28]~q\,
	combout => \r_f|Mux35~0_combout\);

-- Location: LCCOMB_X112_Y18_N30
\t1|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~113_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][28]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][28]~q\,
	combout => \t1|Add0~113_combout\);

-- Location: LCCOMB_X113_Y18_N10
\t1|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~114_combout\ = (\r_f|Mux35~0_combout\ & ((\t1|Add0~113_combout\ & (!\t1|Add0~111\)) # (!\t1|Add0~113_combout\ & (\t1|Add0~111\ & VCC)))) # (!\r_f|Mux35~0_combout\ & ((\t1|Add0~113_combout\ & ((\t1|Add0~111\) # (GND))) # (!\t1|Add0~113_combout\ & 
-- (!\t1|Add0~111\))))
-- \t1|Add0~115\ = CARRY((\r_f|Mux35~0_combout\ & (\t1|Add0~113_combout\ & !\t1|Add0~111\)) # (!\r_f|Mux35~0_combout\ & ((\t1|Add0~113_combout\) # (!\t1|Add0~111\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux35~0_combout\,
	datab => \t1|Add0~113_combout\,
	datad => VCC,
	cin => \t1|Add0~111\,
	combout => \t1|Add0~114_combout\,
	cout => \t1|Add0~115\);

-- Location: LCCOMB_X113_Y18_N20
\t1|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~116_combout\ = (\t1|Add0~114_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~114_combout\,
	combout => \t1|Add0~116_combout\);

-- Location: FF_X113_Y18_N29
\r_f|rf_regs[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~120_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][29]~q\);

-- Location: LCCOMB_X112_Y18_N12
\r_f|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux34~0_combout\ = (\r_f|rf_regs[0][29]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][29]~q\,
	combout => \r_f|Mux34~0_combout\);

-- Location: LCCOMB_X112_Y18_N22
\t1|Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~117_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][29]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][29]~q\,
	combout => \t1|Add0~117_combout\);

-- Location: LCCOMB_X113_Y18_N12
\t1|Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~118_combout\ = ((\r_f|Mux34~0_combout\ $ (\t1|Add0~117_combout\ $ (\t1|Add0~115\)))) # (GND)
-- \t1|Add0~119\ = CARRY((\r_f|Mux34~0_combout\ & ((!\t1|Add0~115\) # (!\t1|Add0~117_combout\))) # (!\r_f|Mux34~0_combout\ & (!\t1|Add0~117_combout\ & !\t1|Add0~115\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux34~0_combout\,
	datab => \t1|Add0~117_combout\,
	datad => VCC,
	cin => \t1|Add0~115\,
	combout => \t1|Add0~118_combout\,
	cout => \t1|Add0~119\);

-- Location: LCCOMB_X113_Y18_N18
\t1|Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~120_combout\ = (\t1|Add0~118_combout\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \t1|Add0~118_combout\,
	combout => \t1|Add0~120_combout\);

-- Location: FF_X113_Y18_N21
\r_f|rf_regs[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~124_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][30]~q\);

-- Location: LCCOMB_X114_Y18_N20
\r_f|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux33~0_combout\ = (\r_f|rf_regs[0][30]~q\ & (\sw[1]~input_o\ $ (!\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][30]~q\,
	combout => \r_f|Mux33~0_combout\);

-- Location: LCCOMB_X114_Y18_N18
\t1|Add0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~121_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & \r_f|rf_regs[0][30]~q\)) # (!\sw[1]~input_o\ & ((\sw[0]~input_o\) # (\r_f|rf_regs[0][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datad => \r_f|rf_regs[0][30]~q\,
	combout => \t1|Add0~121_combout\);

-- Location: LCCOMB_X113_Y18_N14
\t1|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~122_combout\ = (\r_f|Mux33~0_combout\ & ((\t1|Add0~121_combout\ & (!\t1|Add0~119\)) # (!\t1|Add0~121_combout\ & (\t1|Add0~119\ & VCC)))) # (!\r_f|Mux33~0_combout\ & ((\t1|Add0~121_combout\ & ((\t1|Add0~119\) # (GND))) # (!\t1|Add0~121_combout\ & 
-- (!\t1|Add0~119\))))
-- \t1|Add0~123\ = CARRY((\r_f|Mux33~0_combout\ & (\t1|Add0~121_combout\ & !\t1|Add0~119\)) # (!\r_f|Mux33~0_combout\ & ((\t1|Add0~121_combout\) # (!\t1|Add0~119\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|Mux33~0_combout\,
	datab => \t1|Add0~121_combout\,
	datad => VCC,
	cin => \t1|Add0~119\,
	combout => \t1|Add0~122_combout\,
	cout => \t1|Add0~123\);

-- Location: LCCOMB_X113_Y18_N22
\t1|Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~124_combout\ = (\t1|Add0~122_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~122_combout\,
	combout => \t1|Add0~124_combout\);

-- Location: FF_X113_Y18_N13
\r_f|rf_regs[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~128_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][31]~q\);

-- Location: LCCOMB_X112_Y18_N10
\t1|Add0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~125_combout\ = (\sw[0]~input_o\ & ((\r_f|rf_regs[0][31]~q\) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (\r_f|rf_regs[0][31]~q\ & !\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \r_f|rf_regs[0][31]~q\,
	datad => \sw[1]~input_o\,
	combout => \t1|Add0~125_combout\);

-- Location: LCCOMB_X112_Y18_N28
\r_f|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux32~0_combout\ = (\r_f|rf_regs[0][31]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \r_f|rf_regs[0][31]~q\,
	datad => \sw[1]~input_o\,
	combout => \r_f|Mux32~0_combout\);

-- Location: LCCOMB_X113_Y18_N16
\t1|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~126_combout\ = \t1|Add0~125_combout\ $ (\t1|Add0~123\ $ (\r_f|Mux32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~125_combout\,
	datad => \r_f|Mux32~0_combout\,
	cin => \t1|Add0~123\,
	combout => \t1|Add0~126_combout\);

-- Location: LCCOMB_X113_Y18_N30
\t1|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~128_combout\ = (\t1|Add0~126_combout\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \t1|Add0~126_combout\,
	combout => \t1|Add0~128_combout\);

-- Location: FF_X112_Y20_N29
\r_f|rf_regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ALT_INV_inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[0][0]~q\);

-- Location: LCCOMB_X112_Y20_N28
\r_f|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux31~0_combout\ = (\r_f|rf_regs[0][0]~q\) # (\sw[0]~input_o\ $ (\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \r_f|rf_regs[0][0]~q\,
	datad => \sw[1]~input_o\,
	combout => \r_f|Mux31~0_combout\);

-- Location: LCCOMB_X112_Y20_N10
\r_f|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux63~0_combout\ = (\sw[0]~input_o\ & (\r_f|rf_regs[0][0]~q\ & \sw[1]~input_o\)) # (!\sw[0]~input_o\ & ((\r_f|rf_regs[0][0]~q\) # (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \r_f|rf_regs[0][0]~q\,
	datad => \sw[1]~input_o\,
	combout => \r_f|Mux63~0_combout\);

-- Location: LCCOMB_X114_Y19_N0
\r_f|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux62~0_combout\ = (\r_f|rf_regs[0][1]~q\) # (\sw[0]~input_o\ $ (\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \r_f|rf_regs[0][1]~q\,
	combout => \r_f|Mux62~0_combout\);

-- Location: LCCOMB_X114_Y18_N12
\r_f|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|Mux61~0_combout\ = (\r_f|rf_regs[0][2]~q\ & (\sw[0]~input_o\ $ (!\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|rf_regs[0][2]~q\,
	datab => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \r_f|Mux61~0_combout\);

-- Location: LCCOMB_X112_Y20_N12
\r_f|rf_regs[1][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_f|rf_regs[1][0]~0_combout\ = !\t1|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~4_combout\,
	combout => \r_f|rf_regs[1][0]~0_combout\);

-- Location: FF_X112_Y20_N13
\r_f|rf_regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_f|rf_regs[1][0]~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][0]~q\);

-- Location: FF_X112_Y20_N21
\r_f|rf_regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~8_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][1]~q\);

-- Location: FF_X112_Y20_N27
\r_f|rf_regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~12_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][2]~q\);

-- Location: FF_X112_Y20_N9
\r_f|rf_regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~16_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][3]~q\);

-- Location: FF_X114_Y20_N3
\r_f|rf_regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][4]~q\);

-- Location: FF_X114_Y20_N17
\r_f|rf_regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~24_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][5]~q\);

-- Location: FF_X114_Y20_N27
\r_f|rf_regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~28_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][6]~q\);

-- Location: FF_X114_Y20_N23
\r_f|rf_regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~32_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][7]~q\);

-- Location: FF_X114_Y20_N15
\r_f|rf_regs[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~36_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][8]~q\);

-- Location: FF_X114_Y20_N29
\r_f|rf_regs[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~40_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][9]~q\);

-- Location: FF_X114_Y19_N9
\r_f|rf_regs[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~44_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][10]~q\);

-- Location: FF_X112_Y19_N13
\r_f|rf_regs[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~48_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][11]~q\);

-- Location: FF_X112_Y19_N1
\r_f|rf_regs[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~52_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][12]~q\);

-- Location: FF_X112_Y19_N23
\r_f|rf_regs[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~56_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][13]~q\);

-- Location: FF_X112_Y19_N3
\r_f|rf_regs[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~60_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][14]~q\);

-- Location: FF_X114_Y18_N27
\r_f|rf_regs[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~64_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][15]~q\);

-- Location: FF_X114_Y18_N31
\r_f|rf_regs[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~68_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][16]~q\);

-- Location: FF_X114_Y19_N23
\r_f|rf_regs[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~72_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][17]~q\);

-- Location: FF_X114_Y19_N7
\r_f|rf_regs[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~76_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][18]~q\);

-- Location: FF_X112_Y19_N9
\r_f|rf_regs[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~80_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][19]~q\);

-- Location: FF_X112_Y19_N19
\r_f|rf_regs[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~84_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][20]~q\);

-- Location: FF_X114_Y19_N25
\r_f|rf_regs[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~88_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][21]~q\);

-- Location: FF_X114_Y19_N27
\r_f|rf_regs[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~92_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][22]~q\);

-- Location: FF_X113_Y18_N5
\r_f|rf_regs[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~96_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][23]~q\);

-- Location: FF_X113_Y18_N11
\r_f|rf_regs[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~100_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][24]~q\);

-- Location: FF_X113_Y18_N17
\r_f|rf_regs[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~104_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][25]~q\);

-- Location: FF_X114_Y18_N7
\r_f|rf_regs[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~108_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][26]~q\);

-- Location: FF_X112_Y18_N19
\r_f|rf_regs[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~112_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][27]~q\);

-- Location: FF_X113_Y18_N3
\r_f|rf_regs[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~116_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][28]~q\);

-- Location: FF_X113_Y18_N19
\r_f|rf_regs[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \t1|Add0~120_combout\,
	clrn => \rst~input_o\,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][29]~q\);

-- Location: FF_X113_Y18_N9
\r_f|rf_regs[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~124_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][30]~q\);

-- Location: FF_X113_Y18_N1
\r_f|rf_regs[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \t1|Add0~128_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst_ex[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_f|rf_regs[1][31]~q\);

-- Location: LCCOMB_X112_Y20_N2
\t2|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr6~0_combout\ = (\r_f|rf_regs[1][1]~q\ & (\r_f|rf_regs[1][3]~q\ & (!\r_f|rf_regs[1][2]~q\ & !\r_f|rf_regs[1][0]~q\))) # (!\r_f|rf_regs[1][1]~q\ & (\r_f|rf_regs[1][2]~q\ $ (((!\r_f|rf_regs[1][3]~q\ & !\r_f|rf_regs[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|rf_regs[1][3]~q\,
	datab => \r_f|rf_regs[1][1]~q\,
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \r_f|rf_regs[1][0]~q\,
	combout => \t2|WideOr6~0_combout\);

-- Location: LCCOMB_X112_Y20_N16
\t2|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr5~0_combout\ = (\r_f|rf_regs[1][3]~q\ & ((\r_f|rf_regs[1][0]~q\ & ((\r_f|rf_regs[1][2]~q\))) # (!\r_f|rf_regs[1][0]~q\ & (\r_f|rf_regs[1][1]~q\)))) # (!\r_f|rf_regs[1][3]~q\ & (\r_f|rf_regs[1][2]~q\ & (\r_f|rf_regs[1][1]~q\ $ 
-- (!\r_f|rf_regs[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|rf_regs[1][3]~q\,
	datab => \r_f|rf_regs[1][1]~q\,
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \r_f|rf_regs[1][0]~q\,
	combout => \t2|WideOr5~0_combout\);

-- Location: LCCOMB_X112_Y20_N30
\t2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr4~0_combout\ = (\r_f|rf_regs[1][3]~q\ & (\r_f|rf_regs[1][2]~q\ & ((\r_f|rf_regs[1][1]~q\) # (\r_f|rf_regs[1][0]~q\)))) # (!\r_f|rf_regs[1][3]~q\ & (\r_f|rf_regs[1][1]~q\ & (!\r_f|rf_regs[1][2]~q\ & \r_f|rf_regs[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|rf_regs[1][3]~q\,
	datab => \r_f|rf_regs[1][1]~q\,
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \r_f|rf_regs[1][0]~q\,
	combout => \t2|WideOr4~0_combout\);

-- Location: LCCOMB_X112_Y20_N4
\t2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr3~0_combout\ = (\r_f|rf_regs[1][1]~q\ & ((\r_f|rf_regs[1][2]~q\ & ((!\r_f|rf_regs[1][0]~q\))) # (!\r_f|rf_regs[1][2]~q\ & (\r_f|rf_regs[1][3]~q\ & \r_f|rf_regs[1][0]~q\)))) # (!\r_f|rf_regs[1][1]~q\ & (!\r_f|rf_regs[1][3]~q\ & 
-- (\r_f|rf_regs[1][2]~q\ $ (!\r_f|rf_regs[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|rf_regs[1][3]~q\,
	datab => \r_f|rf_regs[1][1]~q\,
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \r_f|rf_regs[1][0]~q\,
	combout => \t2|WideOr3~0_combout\);

-- Location: LCCOMB_X112_Y20_N14
\t2|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr2~0_combout\ = (\r_f|rf_regs[1][1]~q\ & (!\r_f|rf_regs[1][3]~q\ & ((!\r_f|rf_regs[1][0]~q\)))) # (!\r_f|rf_regs[1][1]~q\ & ((\r_f|rf_regs[1][2]~q\ & (!\r_f|rf_regs[1][3]~q\)) # (!\r_f|rf_regs[1][2]~q\ & ((!\r_f|rf_regs[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|rf_regs[1][3]~q\,
	datab => \r_f|rf_regs[1][1]~q\,
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \r_f|rf_regs[1][0]~q\,
	combout => \t2|WideOr2~0_combout\);

-- Location: LCCOMB_X112_Y20_N0
\t2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr1~0_combout\ = (\r_f|rf_regs[1][1]~q\ & (!\r_f|rf_regs[1][3]~q\ & ((!\r_f|rf_regs[1][0]~q\) # (!\r_f|rf_regs[1][2]~q\)))) # (!\r_f|rf_regs[1][1]~q\ & ((\r_f|rf_regs[1][2]~q\ & (\r_f|rf_regs[1][3]~q\)) # (!\r_f|rf_regs[1][2]~q\ & 
-- ((!\r_f|rf_regs[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|rf_regs[1][3]~q\,
	datab => \r_f|rf_regs[1][1]~q\,
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \r_f|rf_regs[1][0]~q\,
	combout => \t2|WideOr1~0_combout\);

-- Location: LCCOMB_X112_Y20_N22
\t2|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t2|WideOr0~0_combout\ = (\r_f|rf_regs[1][3]~q\) # ((\r_f|rf_regs[1][1]~q\ & ((\r_f|rf_regs[1][0]~q\) # (!\r_f|rf_regs[1][2]~q\))) # (!\r_f|rf_regs[1][1]~q\ & (\r_f|rf_regs[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_f|rf_regs[1][3]~q\,
	datab => \r_f|rf_regs[1][1]~q\,
	datac => \r_f|rf_regs[1][2]~q\,
	datad => \r_f|rf_regs[1][0]~q\,
	combout => \t2|WideOr0~0_combout\);

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
END structure;


