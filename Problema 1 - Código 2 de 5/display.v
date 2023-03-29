module display(E1, E2, E3, E4, E5, A, B, C, D, E, F, G, P, S3);
    input E1, E2, E3, E4, E5, S3;
    output A, B, C, D, E, F, G, P;

    //Fios do Segmento A
    wire A1, A2, nA1a, nA1b, nA1c, nA2a, nA2b, nA2c, notA1, notA2;

    //Fios do Segmento B
    wire B1, B2, nB1a, nB1b, nB1c, nB2a, nB2b, nB2c, notB1, notB2, EB1, EB2, EB3, EB4, EB5, EB6, EB7, EB8, EB9, nEb1a, nEb1b, nEb1c, nEb2a, nEb2b, nEb2c, nEb4a, nEb4b, nEb4c, nEb4d;

    //Fios do Segmento C
    wire nC1a, nC1b, nC1c, notC1, EC1, EC2, EC3, EC4, EC5, EC6, EC7, EC8, EC9, EC10, EC11, EC12, EC13, EC14, EC15, nEc1a, nEc1b, nEc1c, nEc2a, nEc2b, nEc2c, nEc4a, nEc4b, nEc4c, nEc4d;

    //Fios do Segmento D
    wire  D1, D2, D3, nD1a, nD1b, nD1c, nD2a, nD2b, nD2c, nD3a, nD3b, nD3c, notD1, notD2, notD3, notD4;

    //Fios do Segmento E
    wire Ee1, Ee2, Ee3, Ee4, Ee5, Ee6, nE1a, nE1b, nE1c, nE2a, nE2b, nE2c, nE3a, nE3b, nE3c, nE4a, nE4b, nE4c, notE1, notE2, notE3, notE4, notE5, notE6;

    //Fios do Segmento F
    wire F1, F2, F3, F4, F5, nF1a, nF1b, nF1c, nF2a, nF2b, nF2c, nF3a, nF3b, nF3c, nF4a, nF4b, nF4c, nF5a, nF5b, nF5c, notF1, notF2, notF3, notF4, notF5;

    //Fios do Segmento G
    wire G1, G2, G3, nG1a, nG1b, nG1c, nG2a, nG2b, nG2c, nG3a, nG3b, nG3c, notG1, notG2, notG3;

    //Fios do Segmento P
    wire P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, nP1a, nP1b, nP1c, nP2a, nP2b, nP2c, nP3a, nP3b, nP3c, nP4a, nP4b, nP4c, nP5a, nP5b, nP5c, nP6a, nP6b, nP6c, nP7a, nP7b, nP7c, nP8a, nP8b, nP8c, nP9a, nP9b, nP9c, nP10a, nP10b, nP10c, notP1, notP2, notP3, notP4, notP5, notP6, notP7, notP8, notP9, notP10, EP1, EP2, EP3, EP4, EP5, EP6, EP7, EP8, EP9, nEp1a, nEp1b, nEp1c, nEp2a, nEp2b, nEp2c, nEp4a, nEp4b, nEp4c, nEp4d;

    //SEGMENTO A
    not NotAS1(notA1, S3);
    not notA1a(nA1a, E1);
    not notA1b(nA1b, E3);
    not notA1c(nA1c, E5);
    and andA1(A1, notA1, nA1a, E2, nA1b, E4, nA1c);

    not notAS2(notA2, S3);
    not notA2a(nA2a, E1);
    not notA2b(nA2b, E2);
    not notA2c(nA2c, E4);
    and andA2(A2, notA2, nA2a, nA2b, E3, nA2c, E5);

    or orA(A, A1, A2);

    //SEGMENTO B
    not notBS1(notB1, S3);
    not notB1a(nB1a, E2);
    not notB1b(nB1b, E3);
    not notB1c(nB1c, E4);
    and andB1(B1, notB1, E1, nB1a, nB1b, nB1c, E5);

    not notBS2(notB2, S3);
    not notB2a(nB2a, E1);
    not notB2b(nB2b, E4);
    not notB2c(nB2c, E5);
    and andB2(B2, notB2, nB2a, E2, E3, nB2b, nB2c);
	 
	//SEGMENTO B errO
    not notEb1a(nEb1a, E1);
    not notEb1b(nEb1b, E2);
    not notEb1c(nEb1c, E3);
    not notEb1d(nEb1d, E4);
    and andEb1(EB1, nEb1a, nEb1b, nEb1c, nEb1d);

    not notEb2a(nEb2a, E1);
    not notEb2b(nEb2b, E2);
    not notEb2c(nEb2c, E3);
    not notEb2d(nEb2d, E5);
    and andEb2(EB2, nEb2a, nEb2b, nEb2c, nEb2d);

    not notEb3a(nEb3a, E1);
    not notEb3b(nEb3b, E2);
    not notEb3c(nEb3c, E4);
    not notEb3d(nEb3d, E5);
    and andEb3(EB3, nEb3a, nEb3b, nEb3c, nEb3d);

    and andEb4(EB4, E3, E4, E5);

    not notEb5a(nEb5a, E1);
    not notEb5b(nEb5b, E3);
    not notEb5c(nEb5c, E4);
    not notEb5d(nEb5d, E5);
    and andEb5(EB5, nEb5a, nEb5b, nEb5c, nEb5d);

    and andEb6(EB6, E2, E4, E5);

    and andEb7(EB7, E2, E3, E5);
    
    and andEb8(EB8, E2, E3, E4);

    not notEb9a(nEb9a, E2);
    not notEb9b(nEb9b, E3);
    not notEb9c(nEb9c, E4);
    not notEb9d(nEb9d, E5);
    and andEb9(EB9, nEb9a, nEb9b, nEb9c, nEb9d);

    and andEb10(EB10, E1, E4, E5);

    and andEb11(EB11, E1, E3, E5);

    and andEb12(EB12, E1, E3, E4);

    and andEb13(EB13, E1, E2, E5);

    and andEb14(EB14, E1, E2, E4);

    and andEb15(EB15, E1, E2, E3);
    
    or orB(B, B1, B2, EB1, EB2, EB3, EB4, EB5, EB6, EB7, EB8, EB9, EB10, EB11, EB12, EB13, EB14, EB15);

    //SEGMENTO C
    not notCS1(notC1, S3);
    not notC1a(nC1a, E1);
    not notC1b(nC1b, E2);
    not notC1c(nC1c, E5);
	 
    and andC(CNormal, notC1, nC1a, nC1b, E3, E4, nC1c);
	 
    //SEGMENTO C erro
    not notEc1a(nEc1a, E1);
    not notEc1b(nEc1b, E2);
    not notEc1c(nEc1c, E3);
    not notEc1d(nEc1d, E4);
    and andEc1(EC1, nEc1a, nEc1b, nEc1c, nEc1d);

    not notEc2a(nEc2a, E1);
    not notEc2b(nEc2b, E2);
    not notEc2c(nEc2c, E3);
    not notEc2d(nEc2d, E5);
    and andEc2(EC2, nEc2a, nEc2b, nEc2c, nEc2d);

    not notEc3a(nEc3a, E1);
    not notEc3b(nEc3b, E2);
    not notEc3c(nEc3c, E4);
    not notEc3d(nEc3d, E5);
    and andEc3(EC3, nEc3a, nEc3b, nEc3c, nEc3d);

    and andEc4(EC4, E3, E4, E5);

    not notEc5a(nEc5a, E1);
    not notEc5b(nEc5b, E3);
    not notEc5c(nEc5c, E4);
    not notEc5d(nEc5d, E5);
    and andEc5(EC5, nEc5a, nEc5b, nEc5c, nEc5d);

    and andEc6(EC6, E2, E4, E5);

    and andEc7(EC7, E2, E3, E5);

    and andEc8(EC8, E2, E3, E4);

    not notEc9a(nEc9a, E2);
    not notEc9b(nEc9b, E3);
    not notEc9c(nEc9c, E4);
    not notEc9d(nEc9d, E5);
    and andEc9(EC9, nEc9a, nEc9b, nEc9c, nEc9d);

    and andEc10(EC10, E1, E4, E5);

    and andEc11(EC11, E1, E3, E5);
    
    and andEc12(EC12, E1, E3, E4);

    and andEc13(EC13, E1, E2, E5);

    and andEc14(EC14, E1, E2, E4);

    and andEc15(EC15, E1, E2, E3);
	
	or orErroC(C, CNormal, EC1, EC2, EC3, EC4, EC5, EC6, EC7, EC8, EC9, EC10, EC11, EC12, EC13, EC14, EC15);
	 
    //SEGMENTO D
    not notDS1(notD1, S3);
    not notD1a(nD1a, E1);
    not notD1b(nD1b, E3);
    not notD1c(nD1c, E5);
    and andD1(D1, notD1, nD1a, E2, nD1b, E4, nD1c);
    
    not notDS2(notD2, S3);
    not notD2a(nD2a, E2);
    not notD2b(nD2b, E3);
    not notD2c(nD2c, E5);
    and andD2(D2, notD2, E1, nD2a, nD2b, E4, nD2c);

    not notDS3(notD3, S3);
    not notD3a(nD3a, E1);
    not notD3b(nD3b, E2);
    not notD3c(nD3c, E4);
    and andD3(D3, notD3, nD3a, nD3b, E3, nD3c, E5);

    or orD(D, D1, D2, D3);

    //SEGMENTO E
    not notES1(notE1, S3);
    not notE1a(nE1a, E3);
    not notE1b(nE1b, E4);
    not notE1c(nE1c, E5);
    and andE1(Ee1, notE1, E1, E2, nE1a, nE1b, nE1c);

    not notES2(notE2, S3);
    not notE2a(nE2a, E1);
    not notE2b(nE2b, E3);
    not notE2c(nE2c, E4);
    and andE2(Ee2, notE2, nE2a, E2, nE2b, nE2c, E5);

    not notES3(notE3, S3);
    not notE3a(nE3a, E1);
    not notE3b(nE3b, E3);
    not notE3c(nE3c, E5);
    and andE3(Ee3, notE3, nE3a, E2, nE3a, E4, nE3c);

    not notES4(notE4, S3);
    not notE4a(nE4a, E2);
    not notE4b(nE4b, E3);
    not notE4c(nE4c, E5);
    and andE4(Ee4, notE4, E1, nE4a, nE4b, E4, nE4c);

    not notES5(notE5, S3);
    not notE5a(nE5a, E1);
    not notE5b(nE5b, E2);
    not notE5c(nE5c, E4);
    and andE5(Ee5, notE5, nE5a, nE5b, E3, nE5c, E5);

    not notES6(notE6, S3);
    not notE6a(nE6a, E1);
    not notE6b(nE6b, E4);
    not notE6c(nE6c, E5);
    and andE6(Ee6, notE6, nE6a, E2, E3, nE6b, nE6c);

    or orE(E, Ee1, Ee2, Ee3, Ee4, Ee5, Ee6);

    //SEGMENTO F
    not notFS1(notF1, S3);
    not notF1a(nF1a, E1);
    not notF1b(nF1b, E3);
    not notF1c(nF1c, E4);
    and andF1(F1, notF1, nF1a, E2, nF1b, nF1c, E5);

    not notFS2(notF2, S3);
    not notF2a(nF2a, E2);
    not notF2b(nF2b, E3);
    not notF2c(nF2c, E5);
    and andF2(F2, notF2, E1, nF2a, nF2b, E4, nF2c);

    not notFS3(notF3, S3);
    not notF3a(nF3a, E2);
    not notF3b(nF3b, E3);
    not notF3c(nF3c, E5);
    and andF3(F3, notF3, E1, nF3a, nF3b, E3, nF3c, E5);

    not notFS4(notF4, S3);
    not notF4a(nF4a, E1);
    not notF4b(nF4b, E2);
    not notF4c(nF4c, E5);
    and andF4(F4, notF4, nF4a, nF4b, E3, E4, nF4c);

    not notFS5(notF5, S3);
    not notF5a(nF5a, E1);
    not notF5b(nF5b, E2);
    not notF5c(nF5c, E4);
    and andF5(F5, notF5, nF5a, nF5b, E3, nF5c, E5);

    or orF(F, F1, F2, F3, F4, F5);

    //SEGMENTO G
    not notGS1(notG1, S3);
    not notG1a(nG1a, E1);
    not notG1b(nG1b, E2);
    not notG1c(nG1c, E3);
    and andG1(G1, notG1, nG1a, nG1b, nG1c, E4, E5);

    not notGS2(notG2, S3);
    not notG2a(nG2a, E2);
    not notG2b(nG2b, E3);
    not notG2c(nG2c, E5);
    and andG2(G2, notG2, E1, nG2a, nG2b, E4, nG2c);

    not notGS3(notG3, S3);
    not notG3a(nG3a, E1);
    not notG3b(nG3b, E2);
    not notG3c(nG3c, E4);
    and andG3(G3, notG3, nG3a, nG3b, E3, nG3c, E5);

    or orG(G, G1, G2, G3);

    //SEGMENTO P
    not notPS1(notP1, S3);
    not notP1a(nP1a, E3);
    not notP1b(nP1b, E4);
    not notP1c(nP1c, E5);
    and andP1(P1, notP1, E1, E2, nP1a, nP1b, nP1c);

    not notPS2(notP2, S3);
    not notP2a(nP2a, E1);
    not notP2b(nP2b, E3);
    not notP2c(nP2c, E4);
    and andP2(P2, notP2, nP2a, E2, nP2b, nP2c, E5);

    not notPS3(notP3, S3);
    not notP3a(nP3a, E2);
    not notP3b(nP3b, E3);
    not notP3c(nP3c, E4);
    and andP3(P3, notP3, E1, nP3a, nP3b, nP3c, E5);

    not notPS4(notP4, S3);
    not notP4a(nP4a, E1);
    not notP4b(nP4b, E2);
    not notP4c(nP4c, E3);
    and andP4(P4, notP4, nP4a, nP4b, nP4c, E4, E5);

    not notPS5(notP5, S3);
    not notP5a(nP5a, E1);
    not notP5b(nP5b, E3);
    not notP5c(nP5c, E5);
    and andP5(P5, notP5, nP5a, E2, nP5b, E4, nP5c);

    not notPS6(notP6, S3);
    not notP6a(nP6a, E2);
    not notP6b(nP6b, E3);
    not notP6c(nP6c, E5);
    and andP6(P6, notP6, E1, nP6a, nP6b, E4, nP6c);

    not notPS7(notP7, S3);
    not notP7a(nP7a, E1);
    not notP7b(nP7b, E2);
    not notP7c(nP7c, E5);
    and andP7(P7, notP7, nP7a, nP7b, E3, E4, nP7c);

    not notPS8(notP8, S3);
    not notP8a(nP8a, E1);
    not notP8b(nP8b, E2);
    not notP8c(nP8c, E4);
    and andP8(P8, notP8, nP8a, nP8b, E3, nP8c, E5);

    not notPS9(notP9, S3);
    not notP9a(nP9a, E1);
    not notP9b(nP9b, E4);
    not notP9c(nP9c, E5);
    and andP9(P9, notP9, nP9a, E2, E3, nP9b, nP9c);

    not notPS10(notP10, S3);
    not notP10a(nP10a, E2);
    not notP10b(nP10b, E4);
    not notP10c(nP10c, E5);
    and andP10(P10, notP10, E1, nP10a, E3, nP10b, nP10c);
	 
	 //SEGMENTO P erro
not notEp1a(nEp1a, E1);
    not notEp1b(nEp1b, E2);
    not notEp1c(nEp1c, E3);
    not notEp1d(nEp1d, E4);
    and andEp1(EP1, nEp1a, nEp1b, nEp1c, nEp1d);

    not notEp2a(nEp2a, E1);
    not notEp2b(nEp2b, E2);
    not notEp2c(nEp2c, E3);
    not notEp2d(nEp2d, E5);
    and andEp2(EP2, nEp2a, nEp2b, nEp2c, nEp2d);

    not notEp3a(nEp3a, E1);
    not notEp3b(nEp3b, E2);
    not notEp3c(nEp3c, E4);
    not notEp3d(nEp3d, E5);
    and andEp3(EP3, nEp3a, nEp3b, nEp3c, nEp3d);

    and andEp4(EP4, E3, E4, E5);

    not notEp5a(nEp5a, E1);
    not notEp5b(nEp5b, E3);
    not notEp5c(nEp5c, E4);
    not notEp5d(nEp5d, E5);
    and andEp5(EP5, nEp5a, nEp5b, nEp5c, nEp5d);

    and andEp6(EP6, E2, E4, E5);

    and andEp7(EP7, E2, E3, E5);

    and andEp8(EP8, E2, E3, E4);

    not notEp9a(nEp9a, E2);
    not notEp9b(nEp9b, E3);
    not notEp9c(nEp9c, E4);
    not notEp9d(nEp9d, E5);
    and andEp9(EP9, nEp9a, nEp9b, nEp9c, nEp9d);
    
    and andEp10(EP10, E1, E4, E5);

    and andEp11(EP11, E1, E3, E5);

    and andEp12(EP12, E1, E3, E4);

    and andEp13(EP13, E1, E2, E5);

    and andEp14(EP14, E1, E2, E4);

    and andEp15(EP15, E1, E2, E3);

    or orP(P, P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, EP1, EP2, EP3, EP4, EP5, EP6, EP7, EP8, EP9, EP10, EP11, EP12, EP13, EP14, EP15);
endmodule 
