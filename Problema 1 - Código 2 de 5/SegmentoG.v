module SegmentoG(E1, E2, E3, E4, E5, G8);
    input E1, E2, E3, E4, E5;
    output G8;

    wire G1, G2, G3, G4, G5, G6, G7, nG1a, nG1b, nG1c, nG2a, nG2b, nG2c, nG3a, nG3b, nG3c, nG4a, nG4b, nG4c, nG5a, nG5b, nG5c, nG6a, nG6b, nG6c, nG7a, nG7b, nG7c, notG1, notG2, notG3, notG4, notG5, notG6, notG7;

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