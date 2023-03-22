module SegmentoA(E1, E2, E3, E4, E5, A9);
    input E1, E2, E3, E4, E5;
    output A9;

    wire A1, A2, A3, A4, A5, A6, A7, A8, nA1a, nA1b, nA1c, nA2a, nA2b, nA2c, nA3a, nA3b, nA3c, nA4a, nA4b, nA4c, nA5a, nA5b, nA5c, nA6a, nA6b, nA6c, nA7a, nA7b, nA7c, nA8a, nA8b, nA8c, notA1, notA2, notA3, notA4, notA5, notA6, notA7, notA8;

    nnot NotAS1(notA1, S3);
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
    endmodule
