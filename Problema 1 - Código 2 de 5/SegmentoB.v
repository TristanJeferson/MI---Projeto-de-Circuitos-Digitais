module SegmentoB(E1, E2, E3, E4, E5, B);
    input E1, E2, E3, E4, E5;
    output B;

    wire B1, B2, nB1a, nB1b, nB1c, nB2a, nB2b, nB2c;


    not notB1a(nB1a, E2);
    not notB1b(nB1b, E3);
    not notB1c(nB1c, E4);
    and andB1(B1, E1, nB1a, nB1b, nB1c, E5);

    not notB1a(nB1a, E1);
    not notB1b(nB1b, E4);
    not notB1c(nB1c, E5);
    and andB1(B2, nB1a, E2, E3, nB1b, nB1c);
    
    or orB(B, B1, B2);
    
endmodule
