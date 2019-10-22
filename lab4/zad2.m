clearvars; close all; clc;

i1 = imread("phobos.bmp");

%%
figure(1)
subplot(1, 2, 1)
imshow(i1)
subplot(1, 2, 2)
imshow(histeq(i1))

%%
load histogramZadany.mat;

figure(2)
plot(histogramZadany)

i2 = histeq(i1, histogramZadany);

figure(3)
imshow(i2)

%%
figure(4)
subplot(1, 3, 1)
imshow(i1)
subplot(1, 3, 2)
imshow(imadjust(i1))
subplot(1, 3, 3)
imshow(adapthisteq(i1))
