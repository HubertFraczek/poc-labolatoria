close all; clearvars; clc;

i1 = imread('ccl2.png');

figure;
imshow(i1, [])

i11 = bwlabel(i1, 4);
i12 = bwlabel(i1, 8);

figure;
subplot(2,1,1)
imshow(i11)
subplot(2,1,2)
imshow(i12)
