module fliFlopD_1(clk, i0Inst1, i2Inst_F);

	wire outInst1;
	MUX_1 mux1Inst(.i0(i0Inst1), .i2(i2Inst_F), .out(outInst1));
	input clk, i2Inst_F;
	output reg i0Inst1;
	
	always @(posedge clk)
	begin
		i0Inst1 <= outInst1;
	end


endmodule
