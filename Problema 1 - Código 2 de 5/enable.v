module enable(S0, S1, S2, S3);
    input S0, S1, S2;
    output S3;

    or OrS(S3, S0, S1, S2);
endmodule
