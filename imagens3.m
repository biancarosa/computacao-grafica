pkg load image;

img = imread("imagens/lion.png");

F = ones(5) * 1/25
I = imfilter(img, F);

figure;
subplot(2,1,1);
title("Original");
imshow(img)
subplot(2,1,2);
title("Filtrada");
imshow(I);
print -djpg geradas/lion_filtered.jpg

img = imread("imagens/arara_full.png");

I = imfilter(img, F);

figure;
subplot(2,1,1);
title("Original");
imshow(img)
subplot(2,1,2);
title("Filtrada");
imshow(I);
print -djpg geradas/arara_filtered.jpg
