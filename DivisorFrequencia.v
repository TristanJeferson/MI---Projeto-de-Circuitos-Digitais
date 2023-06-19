module DivisorFrequencia (
  input clk,
  output reg clk_dividido760hz,
  output reg clk_dividido8s,
  output reg clk_dividido2s
);

	reg [15:0] contador760hz = 0;
	reg [1:0] contador8s = 0;
	reg [10:0] contador2s = 0;

	always @(posedge clk) begin
	  
	  if (contador760hz == 65000) begin
		 contador760hz <= 0;
		 clk_dividido760hz <= ~clk_dividido760hz;
	  end else begin
		 contador760hz <= contador760hz + 1;
	  end
	end
	
	always @(posedge clk_dividido760hz) begin
		if (contador2s == 1520) begin
		 contador2s <= 0;
		 clk_dividido2s<= ~clk_dividido2s;
	  end else begin
		 contador2s <= contador2s + 1;
	  end
	end
	
	always @(posedge clk_dividido2s) begin
		if (contador8s == 1520) begin
		 contador8s <= 0;
		 clk_dividido8s<= ~clk_dividido8s;
	  end else begin
		 contador8s <= contador8s + 1;
	  end
	end

endmodule