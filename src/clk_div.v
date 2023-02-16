`default_nettype none
`timescale 10ns/1ns

module clk_div(
	input clk,
	input reset,
	output reg clk_out
);

	//;wire 	in;
	

always @(posedge clk)
begin
	if (reset)
		clk_out = 1;
	else
		clk_out <= ~clk_out;
end


endmodule
