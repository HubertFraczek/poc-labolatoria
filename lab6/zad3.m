close all; clearvars; clc;

i1 = imread('moon.bmp');

M = [0 1 0; 1 -4 1; 0 1 0] / 9;

ci1 = uint8(conv2(i1, M, 'same'));

figure;
subplot(2,2,1)
imshow(ci1 + 128, [])
subplot(2,2,2)
imshow(abs(ci1), [])
subplot(2,2,3)
imshow(i1 + ci1 + 128, [])
subplot(2,2,4)
imshow(i1 + abs(ci1), [])
