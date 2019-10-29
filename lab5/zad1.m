clc; close all; clearvars;

%% 
i1 = imread('coins.png');
i2 = imread('figura.png');
i3 = imread('figura2.png');
i4 = imread('figura3.png');
i5 = imread('figura4.png');
i6 = imread('rice.png');
i7 = imread('tekst.bmp');
i8 = imread('obiekty.bmp');
i9 = imread('katalog.bmp');

%% 1.2
figure(1)
subplot(2,1,1)
imshow(i1)
subplot(2,1,2)
imhist(i1)

%% 1.3
figure(2)
imshow(im2bw(i1, 90/255));

%% 1.4
figure(3)
subplot(2,1,1)
imshow(i2)
subplot(2,1,2)
imhist(i2)

figure(4)
subplot(2,1,1)
imshow(i3)
subplot(2,1,2)
imhist(i3)

figure(5)
subplot(2,1,1)
imshow(i4)
subplot(2,1,2)
imhist(i4)

figure(6)
subplot(2,1,1)
imshow(i5)
subplot(2,1,2)
imhist(i5)

%% 1.5
figure(7)
subplot(2,1,1)
imshow(i1)
subplot(2,1,2)
imshow(im2bw(i1, graythresh(i1)));

%% 1.7
figure(8)
subplot(4,1,1)
imshow(i1)
subplot(4,1,2)
imhist(i1)
subplot(4,1,3)
imshow(im2bw(i1, clusterKittler(i1)/255))
subplot(4,1,4)
imshow(im2bw(i1, entropyYen(i1)/255))

%% 1.8
figure(9)
subplot(4,5,1)
imshow(i6)
subplot(4,5,2)
imhist(i6)
subplot(4,5,3)
imshow(im2bw(i6, clusterKittler(i6)/255))
subplot(4,5,4)
imshow(im2bw(i6, entropyYen(i6)/255))
subplot(4,5,5)
imshow(im2bw(i6, 135/255))

subplot(4,5,6)
imshow(i7)
subplot(4,5,7)
imhist(i7)
subplot(4,5,8)
imshow(im2bw(i7, clusterKittler(i7)/255))
subplot(4,5,9)
imshow(im2bw(i7, entropyYen(i7)/255))
subplot(4,5,10)
imshow(im2bw(i7, 180/255))

subplot(4,5,11)
imshow(i8)
subplot(4,5,12)
imhist(i8)
subplot(4,5,13)
imshow(im2bw(i8, clusterKittler(i8)/255))
subplot(4,5,14)
imshow(im2bw(i8, entropyYen(i8)/255))
subplot(4,5,15)
imshow(im2bw(i8, 165/255))

subplot(4,5,16)
imshow(i9)
subplot(4,5,17)
imhist(i9)
subplot(4,5,18)
imshow(im2bw(i9, clusterKittler(i9)/255))
subplot(4,5,19)
imshow(im2bw(i9, entropyYen(i9)/255))
subplot(4,5,20)
imshow(im2bw(i9, 100/255))
