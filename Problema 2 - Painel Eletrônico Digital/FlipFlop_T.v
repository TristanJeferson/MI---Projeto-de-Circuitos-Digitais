module FlipFlop_T(clk, t, q);
	input clk, t;
	output reg q;
	wire not_T, not_Q, and1, and2, w1;
	
	not (not_T, t);
	not (not_Q, q);
	
	and (and1, not_T, q);
	and (and2, not_Q, t);
	
	or(w1, and1, and2);
	
	always @(posedge clk) begin
		q <= w1;
	end
endmodule
