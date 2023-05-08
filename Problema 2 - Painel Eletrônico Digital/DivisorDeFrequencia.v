module DivisorDeFrequencia(clk);
	input clk;
	output reg clkRU, clkCONT;
	wire reg clk1, clk2, clk3, clk4, clk5, clk6, clk7,
	clk8, clk9, clk10, clk11, clk12, clk13, clk14,
	clk15, clk17, clk18, clk19, clk20, clk21, clk22, clk23;
	
	FlipFlop_T(clk, 1'b1, clk1);
	FlipFlop_T(clk1, 1'b1, clk2);
	FlipFlop_T(clk2, 1'b1, clk3);
	FlipFlop_T(clk3, 1'b1, clk4);
	FlipFlop_T(clk4, 1'b1, clk5);
	FlipFlop_T(clk5, 1'b1, clk6);
	FlipFlop_T(clk6, 1'b1, clk7);
	FlipFlop_T(clk7, 1'b1, clk8);
	FlipFlop_T(clk8, 1'b1, clk9);
	FlipFlop_T(clk9, 1'b1, clk10);
	FlipFlop_T(clk10, 1'b1, clk11);
	FlipFlop_T(clk11, 1'b1, clk12);
	FlipFlop_T(clk12, 1'b1, clk13);
	FlipFlop_T(clk13, 1'b1, clk14);
	FlipFlop_T(clk14, 1'b1, clk15);
	FlipFlop_T(clk15, 1'b1, clkCONT);
	FlipFlop_T(clkCONT, 1'b1, clk17);
	FlipFlop_T(clk17, 1'b1, clk18);
	FlipFlop_T(clk18, 1'b1, clk19);
	FlipFlop_T(clk19, 1'b1, clk20);
	FlipFlop_T(clk20, 1'b1, clk21);
	FlipFlop_T(clk21, 1'b1, clk22);
	FlipFlop_T(clk22, 1'b1, clk23);
	FlipFlop_T(clk23, 1'b1, outRU);
	
endmodule
