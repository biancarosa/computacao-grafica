P0 = [1 1 1]';
P1 = [2 1 1]';
P2 = [2 2 2]';
P3 = [1 2 1]';
line([P0(1) P1(1)], [P0(2) P1(2)]);
line([P1(1) P2(1)], [P1(2) P2(2)]);
line([P2(1) P3(1)], [P2(2) P3(2)]);
line([P3(1) P0(1)], [P3(2) P0(2)]);
# T = [1 0 0; 0 1 0; tx ty 1];
T = [1 0 0; 0 1 0; -1.5 -1.5 1];
# centro do objetivo = min() + ((min() - max() / 2)
# tx - negativo das coordenadas do centro
# ty - negativo das coordenadas do centro
alpha = pi / 4;
R = [cos(alpha) -sin(alpha) 0; sin(alpha) cos(alpha) 0; 0 0 1];
Ti = inv(T);
Tf = Ti * R * T;
P01 = Tf * P0;
P11 = Tf * P1;
P21 = Tf * P2;
P31 = Tf * P3;
line([P01(1) P11(1)], [P01(2) P11(2)]);
line([P11(1) P21(1)], [P11(2) P21(2)]);
line([P21(1) P31(1)], [P21(2) P31(2)]);
line([P31(1) P01(1)], [P31(2) P01(2)]);

# primeiro levar pra origem
# depois esticar
# depois rotacionar
# depois levar de volta p origem
