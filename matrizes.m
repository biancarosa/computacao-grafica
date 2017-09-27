# Computação Gráfica (IME 04 - 10842)
# Bianca Rosa de Mendonça
# Introdução ao Octave/Matlab
# Matrizes

A = [16 3 2 13 19; 5 10 11 8 3; 6 7 9 12 8; 4 15 14 1 13; 1 2 3 4 5]

A(1,1) + A(1,4) + A(4,1) + A(4,4)

A
A(1,3) + A(3,1)
A(1: 3,3)
A(1:4,2:4)
A(:, 3)
A(1:3, :)

B = [16 3 2; 13 19 10; 11 8 3; 6 9 12; 8 4 15;]
A(:, [3 5 2]) = B(:, 1:3)

zeros(5)

Z = zeros(5,5)
Z

ones(5)

O = ones(3,5)
O

A * Z
A .* Z
B * 2
B / 2
B * (O * 2)
A / 3

size(A)
size(B)

E = eye(5)

IA = E * A

IA