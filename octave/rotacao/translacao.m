function retval = translacao(P, ang, origem)
  Cx = origem(1);
  Cy = origem(2);
  R = [cos(ang) -sin(ang) 0; sin(ang) cos(ang) 0; 0 0 1];
  T = [1 0 -Cx; 0 1 -Cy; 0 0 1];
  Ti = inv(T);
  Tf = Ti * R * T;
  retval = Tf * P;
endfunction;
