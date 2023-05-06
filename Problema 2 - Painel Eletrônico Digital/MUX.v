module MUX(s0, s1, entradaParalela, saidaPosterior, saidaAnterior, propriaSaida, out);

	input s0, s1, entradaParalela, saidaPosterior, saidaAnterior, propriaSaida;
	output out;
	wire fio0, fio1, fio2, fio3; //cada fio corresponde a uma saida i
	
	not ntS0(nots0, s0);
	not ntS1(notS1, s1);
	and andi0(fio0, entradaParalela, nots0, notS1);
	and andi1(fio1, saidaPosterior, notS1, s0);
	and andi2(fio2, saidaAnterior, s1, nots0);
	and andi3(fio3, propriaSaida, s1, s0);
	
	or orOut(out, fio0, fio1, fio2, fio3);
	
	endmodule
