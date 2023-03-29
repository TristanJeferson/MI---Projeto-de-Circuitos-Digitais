module somaAtivaDisp(A1, B1, C1, D1, E1, F1, G1, P1, S31);

  input A1, B1, C1, D1, E1, F1, G1, P1;
  output S31;
  
  wire notS3;
 
  not nS3(notS3, S31); 
  
  or orAtvDisp(S31, A1, B1, C1, D1, E1, F1, G1, P1,);
 
 
endmodule
