module MaquinaDeCafe( clk , BOTAO_CONFIRMA, TIMER, SN, SP, SR, TIMER_2S,  ERRO, LIBERADO, PAGO, ENCERRADO);
	input clk , BOTAO_CONFIRMA, TIMER, SN, SP, SR, TIMER_2S, ERRO, LIBERADO, PAGO, ENCERRADO;
	
	
	reg [2:0] ESTADO;
	parameter ESPERANDO = 3'b000 ;
	parameter ESCOLHENDO = 3'b001 ;
	parameter PAGAMENTO= 3'b010 ;
	parameter ERRO_SENSOR = 3'b011 ;
	parameter ERRO_VALOR = 3'b100 ;
	parameter PRESSURIZACAO = 3'b101;
	parameter AQUECIMENTO = 3'b110;
	parameter PRONTO = 3'b111;
	
	always @ ( posedge clk )
		case (ESTADO)
			ESPERANDO : begin 
				if ( BOTAO_CONFIRMA ) ESTADO = ESCOLHENDO ;
				end
		
			ESCOLHENDO: begin
				if ((SN || SP || SR) && !TIMER && BOTAO_CONFIRMA) ESTADO = ERRO_SENSOR;
				else if ( !TIMER && !SN && !SP && !SR && BOTAO_CONFIRMA) ESTADO = PAGAMENTO;
				else if (TIMER) ESTADO = ESPERANDO;
				end
				
			ERRO_SENSOR: begin
				if (TIMER && !ERRO) ESTADO = PAGAMENTO;
				else if (TIMER && ERRO) ESTADO = ESPERANDO;
				end
			
			PAGAMENTO: begin
				if (!PAGO && ENCERRADO) ESTADO = ERRO_VALOR;
				else if (PAGO && ENCERRADO) ESTADO = PRESSURIZACAO;
				else if(TIMER && !PAGO && !ENCERRADO) ESTADO = ESPERANDO;
				end
			
			ERRO_VALOR: begin
				if (TIMER) ESTADO = ESPERANDO;
				end
				
			PRESSURIZACAO: begin
				if (TIMER_2S) ESTADO = AQUECIMENTO;
				end
				
			AQUECIMENTO: begin
				if (TIMER) ESTADO = PRONTO;
				end
				
			PRONTO: begin
				if (TIMER) ESTADO = ESPERANDO;
				end
		endcase
endmodule