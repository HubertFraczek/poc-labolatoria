clearvars; clc; close all;

image =imread("lena.bmp");

f = fft2(image);
fshitft = fftshift(f);
ampl = log10(abs(fshitft)+1);
ang = angle(fshitft.*(ampl > 0.0001));


figure;
subplot(3,1,1)
imshow(image)
subplot(3,1,2)
imshow(ampl,[])
subplot(3,1,3)
imshow(ang,[])

%%
[f1, f2] = freqspace(512, 'meshgrid');
Hd = ones(512);
r = sqrt(f1.^2 + f2.^2);
Hd(r>0.1) = 0;


figure;
colormap(jet(64));
mesh(f1, f2, Hd);

%%
f = ifft2(ifftshift(fshitft .* Hd));

figure;
imshow(uint8(f));


%% chebwin
figure;
h = fwind1(Hd, chebwin(21));
[H, f1, f2] = freqz2(h, 512, 512);
mesh(f1, f2, H);

%%
[x, y] = size(image);
mask = fspecial('gaussian', x, 10);
mask = mat2gray(mask);

figure;
imshow(mask);
title("gaussian mask")

f = fft2(image);
fshitft = fftshift(f);
filtered3 = fshitft .* mask;
filtered3 = ifft2(ifftshift(filtered3));

figure;
imshow(uint8(filtered3));
