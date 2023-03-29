module desabilitaDisp(S3, ntS3, desabDisp3, desabDisp4);

input S3, ntS3;
output desabDisp3, desabDisp4;

not nS3(notS3, ntS3);
or orDisp3(desabDisp3, S3, notS3);

or orDisp4(desabDisp4, S3, notS3);

endmodule 
