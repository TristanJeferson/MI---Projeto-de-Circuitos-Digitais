module RegistradorUniversal(ch0, ch1, clk, cadeiaDeBits, s0, s1, s2, s3, s4, s5, s6);
	input ch0, ch1, clk;
	input [15:0] cadeiaDeBits;
	output s0, s1, s2, s3, s4, s5, s6;
	wire s7, s8, s9, s10, s11, s12, s13, s14, s15;
	
	MUX(ch0, ch1, cadeiaDeBits[15], s1, s15, s0, q0);
	MUX(ch0, ch1, cadeiaDeBits[14], s2, s0, s1, q1);
	MUX(ch0, ch1, cadeiaDeBits[13], s3, s1, s2, q2);
	MUX(ch0, ch1, cadeiaDeBits[12], s4, s2, s3, q3);
	MUX(ch0, ch1, cadeiaDeBits[11], s5, s3, s4, q4);
	MUX(ch0, ch1, cadeiaDeBits[10], s6, s4, s5, q5);
	MUX(ch0, ch1, cadeiaDeBits[9], s7, s5, s6, q6);
	MUX(ch0, ch1, cadeiaDeBits[8], s8, s6, s7, q7);
	MUX(ch0, ch1, cadeiaDeBits[7], s9, s7, s8, q8);
	MUX(ch0, ch1, cadeiaDeBits[6], s10, s8, s9, q9);
	MUX(ch0, ch1, cadeiaDeBits[5], s11, s9, s10, q10);
	MUX(ch0, ch1, cadeiaDeBits[4], s12, s10, s11, q11);
	MUX(ch0, ch1, cadeiaDeBits[3], s13, s11, s12, q12);
	MUX(ch0, ch1, cadeiaDeBits[2], s14, s12, s13, q13);
	MUX(ch0, ch1, cadeiaDeBits[1], s15, s13, s14, q14);
	MUX(ch0, ch1, cadeiaDeBits[0], s0, s14, s15, q15);
	
	FlipFlopD FF0(clk, q0, s0);
	FlipFlopD FF1(clk, q1, s1);
	FlipFlopD FF2(clk, q2, s2);
	FlipFlopD FF3(clk, q3, s3);
	FlipFlopD FF4(clk, q4, s4);
	FlipFlopD FF5(clk, q5, s5);
	FlipFlopD FF6(clk, q6, s6);
	FlipFlopD FF7(clk, q7, s7);
	FlipFlopD FF8(clk, q8, s8);
	FlipFlopD FF9(clk, q9, s9);
	FlipFlopD FF10(clk, q10, s10);
	FlipFlopD FF11(clk, q11, s11);
	FlipFlopD FF12(clk, q12, s12);
	FlipFlopD FF13(clk, q13, s13);
	FlipFlopD FF14(clk, q14, s14);
	FlipFlopD FF15(clk, q15, s15);
	
endmodule
