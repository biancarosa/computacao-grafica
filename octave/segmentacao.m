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
title("Sobel Horizontal + Vertical [Limiarizado]")
print -djpg geradas/segmentacao3.jpg

figure;
subplot(1, 1, 1);
magnitude = abs(img_sh) + abs(img_sv);
angulo = atan(img_sh ./ img_sv);
imshow(angulo);
title("Angulos")
print -djpg geradas/segmentacao5.jpg

# Pintar bordas de acordo c/ angulo
angulo_ind = angulo;

angulo_ind(find(angulo < pi/3)) = 2; # verde angulo < 60
angulo_ind(find(angulo < pi/6)) = 1; # amarelo angulo < 30
angulo_ind(find(angulo < -pi/3)) = 4; # azul angulo < -60
angulo_ind(find(angulo < -pi/6)) = 3; # vermelho angulo < -30

angulo_ind(find(angulo > -pi/6)) = 1; # amarelo angulo > -30 
angulo_ind(find(angulo > -pi/3)) = 3; # vermelho angulo > -60
angulo_ind(find(angulo > pi/6)) = 2; #verde angulo > 30
angulo_ind(find(angulo > pi/3)) = 4; # azul angulo > 60

MAP = [1 1 0; 0 1 0; 1 0 0;  0 0 1];
figure;
subplot(1, 1, 1);
imshow(angulo_ind, MAP);
title("Angulos Coloridos")
print -djpg geradas/segmentacao6.jpg

shv = img_sh + img_sv;
shv(find(shv<=0.15)) = 0;
shv(find(shv>0.15)) = 1;
figure;
imshow(shv);
title("Img binaria - sobel")
print -djpg geradas/segmentacao6_1.jpg

MAP = [0 0 0; 1 1 0; 0 1 0; 1 0 0; 0 0 1];
imshow(angulo_ind .* shv, MAP);
title("Img colorida")
print -djpg geradas/segmentacao7.jpg

figure;
subplot(1, 1, 1);
edg = edge(img, "Sobel");
imshow(edg);
title("Sobel - funcao edge");
print -djpg geradas/segmentacao8.jpg

figure;
edg = edge(img, "Canny");
imshow(edg);
title("Canny - funcao edge");
print -djpg geradas/segmentacao9.jpg

figure;
edg = edge(img, "Kirsch");
imshow(edg);
title("Kirsch - funcao edge");
print -djpg geradas/segmentacao10.jpg

figure;
edg = edge(img, "Lindeberg");
imshow(edg);
title("Lindeberg - funcao edge");
print -djpg geradas/segmentacao11.jpg

figure;
edg = edge(img, "LoG");
imshow(edg);
title("LoG - funcao edge");
print -djpg geradas/segmentacao12.jpg

figure;
edg = edge(img, "Roberts");
imshow(edg);
title("Roberts - funcao edge");
print -djpg geradas/segmentacao13.jpg

figure;
edg = edge(img, "zerocross", 5, 15);
imshow(edg);
title("zerocross - funcao edge");
print -djpg geradas/segmentacao14.jpg

figure;
edg = edge(img, "Andy");
imshow(edg);
title("Andy - funcao edge");
print -djpg geradas/segmentacao15.jpg


# NDVI
nir = imread("imagens/laranjeiras_nir.tif");
red = imread("imagens/laranjeiras_r.tif");
blue = imread("imagens/laranjeiras_b.tif");
green = imread("imagens/laranjeiras_g.tif");
nir = im2double(nir);
red = im2double(red);
blue = im2double(blue);
green = im2double(green);

out = cat(3, red, green, blue);
imshow(out);
title("Imagem colorida");
print -djpg geradas/segmentacao16.jpg

ndvi = (nir - red) ./ (nir + red);
imshow(ndvi);
title("NDVI");
print -djpg geradas/segmentacao17.jpg

vegetacao = ndvi;
vegetacao(find(vegetacao<=0.5)) = 0;
vegetacao(find(vegetacao>0.5)) = 1;
imshow(vegetacao);
title("NDVI Limiarizada - Vegetacao");
print -djpg geradas/segmentacao18.jpg

sem_vegetacao = 1-vegetacao;
imshow(sem_vegetacao);
title("NDVI Limiarizada - Areas sem Vegetacao");
print -djpg geradas/segmentacao19.jpg


# Separação de imagens
digital = imread("imagens/digital.png");
imshow(digital);
digital = im2double(digital);
imhist(digital);
d = im2double(digital > 0.3);
imshow(d);
title("Digital - Separada")
print -djpg geradas/segmentacao20.jpg