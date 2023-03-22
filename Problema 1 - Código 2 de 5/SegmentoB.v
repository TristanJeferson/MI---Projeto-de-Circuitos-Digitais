module SegmentoB(E1, E2, E3, E4, E5, B9);
    input E1, E2, E3, E4, E5;
    output B9;

    wire B1, B2, B3, B4, B5, B6, B7, B8, B9, SB, nB1a, nB1b, nB1c, nB2a, nB2b, nB2c, nB3a, nB3b, nB3c, nB4a, nB4b, nB4c, nB5a, nB5b, nB5c, nB6a, nB6b, nB6c, nB7a, nB7b, nB7c, nB8a, nB8b, nB8c, notB1, notB2, notB3, notB4, notB5, notB6, notB7, notB8;

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
endmodule