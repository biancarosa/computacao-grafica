function rotacao(MP)
  P0 = MP(1,:)';
  P1 = MP(2,:)';
  P2 = MP(3,:)';
  P3 = MP(4,:)';
  # T = [1 0 0; 0 1 0; tx ty 1];
  # centro do objeto = min() + ((min() - max() / 2)
  # tx - negativo das coordenadas do centro
  # ty - negativo das coordenadas do centro
  T = [1 0 0; 0 1 0; tx ty 1];
  alpha = pi / 4;
  R = [cos(alpha) -sin(alpha) 0; sin(alpha) cos(alpha) 0; 0 0 1];
  Ti = inv(T);
  Tf = Ti * R * T;
  P01 = Tf * P0;
  P11 = Tf * P1;
  P21 = Tf * P2;
  P31 = Tf * P3;
  figure;
  axis([-4, 4, -4, 4], "square");
  line([P01(1) P11(1)], [P01(2) P11(2)], "color","b");
  line([P11(1) P21(1)], [P11(2) P21(2)], "color","b");
  line([P21(1) P31(1)], [P21(2) P31(2)], "color","b");
  line([P31(1) P01(1)], [P31(2) P01(2)], "color","b");
endfunction

# M = zeros(size(P,2)),
# IF H(1) != 0, DELETE(H), END
# H(1) = LINE( ),
# H2 = 
# DRAW NOW,
# PAUSE (01)

# R = [cos alpha -sen alpha 0; cos alpha 0; 0 0 1]
