module main(clk, ch1, ch0, L0, L1, L2, L3, L4, C0, C1, C2, C3, C4, C5, C6, out);
	
	input clk, ch1, ch0;
	wire clkRU, clkCONT, sel1, sel2, sel3, enable;
	wire RU00, RU01, RU02, RU03, RU04, RU05, RU06,
		RU10, RU11, RU12, RU13, RU14, RU15, RU16,
		RU20, RU21, RU22, RU23, RU24, RU25, RU26,
		RU30, RU31, RU32, RU33, RU34, RU35, RU36,
		RU40, RU41, RU42, RU43, RU44, RU45, RU46;
	output L0, L1, L2, L3, L4, C0, C1, C2, C3, C4, C5, C6, out;
	
	or (enable, ch1, ch0);
	
	DivisorDeFrequencia(clk, clkRU, clkCONT);
	Contador(clkCONT, sel1, sel2, sel3);
	Decodificador(sel1, sel2, sel3, C0, C1, C2, C3, C4, C5, C6, enable);

	RegistradorUniversal RU0(ch0, ch1, clkRU, 16'b1010111011101110, RU00, RU01, RU02, RU03, RU04, RU05, RU06);
	RegistradorUniversal RU1(ch0, ch1, clkRU, 16'b1010100010001000, RU10, RU11, RU12, RU13, RU14, RU15, RU16);
	RegistradorUniversal RU2(ch0, ch1, clkRU, 16'b1010111011101110, RU20, RU21, RU22, RU23, RU24, RU25, RU26);
	RegistradorUniversal RU3(ch0, ch1, clkRU, 16'b1010100010000010, RU30, RU31, RU32, RU33, RU34, RU35, RU36);
	RegistradorUniversal RU4(ch0, ch1, clkRU, 16'b1110111010001110, RU40, RU41, RU42, RU43, RU44, RU45, RU46);

	DEMUX_L DEM0({RU00, RU01, RU02, RU03, RU04, RU05, RU06}, sel1, sel2, sel3, L0);
	DEMUX_L DEM1({RU10, RU11, RU12, RU13, RU14, RU15, RU16}, sel1, sel2, sel3, L1);
	DEMUX_L DEM2({RU20, RU21, RU22, RU23, RU24, RU25, RU26}, sel1, sel2, sel3, L2);
	DEMUX_L DEM3({RU30, RU31, RU32, RU33, RU34, RU35, RU36}, sel1, sel2, sel3, L3);
	DEMUX_L DEM4({RU40, RU41, RU42, RU43, RU44, RU45, RU46}, sel1, sel2, sel3, L4);
	
endmodule
