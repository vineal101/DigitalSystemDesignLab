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

-- DATE "10/09/2024 19:48:34"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
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

ENTITY 	Game IS
    PORT (
	NS : OUT std_logic;
	clk : IN std_logic;
	n : IN std_logic;
	s : IN std_logic;
	e : IN std_logic;
	w : IN std_logic;
	r : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	D : OUT std_logic;
	S6 : OUT std_logic;
	WIN : OUT std_logic;
	SW : OUT std_logic;
	v : OUT std_logic
	);
END Game;

-- Design Ports Information
-- NS	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WIN	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Game IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_NS : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_S6 : std_logic;
SIGNAL ww_WIN : std_logic;
SIGNAL ww_SW : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NS~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \S5~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \S6~output_o\ : std_logic;
SIGNAL \WIN~output_o\ : std_logic;
SIGNAL \SW~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \n~input_o\ : std_logic;
SIGNAL \inst|inst13~combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst16~0_combout\ : std_logic;
SIGNAL \inst|inst16~1_combout\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \inst|inst20~0_combout\ : std_logic;
SIGNAL \inst|inst20~1_combout\ : std_logic;
SIGNAL \inst|inst27~q\ : std_logic;
SIGNAL \inst|inst22~combout\ : std_logic;
SIGNAL \inst|inst33~q\ : std_logic;
SIGNAL \inst2|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst~q\ : std_logic;
SIGNAL \inst|inst23~combout\ : std_logic;
SIGNAL \inst|inst37~q\ : std_logic;
SIGNAL \inst2|inst12~0_combout\ : std_logic;
SIGNAL \inst2|inst1~q\ : std_logic;
SIGNAL \inst|inst24~combout\ : std_logic;
SIGNAL \inst|inst41~q\ : std_logic;
SIGNAL \inst|inst25~combout\ : std_logic;
SIGNAL \inst|inst46~q\ : std_logic;

BEGIN

NS <= ww_NS;
ww_clk <= clk;
ww_n <= n;
ww_s <= s;
ww_e <= e;
ww_w <= w;
ww_r <= r;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
S5 <= ww_S5;
D <= ww_D;
S6 <= ww_S6;
WIN <= ww_WIN;
SW <= ww_SW;
v <= ww_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X27_Y73_N23
\NS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst~q\,
	devoe => ww_devoe,
	o => \NS~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\S0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~q\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\S1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~q\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\S2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst27~q\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\S3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst33~q\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst37~q\,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\S5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst41~q\,
	devoe => ww_devoe,
	o => \S5~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\D~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst41~q\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\S6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst46~q\,
	devoe => ww_devoe,
	o => \S6~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\WIN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst46~q\,
	devoe => ww_devoe,
	o => \WIN~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\SW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst33~q\,
	devoe => ww_devoe,
	o => \SW~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

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

-- Location: IOIBUF_X31_Y73_N1
\r~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\w~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\e~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n,
	o => \n~input_o\);

-- Location: LCCOMB_X31_Y72_N14
\inst|inst13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst13~combout\ = (\r~input_o\) # ((\w~input_o\ & \inst|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w~input_o\,
	datac => \r~input_o\,
	datad => \inst|inst1~q\,
	combout => \inst|inst13~combout\);

-- Location: FF_X31_Y72_N15
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X31_Y72_N18
\inst|inst16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst16~0_combout\ = (\n~input_o\ & ((\inst|inst27~q\) # ((\e~input_o\ & \inst|inst~q\)))) # (!\n~input_o\ & (\e~input_o\ & (\inst|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \e~input_o\,
	datac => \inst|inst~q\,
	datad => \inst|inst27~q\,
	combout => \inst|inst16~0_combout\);

-- Location: LCCOMB_X31_Y72_N4
\inst|inst16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst16~1_combout\ = (!\r~input_o\ & \inst|inst16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r~input_o\,
	datad => \inst|inst16~0_combout\,
	combout => \inst|inst16~1_combout\);

-- Location: FF_X31_Y72_N5
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X31_Y72_N12
\inst|inst20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20~0_combout\ = (\s~input_o\ & ((\inst|inst1~q\) # ((\e~input_o\ & \inst|inst33~q\)))) # (!\s~input_o\ & (\e~input_o\ & ((\inst|inst33~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~input_o\,
	datab => \e~input_o\,
	datac => \inst|inst1~q\,
	datad => \inst|inst33~q\,
	combout => \inst|inst20~0_combout\);

-- Location: LCCOMB_X31_Y72_N6
\inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20~1_combout\ = (!\r~input_o\ & \inst|inst20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r~input_o\,
	datad => \inst|inst20~0_combout\,
	combout => \inst|inst20~1_combout\);

-- Location: FF_X31_Y72_N7
\inst|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst27~q\);

-- Location: LCCOMB_X31_Y72_N16
\inst|inst22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst22~combout\ = (\w~input_o\ & (!\r~input_o\ & \inst|inst27~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w~input_o\,
	datac => \r~input_o\,
	datad => \inst|inst27~q\,
	combout => \inst|inst22~combout\);

-- Location: FF_X31_Y72_N17
\inst|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst33~q\);

-- Location: LCCOMB_X31_Y72_N8
\inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst~0_combout\ = (\r~input_o\) # ((\inst2|inst~q\ & !\inst|inst33~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~input_o\,
	datac => \inst2|inst~q\,
	datad => \inst|inst33~q\,
	combout => \inst2|inst~0_combout\);

-- Location: FF_X31_Y72_N9
\inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst~q\);

-- Location: LCCOMB_X31_Y72_N22
\inst|inst23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst23~combout\ = (\e~input_o\ & (!\r~input_o\ & \inst|inst27~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e~input_o\,
	datac => \r~input_o\,
	datad => \inst|inst27~q\,
	combout => \inst|inst23~combout\);

-- Location: FF_X31_Y72_N23
\inst|inst37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst37~q\);

-- Location: LCCOMB_X31_Y72_N28
\inst2|inst12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst12~0_combout\ = (!\r~input_o\ & ((\inst2|inst1~q\) # (\inst|inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~input_o\,
	datac => \inst2|inst1~q\,
	datad => \inst|inst33~q\,
	combout => \inst2|inst12~0_combout\);

-- Location: FF_X31_Y72_N29
\inst2|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|inst12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst1~q\);

-- Location: LCCOMB_X31_Y72_N24
\inst|inst24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst24~combout\ = (!\r~input_o\ & (\inst|inst37~q\ & !\inst2|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~input_o\,
	datac => \inst|inst37~q\,
	datad => \inst2|inst1~q\,
	combout => \inst|inst24~combout\);

-- Location: FF_X31_Y72_N25
\inst|inst41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst24~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst41~q\);

-- Location: LCCOMB_X31_Y72_N26
\inst|inst25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst25~combout\ = (!\r~input_o\ & (\inst|inst37~q\ & \inst2|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~input_o\,
	datac => \inst|inst37~q\,
	datad => \inst2|inst1~q\,
	combout => \inst|inst25~combout\);

-- Location: FF_X31_Y72_N27
\inst|inst46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst46~q\);

ww_NS <= \NS~output_o\;

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S4 <= \S4~output_o\;

ww_S5 <= \S5~output_o\;

ww_D <= \D~output_o\;

ww_S6 <= \S6~output_o\;

ww_WIN <= \WIN~output_o\;

ww_SW <= \SW~output_o\;

ww_v <= \v~output_o\;
END structure;


