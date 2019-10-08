%%
info = imfinfo("lena.bmp");
info2 = imfinfo("lena.jpg");

a = imread("lena.bmp");
b = imread("lena.jpg");

a2 = rgb2gray(a);
b2 = rgb2gray(b);
figure(2)
imshow(a2)
figure(3)
imshow(b2)

imwrite(a2, "lena_gray.bmp");

figure(4)
colormap gray;
mesh(a2)

figure(5)
plot(a2(10,:));

figure(6)
plot(a2(:,10));

