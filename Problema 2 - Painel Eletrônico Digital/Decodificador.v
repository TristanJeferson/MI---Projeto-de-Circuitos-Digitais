module Decodificador(sel1, sel2, sel3, C0, C1, C2, C3, C4, C5, C6);
	input sel1, sel2, sel3;
	output reg C0, C1, C2, C3, C4, C5, C6;
	wire ns1, ns2, ns3, and1, and2, and3, and4, and5, and6, and7, and8;
	
	not (ns1, sel1);
	not (ns2, sel2);
	not (ns3, sel3);
	
	and (and1, ns1, ns2, ns3);
	and (and2, ns1, ns2, sel3);
	and (and3, ns1, sel2, ns3);
	and (and4, ns1, sel2, sel3);
	and (and5, sel1, ns2, ns3);
	and (and6, sel1, ns2, sel3);
	and (and7, sel1, sel2, ns3);
	and (and8, sel1, sel2, sel3);
	
	always @(*) begin
		C0 <= and2;
		C1 <= and3;
		C2 <= and4;
		C3 <= and5;
		C4 <= and6;
		C5 <= and7;
		C6 <= and8;
	end

endmodule
