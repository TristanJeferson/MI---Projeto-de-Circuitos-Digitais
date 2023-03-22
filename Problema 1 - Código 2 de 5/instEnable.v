module instEnable(N0, N1, N2, Out0);

 input N0, N1, N2;
 output Out0;
 

 matrizLinhas matrizLinhasinst(.A(N0), .B(N1), .C(N2));
 enable enableinst(.S0(N0), .S1(N1), .S2(N2), .S3(Out0));
 
 endmodule
