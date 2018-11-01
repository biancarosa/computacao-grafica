P0 = [1 1 1];
P1 = [2 1 1];
P2 = [2 2 2];
P3 = [1 2 1];

MP = [P0; P1; P2; P3];

figure;
axis([-4, 4, -4, 4], "square");
line([MP(1,1) MP(2,1)], [MP(1,2) MP(2,2)], "color","b");
line([MP(2,1) MP(3,1)], [MP(2,2) MP(3,2)], "color","b");
line([MP(3,1) MP(4,1)], [MP(3,2) MP(4,2)], "color","b");
line([MP(4,1) MP(1,1)], [MP(4,2) MP(1,2)], "color","b");

rotacao(MP);
rotacao(MP);
