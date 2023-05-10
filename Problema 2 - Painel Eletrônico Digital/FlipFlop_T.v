module FlipFlop_T(clk, rst, t, q);
	input clk, t, rst;
	output reg q;
	
	always @(posedge clk) begin
		if (rst)
			q=0;
			
		else if (t)
			q <= ~q;
	end
endmodule
