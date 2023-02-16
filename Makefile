
sim:
	iverilog -o sim.vvp -s clk_div -s dump -g2012 tests/clk_div_dump.v src/clk_div.v
	PYTHONOPTIMIZE=${NOASSERT} MODULE=tests.clk_div_cocotb vvp -M $$(cocotb-config --prefix)/cocotb/libs -m libcocotbvpi_icarus sim.vvp

view:

