module matrizColunas(E1, E2, E3, E4, E5, C1, C2, C3, C4, C5, enable);
    input E1, E2, E3, E4, E5, enable;
    output C1, C2, C3, C4, C5;

    //Fios da Coluna 1
    wire nC1a1, nC1b1, nC1c1, nC1a2, nC1b2, nC1c2, nC1a3, nC1b3, nC1c3, nC1a4, nC1b4, nC1c4, C1A, C1B, C1C, C1D;
    
    //Fios da Coluna 2
    wire nC2a1, nC2b1, nC2c1, nC2a2, nC2b2, nC2c2, nC2a3, nC2b3, nC2c3, nC2a4, nC2b4, nC2c4, C2A, C2B, C2C, C2D;

    //Fios da Coluna 3
    wire nC3a1, nC3b1, nC3c1, nC3a2, nC3b2, nC3c2, nC3a3, nC3b3, nC3c3, nC3a4, nC3b4, nC3c4, C3A, C3B, C3C, C3D, EC1, EC2, EC3, EC4, EC5, EC6, EC7, EC8, EC9, EC10, EC11, EC12, EC13, EC14, EC15, nEC3a1, nEC3b1, nEC3c1, nEC3d1, nEC3a2, nEC3b2, nEC3c2, nEC3d2, nEC3a3, nEC3b3, nEC3c3, nEC3d3, nEC3a5, nEC3b5, nEC3c5, nEC3d5, nEC3a9, nEC3b9, nEC3c9, nEC3d9;

    //Fios da Coluna 4
    wire nC4a1, nC4b1, nC4c1, nC4a2, nC4b2, nC4c2, nC4a3, nC4b3, nC4c3, nC4a4, nC4b4, nC4c4, C4A, C4C, C4B, C4D;

    //Fios da Coluna 5
    wire nC5a1, nC5b1, nC5c1, nC5a2, nC5b2, nC5c2, nC5a3, nC5b3, nC5c3, nC5a4, nC5b4, nC5c4, C5A, C5B, C5C, C5D;

    wire F0;

    or OrS3(S3, A, B, C);
    
    //Coluna 1
    not NotC1a0(nC1a1, E3);
    not NotC1b0(nC1b1, E4);
    not NotC1c0(nC1c1, E5);
    and AndC1A(C1A, enable, E1, E2, nC1a1, nC1b1, nC1c1);

    not NotC1a1(nC1a2, E2);
    not NotC1b1(nC1b2, E3);
    not NotC1c1(nC1c2, E4);
    and AndC1B(C1B, enable, E1, nC1a2, nC1b2, nC1c2, E5);

    not NotC1a2(nC1a3, E2);
    not NotC1b2(nC1b3, E3);
    not NotC1c2(nC1c3, E5);
    and AndC1C(C1C, enable, E1, nC1a3, nC1b3, E4, nC1c3);

    not NotC1a3(nC1a4, E2);
    not NotC1b3(nC1b4, E4);
    not NotC1c3(nC1c4, E5);
    and AndC1D(C1D, enable, E1, nC1a4, E3, nC1b4, nC1c4);

    or OrC1(C1, C1A, C1B, C1C, C1D);


    //Coluna 2
    not NotC2a1(nC2a1, E3);
    not NotC2b1(nC2b1, E4);
    not NotC2c1(nC2c1, E5);
    and AndC2A(C2A, enable, E1, E2, nC2a1, nC2b1, nC2c1); 

    not NotC2a2(nC2a2, E1);
    not NotC2b2(nC2b2, E3);
    not NotC2c2(nC2c2, E4);
    and AndC2B(C2B, enable, nC2a2, E2, nC2b2, nC2c2, E5); 

    not NotC2a3(nC2a3, E1);
    not NotC2b3(nC2b3, E3);
    not Notc2c3(nC2c3, E5);
    and AndC2C(C2C, enable, nC2a3, E2, nC2b3, E4, nC2c3);

    not NotC2a4(nC2a4, E1);
    not NotC2b4(nC2b4, E4);
    not NotC2c4(nC2c4, E5);
    and AndC2D(C2D, enable, nC2a4, E2, E3, nC2b4, nC2c4);

    or OrC2(C2, C2A, C2B, C2C, C2D);

    //Coluna 3
    not NotC3a1(nC3a1, E1);
    not NotC3b1(nC3b1, E2);
    not NotC3c1(nC3c1, E5);
    and AndC3A(C3A, enable, nC3a1, nC3b1, E3, E4, nC3c1);

    not NotC3a2(nC3a2, E1);
    not NotC3b2(nC3b2, E2);
    not NotC3c2(nC3c2, E4);
    and AndC3B(C3B, enable, nC3a2, nC3b2, E3, nC3c2, E5);

    not NotC3a3(nC3a3, E1);
    not NotC3b3(nC3b3, E4);
    not NotC3c3(nC3c3, E5);
    and AndC3C(C3C, enable, nC3a3, nC3b3, E3, E4, nC3c3);
	 
	// Coluna 3 erro
    not NotC3a4(nEC3a4, E2);
    not NotC3b4(nEC3b4, E4);
    not NotC3c4(nEC3c4, E5);
    and AndC3D(C3D, enable, E1, nEC3a4, E3, nEC3b4, nEC3c4);
	 
	 not notC3a1(nEC3a1, E2);
    not notC3b1(nEC3b1, E3);
    not notC3c1(nEC3c1, E4);
    not notC3d1(nEC3d1, E5);
    and andC3A(EC1, enable, nEC3a1, nEC3b1, nEC3c1, nEC3d1);

    not notC3a2(nEC3a2, E1);
    not notC3b2(nEC3b2, E3);
    not notC3c2(nEC3c2, E4);
    not notC3d2(nEC3d2, E5);
    and andC3B(EC2, enable, nEC3a2, nEC3b2, nEC3c2, nEC3d2);
    
    not notC3a3(nEC3a3, E1);
    not notC3b3(nEC3b3, E2);
    not notC3c3(nEC3c3, E4);
    not notC3d3(nEC3d3, E5);
    and andC3C(EC3, enable, nEC3a3, nEC3b3, nEC3c3, nEC3d3);

    and andC3D(EC4, E1, E2, E3);

    not notC3a5(nEC3a5, E1);
    not notC3b5(nEC3b5, E2);
    not notC3c5(nEC3c5, E3);
    not notC3d5(nEC3d5, E5);
    and andC3E(EC5, enable, nEC3a5, nEC3b5, nEC3c5, nEC3d5);

    and andC3F(EC6, enable, E1, E2, E4);

    and andC3G(EC7, enable, E1, E3, E4);

    and andC3H(EC8, enable, E2, E3, E4);

    not notC3a9(nEC3a9, E1);
    not notC3b9(nEC3b9, E2);
    not notC3c9(nEC3c9, E3);
    not notC3D9(nEC3d9, E4);
    and andC3I(EC9, enable, nEC3a9, nEC3b9, nEC3c9, nEC3d9);

    and andC3J(EC10, enable, E1, E2, E5);

    and andC3K(EC11, enable, E1, E3, E5);

    and andC3L(EC12, enable, E2, E3, E5);

    and andC3M(EC13, enable, E1, E4, E5);

    and andC3N(EC14, enable, E2, E4, E5);

    and andC3O(EC15, enable, E3, E4, E5);

    or OrC3Erro(C3Erro, EC1, EC2, EC3, EC4, EC5, EC6, EC7, EC8, EC9, EC10, EC11, EC12, EC13, EC14, EC15);
    or OrC3Normal(C3Normal, C3A, C3B, C3C, C3D);
	or OrC3(C3, C3Erro, C3Normal);

    //Coluna 4
    not NotC4a1(nC4a1, E1);
    not NotC4b1(nC4b1, E2);
    not NotC4c1(nC4c1, E3);
    and AndC4A(C4A, enable, nC4a1, nC4b1, nC4c1, E4, E5); 

    not NotC4a2(nC4a2, E1);
    not NotC4b2(nC4b2, E3);
    not NotC4c2(nC4c2, E5);
    and AndC4B(C4B, enable, nC4a2, E2, nC4b2, E4, nC4c2); 

    not NotC4a3(nC4a3, E2);
    not NotC4b3(nC4b3, E3);
    not NotC4c3(nC4c3, E5);
    and AndC4C(C4C, enable, E1, nC4a3, nC4b3, E4, nC4c3); 

    not NotC4a4(nC4a4, E1);
    not NotC4b4(nC4b4, E2);
    not NotC4c4(nC4c4, E5);
    and AndC4D(C4D, enable, nC4a4, nC4b4, E3, E4, nC4c4); 

    or orC4(C4, C4A, C4C, C4B, C4D);

    //Coluna 5
    not NotC5a1(nC5a1, E1);
    not NotC5b1(nC5b1, E3);
    not NotC5c1(nC5c1, E4);
    and AndC5A(C5A, enable, nC5a1, E2, nC5b1, nC5c1, E5); 

    not NotC5a2(nC5a2, E2);
    not NotC5b2(nC5b2, E3);
    not NotC5c2(nC5c2, E4);
    and andC5B(C5B, enable, E1, nC5a2, nC5b2, nC5c2, E5);

    not NotC5a3(nC5a3, E1);
    not NotC5b3(nC5b3, E2);
    not NotC5c3(nC5c3, E3);
    and AndC5C(C5C, enable, nC5a3, nC5b3, nC5c3, E4, E5);

    not NotC5a4(nC5a4, E1);
    not NotC5b4(nC5b4, E2);
    not NotC5c4(nC5c4, E4);
    and AndC5D(C5D, enable, nC5a4, nC5b4, E3, nC5c4, E5);

    or orC5(C5, C5A, C5B, C5C, C5D);
endmodule 
