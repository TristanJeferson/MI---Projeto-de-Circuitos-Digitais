module Registrador_Universal2(clk, load, clr, s, d, m_sig, q);
	input clk, clr;
	input [1:0] s;
	input [27:0] d;
	input m_sig;
	input load;
	output reg [27:0] q;
	
	
	always @ (posedge clk, posedge clr) begin
		if(clr)
			q<= 28'b0000000000000000000000000000;
		else
			if(load)
				q<=d;
			else
				if(s == 2'b01)
					q<={m_sig, q[26:0]};
				else if(s == 2'b10)
					q<={q[27:1], m_sig};
				else if(s == 2'b11)
					q<=d;
	end
endmodule
