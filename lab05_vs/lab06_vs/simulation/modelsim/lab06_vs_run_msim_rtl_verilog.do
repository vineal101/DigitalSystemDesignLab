transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/user/Downloads/lab06_vs {/home/user/Downloads/lab06_vs/top.sv}
vlog -sv -work work +incdir+/home/user/Downloads/lab06_vs {/home/user/Downloads/lab06_vs/register_file.sv}
vlog -sv -work work +incdir+/home/user/Downloads/lab06_vs {/home/user/Downloads/lab06_vs/alu.sv}
vlog -sv -work work +incdir+/home/user/Downloads/lab06_vs {/home/user/Downloads/lab06_vs/display.sv}

vlog -sv -work work +incdir+/home/user/Downloads/lab06_vs {/home/user/Downloads/lab06_vs/testbench_top.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testbench_top

add wave *
view structure
view signals
run -all
