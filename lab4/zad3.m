clearvars; close all; clc;

i1 = imread("lenaRGB.bmp");

R = i1(:, :, 1);
G = i1(:, :, 2);
B = i1(:, :, 3);

%%
figure(1)
subplot(1, 4, 1)
imshow(i1)

subplot(1, 4, 2)
imhist(R)

subplot(1, 4, 3)
imhist(G)

subplot(1, 4, 4)
imhist(B)

%%
Re = histeq(R, 256);
Ge = histeq(G, 256);
Be = histeq(B, 256);

i2 = i1;
i2(:, :, 1) = Re;
i2(:, :, 2) = Ge;
i2(:, :, 3) = Be;

figure(2)
subplot(1, 2, 1)
imshow(i1)
subplot(1, 2, 2)
imshow(i2)

%%
i3 = rgb2hsv(i1);

h = i3(:, :, 1);
s = i3(:, :, 2);
v = i3(:, :, 3);

figure(3)
subplot(1, 3, 1)
imhist(h, 256)

subplot(1, 3, 2)
imhist(s, 256)

subplot(1, 3, 3)
imhist(v, 256)


i3(:, :, 3) = histeq(v, 256);
i4 = hsv2rgb(i3);

figure(4)
subplot(1, 2, 1)
imshow(i1)

subplot(1, 2, 2)
imshow(i4)
