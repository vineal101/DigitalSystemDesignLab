onerror {exit -code 1}
vlib work
vlog -work work lab04_vs.vo
vlog -work work Waveform4.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Game_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab04_vs.msim.vcd
vcd add -internal Game_vlg_vec_tst/*
vcd add -internal Game_vlg_vec_tst/i1/*
run -all
quit -f
