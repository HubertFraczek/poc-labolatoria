close all; clearvars; clc;

i = imread('mglawica_kolor.png');

load tablice_kwantyzacji.mat;
c = 1;

iYUV = rgb2ycbcr(i);

iY = iYUV(:,:,1);
iU = iYUV(:,:,2);
iV = iYUV(:,:,3);

redukcjaY = @(blok) round(blok ./ (c * Qy));
redukcjaC = @(blok) round(blok ./ (c * Qc));

iYdtc = blkproc(iY,[8 8],@dct2);
iUdtc = blkproc(iU,[8 8],@dct2);
iVdtc = blkproc(iV,[8 8],@dct2);

iYjpeg = blkproc(iYdtc,[8 8],redukcjaY);
iUjpeg = blkproc(iUdtc,[8 8],redukcjaC);
iVjpeg = blkproc(iVdtc,[8 8],redukcjaC);

%% dekoder
dekwantyzacjaY = @(blok) blok .* (c * Qy);
dekwantyzacjaC = @(blok) blok .* (c * Qc);

iY2 = blkproc(iYjpeg,[8 8],dekwantyzacjaY);
iU2 = blkproc(iUjpeg,[8 8],dekwantyzacjaC);
iV2 = blkproc(iVjpeg,[8 8],dekwantyzacjaC);

iY2idct = blkproc(iY2,[8 8],@idct2);
iU2idct = blkproc(iU2,[8 8],@idct2);
iV2idct = blkproc(iV2,[8 8],@idct2);

i2(:,:,1) = iY2idct;
i2(:,:,2) = iU2idct;
i2(:,:,3) = iV2idct;

i2 = ycbcr2rgb(uint8(i2));

figure;
subplot(1,2,1);
imshow(i);
subplot(1,2,2);
imshow(i2,[]);
