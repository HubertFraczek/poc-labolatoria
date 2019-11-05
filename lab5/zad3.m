clc; close all; clearvars;

%% 1.2
i1 = imread('bart.bmp');

figure(1)
subplot(2,1,1)
imshow(i1)
subplot(2,1,2)
imhist(i1)

%% 1.3
i2 = i1 > 190 & i1 < 220;
%i2 = uint8(i2);

figure(2)
imshow(i2)
