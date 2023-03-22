module SegmentoC(E1, E2, E3, E4, E5, C10);
    input E1, E2, E3, E4, E5;
    output C10;

    wire C1, C2, C3, C4, C5, C6, C7, C8, C9, nC1a, nC1b, nC1c, nC2a, nC2b, nC2c, nC3a, nC3b, nC3c, nC4a, nC4b, nC4c, nC5a, nC5b, nC5c, nC6a, nC6b, nC6c, nC7a, nC7b, nC7c, nC8a, nC8b, nC8c, nC9a, nC9b, nC9c, notC1, notC2, notC3, notC4, notC5, notC6, notC7, notC8, notC9;

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
endmodule