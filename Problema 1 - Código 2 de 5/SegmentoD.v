module SegmentoD(E1, E2, E3, E4, E5, D);
    input E1, E2, E3, E4, E5;
    output D;

    wire D1, D2, D3, nD1a, nD1b, nD1c;


    not notD1a(nD1a, E1);
    not notD1b(nD1b, E3);
    not notD1c(nD1c, E5);
    and andD1(D1, nD1a, E2, nD1b, E4 nD1c);
    
    not notD2a(nD2a, E2);
    not notD2b(nD2b, E3);
    not notD2c(nD2c, E5);
    and andD2(D2, E1, nD2a, nD2b, E4 nD2c);
    
    not notD3a(nD3a, E1);
    not notD3b(nD3b, E2);
    not notD3c(nD3c, E4);
    and andD3(D3, nD3a, nD3b, E3, nD3c, E5);
    
    or orD(D, D1, D2, D3);
endmodule
