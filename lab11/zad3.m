close all; clearvars; clc;

i1 = imread('shapes.png');


labeled = bwlabel(i1, 4);

figure;
imshow(labeled)

wsp = obliczWspolczynniki(labeled);


r = regionprops(labeled, 'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1), r(i).Centroid(2), ['\color{magenta}', num2str(i)]);
end

[YY, XX] = size(labeled);

for y=1:YY
    for x=1:XX
        pixel = labeled(y,x);
        if (pixel ~= 0 && ~(wsp(pixel, 2) > 0.33 && wsp(pixel, 2) < 0.66))
            labeled(y,x) = 0;
        end
    end
end

i2 = imread('shapesReal.png');

figure;
imshow(i2)
