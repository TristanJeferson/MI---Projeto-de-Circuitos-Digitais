 module main(EN1, EN2, EN3, EN4, EN5, enableN0, enableN1, enableN2,  SA9, SB9, SC10, SD8, SEE5, SF7, SG8);

input EN1, EN2, EN3, EN4, EN5, enableN0, enableN1, enableN2;
output SA9, SB9, SC10, SD8, SEE5, SF7, SG8;

wire enableOut;

instEnable instEnable_Disp_Matriz(.Out0(enableOut), .N0(enableN0), .N1(enableN1), .N2(enableN2));
 
DISPLAY_7ENABLE displayInst(.A9(SA9), .B9(SB9), .C10(SC10), .D8(SD8), .EE5(SEE5), .F7(SF7), .G8(SG8), .E1(EN1), .E2(EN2), .E3(EN3), .E4(EN4), .E5(EN5), .S3(enableOut));


endmodule
