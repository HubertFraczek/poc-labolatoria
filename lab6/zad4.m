close all; clearvars; clc;

i1 = imread("kw.bmp");

load('maskiPP.mat');

c1i1 = uint8(conv2(i1, R1, 'same'));
c2i1 = uint8(conv2(i1, R2, 'same'));
c3i1 = uint8(conv2(i1, P1, 'same'));
c4i1 = uint8(conv2(i1, P2, 'same'));
c5i1 = uint8(conv2(i1, S1, 'same'));
c6i1 = uint8(conv2(i1, S2, 'same'));

figure;
subplot(2,2,1)
imshow(c1i1 + 128, [])
subplot(2,2,2)
imshow(abs(c1i1), [])
subplot(2,2,3)
imshow(i1 + c1i1 + 128, [])
subplot(2,2,4)
imshow(i1 + abs(c1i1), [])

figure;
subplot(2,2,1)
imshow(c2i1 + 128, [])
subplot(2,2,2)
imshow(abs(c2i1), [])
subplot(2,2,3)
imshow(i1 + c2i1 + 128, [])
subplot(2,2,4)
imshow(i1 + abs(c2i1), [])

figure;
subplot(2,2,1)
imshow(c3i1 + 128, [])
subplot(2,2,2)
imshow(abs(c3i1), [])
subplot(2,2,3)
imshow(i1 + c3i1 + 128, [])
subplot(2,2,4)
imshow(i1 + abs(c3i1), [])

figure;
subplot(2,2,1)
imshow(c3i1 + 128, [])
subplot(2,2,2)
imshow(abs(c3i1), [])
subplot(2,2,3)
imshow(i1 + c3i1 + 128, [])
subplot(2,2,4)
imshow(i1 + abs(c3i1), [])

figure;
subplot(2,2,1)
imshow(c4i1 + 128, [])
subplot(2,2,2)
imshow(abs(c4i1), [])
subplot(2,2,3)
imshow(i1 + c4i1 + 128, [])
subplot(2,2,4)
imshow(i1 + abs(c4i1), [])

figure;
subplot(2,2,1)
imshow(c5i1 + 128, [])
subplot(2,2,2)
imshow(abs(c5i1), [])
subplot(2,2,3)
imshow(i1 + c5i1 + 128, [])
subplot(2,2,4)
imshow(i1 + abs(c5i1), [])

figure;
subplot(2,2,1)
imshow(c6i1 + 128, [])
subplot(2,2,2)
imshow(abs(c6i1), [])
subplot(2,2,3)
imshow(i1 + c6i1 + 128, [])
subplot(2,2,4)
imshow(i1 + abs(c6i1), [])

OW = sqrt((conv2(i1, S1, 'same')).^2 + (conv2(i1, S2, 'same')).^2);

OW2 = abs((conv2(i1, S1, 'same')).^2) + abs((conv2(i1, S2, 'same')).^2);

figure;
subplot(2,1,1)
imshow(OW)
subplot(2,1,2)
imshow(OW2)
