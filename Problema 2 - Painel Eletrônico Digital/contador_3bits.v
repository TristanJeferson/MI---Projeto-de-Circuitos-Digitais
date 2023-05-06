module t_ff_counter(clk, q);
	input clk;
	output reg [2:0] q;
	wire t0, t1, t2;

	t_ff ff0(clk, 1'b1, t0);
	t_ff ff1(clk, t0, t1);
	t_ff ff2(clk, t0 & t1, t2);
	
	always @(*) begin
		q = {t2, t1, t0};
	end
	
endmodule
