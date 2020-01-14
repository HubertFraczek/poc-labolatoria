clearvars; clc; close all;


image =imread("lunar.bmp");

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

th = 10;
imgfft2 = fft2(image);
fft2abs = log10(abs(imgfft2)+1);
imgfft2(fft2abs > th) = 0;

unshifted = ifftshift(imgfft2);
unfourier = ifft2(unshifted);


figure;
subplot(2,1,1);
imshow(image);
subplot(2,1,2);
imshow(uint8(unfourier));

