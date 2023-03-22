//IMPORTAR CÓDIGO DO DISPLAY 7 SEGMENTOS
module displayErro(Erro, A, D, E, F, G);
    input Erro;
    output A, D, E, F, G, somaD;

    or Or0(somaD, A9, B9, C10, D8, Ee5, F7, G8);
    or Or1(Erro, S3, somaD);

    not notA(A, Erro);
    not notD(D, Erro);
    not notE(E, Erro);
    not notF(F, Erro);
    not notG(G, Erro);
endmodule