lena = imread("lena_gray.bmp");

[x, a] = gray2ind(lena, 256)

imshow(x, a)

map = colormap;
imshow(lena, map)
