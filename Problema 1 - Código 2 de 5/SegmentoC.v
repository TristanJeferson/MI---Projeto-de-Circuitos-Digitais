module SegmentoC(E1, E2, E3, E4, E5, C);
    input E1, E2, E3, E4, E5;
    output C;

    wires nC1a, nC1b, nC1c;


    not notC1a(nC1a, E1);
    not notC1b(nC1b, E2);
    not notC1c(nC1c, E5);
    and andC(C, nC1a, nC1b, E3, E4, nC1c);
    
endmodule
