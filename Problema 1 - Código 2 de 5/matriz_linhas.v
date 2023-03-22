module matrizLinhas(A, B, C, S0, L1, L2, L3, L4, L5, L6, L7);
    input A, B, C;
    output S0, L1, L2, L3, L4, L5, L6, L7;

    wire n1, n2, n3a, n3b, n4a, n4b, n5a, n5b, n6a, n6b, n7a, n7b, n7c;



    //L1
    not Not1(n1, C);
    and And1(L1, A, B, n1);

    //L2
    not Not2(n2, B);
    and L2(L2, A, n2, C);

    //L3
    not Not3a(n3a, B);
    not Not3b(n3b, C);
    and And3(L3, A, n3a, n3b);

    //L4
    not Not4a(n4a, A);
    not Not4b(n4b, C);
    and L4(L4, n4a, B, n4c);

    //L5
    not Not5a(n5a, A);
    not Not5b(n5b, C);
    and And5(L5, n5a, B, n5b);

    //L6
    not Not6a(n6a, A);
    not Not6b(n6b, B);
    and L6(L6, n6a, n6b, C);

    //L7
    not Not7a(n7a, A);
    not Not7b(n7b, B);
    not Not7c(n7c, C);
    and And7(L7, n7a, n7b, n7c);
endmodule
