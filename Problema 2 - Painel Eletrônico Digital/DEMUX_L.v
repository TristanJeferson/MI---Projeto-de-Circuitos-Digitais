module DEMUX_L(linha,sel1, sel2, sel3, saida);
	input sel1, sel2, sel3;
	input [6:0] linha;
	output reg saida;
	wire ns1, ns2, ns3, and1, and2, and3, and4, and5, and6, and7, and8, or1;
	
	not (ns1, sel1);
	not (ns2, sel2);
	not (ns3, sel3);
	
	and (and1, ns1, ns2, ns3, 1'b0);
	and (and2, ns1, ns2, sel3, linha[0]);
	and (and3, ns1, sel2, ns3, linha[1]);
	and (and4, ns1, sel2, sel3, linha[2]);
	and (and5, sel1, ns2, ns3, linha[3]);
	and (and6, sel1, ns2, sel3, linha[4]);
	and (and7, sel1, sel2, ns3, linha[5]);
	and (and8, sel1, sel2, sel3, linha[6]);
	or (or1, and1, and2, and3, and4, and5, and6, and7, and8);
	
	
	always @(*) begin
		saida = or1;
	end

endmodule
