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

-- DATE "09/25/2024 16:52:53"

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

ENTITY 	lab03_vs IS
    PORT (
	Sa : OUT std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	A : IN std_logic;
	Sb : OUT std_logic
	);
END lab03_vs;

-- Design Ports Information
-- Sa	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sb	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab03_vs IS
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
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_Sb : std_logic;
SIGNAL \Sa~output_o\ : std_logic;
SIGNAL \Sb~output_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;

BEGIN

Sa <= ww_Sa;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_A <= A;
Sb <= ww_Sb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y53_N9
\Sa~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~0_combout\,
	devoe => ww_devoe,
	o => \Sa~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\Sb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~0_combout\,
	devoe => ww_devoe,
	o => \Sb~output_o\);

-- Location: IOIBUF_X0_Y52_N1
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LCCOMB_X1_Y52_N0
\inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\B~input_o\ & (!\C~input_o\ & ((\A~input_o\) # (!\D~input_o\)))) # (!\B~input_o\ & (\D~input_o\ & (\C~input_o\ $ (!\A~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \D~input_o\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X1_Y52_N26
\inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\C~input_o\ & ((\D~input_o\ & ((\A~input_o\))) # (!\D~input_o\ & (\B~input_o\)))) # (!\C~input_o\ & (\B~input_o\ & (\A~input_o\ $ (\D~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \A~input_o\,
	datad => \D~input_o\,
	combout => \inst14~0_combout\);

ww_Sa <= \Sa~output_o\;

ww_Sb <= \Sb~output_o\;
END structure;


