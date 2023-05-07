module RegistradorUniversal(ch0, ch1, clk, cadeiaDeBits, outRU);
	input ch0, ch1, clk;
	input [15:0] cadeiaDeBits;
	output reg [6:0] outRU;
	wire s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15;
	
	FlipFlopD FF0(ch0, ch1, clk, cadeiaDeBits[0], s1, s15, s0);
	FlipFlopD FF1(ch0, ch1, clk, cadeiaDeBits[1], s2, s0, s1);
	FlipFlopD FF2(ch0, ch1, clk, cadeiaDeBits[2], s3, s1, s2);
	FlipFlopD FF3(ch0, ch1, clk, cadeiaDeBits[3], s4, s2, s3);
	FlipFlopD FF4(ch0, ch1, clk, cadeiaDeBits[4], s5, s3, s4);
	FlipFlopD FF5(ch0, ch1, clk, cadeiaDeBits[5], s6, s4, s5);
	FlipFlopD FF6(ch0, ch1, clk, cadeiaDeBits[6], s7, s5, s6);
	FlipFlopD FF7(ch0, ch1, clk, cadeiaDeBits[7], s8, s6, s7);
	FlipFlopD FF8(ch0, ch1, clk, cadeiaDeBits[8], s9, s7, s8);
	FlipFlopD FF9(ch0, ch1, clk, cadeiaDeBits[9], s10, s8, s9);
	FlipFlopD FF10(ch0, ch1, clk, cadeiaDeBits[10], s11, s9, s10);
	FlipFlopD FF11(ch0, ch1, clk, cadeiaDeBits[11], s12, s10, s11);
	FlipFlopD FF12(ch0, ch1, clk, cadeiaDeBits[12], s13, s11, s12);
	FlipFlopD FF13(ch0, ch1, clk, cadeiaDeBits[13], s14, s12, s13);
	FlipFlopD FF14(ch0, ch1, clk, cadeiaDeBits[14], s15, s13, s14);
	FlipFlopD FF15(ch0, ch1, clk, cadeiaDeBits[15], s0, s14, s15);
	
	always @(posedge clk) begin
		outRU <= {s0, s1, s2, s3, s4, s5, s6};
	end
	
endmodule
