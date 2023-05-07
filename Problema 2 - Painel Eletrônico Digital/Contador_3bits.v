module Contador_3bits(clk, q);
	input clk;
	output reg [2:0] q;
	wire t0, t1, t2;

	FlipFlop_T ff0(clk, 1'b1, t0);
	FlipFlop_T ff1(clk, t0, t1);
	FlipFlop_T ff2(clk, t0 & t1, t2);
	
	always @(*) begin
		q = {t2, t1, t0};
	end
	
endmodule
