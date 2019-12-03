close all; clearvars; clc;

i1 = zeros(11);
i1(1,1) = 1;

figure;
subplot(1,2,1);
imshow(i1); 
title('original');
subplot(1,2,2);
imshow(hough(i1,'RhoResolution',0.1,'ThetaResolution',0.5), []);
title('hough');

i1(2,2) = 1;
i1(3,3) = 1;

figure;
subplot(1,2,1);
imshow(i1); 
title('original');
subplot(1,2,2);
imshow(hough(i1,'RhoResolution',0.1,'ThetaResolution',0.5), []); 
title('hough');

[H, T, R] = hough(i1,'RhoResolution',0.1,'ThetaResolution',0.5);

theta = 91;
rho = 143;

x = 0:0.1:10;
y = (R(rho) - x * cosd(T(theta))) / sind(T(theta));
figure;
imshow(i1, []); 
hold on;
plot(x+1,y+1);
