module FlipFlopD(s0, s1, clk, entradaParalela, saidaPosterior, saidaAnterior, outFF);

	input s0, s1, clk,  entradaParalela, saidaPosterior, saidaAnterior;
	output reg i0Inst1;
	wire outMux;
	
	MUX (s0, s1, entradaParalela, saidaPosterior, SaidaAnterior, outFF, outMux);
	
	always @(posedge clk)
	begin
		outFF <= outMux;
	end


endmodule
