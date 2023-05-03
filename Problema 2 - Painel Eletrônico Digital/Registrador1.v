module Registrador1(clk, q, d);
	input clk;
	input [15:0] d;
	output reg [15:0] q;
	initial begin
		q = 16'b1010111011101110;
	end
	
	always @(posedge clk)
	begin
		q <= d;
	end
endmodule
