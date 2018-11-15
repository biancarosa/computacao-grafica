alpha = pi / 4;

P = [0 0 1 1; 0 1 1 0; 1 1 1 1];
figure;
mostra_figura(P);
P = rotacao(P, alpha);
figure;
mostra_figura(P);