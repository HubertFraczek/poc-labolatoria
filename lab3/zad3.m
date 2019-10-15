clearvars; close all; clc;

i1 = imread("kolo.bmp");
i2 = imread("kwadrat.bmp");

kolo = boolean(i1);
kwadrat = boolean(i2);

figure(1)
imshow(kolo)

figure(2)
imshow(kwadrat)

NOTkolo = ~kolo;
kwadratANDkolo = kwadrat&kolo;
kwadratORkolo = kwadrat|kolo;
kwadratXORkolo = xor(kwadrat, kolo);

figure(3)
imshow(NOTkolo);

figure(4)
imshow(kwadratANDkolo);

figure(5)
imshow(kwadratORkolo);

figure(6)
imshow(kwadratXORkolo);
