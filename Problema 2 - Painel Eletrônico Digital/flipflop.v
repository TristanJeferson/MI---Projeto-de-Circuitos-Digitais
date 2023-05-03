module FlipFlop_D(clk, q, d);
	input clk;
	input d;
	output reg q;
	initial begin
		q = 16'b1010111011101110;
	end
	
	always @(posedge clk)
	begin
		q <= d;
	end
endmodule
