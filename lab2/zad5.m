clearvars; close all; clc;

%% inicjalizacja zmiennych
I = imread("parrot.bmp");
%I = imread("lena.bmp");
%I = imread("chessboard.bmp");
%I = imread("clock.bmp");
% wejsciowe zdjęcie
figure(1);
imshow(I);

% skala x i y
yReScale = 1.9;
xReScale = 1.9;

% rozdzielczość obrazu wejsciowego
[YY, XX] = size(I);

% nowa rozdzielczość
nYY = round(YY * yReScale);
nXX = round(XX * xReScale);

% macierz o wymierach nYY i nXX wypełniona zerami
nI = uint8(zeros(nYY, nXX));

% krok skalowania
xStep = XX / nXX;
yStep = YY / nYY;

%% proces skalowania
for ii = 0 : nXX - 1
   for jj = 0 : nYY - 1
       
       
       
   end
end