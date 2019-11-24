close all; clearvars; clc;

i1 = imread("fingerprint.bmp");

figure;
subplot(2,2,1)
imshow(i1)
title('original')
subplot(2,2,2)
imshow(bwmorph(i1, 'thin', 1))
title('thin 1')
subplot(2,2,3)
imshow(bwmorph(i1, 'thin', 2))
title('thin 2')
subplot(2,2,4)
imshow(bwmorph(i1, 'thin', Inf))
title('thin inf')

%%
i2 = imread("kosc.bmp");

figure;
subplot(2,1,1)
imshow(i2)
subplot(2,1,2)
imshow(bwmorph(i2, 'skel', Inf))

%%
i3 = imread("text.bmp");

figure;
subplot(3,1,1)
imshow(i3)
subplot(3,1,2)
imshow(imdilate(imerode(i3, strel('square', 3)), strel('square', 3)))
subplot(3,1,3)
imshow(imreconstruct(imerode(i3, ones(51, 1)), i3))

figure;
imshow(imclearborder(i3))
i3 = imread("text.bmp");

figure;
imshow(imfill(i3, 'holes'))
