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
sobel_vertical = [-1 0 1; -2 0 2; -1 0 1];

img_sh = imfilter(img, sobel_horizontal);
figure;
title("Sobel")
subplot(2, 1, 1);
imshow(img_sh);
title("Sobel Horizontal");

img_sv = imfilter(img, sobel_vertical);
subplot(2, 1, 2);
imshow(img_sv);
title("Sobel Vertical");

figure;
subplot(2, 1, 1);
filtered = img_sh + img_sv;
imshow(filtered);

filtered = filtered - 0.4;
subplot(2, 1, 2);
imshow(filtered);

figure;
title("Sobel - funcao edge");
subplot(1, 1, 1);
edg = edge(img, "Sobel");
imshow(edg);

figure;
title("Canny - funcao edge");
edg = edge(img, "Canny");
imshow(edg);

figure;
title("Kirsch - funcao edge");
edg = edge(img, "Kirsch");
imshow(edg);

figure;
title("Lindeberg - funcao edge");
edg = edge(img, "Lindeberg");
imshow(edg);

figure;
title("LoG - funcao edge");
edg = edge(img, "LoG");
imshow(edg);

figure;
title("Roberts - funcao edge");
edg = edge(img, "Roberts");
imshow(edg);

figure;
title("zerocross - funcao edge");
edg = edge(img, "zerocross");
imshow(edg);

figure;
title("Andy - funcao edge");
edg = edge(img, "Andy");
imshow(edg);

nir = imread("imagens/laranjeiras_nir.tif");
red = imread("imagens/laranjeiras_r.tif");
blue = imread("imagens/laranjeiras_b.tif");
green = imread("imagens/laranjeiras_g.tif");
nir = im2double(nir);
red = im2double(red);
NDVI = (nir - red) / (nir + red);

bw =  im2bw(NDVI, 0.09);