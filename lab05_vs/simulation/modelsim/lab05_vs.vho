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

-- DATE "10/11/2024 12:56:07"

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

ENTITY 	game IS
    PORT (
	clk : IN std_logic;
	n : IN std_logic;
	s : IN std_logic;
	e : IN std_logic;
	w : IN std_logic;
	reset : IN std_logic;
	s0 : BUFFER std_logic;
	s1 : BUFFER std_logic;
	s2 : BUFFER std_logic;
	sw : BUFFER std_logic;
	s3 : BUFFER std_logic;
	s4 : BUFFER std_logic;
	d : BUFFER std_logic;
	s5 : BUFFER std_logic;
	win : BUFFER std_logic;
	s6 : BUFFER std_logic;
	v : BUFFER std_logic
	);
END game;

-- Design Ports Information
-- s0	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- win	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF game IS
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
SIGNAL ww_n : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_sw : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_win : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \sw~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \s4~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \s5~output_o\ : std_logic;
SIGNAL \win~output_o\ : std_logic;
SIGNAL \s6~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \n~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \room_f|s2n~0_combout\ : std_logic;
SIGNAL \room_f|s3n~0_combout\ : std_logic;
SIGNAL \room_f|s3n~1_combout\ : std_logic;
SIGNAL \room_f|dff3|q~q\ : std_logic;
SIGNAL \room_f|s2n~1_combout\ : std_logic;
SIGNAL \room_f|s2n~2_combout\ : std_logic;
SIGNAL \room_f|dff2|q~q\ : std_logic;
SIGNAL \room_f|s1n~1_combout\ : std_logic;
SIGNAL \room_f|s1n~0_combout\ : std_logic;
SIGNAL \room_f|s1n~2_combout\ : std_logic;
SIGNAL \room_f|dff1|q~q\ : std_logic;
SIGNAL \room_f|s0n~0_combout\ : std_logic;
SIGNAL \room_f|s0n~combout\ : std_logic;
SIGNAL \room_f|dff0|q~q\ : std_logic;
SIGNAL \room_f|s4n~0_combout\ : std_logic;
SIGNAL \room_f|dff4|q~q\ : std_logic;
SIGNAL \sword_f|state_d~0_combout\ : std_logic;
SIGNAL \sword_f|state_ff|q~q\ : std_logic;
SIGNAL \room_f|s5n~0_combout\ : std_logic;
SIGNAL \room_f|dff5|q~q\ : std_logic;
SIGNAL \room_f|s6n~0_combout\ : std_logic;
SIGNAL \room_f|dff6|q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n <= n;
ww_s <= s;
ww_e <= e;
ww_w <= w;
ww_reset <= reset;
s0 <= ww_s0;
s1 <= ww_s1;
s2 <= ww_s2;
sw <= ww_sw;
s3 <= ww_s3;
s4 <= ww_s4;
d <= ww_d;
s5 <= ww_s5;
win <= ww_win;
s6 <= ww_s6;
v <= ww_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X69_Y73_N16
\s0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff0|q~q\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff1|q~q\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\s2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff2|q~q\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\sw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff3|q~q\,
	devoe => ww_devoe,
	o => \sw~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\s3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff3|q~q\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\s4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff4|q~q\,
	devoe => ww_devoe,
	o => \s4~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff5|q~q\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\s5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff5|q~q\,
	devoe => ww_devoe,
	o => \s5~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\win~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff6|q~q\,
	devoe => ww_devoe,
	o => \win~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\s6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_f|dff6|q~q\,
	devoe => ww_devoe,
	o => \s6~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sword_f|state_ff|q~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

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

-- Location: IOIBUF_X115_Y18_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\w~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\e~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n,
	o => \n~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: LCCOMB_X91_Y69_N18
