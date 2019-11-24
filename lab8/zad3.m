close all; clearvars; clc;

i1 = imread("ferrari.bmp");

sq = strel('square', 3);

figure;
subplot(3,3,1)
imshow(i1)
title('original')
subplot(3,3,2)
imshow(imerode(i1, sq))
title('erode')
subplot(3,3,3)
imshow(imdilate(i1, sq))
title('dilate')
subplot(3,3,4)
imshow(i1 - imerode(i1, sq))
title('erode diff')
subplot(3,3,5)
imshow(i1 - imdilate(i1, sq))
title('dilate diff')
subplot(3,3,6)
imshow(imclose(i1, sq))
title('close')
subplot(3,3,7)
imshow(imopen(i1, sq))
title('open')
subplot(3,3,8)
imshow(imtophat(i1, sq))
title('tophat')
subplot(3,3,9)
imshow(imbothat(i1, sq))
title('bothat')

%%
i2 = imread("rice.png");

figure;
subplot(3,1,1)
imshow(i2)
subplot(3,1,2)
imshow(imtophat(i2, strel('disk', 10)))
subplot(3,1,3)
imshow(imbothat(i2, strel('disk', 10)))
