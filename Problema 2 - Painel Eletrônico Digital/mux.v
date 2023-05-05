module mux4( propriaSaida, saidaAnterior, saidaPosterior, valorInicial, sel0, sel1, clk ,saida);

  input propriaSaida, saidaAnterior, saidaPosterior, sel0, sel1, clk;
  output reg saida;

  always @(posedge clk) begin
    case ({sel1, sel0})
        2'b01: saida = propriaSaida;
        2'b10: saida = saidaAnterior;
        2'b11: saida = saidaPosterior;
    endcase
  end

  initial begin
     saida = valorInicial
  end
endmodule
