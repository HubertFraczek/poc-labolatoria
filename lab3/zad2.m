clearvars; close all; clc;

i1 = imread("lena.bmp");
i2 = imread("jet.bmp");

%% dodawanie
figure(1)
imshow(i1)

figure(2)
imshow(i2)

figure(3)
imshow(imadd(i1, i2))

figure(4)
imshow(imadd(i1, i2, 'uint16'), [])

%% kombinacja liniowa
figure(5)
imshow(imlincomb(1.5, i1, 0.5, i2))

%% odejmowanie
figure(6)
imshow(imsubtract(int16(i1), int16(i2)), [])

figure(7)
imshow(imabsdiff(i1, i2), [])

%% mnozenie
figure(8)
imshow(immultiply(i1, i2), [])

figure(9)
imshow(immultiply(i1, 1.5), [])

i3 = imread("kolo.bmp");
mask = boolean(i3);

figure(10)
imshow(immultiply(mask, i1), [])

%% negatyw
figure(11)
imshow(imcomplement(i1))
