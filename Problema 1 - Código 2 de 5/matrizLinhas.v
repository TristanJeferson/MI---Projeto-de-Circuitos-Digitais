module matrizLinhas(A, B, C, L1, L2, L3, L4, L5, L6, L7, E1, E2, E3, E4, E5);
    input A, B, C, E1, E2, E3, E4, E5;
    output L1, L2, L3, L4, L5, L6, L7;

    wire n1, n2, n3a, n3b, n4a, n4b, n5a, n5b, n6a, n6b, n7a, n7b, n7c, EL1, EL2, EL3, EL4, EL5, EL6, EL7, EL8, EL9, EL10, EL11, EL12, EL13, EL14, EL15, nL6a1, nL6b1, nL6c1, nL6d1, nL6a2, nL6b2, nL6c2, nL6d2,  nL6a3, nL6b3, nL6c3, nL6d3,  nL6a5, nL6b5, nL6c5, nL6d5, nL6a9, nL6b9, nL6c9, nL6d9;

    //Linha 1
    not Not1(n1, C);
    or OrL1(L1, A, B, n1);

    //Linha 2
    not Not2(n2, B);
    or OrL2(L2, A, n2, C);

    //Linha 3
    not Not3a(n3a, B);
    not Not3b(n3b, C);
    or OrL3(L3, A, n3a, n3b);

    //Linha 4
    not Not4a(n4a, A);
    not Not4b(n4b, C);
    or OrL4(L4, n4a, B, n4c);

    //Linha 5
    not Not5a(n5a, A);
    not Not5b(n5b, C);
    or OrL5(L5, n5a, B, n5b);

    //Linha 6
    not Not6a(n6a, A);
    not Not6b(n6b, B);
	 
	 //Linha 6 erro
    not notL6a1(nL6a1, E2);
    not notL6b1(nL6b1, E3);
    not notL6c1(nL6c1, E4);
    not notL6d1(nL6d1, E5);
    and andL6A(EL1, nL6a1, nL6b1, nL6c1, nL6d1);

    not notL6a2(nL6a2, E1);
    not notL6b2(nL6b2, E3);
    not notL6c2(nL6c2, E4);
    not notL6d2(nL6d2, E5);
    and andL6B(EL2, nL6a2, nL6b2, nL6c2, nL6d2);
    
    not notL6a3(nL6a3, E1);
    not notL6b3(nL6b3, E2);
    not notL6c3(nL6c3, E4);
    not notL6d3(nL6d3, E5);
    and andL6C(EL3, nL6a3, nL6b3, nL6c3, nL6d3);

    and andL6D(EL4, E1, E2, E3);

    not notL6a5(nL6a5, E1);
    not notL6b5(nL6b5, E2);
    not notL6c5(nL6c5, E3);
    not notL6d5(nL6d5, E5);
    and andL6E(EL5, nL6a5, nL6b5, nL6c5, nL6d5);

    and andL6F(EL6, E1, E2, E4);

    and andL6G(EL7, E1, E3, E4);

    and andL6H(EL8, E2, E3, E4);

    not notL6a9(nL6a9, E1);
    not notL6b9(nL6b9, E2);
    not notL6c9(nL6c9, E3);
    not notL6d9(nL6d9, E4);
    and andL6I(EL9, nL6a9, nL6b9, nL6c9, nL6d9);

    and andL6J(EL10, E1, E2, E5);

    and andL6K(EL11, E1, E3, E5);

    and andL6L(EL12, E2, E3, E5);

    and andL6M(EL13, E1, E4, E5);

    and andL6N(EL14, E2, E4, E5);

    and andL6O(EL15, E3, E4, E5);

    or OrL6E(L6Erro, EL1, EL2, EL3, EL4, EL5, EL6, EL7, EL8, EL9, EL10, EL11, EL12, EL13, EL14, EL15);
    or OrL6N(L6Normal, n6a, n6b, C);
	 or OrL6(L6, L6Erro, L6Normal);
	 
    //Linha 7
    not Not7a(n7a, A);
    not Not7b(n7b, B);
    not Not7c(n7c, C);
    or OrL7(L7, n7a, n7b, n7c);
endmodule 
