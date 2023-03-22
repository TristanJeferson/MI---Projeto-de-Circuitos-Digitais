module matrizColunas(E1, E2, E3, E4, E5, C1, C2, C3, C4, C5, A, B, C, S3);
    input E1, E2, E3, E4, E5, A, B, C;
    output C1, C2, C3, C4, C5, S3;

    //Fios da Coluna 1
    wire nC1a1, nC1b1, nC1c1, nC1a2, nC1b2, nC1c2, nC1a3, nC1b3, nC1c3, nC1a4, nC1b4, nC1c4, C1A, C1B, C1C, C1D;
    
    //Fios da Coluna 2
    wire nC2a1, nC2b1, nC2c1, nC2a2, nC2b2, nC2c2, nC2a3, nC2b3, nC2c3, nC2a4, nC2b4, nC2c4, C2A, C2B, C2C, C2D;

    //Fios da Coluna 3
    wire nC3a1, nC3b1, nC3c1, nC3a2, nC3b2, nC3c2, nC3a3, nC3b3, nC3c3, nC3a4, nC3b4, nC3c4, C3A, C3B, C3C, C3D;

    //Fios da Coluna 4
    wire nC4a1, nC4b1, nC4c1, nC4a2, nC4b2, nC4c2, nC4a3, nC4b3, nC4c3, nC4a4, nC4b4, nC4c4, C4A, C4C, C4B, C4D;

    //Fios da Coluna 5
    wire nC5a1, nC5b1, nC5c1, nC5a2, nC5b2, nC5c2, nC5a3, nC5b3, nC5c3, nC5a4, nC5b4, nC5c4, C5A, C5B, C5C, C5D;

    wire F0;

    or OrS3(S3, A, B, C);
    
    //==== COLUNA 1 ====
    not NotC1a1(nC1a1, E3);
    not NotC1b0(nC1b1, E4);
    not NotC1c0(nC1c1, E5);
    and AndC1A(C1A, S3, E1, E2, nC1a1, nC1b1, nC1c1);

    not NotC1a1(nC1a2, E2);
    not NotC1b1(nC1b2, E3);
    not NotC1c1(nC2c2, E4);
    and AndC1B(C1B, S3, E1, nC1a2, nC1b2, nC1c2, E5);

    not NotC1a2(nC1a3, E2);
    not NotC1b2(nC1b3, E3);
    not NotC1c2(nC1c3, E5);
    and AndC1C(C1C, S3, E1, nC1a3, nC1b3, E4, nC1c3);

    not NotC1a3(nC1a4 E2);
    not NotC1b3(nC1b4, E4);
    not NotC1c3(nC1c4, E5);
    and AndC1D(C1D, S3, E1, nC1a4, E3, nC1b4, nC1c4);

    or OrC1(C1, C1A, C1B, C1C, C1D);


    //==== COLUNA 2 ====
    not NotC2a1(nC2a1, E3);
    not NotC2b1(nC2b1, E4);
    not NotC2c1(nC2c1, E5);
    and AndC2A(C2A, S3, E1, E2, nC2a1, nC2b1, nC2c1); 

    not NotC2a2(nC2a2, E1);
    not NotC2b2(nC2b2, E3);
    not NotC2c2(nC2c2, E4);
    and AndC2B(C2B, S3, nC2a2, E2, nC2b2, nC2c2, E5); 

    not NotC2a3(nC2a3, E1);
    not NotC2b3(nC2b3, E3);
    not Notc2c3(nC2c3, E5);
    and AndC2C(C2C, S3, nC2a3, E2, nC2b3, E4, nC2c3);

    not NotC2a4(nC2a4, E1);
    not NotC2b4(nC2b4, E4);
    not NotC2c4(nC2c4, E5);
    and AndC2D(C2D, S3, nC2a4, E2, E3, nC2b4, nC2c4);

    or OrC2(C2, C2A, C2B, C2C, C2D);

    not NotC3a1(nC3a1, E1);
    not NotC3b1(nC3b1, E2);
    not NotC3c1(nC3c1, E5);
    and AndC3A(C3A, S3, nC3a1, nC3b1, E3, E4, nC3c1);

    not NotC3a2(nC3a2, E1);
    not NotC3b2(nC3b2, E2);
    not NotC3c2(nC3c2, E4);
    and AndC3B(C3B, S3, nC3a2, nC3b2, E3, nC3c2, E5);

    not NotC3a3(nC3a3, E1);
    not NotC3b3(nC3b3, E4);
    not NotC3c3(nC3c3, E5);
    and AndC3C(C3C, S3, nC3a3, nC3b3, E3, E4, nC3c3);

    not NotC3a4(nC3a4, E2);
    not NotC3b4(nC3b4, E4);
    not NotC3c4(nC3c4, E5);
    and AndC3D(C3D, S3, E1, nC3a4, E3, nC3b4, nC3c4);

    or OrC3(C3, C3A, C3B, C3C, C3D);


    //===== Coluna 4 =====
    not NotC4a1(nC4a1, E1);
    not NotC4b1(nC4b1, E2);
    not NotC4c1(nC4c1, E3);
    and AndC4A(C4A, S3, nC4a1, nC4b1, nC4c1, E4, E5); 

    not NotC4a2(nC4a2, E1);
    not NotC4b2(nC4b2, E3);
    not NotC4c2(nC4c2, E5);
    and AndC4B(C4B, S3, nC4a2, E2, nC4b2, E4, nC4c2); 

    not NotC4a3(nC4a3, E2);
    not NotC4b3(nC4b3, E3);
    not NotC4c3(nC4c3, E5);
    and AndC4C(C4C, S3, E1, nC4a3, nC4b3, E4, nC4c3); 

    not NotC4a4(nC4a4, E1);
    not NotC4b4(nC4b4, E2);
    not NotC4c4(nC4c4, E5);
    and AndC4D(C4D, S3, nC4a4, nC4b4, E3, E4, nC4c4); 

    or orC4(C4, C4A, C4C, C4B, C4D);

    //==== coluna 5 ========
    not NotC5a1(nC5a1, E1);
    not NotC5b1(nC5b1, E3);
    not NotC5c1(nC5c1, E4);
    and AndC5A(C5A, S3, nC5a1, E2, nC5b1, nC5c1, E5); 

    not NotC5a2(nC5a2, E2);
    not NotC5b2(nC5b2, E3);
    not NotC5c2(nC5c2, E4);
    and andC5B(C5B, S3, E1, nC5a2, nC5b2, nC5c2, E5);

    not NotC5a3(nC5a3, E1);
    not NotC5b3(nC5b3, E2);
    not NotC5c3(nC5c3, E3);
    and AndC5C(C5C, S3, nC5a3, nC5b3, nC5c3, E4, E5);

    not NotC5a4(nC5a4, E1);
    not NotC5b4(nC5b4, E2);
    not NotC5c4(nC5c4, E4);
    and AndC5D(C5D, S3, nC5a4, nC5b4, E3, nC5c4, E5);

    or orC5(C5, C5A, C5B, C5C, C5D);
endmodule