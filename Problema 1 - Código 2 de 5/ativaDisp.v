module ativaDisp(S3, EN, outDisp1, outDisp2);

input S3, EN;
output outDisp1, outDisp2;

not notS3(nS3, S3);
not notEN(nEN, EN);

and andDisp1(outDisp1, nS3, nS3);

and andDisp2(outDisp2, nS3, nEN);

endmodule 
