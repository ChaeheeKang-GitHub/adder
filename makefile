csa_tb : csa.vhd csa_tb.vhd
	ghdl -a fa.vhd
	ghdl -a fa_tb.vhd
	ghdl -e fa_tb
	
	ghdl -a mux2_1.vhd
	ghdl -a mux2_1_tb.vhd
	ghdl -e mux2_1_tb
	
	ghdl -a $^
	ghdl -e $@
	ghdl -r $@ --stop-time=800ns --wave=$@.ghw
	gtkwave $@.ghw
	

clean :
	rm work-obj93.cf *.o *.ghw 
