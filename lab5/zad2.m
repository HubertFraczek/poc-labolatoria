clc; close all; clearvars;

i1 = imread('rice.png');
[X, Y] = size(i1);
figure(1)
subplot(2,1,1)
imshow(i1)

for i = 1:X
    for j = 1:Y
        m = meanLT(i, j, 7, i1, X, Y);
        if i1(i,j) > m
            i1(i,j) = 255;
        else
            i1(i,j) = 0;
        end
    end
end

subplot(2,1,2)
imshow(i1)

i3 = imread('katalog.bmp');
[X, Y] = size(i3);
figure(2)
subplot(2,1,1)
imshow(i3)

for i = 1:X
    for j = 1:Y
        m = meanLT(i, j, 7, i3, X, Y);
        if i3(i,j) > m
            i3(i,j) = 255;
        else
            i3(i,j) = 0;
        end
    end
end

subplot(2,1,2)
imshow(i3)


%% sauvol
i2 = imread('rice.png');
figure(3)
subplot(2,1,1)
imshow(i2)

for i = 1:X
    for j = 1:Y
        m = meanLT(i, j, 7, i2, X, Y);
        s = stddevLT(i,j,7,i2,m,X,Y);
        T = m*(1-0.15*((s/128) - 1));
        if i2(i,j) > T
            i2(i,j) = 255;
        else
            i2(i,j) = 0;
        end
    end
end

subplot(2,1,2)
imshow(i2)
