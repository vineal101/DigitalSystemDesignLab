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

-- DATE "09/24/2024 16:10:25"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab03_vs IS
    PORT (
	Sa : OUT std_logic;
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	Sb : OUT std_logic;
	Sc : OUT std_logic;
	Sd : OUT std_logic;
	Se : OUT std_logic;
	Sf : OUT std_logic;
	Sg : OUT std_logic
	);
END Lab03_vs;

-- Design Ports Information
-- Sa	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sb	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sc	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sd	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Se	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sf	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sg	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab03_vs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sa : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_Sb : std_logic;
SIGNAL ww_Sc : std_logic;
SIGNAL ww_Sd : std_logic;
SIGNAL ww_Se : std_logic;
SIGNAL ww_Sf : std_logic;
SIGNAL ww_Sg : std_logic;
SIGNAL \Sa~output_o\ : std_logic;
SIGNAL \Sb~output_o\ : std_logic;
SIGNAL \Sc~output_o\ : std_logic;
SIGNAL \Sd~output_o\ : std_logic;
SIGNAL \Se~output_o\ : std_logic;
SIGNAL \Sf~output_o\ : std_logic;
SIGNAL \Sg~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst71~0_combout\ : std_logic;
SIGNAL \inst72~0_combout\ : std_logic;

BEGIN

Sa <= ww_Sa;
ww_C <= C;
ww_B <= B;
ww_D <= D;
ww_A <= A;
Sb <= ww_Sb;
Sc <= ww_Sc;
Sd <= ww_Sd;
Se <= ww_Se;
Sf <= ww_Sf;
Sg <= ww_Sg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X5_Y73_N23
\Sa~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sa~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\Sb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sb~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Sc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sc~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\Sd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sd~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\Se~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst71~0_combout\,
	devoe => ww_devoe,
	o => \Se~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\Sf~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sf~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\Sg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst72~0_combout\,
	devoe => ww_devoe,
	o => \Sg~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X1_Y14_N16
\inst71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst71~0_combout\ = (\C~input_o\ & (\D~input_o\ & ((!\A~input_o\)))) # (!\C~input_o\ & ((\B~input_o\ & ((!\A~input_o\))) # (!\B~input_o\ & (\D~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \B~input_o\,
	datac => \C~input_o\,
	datad => \A~input_o\,
	combout => \inst71~0_combout\);

-- Location: LCCOMB_X1_Y14_N18
\inst72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst72~0_combout\ = (!\A~input_o\ & ((\B~input_o\ & (\D~input_o\ & \C~input_o\)) # (!\B~input_o\ & ((!\C~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \B~input_o\,
	datac => \C~input_o\,
	datad => \A~input_o\,
	combout => \inst72~0_combout\);

ww_Sa <= \Sa~output_o\;

ww_Sb <= \Sb~output_o\;

ww_Sc <= \Sc~output_o\;

ww_Sd <= \Sd~output_o\;

ww_Se <= \Se~output_o\;

ww_Sf <= \Sf~output_o\;

ww_Sg <= \Sg~output_o\;
END structure;


