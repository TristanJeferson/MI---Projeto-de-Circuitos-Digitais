module contador_3bits(clk, clr, q);
	input clk, clr;
	output reg [2:0] q;
	
	always @(posedge clk, posedge clr) begin
		if(clr)
			q = 3'b000;
		else
			q = q + 3'b001;
	end
endmodule
