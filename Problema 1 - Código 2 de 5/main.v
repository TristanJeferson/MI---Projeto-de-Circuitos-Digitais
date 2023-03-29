module main(N0, N1, N2, EN1, EN2, EN3, EN4, EN5, SA9, SB9, SC10, SD8, SEE5, SF7, SG8, SP1, S3HDisp3, S3HDisp4, outDisp1, outDisp2, SC1, SC2, SC3, SC4, SC5, SL1, SL2, SL3, SL4, SL5, SL6, SL7);

input N0, N1, N2, EN1, EN2, EN3, EN4, EN5;
output SA9, SB9, SC10, SD8, SEE5, SF7, SG8, SP1, S3HDisp3, S3HDisp4, outDisp1, outDisp2, SC1, SC2, SC3, SC4, SC5, SL1, SL2, SL3, SL4, SL5, SL6, SL7;

wire enableOut, outS31;


enable enableinst(.S0(N0), .S1(N1), .S2(N2), .S3(enableOut));


somaAtivaDisp somaAtivaDispInst(.S31(outS31), .A1(SA9), .B1(SB9), .C1(SC10), .D1(SD8), .E1(SEE5), .F1(SF7), .G1(SG8) , .P1(SP1));


display displayInst(.A(SA9), .B(SB9), .C(SC10), .D(SD8), .E(SEE5), .F(SF7), .G(SG8), .P(SP1), .E1(EN1), .E2(EN2), .E3(EN3), .E4(EN4), .E5(EN5), .S3(enableOut));


matrizLinhas matrizLinhasinst(.L1(SL1), .L2(SL2), .L3(SL3), .L4(SL4), .L5(SL5), .L6(SL6), .L7(SL7), .A(N0), .B(N1), .C(N2), .E1(EN1), .E2(EN2), .E3(EN3), .E4(EN4), .E5(EN5));


matrizColunas matrizColunasInst(.C1(SC1), .C2(SC2), .C3(SC3), .C4(SC4), .C5(SC5), .E1(EN1), .E2(EN2), .E3(EN3), .E4(EN4), .E5(EN5), .enable(enableOut));


ativaDisp ativaDispInst(.outDisp1(outDisp1), .outDisp2(outDisp2), .EN(enableOut), .S3(outS31));

desabilitaDisp desabDispInst(.desabDisp3(S3HDisp3), .desabDisp4(S3HDisp4), .S3(outS31), .ntS3(outS31));
endmodule 
