function roda = roda(P, alpha, n)
  i = 1;
  mostra_figura(P);
  while i <= n
    pause(01);
    A = rotacao(P, alpha * i);
    mostra_figura(A);
    i++;
  endwhile;
endfunction;

