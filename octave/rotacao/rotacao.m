function retval = rotacao(P, ang)
  R = [cos(ang) -sin(ang) 0; sin(ang) cos(ang) 0; 0 0 1];
  Cx = min(P(1,:)) + ((max(P(1,:)) - min(P(1,:))) / 2);
;  Cy = min(P(2,:)) + ((max(P(2,:)) - min(P(2,:))) / 2)
  T = [1 0 -Cx; 0 1 -Cy; 0 0 1];
  Ti = inv(T);
  Tf = Ti * R * T;
  retval = Tf * P;
endfunction;
