# Computação Gráfica (IME 04 - 10842)
# Bianca Rosa de Mendonça
# Introdução ao Octave/Matlab
# Segmentação de Imagens

pkg load image;
img = imread("imagens/Ferrari.jpg");

# Conversão para imagem P&B
img = rgb2gray(img);
img = im2double(img);

sobel_horizontal = [-1 -2 -1; 0 0 0; 1 2 1];
img_sh = imfilter(img, sobel_horizontal); #Gx
figure;
title("Sobel")
subplot(2, 1, 1);
imshow(img_sh);
title("Sobel Horizontal");

sobel_vertical = [-1 0 1; -2 0 2; -1 0 1];
img_sv = imfilter(img, sobel_vertical);
subplot(2, 1, 2);
imshow(img_sv); #Gy
title("Sobel Vertical");
print -djpg geradas/segmentacao1.jpg

figure;
sobel_diag1 = [ 0 1 2; -1 0 1; -2 -1 0];
img_sa1 = imfilter(img, sobel_diag1);
subplot(2, 1, 1);
imshow(img_sa1);
title("Sobel Diagonal 1");

sobel_diag2 = [ -2 -1 0; -1 0 1; 0 1 2];
img_sa2 = imfilter(img, sobel_diag2);
subplot(2, 1, 2);
imshow(img_sa2);
title("Sobel Diagonal 2");
print -djpg geradas/segmentacao2.jpg

figure;
subplot(2, 1, 1);
shv = img_sh + img_sv;
imshow(shv);
title("Sobel Horizontal + Vertical")

filtered = shv - 0.25;
subplot(2, 1, 2);
imshow(filtered);
title("Sobel Horizontal + Vertical")
print -djpg geradas/segmentacao3.jpg


magnitude = abs(img_sh) + abs(img_sv);
angulo = atan(img_sv./img_sh);
imshow(angulo);
print -djpg geradas/segmentacao5.jpg

# Pintar bordas de acordo c/ angulo
angulo_ind = angulo;

# Amarelo: 
# π/6 > ângulo >  -π/6 
# 30 > angulo > -30
angulo_ind(find(angulo > -pi/6)) = 1;o

# Vermelho: 
# -π/6 > ângulo > -π/3
# -30 > angulo > -60
angulo_ind(find(angulo > -pi/3)) = 3;


# Verde: 
# π/3 > ângulo > π/6
# 60 > angulo > 30
angulo_ind(find(angulo > pi/6)) = 2;

# Azul:
# -π/3 > ângulo > π/3
# -60 > angulo > 60
angulo_ind(find(angulo > pi/3)) = 4;

MAP = [0 0 0; 1 1 0; 0 1 0; 1 0 0;  0 0 1];
imshow(angulo_ind, MAP);
print -djpg geradas/segmentacao6.jpg

shv = img_sh + img_sv;
shv(find(shv<0.2)) = 0;
shv(find(shv>0.2)) = 1;
imshow(shv);

imshow(angulo_ind .* shv, MAP);
print -djpg geradas/segmentacao7.jpg

figure;
title("Sobel - funcao edge");
subplot(1, 1, 1);
edg = edge(img, "Sobel");
imshow(edg);
print -djpg geradas/segmentacao8.jpg

figure;
title("Canny - funcao edge");
edg = edge(img, "Canny");
imshow(edg);
print -djpg geradas/segmentacao9.jpg

figure;
title("Kirsch - funcao edge");
edg = edge(img, "Kirsch");
imshow(edg);
print -djpg geradas/segmentacao10.jpg

figure;
title("Lindeberg - funcao edge");
edg = edge(img, "Lindeberg");
imshow(edg);
print -djpg geradas/segmentacao11.jpg

figure;
title("LoG - funcao edge");
edg = edge(img, "LoG");
imshow(edg);
print -djpg geradas/segmentacao12.jpg

figure;
title("Roberts - funcao edge");
edg = edge(img, "Roberts");
imshow(edg);
print -djpg geradas/segmentacao13.jpg

figure;
title("zerocross - funcao edge");
edg = edge(img, "zerocross");
imshow(edg);
print -djpg geradas/segmentacao14.jpg

figure;
title("Andy - funcao edge");
edg = edge(img, "Andy");
imshow(edg);
print -djpg geradas/segmentacao15.jpg


# NDVI
nir = imread("imagens/laranjeiras_nir.tif");
red = imread("imagens/laranjeiras_r.tif");
blue = imread("imagens/laranjeiras_b.tif");
green = imread("imagens/laranjeiras_g.tif");
nir = im2double(nir);
red = im2double(red);
NDVI = (nir - red) / (nir + red);
# TODO: Why this is all black and white
bw =  im2bw(NDVI, 0.09);

# Separação de imagens
digital = imread("imagens/digital.png");
imshow(digital);
digital = im2double(digital);
imhist(digital);
d = im2double(digital < 0.8);
d = im2double(digital > 0.3);
imshow(d);
print -djpg geradas/segmentacao12.jpg