pkg load image;

leme = imread("imagens/leme.bmp");
leme = im2double(leme);

figure;
subplot(2,1,1);
imshow(leme);
title("Imagem original");
subplot(2,1,2);
clearer = imadjust(leme,[],[],0.5);
imshow(clearer);
title("Partes mais escuras mais claras");
print -djpg geradas/clearer_leme.jpg