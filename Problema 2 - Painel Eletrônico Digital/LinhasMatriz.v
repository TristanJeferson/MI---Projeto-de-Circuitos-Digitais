module LinhasMatriz(ch0, ch1, sel1, sel2, sel3, clkRU, outDEM0, outDEM1, outDEM2, outDEM3, outDEM4);

	input ch0, ch1, clkRU, sel1, sel2, sel3;
	wire [6:0] outRU0, outRU1, outRU2, outRU3, outRU4;
	output outDEM0, outDEM1, outDEM2, outDEM3, outDEM4;
	
	bancoRU (ch0, ch1, clkRU, outRU0, outRU1, outRU2, outRU3, outRU4);
	bancoDEMUX (sel1, sel2, sel3, outRU0, outRU1, outRU2, outRU3, outRU4, outDEM0, outDEM1, outDEM2, outDEM3, outDEM4);
	
endmodule
