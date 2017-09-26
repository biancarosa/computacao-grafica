# Computação Gráfica (IME 04 - 10842)
# Introdução ao Octave/Matlab
RED = [ 0 1 0; 1 1 0; 0 0 1];
GREEN = [ 0 0.2 0.3; 0.5 0.75 0.2; 1 0 0];
BLUE = [ 0 0 1; 0.2 0.3 0.7; 1 0 0.25];

RED;
GREEN;
BLUE;

RGB = cat (3, RED, GREEN, BLUE);

RGB;

RGB(:,:,1);
RGB(:,:,2);
RGB(:,:,3);

imshow (RGB);

MAP = [0.2 0.3 0.75; 0.21 0.57 0.54; 0.54 1 0];
X = [0 1 2; 3 2 1];

imshow(X, MAP);

# Tons de cinza
X = [0 1 0.33; 0.75 0 1; 0 1 0.25];
imshow(X);
imshow (X, [0 1]);
imshow (X, [0 2]);
imshow (X, [0 16]);

# Imagem binaria
X = [0 1 0; 0 0 1; 0 1 0];
imshow(X);

# Leitura de imagens
arara_full = imread("imagens/arara_full.png");
arara_full_256 = imread("imagens/arara_full_256.bmp");
whos("arara*");
imshow(arara_full);
imshow(arara_full_256);

# Escrita de imagens
imwrite(arara_full, "imagens/arara_full.bmp");
imwrite(arara_full_256, "imagens/arara_full_256.png");
arara_full_bmp = imread("imagens/arara_full.bmp");
arara_full_256_png = imread("imagens/arara_full_256.png");
imshow(arara_full);
imshow(arara_full_256);

# Conversao de imagens
[X, MAP] = rgb2ind(arara_full);
imshow(X,MAP);

# Criando figures
figure
imshow(X,MAP)
figure
imshow(RGB)
