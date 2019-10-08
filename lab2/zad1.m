clearvars; close all; clc;

%% inicjalizacja zmiennych
%I = imread("parrot.bmp");
%I = imread("lena.bmp");
%I = imread("chessboard.bmp");
I = imread("clock.bmp");
% wejsciowe zdjęcie
figure(1);
imshow(I);

% skala x i y
yReScale = 1.5;
xReScale = 1.5;

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
       i = round(ii * xStep);
       j = round(jj * yStep);
       
       % obsługa skrajnych przypadków
       if (j > YY - 1)
          j = YY - 1;
       end
       if (i > XX - 1)
           i = XX - 1;
       end
       
       nI(jj + 1, ii + 1) = I(j + 1, i + 1);
   end
end

% wyświetlenie wyjsciowego obrazu
figure(2);
imshow(nI);
