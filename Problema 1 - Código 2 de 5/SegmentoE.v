module SegmentoE(E1, E2, E3, E4, E5, EE5);
    input E1, E2, E3, E4, E5;
    output EE5;

    wire Ee1, Ee2, Ee3, Ee4, nE1a, nE1b, nE1c, nE2a, nE2b, nE2c, nE3a, nE3b, nE3c, nE4a, nE4b, nE4c, notE1, notE2, notE3, notE4;

    not notES1(notE1, S3);
    not notE1a(nE1a, E2);
    not notE1b(nE1b, E3);
    not notE1c(nE1c, E4);
    and andE1(Ee1, notE1, E1, nE1a, nE1b, nE1c, E5);

    not notES2(notE2, S3);
    not notE2a(nE2a, E1);
    not notE2b(nE2b, E2);
    not notE2c(nE2c, E3);
    and andE2(Ee2, notE2, nE1a, nE1b, nE1c, E4, E5);

    not notES3(notE3, S3);
    not notE3a(nE3a, E1);
    not notE3b(nE3b, E2);
    not notE3c(nE3c, E5);
    and andE3(Ee3, notE3, nE1a, nE2a, E3, E4, nE1c);

    not notES4(notE4, S3);
    not notE4a(nE4a, E2);
    not notE4b(nE4b, E4);
    not notE4c(nE5c, E5);
    and andE4(Ee4, notE4, E1, nE4a, E3, nE4b, nE4c);
	 
	or orE(EE5, Ee1, Ee2, Ee3, Ee4);
endmodule