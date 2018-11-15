P0 = [1 1 1];
P1 = [2 1 1];
P2 = [2 2 2];
P3 = [1 2 1];

MP = [P0; P1; P2; P3];

alpha = pi / 4;

mostra_figura(MP);
pause(01);
A = rotacao(MP, alpha);
mostra_figura(A);
pause(01);
B = rotacao(A, alpha);
mostra_figura(B);
pause(01);
C = rotacao(B, alpha);
mostra_figura(C);
pause(01);