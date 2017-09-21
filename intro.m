# Computação Gráfica (IME 04 - 10842)
# Introdução ao Octave/Matlab
RED = [ 0 1 0; 1 1 0; 0 0 1];
GREEN = [ 0 0.2 0.3; 0.5 0.75 0.2; 1 0 0];
BLUE = [ 0 0 1; 0.2 0.3 0.7; 1 0 0.25];

RED
GREEN
BLUE

RGB = cat (3, RED, GREEN, BLUE)

RGB

RGB(:,:,1)
RGB(:,:,2)
RGB(:,:,3)

imshow (RGB)

MAP = [0.2 0.3 0.75; 0.21 0.57 0.54; 0.54 1 0];
X = [0 1 2; 3 2 1];

imshow(X, MAP)

X = [0 1 0.33; 0.75 0 1; 0 1 0.25];
imshow(X)