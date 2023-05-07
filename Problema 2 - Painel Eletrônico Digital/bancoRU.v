module bancoRU(ch0, ch1, clk, outRU0, outRU1, outRU2, outRU3, outRU4);
	input ch0, ch1, clk;
	output outRU0, outRU1, outRU2, outRU3, outRU4;
	
	RegistradorUniversal RU0(ch0, ch1, clk, 16'b1010111011101110, outRU0);
	RegistradorUniversal RU1(ch0, ch1, clk, 16'b1010100010001000, outRU1);
	RegistradorUniversal RU2(ch0, ch1, clk, 16'b1010111011101110, outRU2);
	RegistradorUniversal RU3(ch0, ch1, clk, 16'b1010100010000010, outRU3);
	RegistradorUniversal RU4(ch0, ch1, clk, 16'b1110111010001110, outRU4);
	
endmodule
