close all; clearvars; clc;

i1 = imread("ertka.bmp");
i = imread('hom.bmp');

sq = strel('square', 3);
di = strel('diamond', 3);

sqi1 = imerode(i1, sq);
dii1 = imerode(i1, di);

figure;
subplot(3,1,1)
imshow(i1)
subplot(3,1,2)
imshow(sqi1)
subplot(3,1,3)
imshow(dii1)


sqi1 = imerode(sqi1, sq);
sqi1 = imerode(sqi1, sq);

figure;
imshow(sqi1)

i2 = imread('buzka.bmp');

m1 = [1 0 0; 0 1 0; 0 0 1];
m2 = [0 0 1; 0 1 0; 1 0 0];
mi2 = imerode(i2, m1);
mi22 = imerode(i2, m2);

figure;
subplot(3,1,1)
imshow(i2)
subplot(3,1,2)
imshow(mi2)
subplot(3,1,3)
imshow(mi22)

dii1 = imdilate(i1, sq);

figure;
subplot(3,2,1)
imshow(i1)
title('orginal')
subplot(3,2,2)
imshow(imerode(i1, sq))
title('imerode sq')
subplot(3,2,3)
imshow(dii1)
title('imdilate sq')
subplot(3,2,4)
imshow(imopen(i1, sq))
title('imopen sq')
subplot(3,2,5)
imshow(imclose(i1, sq))
title('imclose sq')
subplot(3,2,6)
imshow(imerode(imclose(i1, sq), sq))
title('zad 11')

SE1 = [0 1 0;1 1 1;0 1 0];
SE2 = [1 0 1;0 0 0;1 0 1];

image = i;
imHitmiss = bwhitmiss(image, SE1, SE2);

figure;
subplot(1,2,1);
imshow(image);
title('original');
subplot(1,2,2);
imshow(imHitmiss);
title('detecc');
