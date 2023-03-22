module SegmentoF(E1, E2, E3, E4, E5, F7);
    input E1, E2, E3, E4, E5;
    output F7;

    wire F1, F2, F3, F4, F5, F6, nF1a, nF1b, nF1c, nF2a, nF2b, nF2c, nF3a, nF3b, nF3c, nF4a, nF4b, nF4c, nF5a, nF5b, nF5c, nF6a, nF6b, nF6c, notF1, notF2, notF3, notF4, notF5, notF6;

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
endmodule
