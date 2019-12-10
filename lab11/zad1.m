close all; clearvars; clc;

i1 = imread('ccl1.png');

figure;
imshow(i1)

[y_size, x_size] = size(i1);

for y = 2:(y_size-1)
    for x = 2:(x_size-1)
        if i1(y, x) ~= 0
           
        end
    end
end