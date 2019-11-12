clear all; clearvars; clc;

load MR_data.mat;

local_window = [4 4];

figure;
subplot(3,2,1)
imshow(uint8(convolution(I_noisefree, local_window)), [])
subplot(3,2,2)
imshow(uint8(convolution(I_noisy1, local_window)), [])
subplot(3,2,3)
imshow(uint8(convolution(I_noisy2, local_window)), [])
subplot(3,2,4)
imshow(uint8(convolution(I_noisy3, local_window)), [])
subplot(3,2,5)
imshow(uint8(convolution(I_noisy4, local_window)), [])
