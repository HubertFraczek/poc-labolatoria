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

i2 = im2bw(i2, 60/255);
i2 = imerode(i2, strel('rectangle', [3 3]));
i2 = not(i2);
i2 = imclearborder(i2);
i2 = imclearborder(i2);
i2 = imclearborder(i2);
i2 = imclearborder(i2);

labeled = bwlabel(i2, 4);

coefs = obliczWspolczynniki(labeled);

r = regionprops(labeled, 'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1), r(i).Centroid(2), ['\color{magenta}', num2str(i)]);
end

[height, width] = size(labeled);

for y=1:height
    for x=1:width
        pixel = labeled(y,x); % obliczanie srodka ciezkosci
        if (pixel ~= 0 && ~(coefs(pixel,2) > 0.6 && coefs(pixel,2) < 0.68 && coefs(pixel, 3) > 4.5))
            labeled(y,x) = 0;
        end
    end
end

figure;
imshow(labeled);
