`timescale 1 ns/100 ps

module example_always_tb;
	reg clk, reset;
	wire [31:0] count;
	always_example aw_tb (
								.clk (clk), 
								.count (count), 
								.reset (reset)
					);

always
	#10 clk = ~clk;

initial begin
	$display($time, "<<Starting the Simulation >>");
	clk = 0;
	reset = 0;
end
endmodule
	
