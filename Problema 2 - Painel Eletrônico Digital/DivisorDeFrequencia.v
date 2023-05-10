module DivisorDeFrequencia(clk, clkRU, clkCONT);
	input clk;
	output clkRU, clkCONT;
	
	wire clk1, clk2, clk3, clk4, clk5, clk6, clk7,
	clk8, clk9, clk10, clk11, clk12, clk13, clk14,
	clk15, clk17, clk18, clk19, clk20, clk21, clk22, clk23;
	
	FlipFlop_T(clk, 0, 1, clk1);
	FlipFlop_T(clk1, 0, clk1, clk2);
	FlipFlop_T(clk2, 0, clk2, clk3);
	FlipFlop_T(clk3, 0, clk3, clk4);
	FlipFlop_T(clk4, 0, clk4, clk5);
	FlipFlop_T(clk5, 0, clk5, clk6);
	FlipFlop_T(clk6, 0, clk6, clk7);
	FlipFlop_T(clk7, 0, clk7, clk8);
	FlipFlop_T(clk8, 0, clk8, clk9);
	FlipFlop_T(clk9, 0, clk9, clk10);
	FlipFlop_T(clk10, 0, clk10, clk11);
	FlipFlop_T(clk11, 0, clk11, clk12);
	FlipFlop_T(clk12, 0, clk12, clk13);
	FlipFlop_T(clk13, 0, clk13, clk14);
	FlipFlop_T(clk14, 0, clk14, clk15);
	FlipFlop_T(clk15, 0, clk15, clkCONT);
	FlipFlop_T(clkCONT, 0, clkCONT, clk17);
	FlipFlop_T(clk17, 0, clk17, clk18);
	FlipFlop_T(clk18, 0, clk18, clk19);
	FlipFlop_T(clk19, 0, clk19, clk20);
	FlipFlop_T(clk20, 0, clk20, clk21);
	FlipFlop_T(clk21, 0, clk21, clk22);
	FlipFlop_T(clk22, 0, clk22, clk23);
	FlipFlop_T(clk23, 0, clk23, clkRU);
	
endmodule
