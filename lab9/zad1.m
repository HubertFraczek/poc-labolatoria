close all; clearvars; clc;

i1 = imread("dom.png");

d1 = edge(i1, 'log');
d2 = edge(i1, 'canny');
d3 = edge(i1, 'sobel');

figure;
subplot(2,2,1)
imshow(i1)
subplot(2,2,2)
imshow(d1)
subplot(2,2,3)
imshow(d2)
subplot(2,2,4)
imshow(d3)

figure;
subplot(1,3,1)
imshow(edge(i1, 'log', 0.01, 2))
subplot(1,3,2)
imshow(edge(i1, 'canny', [0 0.1], 3))
subplot(1,3,3)
imshow(edge(i1, 'sobel', 0.15))
