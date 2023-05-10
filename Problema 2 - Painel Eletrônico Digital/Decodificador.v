module Decodificador(sel1, sel2, sel3, C0, C1, C2, C3, C4, C5, C6, enable);
	input sel1, sel2, sel3, enable;
	output C0, C1, C2, C3, C4, C5, C6;
	wire ns1, ns2, ns3, and1, and2, and3, and4, and5, and6, and7, and8;
	
	not (ns1, sel1);
	not (ns2, sel2);
	not (ns3, sel3);
	
	nand (C0, ns1, ns2, ns3, enable);
	nand (C1, ns1, ns2, sel3, enable);
	nand (C2, ns1, sel2, ns3, enable);
	nand (C3, ns1, sel2, sel3, enable);
	nand (C4, sel1, ns2, ns3, enable);
	nand (C5, sel1, ns2, sel3, enable);
	nand (C6, sel1, sel2, ns3, enable);

endmodule
