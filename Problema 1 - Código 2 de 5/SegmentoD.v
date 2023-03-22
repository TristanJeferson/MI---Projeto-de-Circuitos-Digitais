module SegmentoD(E1, E2, E3, E4, E5, D8);
    input E1, E2, E3, E4, E5;
    output D8;
    
    wire D1, D2, D3, D4, D5, D6, D7, nD1a, nD1b, nD1c, nD2a, nD2b, nD2c, nD3a, nD3b, nD3c, nD4a, nD4b, nD4c, nD5a, nD5b, nD5c, nD6a, nD6b, nD6c, nD7a, nD7b, nD7c, notD1, notD2, notD3, notD4, notD5, notD6, notD7;

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
endmodule