\room_f|s2n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s2n~0_combout\ = (!\n~input_o\ & (!\w~input_o\ & ((!\e~input_o\) # (!\s~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \s~input_o\,
	datac => \w~input_o\,
	datad => \e~input_o\,
	combout => \room_f|s2n~0_combout\);

-- Location: LCCOMB_X91_Y69_N6
\room_f|s3n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s3n~0_combout\ = (\w~input_o\ & ((\room_f|dff2|q~q\) # ((!\e~input_o\ & \room_f|dff3|q~q\)))) # (!\w~input_o\ & (!\e~input_o\ & (\room_f|dff3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w~input_o\,
	datab => \e~input_o\,
	datac => \room_f|dff3|q~q\,
	datad => \room_f|dff2|q~q\,
	combout => \room_f|s3n~0_combout\);

-- Location: LCCOMB_X91_Y69_N22
\room_f|s3n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s3n~1_combout\ = (!\reset~input_o\ & \room_f|s3n~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \room_f|s3n~0_combout\,
	combout => \room_f|s3n~1_combout\);

-- Location: FF_X91_Y69_N23
\room_f|dff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_f|s3n~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_f|dff3|q~q\);

-- Location: LCCOMB_X91_Y69_N24
\room_f|s2n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s2n~1_combout\ = (\s~input_o\ & ((\room_f|dff1|q~q\) # ((\e~input_o\ & \room_f|dff3|q~q\)))) # (!\s~input_o\ & (\e~input_o\ & ((\room_f|dff3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~input_o\,
	datab => \e~input_o\,
	datac => \room_f|dff1|q~q\,
	datad => \room_f|dff3|q~q\,
	combout => \room_f|s2n~1_combout\);

-- Location: LCCOMB_X91_Y69_N20
\room_f|s2n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s2n~2_combout\ = (!\reset~input_o\ & ((\room_f|s2n~1_combout\) # ((\room_f|s2n~0_combout\ & \room_f|dff2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \room_f|s2n~0_combout\,
	datab => \reset~input_o\,
	datac => \room_f|dff2|q~q\,
	datad => \room_f|s2n~1_combout\,
	combout => \room_f|s2n~2_combout\);

-- Location: FF_X91_Y69_N21
\room_f|dff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_f|s2n~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_f|dff2|q~q\);

-- Location: LCCOMB_X91_Y69_N4
\room_f|s1n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s1n~1_combout\ = (\n~input_o\ & ((\room_f|dff2|q~q\) # ((\room_f|dff0|q~q\ & \e~input_o\)))) # (!\n~input_o\ & (\room_f|dff0|q~q\ & (\e~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \room_f|dff0|q~q\,
	datac => \e~input_o\,
	datad => \room_f|dff2|q~q\,
	combout => \room_f|s1n~1_combout\);

-- Location: LCCOMB_X91_Y69_N10
\room_f|s1n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s1n~0_combout\ = (!\s~input_o\ & (\room_f|dff1|q~q\ & !\w~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~input_o\,
	datac => \room_f|dff1|q~q\,
	datad => \w~input_o\,
	combout => \room_f|s1n~0_combout\);

-- Location: LCCOMB_X91_Y69_N30
\room_f|s1n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s1n~2_combout\ = (!\reset~input_o\ & ((\room_f|s1n~1_combout\) # (\room_f|s1n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \room_f|s1n~1_combout\,
	datad => \room_f|s1n~0_combout\,
	combout => \room_f|s1n~2_combout\);

-- Location: FF_X91_Y69_N31
\room_f|dff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_f|s1n~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_f|dff1|q~q\);

-- Location: LCCOMB_X91_Y69_N12
\room_f|s0n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s0n~0_combout\ = (\w~input_o\ & ((\room_f|dff1|q~q\) # ((!\e~input_o\ & \room_f|dff0|q~q\)))) # (!\w~input_o\ & (!\e~input_o\ & ((\room_f|dff0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w~input_o\,
	datab => \e~input_o\,
	datac => \room_f|dff1|q~q\,
	datad => \room_f|dff0|q~q\,
	combout => \room_f|s0n~0_combout\);

-- Location: LCCOMB_X91_Y69_N16
\room_f|s0n\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s0n~combout\ = (\reset~input_o\) # (\room_f|s0n~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \room_f|s0n~0_combout\,
	combout => \room_f|s0n~combout\);

-- Location: FF_X91_Y69_N17
\room_f|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_f|s0n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_f|dff0|q~q\);

-- Location: LCCOMB_X91_Y69_N28
\room_f|s4n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s4n~0_combout\ = (\room_f|dff2|q~q\ & (\e~input_o\ & (\s~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \room_f|dff2|q~q\,
	datab => \e~input_o\,
	datac => \s~input_o\,
	datad => \reset~input_o\,
	combout => \room_f|s4n~0_combout\);

-- Location: FF_X91_Y69_N29
\room_f|dff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_f|s4n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_f|dff4|q~q\);

-- Location: LCCOMB_X91_Y69_N26
\sword_f|state_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sword_f|state_d~0_combout\ = (!\reset~input_o\ & ((\sword_f|state_ff|q~q\) # (\room_f|dff3|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \sword_f|state_ff|q~q\,
	datad => \room_f|dff3|q~q\,
	combout => \sword_f|state_d~0_combout\);

-- Location: FF_X91_Y69_N27
\sword_f|state_ff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sword_f|state_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sword_f|state_ff|q~q\);

-- Location: LCCOMB_X91_Y69_N14
\room_f|s5n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s5n~0_combout\ = (!\reset~input_o\ & ((\room_f|dff5|q~q\) # ((!\sword_f|state_ff|q~q\ & \room_f|dff4|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sword_f|state_ff|q~q\,
	datab => \reset~input_o\,
	datac => \room_f|dff5|q~q\,
	datad => \room_f|dff4|q~q\,
	combout => \room_f|s5n~0_combout\);

-- Location: FF_X91_Y69_N15
\room_f|dff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_f|s5n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_f|dff5|q~q\);

-- Location: LCCOMB_X91_Y69_N8
\room_f|s6n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_f|s6n~0_combout\ = (!\reset~input_o\ & ((\room_f|dff6|q~q\) # ((\sword_f|state_ff|q~q\ & \room_f|dff4|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sword_f|state_ff|q~q\,
	datab => \reset~input_o\,
	datac => \room_f|dff6|q~q\,
	datad => \room_f|dff4|q~q\,
	combout => \room_f|s6n~0_combout\);

-- Location: FF_X91_Y69_N9
\room_f|dff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_f|s6n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_f|dff6|q~q\);

ww_s0 <= \s0~output_o\;

ww_s1 <= \s1~output_o\;

ww_s2 <= \s2~output_o\;

ww_sw <= \sw~output_o\;

ww_s3 <= \s3~output_o\;

ww_s4 <= \s4~output_o\;

ww_d <= \d~output_o\;

ww_s5 <= \s5~output_o\;

ww_win <= \win~output_o\;

ww_s6 <= \s6~output_o\;

ww_v <= \v~output_o\;
END structure;


