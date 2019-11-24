close all; clearvars; clc;

i1 = imread("calculator.bmp");

marker = imerode(i1, ones(1, 71));

i2 = i1 - imreconstruct(marker, i1);
i3 = i1 - imopen(i1, ones(1, 71));

figure;
subplot(3,1,1)
imshow(i1)
subplot(3,1,2)
imshow(i2)
subplot(3,1,3)
imshow(i3)

%%
figure;
imshow(imreconstruct(imerode(i2, ones(1, 11)), i2));

%%
dial_marker = imdilate(imreconstruct(imerode(i2, ones(1, 11)), i2), ones(1, 21));
i4 = imreconstruct(min(dial_marker, i3), i3);

figure;
imshow(i4);
