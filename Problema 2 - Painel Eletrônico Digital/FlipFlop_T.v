module FlipFlop_T(clk, t, q);
	input clk, t;
	output reg q;
	
	always @(posedge clk) begin
		if (t)
			q <= ~q;
		else
			q <= q;
	end
endmodule
