module MEFCafe( CLK , CONFIRMA, TIMER, TIMER_2S, S_SENSORES, S_PAGAMENTO, S_ESCOLHA, SAIDA_DISPLAY, SAIDA);
	input CLK , CONFIRMA, TIMER, TIMER_2S;
	input [1:0] S_SENSORES, S_PAGAMENTO, S_ESCOLHA;
	output reg [3:0] SAIDA_DISPLAY;
	output reg [2:0] SAIDA;
	
	reg [2:0] ESTADO;
	parameter ESPERANDO = 3'b000;
	parameter ESCOLHENDO = 3'b001;
	parameter SENSORES= 3'b010;
	parameter PAGAMENTO = 3'b011;
	parameter ERRO_VALOR = 3'b100;
	parameter PRESSURIZACAO = 3'b101;
	parameter AQUECIMENTO = 3'b110;
	parameter PRONTO = 3'b111;
	
	always @ ( posedge CLK ) begin
		case (ESTADO)
			ESPERANDO : begin 
				if (CONFIRMA) ESTADO = ESCOLHENDO;
					SAIDA_DISPLAY = 4'b0000;
					SAIDA = 3'b000;
			end
		
			ESCOLHENDO: begin
				if (S_ESCOLHA[1] && S_ESCOLHA[0]) ESTADO = S_SENSORES;
				else if (S_ESCOLHA[1] && !S_ESCOLHA[0]) ESTADO = ESPERANDO;
				SAIDA = 3'b001;
			end
				
			S_SENSORES: begin
				if (S_SENSORES[1] && !S_SENSORES[0]) ESTADO = PAGAMENTO;
				else if (S_SENSORES[1] && S_SENSORES[0]) ESTADO = ESPERANDO;
				SAIDA = 3'b010;
			end
			
			PAGAMENTO: begin
				if (!S_PAGAMENTO[1] && S_PAGAMENTO[0]) ESTADO = ERRO_VALOR;
				else if (S_PAGAMENTO[1] && S_PAGAMENTO[0]) ESTADO = PRESSURIZACAO;
				else if(TIMER) ESTADO = ESPERANDO;
				SAIDA = 3'b011;
			end
			
			ERRO_VALOR: begin
				if (TIMER) ESTADO = ESPERANDO;
				SAIDA_DISPLAY = 4'b1111;
				SAIDA = 3'b100;
			end
				
			PRESSURIZACAO: begin
				if (TIMER_2S) ESTADO = AQUECIMENTO;
				SAIDA_DISPLAY = 4'b1110;
				SAIDA = 3'b101;
			end
				
			AQUECIMENTO: begin
				if (TIMER) ESTADO = PRONTO;
				SAIDA = 3'b110;
			end
				
			PRONTO: begin
				if (TIMER) ESTADO = ESPERANDO;
				SAIDA = 3'b111;
			end
		endcase
	end
endmodule