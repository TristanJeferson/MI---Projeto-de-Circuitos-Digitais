module Contador(clk, t0, t1, t2);
	input clk;
	output t0, t1, t2;

	FlipFlop_T ff0(clk, 1'b1, t0);
	FlipFlop_T ff1(clk, t0, t1);
	FlipFlop_T ff2(clk, t0 & t1, t2);
	
endmodule
