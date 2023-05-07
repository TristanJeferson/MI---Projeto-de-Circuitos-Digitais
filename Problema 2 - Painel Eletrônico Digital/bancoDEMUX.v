module bancoDEMUX(sel1, sel2, sel3, outRU0, outRU1, outRU2, outRU3, outRU4, outDEM0, outDEM1, outDEM2, outDEM3, outDEM4);
	input sel1, sel2, sel3;
	input [6:0] outRU0, outRU1, outRU2, outRU3, outRU4;
	output outDEM0, outDEM1, outDEM2, outDEM3, outDEM4;
	
	DEMUX_L DEM0(outRU0, sel1, sel2, sel3, outDEM0);
	DEMUX_L DEM1(outRU1, sel1, sel2, sel3, outDEM1);
	DEMUX_L DEM2(outRU2, sel1, sel2, sel3, outDEM2);
	DEMUX_L DEM3(outRU3, sel1, sel2, sel3, outDEM3);
	DEMUX_L DEM4(outRU4, sel1, sel2, sel3, outDEM4);

endmodule
