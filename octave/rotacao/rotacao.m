function retval = rotacao(X, Y)
  P0 = X(1,:)';
  P1 = X(2,:)';
  P2 = X(3,:)';
  P3 = X(4,:)';
  R = [cos(Y) -sin(Y) 0; sin(Y) cos(Y) 0; 0 0 1];
  T = [1 0 0; 0 1 0; -1.5 -1.5 1];
  Ti = inv(T);
  Tf = Ti * R * T;
  P01 = Tf * P0;
  P11 = Tf * P1;
  P21 = Tf * P2;
  P31 = Tf * P3;
  retval = [P01'; P11'; P21'; P31'];
endfunction


# T = [1 0 0; 0 1 0; tx ty 1];
# centro do objeto = min() + ((min() - max() / 2)
# tx - negativo das coordenadas do centro
# ty - negativo das coordenadas do centro
  
#  T = [1 0 0; 0 1 0; -1.5 -1.5 1];
#  alpha = pi / 4;
#  R = [cos(alpha) -sin(alpha) 0; sin(alpha) cos(alpha) 0; 0 0 1];
#  Ti = inv(T);
#  Tf = Ti * R * T;
#  P01 = Tf * P0;
#  P11 = Tf * P1;
#  P21 = Tf * P2;
#  P31 = Tf * P3;
#  retval = [P01'; P11'; P21'; P31'];

# M = zeros(size(P,2)),
# IF H(1) != 0, DELETE(H), END
# H(1) = LINE( ),
# H2 = 
# DRAW NOW,
# PAUSE (01)

# R = [cos alpha -sen alpha 0; cos alpha 0; 0 0 1]
