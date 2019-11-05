close all; clearvars; clc;

i1 = imread("lenaSzum.bmp");

figure;
subplot(3,1,1)
imshow(i1)
subplot(3,1,2)
imshow(medfilt2(i1))
subplot(3,1,3)
imshow(imabsdiff(i1, medfilt2(i1)))

i2 = imread("lenaSzum.bmp");

for i=0:10
   i2 = medfilt2(i2); 
end

figure;
subplot(2,1,1)
imshow(imread("lenaSzum.bmp"))
subplot(2,1,2)
imshow(medfilt2(i2))
