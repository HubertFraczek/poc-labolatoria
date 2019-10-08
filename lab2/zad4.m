clearvars; close all; clc;

%% inicjalizacja zmiennych

i = imread("lena.bmp");

i1 = imadjust(i, [], [0, 31/255]);
i2 = imadjust(i, [], [0, 15/255]);
i3 = imadjust(i, [], [0, 7/255]);
i4 = imadjust(i, [], [0, 3/255]);
i5 = imadjust(i, [], [0, 1/255]);

subplot(2, 3, 1);
imshow(i);
subplot(2, 3, 2);
imshow(i1, []);
subplot(2, 3, 3);
imshow(i2, []);
subplot(2, 3, 4);
imshow(i3, []);
subplot(2, 3, 5);
imshow(i4, []);
subplot(2, 3, 6);
imshow(i5, []);