module main(clk, ch1, ch0, L0, L1, L2, L3, L4, C0, C1, C2, C3, C4, C5, C6);
	
	input clk, ch1, ch0;
	wire clkRU, clkCONT, sel1, sel2, sel3;
	wire [6:0] outRU0, outRU1, outRU2, outRU3, outRU4;
	output L0, L1, L2, L3, L4, C0, C1, C2, C3, C4, C5, C6;
	
	DivisorDeFrequencia(clk, clkRU, clkCONT);
	Contador(clkCONT, sel1, sel2, sel3);
	bancoRU (ch0, ch1, clkRU, outRU0, outRU1, outRU2, outRU3, outRU4);
	bancoDEMUX (sel1, sel2, sel3, outRU0, outRU1, outRU2, outRU3, outRU4, L0, L1, L2, L3, L4);
	Decodificador(sel1, sel2, sel3, C0, C1, C2, C3, C4, C5, C6);

endmodule
