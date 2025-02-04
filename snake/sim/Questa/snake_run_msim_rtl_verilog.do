transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/key_filter.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/hc595_ctrl.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/seg_595_dynamic.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/VGA_control.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/top_seg_595.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/snake_top.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/snake.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/seg_dynamic.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/score_ctrl.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/game_ctrl_unit.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/data_gen.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/bcd_8421.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/rtl {D:/FPGA/SNAKEPRO/snake/rtl/app_generate.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/quartus_prj {D:/FPGA/SNAKEPRO/snake/quartus_prj/pll.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/quartus_prj {D:/FPGA/SNAKEPRO/snake/quartus_prj/rom.v}
vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/quartus_prj/db {D:/FPGA/SNAKEPRO/snake/quartus_prj/db/pll_altpll.v}

vlog -vlog01compat -work work +incdir+D:/FPGA/SNAKEPRO/snake/quartus_prj/../sim {D:/FPGA/SNAKEPRO/snake/quartus_prj/../sim/tb_snake_top.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_snake_top

add wave *
view structure
view signals
run 1 sec
