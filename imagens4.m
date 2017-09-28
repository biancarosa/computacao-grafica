pkg load image;

img = imread("imagens/lion.png");

F = fspecial('gaussian', 5, 10.0);
I = imfilter(img, F);

figure;
subplot(2,1,1);
title("Original");
imshow(img)
subplot(2,1,2);
title("Filtro Gaussiano");
imshow(I);
print -djpg geradas/lion_gaussian_filtered.jpg

img = imread("imagens/arara_full.png");

F = fspecial('disk', 5, 10.0);
I = imfilter(img, F);

figure;
subplot(2,1,1);
title("Original");
imshow(img)
subplot(2,1,2);
title("Filtro Gaussiano");
imshow(I);
print -djpg geradas/arara_disk_filtered.jpg
