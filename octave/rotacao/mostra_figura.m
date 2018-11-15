function mostra_figura(X)
  clf;
  axis_limit = max(max(max(X), min(X))) * 2;
  axis([-axis_limit, axis_limit, -axis_limit, axis_limit], "square");
  MP = X';
  sz = size(MP);
  for i = 1:sz(1)
    nxt = mod(i,sz(1)) + 1
    line([MP(i,1) MP(nxt,1)], [MP(i,2) MP(nxt,2)], "color","b");
  endfor
endfunction