module SegmentoA(E1, E2, E3, E4, E5, A);
    input E1, E2, E3, E4, E5;
    output A;

    wire A1, A2, nA1a, nA1b, nA1c, nA2a, nA2b, nA2c;

    not notA1a(nA1a, E1);
    not notA1b(nA1b, E3);
    not notA1c(nA1c, E4);
    and andA1(A1, nA1a, E2, nA1b, nA1c, E5);

    not notA2a(nA2a, E1);
    not notA2b(nA2b, E2);
    not notA2c(nA2c, E4);
    and andA2(A2, nA2a, nA2b, N3, nA2c, E5);

    or OrA(A, A1, A2);
  
endmodule
