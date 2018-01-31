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
subplot(1, 1, 1);
edg = edge(img, "Sobel");
imshow(edg);

figure;
edg = edge(img, "Canny");
imshow(edg);

figure;
edg = edge(img, "Kirsch");
imshow(edg);

figure;
edg = edge(img, "Lindeberg");
imshow(edg);

figure;
edg = edge(img, "LoG");
imshow(edg);

figure;
edg = edge(img, "Roberts");
imshow(edg);


figure;
edg = edge(img, "zerocross");
imshow(edg);


figure;
edg = edge(img, "Andy");
imshow(edg);


figure;
edg = edge(img, "Roberts");
imshow(edg);


figure;
edg = edge(img, "Roberts");
imshow(edg);
