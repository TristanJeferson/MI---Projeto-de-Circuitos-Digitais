module DISPLAY_ENABLE(E1, E2, E3, E4, E5, A9, B9, C10, D8, EE5, F7, G8, S0, S1, S2, S3);

    input E1, E2, E3, E4, E5, S0, S1, S2;
    output A9, B9, C10, D8, EE5, F7, G8, S3;

    wire notA1, notA2, notA3, notA4, notA5, notA6, notA7, notA8, notB1, notB2, notB3, notB4, notB5, notB6, notB7, notB8, notC1, notC2, notC3, notC4, notC5, notC6, notC7, notC8, notC9, notD1, notD2, notD3, notD4, notD5, notD6, notD7, notE1, notE2, notE3, notE4, notF1, notF2, notF3, notF4, notF5, notF6, notG1, notG2, notG3, notG4, notG5, notG6, notG7;

    //Fios do Segmento A
    wire A1, A2, A3, A4, A5, A6, A7, A8,
         nA1a, nA1b, nA1c, nA2a, nA2b, nA2c, nA3a, nA3b, nA3c, nA4a, nA4b, nA4c, nA5a, nA5b, nA5c, nA6a, nA6b, nA6c, nA7a, nA7b, nA7c, nA8a, nA8b, nA8c;

    //Fios do Segmento B
    wire B1, B2, B3, B4, B5, B6, B7, B8,
         nB1a, nB1b, nB1c, nB2a, nB2b, nB2c, nB3a, nB3b, nB3c, nB4a, nB4b, nB4c, nB5a, nB5b, nB5c, nB6a, nB6b, nB6c, nB7a, nB7b, nB7c, nB8a, nB8b, nB8c;

    //Fios do Segmento C
    wire C1, C2, C3, C4, C5, C6, C7, C8,
         nC1a, nC1b, nC1c, nC2a, nC2b, nC2c, nC3a, nC3b, nC3c, nC4a, nC4b, nC4c, nC5a, nC5b, nC5c, nC6a, nC6b, nC6c, nC7a, nC7b, nC7c, nC8a, nC8b, nC8c, nC9a, nC9b, nC9c;

    //Fios do Segmento D
    wire D1, D2, D3, D4, D5, D6, D7,
         nD1a, nD1b, nD1c, nD2a, nD2b, nD2c, nD3a, nD3b, nD3c, nD4a, nD4b, nD4c, nD5a, nD5b, nD5c, nD6a, nD6b, nD6c, nD7a, nD7b, nD7c;

    //Fios do Segmento E
    wire Ee1, Ee2, Ee3, Ee4,
         nE1a, nE1b, nE1c, nE2a, nE2b, nE2c, nE3a, nE3b, nE3c, nE4a, nE4b, nE4c;

    //Fios do Segmento F
    wire F1, F2, F3, F4, F5, F6,
         nF1a, nF1b, nF1c, nF2a, nF2b, nF2c, nF3a, nF3b, nF3c, nF4a, nF4b, nF4c, nF5a, nF5b, nF5c, nF6a, nF6b, nF6c;

    //Fios do Segmento G
    wire G1, G2, G3, G4, G5, G6, G7,
         nG1a, nG1b, nG1c, nG2a, nG2b, nG2c, nG3a, nG3b, nG3c, nG4a, nG4b, nG4c, nG5a, nG5b, nG5c, nG6a, nG6b, nG6c, nG7a, nG7b, nG7c;
    
    or OrS(S3, S0, S1, S2);

    //SEGMENTO A
    not NotAS1(notA1, S3);
    not notA1a(nA1a, E3);
    not notA1b(nA1b, E4);
    not notA1c(nA1c, E5);
    and andA1(A1, notA1, E1, E2, nA1a, nA1b, nA1c);

    not notAS2(notA2, S3);
    not notA2a(nA2a, E1);
    not notA2b(nA2b, E3);
    not notA2c(nA2c, E4);
    and andA2(A2, notA2, nA2a, E2, nA2b, nA2c, E5);
    
    not notAS3(notA3, S3);
    not notA3a(nA3a, E2);
    not notA3b(nA3b, E3);
    not notA3c(nA3c, E4);
    and andA3(A3, notA3, E1, nA3a, nA3b, nA3c, E5);

    not notAS4(notA4, S3);
    not notA4a(nA4a, E1);
    not notA4b(nA4b, E2);
    not notA4c(nA4c, E3);
    and andA4(A4, notA4, nA4a, nA4b, nA4c, E4, E5);

    not notAS5(notA5, S3);
    not notA5a(nA5a, E2);
    not notA5b(nA5b, E3);
    not notA5c(nA5c, E5);
    and andA5(A5, notA5, E1, nA5a, nA5b, E4, nA5c);

    not notAS6(notA6, S3);
    not notA6a(nA6a, E1);
    not notA6b(nA6b, E2);
    not notA6c(nA6c, E5);
    and andA6(A6, notA6, nA6a, nA6b, E3, E4, nA6c);

    not notAS7(notA7, S3);
    not notA7a(nA7a, E1);
    not notA7b(nA7b, E4);
    not notA7c(nA7c, E5);
    and andA7(A7, notA7, nA7a, E2, E3, nA7b, nA7c);

    not notAS8(notA8, S3);
    not notA8a(nA8a, E2);
    not notA8b(nA8b, E4);
    not notA8c(nA8c, E5);
    and andA8(A8, notA8, E1, nA8a, E3, nA8b, nA8c);

    or orA(A9, A1, A2, A3, A4, A5, A6, A7, A8);

    //SEGMENTO B 
    not notBS1(notB1, S3);
    not notB1a(nB1a, E3);
    not notB1b(nB1b, E4);
    not notB1c(nB1c, E5);
    and andB1(B1, notB1, E1, E2, nB1a, nB1b, nB1c);

    not notBS2(notB2, S3);
    not notB2a(nB2a, E1);
    not notB2b(nB2b, E3);
    not notB2c(nB2c, E4);
    and andB2(B2, notB2, nB2a, E2, nB2b, nB2c, E5);

    not notBS3(notB3, S3);
    not notB3a(nB3a, E1);
    not notB3b(nB3b, E2);
    not notB3c(nB3c, E3);
    and andB3(B3, notB3, nB3a, nB3b, nB3c, E4, E5);

    not notBS4(notB4, S3);
    not notB4a(nB4a, E1);
    not notB4b(nB4b, E3);
    not notB4c(nB4c, E5);
    and andB4(B4, notB4, nB4a, E2, nB4b, E4, nB4c);

    not notBS5(notB5, S3);
    not notB5a(nB5a, E2);
    not notB5b(nB5b, E3);
    not notB5c(nB5c, E5);
    and andB5(B5, notB5, E1, nB5a, nB5b, E4, nB5c);

    not notB6a(nB6a, E1);
    not notB6b(nB6b, E2);
    not notB6c(nB6c, E5);
    and andB6(B6, nB6a, nB6b, E3, E4, nB6c);

    not notBS7(notB7, S3);
    not notB7a(nB7a, E1);
    not notB7b(nB7b, E2);
    not notB7c(nB7c, E4);
    and andB7(B7, notB7, nB7a, nB7b, E3, nB7c, E5);

    not notBS8(notB8, S3);
    not notB8a(nB8a, E2);
    not notB8b(nB8b, E4);
    not notB8c(nB8c, E5);
    and andB8(B8, notB8, E1, nB8a, E3, nB8b, nB8c, E5);
    
    or orB(B9, B1, B2, B3, B4, B5, B6, B7, B8);

    //SEGMENTO C
    not notCS1(notC1, S3);
    not notC1a(nC1a, E3);
    not notC1b(nC1b, E4);
    not notC1c(nC1c, E5);
    and andC1(C1, notC1, E1, E2, nC1a, nC1b, nC1c); 

    not notCS2(notC2, S3);
    not notC2a(nC2a, E1);
    not notC2b(nC2b, E3);
    not notC2c(nC2c, E4);
    and andC2(C2, notC2, nC2a, E2, nC2b, nC3c, E5);

    not notCS3(notC3, S3);
    not notC3a(nC3a, E2);
    not notC3b(nC3b, E3);
    not notC3c(nC3c, E4);
    and andC3(C3, notC3, E1, nC3a, nC3b, nC3c, E5);

    not notCS4(notC4, S3);
    not notC4a(nC4a, E1);
    not notC4b(nC4b, E2);
    not notC4c(nC4c, E3);
    and andC4(C4, notC4, nC4a, nC4b, nC4c, E4, E5);

    not notCS5(notC5, S3);
    not notC5a(nC5a, E1);
    not notC5b(nC5b, E3);
    not notC5c(nC5c, E5);
    and andC5(C5, notC5, nC5a, E2, nC5b, E4, nC5c);

    not notCS6(notC6, S3);
    not notC6a(nC6a, E2);
    not notC6b(nC6b, E3);
    not notC6c(nC6c, E5);
    and andC6(C6, notC6, E1, nC6a, nC6b, E4, nC6c);

    not notCS7(notC7, S3);
    not notC7a(nC7a, E1);
    not notC7b(nC7b, E2);
    not notC7c(nC7c, E4);
    and andC7(C7, notC7, nC7a, nC7b, E3, nC7c, E5);

    not notCS8(notC8, S3);
    not notC8a(nC8a, E1);
    not notC8b(nC8b, E4);
    not notC8c(nC8c, E5);
    and andC8(C8, notC8, nC8a, E2, E3, nC8b, nC8c);

    not notCS9(notC9, S3);
    not notC9a(nC9a, E2);
    not notC9b(nC9b, E4);
    not notC9c(nC9c, E5);
    and andC9(C9, notC9, E1, nC9a, E3, nC9b, nC9c);

    or orC(C10, C1, C2, C3, C4, C5, C6, C7, C8);

    //SEGMENTO D
    not notDS1(notD1, S3);
    not notD1a(nD1a, E3);
    not notD1b(nD1b, E4);
    not notD1c(nD1c, E5);
    and andD1(D1, notD1, E1, E2, nD1a, nD1b, nD1c);

    not notDS2(notD2, S3);
    not notD2a(nD2a, E1);
    not notD2b(nD2b, E3);
    not notD2c(nD2c, E4);
    and andD2(D2, notD2, nD2a, E2, nD2b, nD2c, E5);

    not notDS3(notD3, S3);
    not notD3a(nD3a, E2);
    not notD3b(nD3b, E3);
    not notD3c(nD3c, E4);
    and andD3(D3, E1, notD3, nD3a, nD3b, nD3c, E5);

    not notDS4(notD4, S3);
    not notD4a(nD4a, E1);
    not notD4b(nD4b, E2);
    not notD4c(nD4c, E3);
    and andD4(D4, notD4, nD4a, nD4b, nD4c, E4);

    not notDS5(notD5, S3);
    not notD5a(nD5a, E1);
    not notD5b(nD5b, E2);
    not notD5c(nD5c, E5);
    and andD5(D5, notD5, nD5a, nD5b, E4, nD5c);

    not notDS6(notD6, S3);
    not notD6a(nD6a, E1);
    not notD6b(nD6b, E4);
    not notD6c(nD6c, E5);
    and andD6(D6, notD6, nD6a, E2, E3, nD6b, nD6c);

    not notDS7(notD7, S3);
    not notD7a(nD7a, E2);
    not notD7b(nD7b, E4);
    not notD7c(nD7c, E5);
    and andD7(D7, notD7, E1, nD7a, E3, nD7b, nD7c);

    or orD(D8, D1, D2, D3, D4, D5, D6, D7);

    //SEGMENTO E
    not notES1(notE1, S3);
    not notE1a(nE1a, E2);
    not notE1b(nE1b, E3);
    not notE1c(nE1c, E4);
    and andE1(Ee1, notE1, E1, nE1a, nE1b, nE1c, E5);

    not notES2(notE2, S3);
    not notE2a(nE2a, E1);
    not notE2b(nE2b, E2);
    not notE2c(nE2c, E3);
    and andE2(Ee2, notE2, nE1a, nE1b, nE1c, E4, E5);

    not notES3(notE3, S3);
    not notE3a(nE3a, E1);
    not notE3b(nE3b, E2);
    not notE3c(nE3c, E5);
    and andE3(Ee3, notE3, nE1a, nE2a, E3, E4, nE1c);

    not notES4(notE4, S3);
    not notE4a(nE4a, E2);
    not notE4b(nE4b, E4);
    not notE4c(nE5c, E5);
    and andE4(Ee4, notE4, E1, nE4a, E3, nE4b, nE4c);
	 
	 or orE(EE5, Ee1, Ee2, Ee3, Ee4);

    //SEGMENTO F
    not notFS1(notF1, S3);
    not notF1a(nF1a, E3);
    not notF1b(nF1b, E4);
    not notF1c(nF1c, E5);
    and andF1(F1, notF1, E1, E2, nF1a, nF1b, nF1c);

    not notFS2(notF2, S3);
    not notF2a(nF2a, E2);
    not notF2b(nF2b, E3);
    not notF2c(nF2c, E4);
    and andF2(F2, notF2, E1, notF2a, notF2b, notF2c, E5);

    not notFS3(notF3, S3);
    not notF3a(nF3a, E1);
    not notF3b(nF3b, E2);
    not notF3c(nF3c, E3);
    and andF3(F3, notF3, nF3a, nF3b, nF3c, E4, E5);

    not notFS4(notF4, S3);
    not notF4a(nF4a, E1);
    not notF4b(nF4b, E3);
    not notF4c(nF4c, E5);
    and andF4(F4, notF4, nF4a, E2, nF4b, E4, nF4c);

    not notFS5(notF5, S3);
    not notF5a(nF5a, E1);
    not notF5b(nF5b, E4);
    not notF5c(nF5c, E5);
    and andF5(F5, notF5, nF5a, E2, E3, nF5b, nF5c);

    not notFS6(notF6, S3);
    not notF6a(nF6a, E2);
    not notF6b(nF6b, E4);
    not notF6c(nF6c, E5);
    and andF6(F6, notF6, E1, nF6a, E3, nF6b, nF6c);

    or orF(F7, F1, F2, F3, F4, F5, F6);

    //SEGMENTO G
    not notGS1(notG1, S3);
    not notG1a(nG1a, E3);
    not notG1b(nG1b, E4);
    not notG1c(nG1c, E5);
    and andG1(G1, notG1, E1, E2, nG1a, nG1b, nG1c);

    not notGS2(notG2, S3);
    not notG2a(nG2a, E1);
    not notG2b(nG2b, E3);
    not notG2c(nG2c, E4);
    and andG2(G2, notG2, nG2a, E2, nG2b, nG2c, E5);

    not notGS3(notG3, S3);
    not notG3a(nG3a, E2);
    not notG3b(nG3b, E3);
    not notG3c(nG3c, E4);
    and andG3(G3, notG3, E1, nG3a, nG3b, nG3c, E5);

    not notGS4(notG4, S3);
    not notG4a(nG4a, E1);
    not notG4b(nG4b, E3);
    not notG4c(nG4c, E5);
    and andG4(G4, notG4, nG4a, E2, nG4b, E4, nG5c);

    not notGS5(notG5, S3);
    not notG5a(nG5a, E1);
    not notG5b(nG5b, E2);
    not notG5c(nG5c, E5);
    and andG5(G5, notG5, nG5a, nG5b, E3, E4, nG5c);

    not notGS6(notG6, S3);
    not notG6a(nG6a, E1);
    not notG6b(nG6b, E4);
    not notG6c(nG6c, E5);
    and andG6(G6, notG6, nG6a, E2, E3, nG6b, nG6c);

    not notGS7(notG7, S3);
    not notG7a(nG7a, E2);
    not notG7b(nG7b, E4);
    not notG7c(bG7c, E5);
    and andG7(G7, notG7, E1, nG7a, E3, nG7b, nG7c);

    or orG(G8, G1, G2, G3, G4, G5, G6, G7);
endmodule
