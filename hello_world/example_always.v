`timescale 1 ns / 100 ps 

module always_example(clk, count, reset);
	input clk;
	input reset;
	output [31:0] count;
	reg [31:0] count;
   
   always @ (posedge clk)
	begin
		count <= #1 count + 1;
		$display("count L%d", $signed(count));
	end


initial begin
	count <=0;
	end

endmodule
