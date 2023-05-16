module MUX_L(linha,sel1, sel2, sel3, out);
	input sel1, sel2, sel3;
	input [6:0] linha;
	output out;
	wire ns1, ns2, ns3, and1, and2, and3, and4, and5, and6, and7;
	
	not (ns1, sel1);
	not (ns2, sel2);
	not (ns3, sel3);
	
	and (and1, ns1, ns2, ns3, linha[6]);
	and (and2, ns1, ns2, sel3, linha[5]);
	and (and3, ns1, sel2, ns3, linha[4]);
	and (and4, ns1, sel2, sel3, linha[3]);
	and (and5, sel1, ns2, ns3, linha[2]);
	and (and6, sel1, ns2, sel3, linha[1]);
	and (and7, sel1, sel2, ns3, linha[0]);
	or (out, and1, and2, and3, and4, and5, and6, and7);
	
endmodule
