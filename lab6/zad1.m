close all; clearvars; clc;

i1 = imread("plansza.bmp");

avF = fspecial("average");

u8i = uint8(conv2(i1, avF, 'same'));

figure;
subplot(2,2,1)
imshow(i1)
subplot(2,2,2)
imshow(u8i)
subplot(2,2,3)
imshow(imabsdiff(i1, u8i))

avF1 = fspecial("average", 3);
avF2 = fspecial("average", 5);
avF3 = fspecial("average", 9);
avF4 = fspecial("average", 5);
avF5 = fspecial("average", 15);
avF6 = fspecial("average", 35);
figure;


subplot(3,2,1)
imshow(uint8(conv2(i1, avF1, 'same')))
subplot(3,2,2)
imshow(uint8(conv2(i1, avF2, 'same')))
subplot(3,2,3)
imshow(uint8(conv2(i1, avF3, 'same')))
subplot(3,2,4)
imshow(uint8(conv2(i1, avF4, 'same')))
subplot(3,2,5)
imshow(uint8(conv2(i1, avF5, 'same')))
subplot(3,2,6)
imshow(uint8(conv2(i1, avF6, 'same')))

%%
i2 = imread("lena.bmp");

M = [1 2 1; 2 4 2; 1 2 1];
M = M/sum(M);

figure;
subplot(2,1,1)
imshow(uint8(conv2(i1, M, 'same')))
subplot(2,1,2)
imshow(imabsdiff(i1, uint8(conv2(i1, M, 'same'))))

figure;
subplot(2,2,1)
mesh(fspecial("gaussian", [5 5], 0.5))
subplot(2,2,2)
mesh(fspecial("gaussian", [5 5], 1))
subplot(2,2,3)
mesh(fspecial("gaussian", [5 5], 5))
