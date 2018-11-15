function roda_e_translada = roda_e_translada(P, alpha, n, origem)
  i = 1;
  mostra_figura(P);
  while i <= n
    pause(01);
    A = rotacao(P, alpha * i);
    A = translacao(P, alpha * i, origem);
    mostra_figura(A);
    i++
  endwhile;
endfunction;

