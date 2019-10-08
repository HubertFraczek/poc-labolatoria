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
       % punkt A
       i1 = round(ii * xStep);
       j1 = round(jj * yStep);
       
       if (i1 == 0)
          i1 = 1;
       end
       if (j1 == 0)
          j1 = 1;
       end
       
       % punkt B
       i2 = i1 + 1;
       % j1
       
       % punkt C
       % i2
       j2 = j1 + 1;
       
       % punkt D
       % i1
       % j2
        
       % obsługa skrajnych przypadków
       if (i2 > XX - 1)
          i2 = XX - 1;
       end
       if (j2 > YY - 1)
           j2 = YY - 1;
       end
       
       % wartosci
       fa = double(I(j1 + 1, i1 + 1));
       fb = double(I(j1 + 1, i2 + 1));
       fc = double(I(j2 + 1, i2 + 1));
       fd = double(I(j2 + 1, i1 + 1));
       
       nI(jj + 1, ii + 1) = [(1 - (i2 - i1) / xReScale) ((i2 - i1) / xReScale)] * [fa fd; fb fc] * [(1 - (j2 - j1) / yReScale); ((j2 - j1) / yReScale)];
   end
end

% wyświetlenie wyjsciowego obrazu
figure(2);
imshow(nI);
