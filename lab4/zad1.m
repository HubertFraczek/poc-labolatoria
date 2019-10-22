clearvars; close all; clc;

i1 = imread("lena1.bmp");
i2 = imread("lena2.bmp");
i3 = imread("lena3.bmp");
i4 = imread("lena4.bmp");
%%
figure(1)
subplot(4, 2, 1)
imshow(i1)
subplot(4, 2, 2)
imhist(i1, 256)

subplot(4, 2, 3)
imshow(i2)
subplot(4, 2, 4)
imhist(i2, 256)

subplot(4, 2, 5)
imshow(i3)
subplot(4, 2, 6)
imhist(i3, 256)

subplot(4, 2, 7)
imshow(i4)
subplot(4, 2, 8)
imhist(i4, 256)

%% 
h1 = imread("hist1.bmp");

figure(2)
subplot(1, 2, 1)
imshow(h1)
subplot(1, 2, 2)
imhist(h1)

ah1 = imadjust(h1);

figure(3)
subplot(1, 2, 1)
imshow(ah1)
subplot(1, 2, 2)
imhist(ah1)

%% 
[H, x] = imhist(h1, 256);
C = cumsum(H);
k = max(C) / max(H);
C2 = C / k;

figure(4)
hold on;
plot(x, H)
plot(x, C2)

%%
lut = uint8(255 * (C2 / max(C2)));

[H_lut, x_lut] = imhist(intlut(h1, lut), 256);
C3 = cumsum(H_lut);
k = max(C3) / max(H_lut);
C4 = C3 / k;

figure(5)
subplot(1, 2, 1)
imshow(intlut(h1, lut))
subplot(1, 2, 2)
hold on;
imhist(intlut(h1,lut))
plot(x_lut, C4)

%%
h2 = imread("hist2.bmp");
h3 = imread("hist3.bmp");
h4 = imread("hist4.bmp");

figure(6)
subplot(2, 2, 1)
imshow(h2)
subplot(2, 2, 2)
imhist(imadjust(h2))
subplot(2, 2, 3)
imhist(histeq(h2))
subplot(2, 2, 4)
imhist(adapthisteq(h2))

figure(7)
subplot(2, 2, 1)
imshow(h3)
subplot(2, 2, 2)
imhist(imadjust(h3))
subplot(2, 2, 3)
imhist(histeq(h3))
subplot(2, 2, 4)
imhist(adapthisteq(h3))

figure(8)
subplot(2, 2, 1)
imshow(h4)
subplot(2, 2, 2)
imhist(imadjust(h4))
subplot(2, 2, 3)
imhist(histeq(h4))
subplot(2, 2, 4)
imhist(adapthisteq(h4))
