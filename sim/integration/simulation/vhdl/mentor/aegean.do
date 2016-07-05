if {[file exists /home/s103060/t-crest/MemoryTree/sim/integration/simulation/vhdl/mentor/make.tcl]} {
	source /home/s103060/t-crest/MemoryTree/sim/integration/simulation/vhdl/mentor/make.tcl
	dev_com
	com
	# the "elab_debug" macro avoids optimizations which preserves signals so that they may be added to the wave viewer
	elab_debug
	add wave "mem_if_ddr3_emif_0_example_design_example_sim/*"
	run -all
} else {
	error "The make.tcl script does not exist. Please generate the example design RTL and simulation scripts. See ../../README.txt for help."
}
