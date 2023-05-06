module MUX(s0, s1, i0, i1, i2, i3, out);

	input s0, s1, i0, i1, i2, i3;
	output out;
	wire fio0, fio1, fio2, fio3; //cada fio corresponde a uma saida i
	
	not ntS0(nots0, s0);
	not ntS1(notS1, s1);
	and andi0(fio0, i0, nots0, notS1);
	and andi1(fio1, i1, notS1, s0);
	and andi2(fio2, i2, s1, nots0);
	and andi3(fio3, i3, s1, s0);
	
	or orOut(out, fio0, fio1, fio2, fio3);
	
	endmodule
