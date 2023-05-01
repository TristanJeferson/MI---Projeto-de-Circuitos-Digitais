module Registrador2(clk, q, d);
	input clk;
	input [27:0] d;
	output reg [27:0] q;
	
	always @(posedge clk)
	begin
		q <= d;
	end
endmodule
