pkg load image;

low_contrast = imread("imagens/Einstein_low_contrast.png");
med_contrast = imread("imagens/Einstein_med_contrast.png");
high_contrast = imread("imagens/Einstein_high_contrast.png");

figure;
imhist(low_contrast);
title("Low contrast");
print -djpg geradas/histogram_einstein_low_contrast.jpg

figure;
imhist(med_contrast);
title("Medium contrast");
print -djpg geradas/histogram_einstein_medium_contrast.jpg

figure;
imhist(high_contrast);
title("High contrast");
print -djpg geradas/histogram_einstein_high_contrast.jpg

hc_from_lc = imadjust(low_contrast);
figure;
subplot(2,1,1);
imshow(hc_from_lc);
title("High Contrast from Low Contrast");
subplot(2,1,2);
imhist(hc_from_lc);
title("Histogram - High Contrast from Low Contrast");
print -djpg geradas/einstein_histogram_high_contrast_from_low_contrast.jpg


CMAP = contrast(low_contrast);
hc_from_lc = imadjust(low_contrast,CMAP,CMAP);
figure;
imshow(hc_from_lc);
title("High Contrast from Low Contrast");