onerror {exit -code 1}
vlib work
vlog -work work Lab03_vs.vo
vlog -work work Waveform3.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Lab03_vs_vlg_vec_tst -voptargs="+acc"
vcd file -direction Lab03_vs.msim.vcd
vcd add -internal Lab03_vs_vlg_vec_tst/*
vcd add -internal Lab03_vs_vlg_vec_tst/i1/*
run -all
quit -f
