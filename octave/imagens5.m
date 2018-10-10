pkg load image;

img = imread("imagens/Coins.png");

imhist(img);
imshow(img);

l = 85;
size(img);

mask = zeros(366,367);
for i = 1 : 366
  for j = 1 : 367
    if img(i,j) > l
      mask(i,j) = 1;
     endif
  endfor
endfor;

maskedImage = bsxfun(@times, img, mask > 0);

figure;
subplot(3,1,1);
imshow(img);
title("Imagem original");
subplot(3,1,2);
imshow(mask);
title("Mascara");
subplot(3,1,3);
imshow(maskedImage);
title("Imagem com background trocado");
print -djpg geradas/maskedImage.jpg