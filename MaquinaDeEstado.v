module MaquinaDeEstado (
  input wire entrada,
  output reg sequencia_detectada
);

reg [2:0] contador;

always @(posedge entrada) begin
  if (contador == 3) begin
    sequencia_detectada <= 1;
    contador <= 0;
  end else if (entrada == 1) begin
    contador <= contador + 1;
  end else begin
    contador <= 0;
  end
end

endmodule