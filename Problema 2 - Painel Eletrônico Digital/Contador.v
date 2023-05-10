module Contador(clk, t2, t1, t0);
	input clk;
	output t0, t1, t2;
	wire rst;
	
	and (rst, t0, t1, t2);
	
	FlipFlop_T(clk, rst, 1, t0);
	FlipFlop_T(t0, rst, 1, t1);
	FlipFlop_T(clk, rst, 1, t2);
	
endmodule
