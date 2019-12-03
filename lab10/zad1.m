close all; clearvars; clc;

i1 = imread("knee.png");

imshow(i1)
[x, y] = ginput(1);

x = floor(x);
y = floor(y);

i1 = double(i1);

[xSize, ySize] = size(i1);

visited = zeros(xSize, ySize);
segmented = zeros(xSize, ySize);

stack = zeros(10000, 2);
iStack = 1;

visited(x, y) = 1;
segmented(x, y) = 1;
stack(iStack, 1:2) = [x, y];


while iStack > 0
    
end


