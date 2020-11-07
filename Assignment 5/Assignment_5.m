%NAME: Vatsalya Chaubey
%INST: IIT, Bhubaneswar
%DATE: 29.10.2020
%CATEGORY: Btech
%BRANCH: Electronics and Communication
%Roll Number: 17EC01044

%% Image and Video Processing Assignment - 5

clc;
clear all;
close all;

%% Question 1: Motion Blur through Degradation function

% I will first create the functions which are needed for implementation in
% other parts of the code. Finally, the entire code will be written
% together.

%% Motion Blur
% <include>motion_blur.m</include>

%% Example: Motion Blur

% Read the input image as a double
orig_img = imread('cameraman.tif');
img = double(orig_img);

motion = motion_blur(img, 1, 0.05, 0.01);

figure('Name', 'Motion Blur');
subplot(121)
imshow(orig_img);
title('Original Image');

subplot(122)
imshow(motion);
title('Blurred Image');


%% Inverse Filtering
% <include>inverse_filter.m</include>

%% Example: Inverse Filtering

% Read the input image as a double
orig_img = imread('cameraman.tif');
img = double(orig_img);

motion = motion_blur(img, 1, 0.05, 0.01);
filtered = inverse_filter(motion, 1, 0.05, 0.01);

figure('Name', 'Inverse filtering');
subplot(131)
imshow(orig_img);
title('Original Image');

subplot(132)
imshow(motion);
title('Blurred Image');

subplot(133)
imshow(filtered);
title('Filtered Image');


%% Radial Inverse Filtering
% <include>radial_inv_filter.m</include>

%% Example: Radial Inverse Filtering

% Read the input image as a double
orig_img = imread('cameraman.tif');
img = double(orig_img);

motion = motion_blur(img, 1, 0.05, 0.01);
filtered = radial_inv_filter(motion, 1, 0.05, 0.01, 9);

figure('Name', 'Radial Inverse filtering');
subplot(131)
imshow(orig_img);
title('Original Image');

subplot(132)
imshow(motion);
title('Blurred Image');

subplot(133)
imshow(filtered);
title('Radial Inverse Filtered Image');

%% Weiner Filtering
% <include>weiner_filter.m</include>

%% Example: Weiner Filtering

% Read the input image as a double
orig_img = imread('cameraman.tif');
img = double(orig_img);

motion = motion_blur(img, 1, 0.05, 0.01);
filtered = weiner_filter(motion, 1, 0.05, 0.01, 0.04);

figure('Name', 'Weiner filtering');
subplot(131)
imshow(orig_img);
title('Original Image');

subplot(132)
imshow(motion);
title('Blurred Image');

subplot(133)
imshow(filtered);
title('Weiner Filtered Image');

%% Example: Weiner Filtering on Facial Images

% Read the input image as a double
orig_img = imread('face-image.jpg');
img = double(rgb2gray(orig_img));

filtered = weiner_filter(img, 0.004, 0.001, 0.01, 0.01);

figure('Name', 'Weiner filtering');
subplot(121)
imshow(orig_img);
title('Original Image');

subplot(122)
imshow(filtered);
title('Weiner Filtered Image');



%% Conclusion
% Through this experiment we investigated motion blurring and how can we
% come up with basic degradation models which describe the blurring. The
% first part of the experiment we introduced motion blurring in an image
% through our derived degradation function. Then we used inverse filtering
% to remove the effects of the blurring. But it is clear that during
% inverse filtering all values get saturated and hence the required image
% is not visible. To reduce the saturation we use radial inverse filtering
% in which the output spectrum is again passed through a Butterworth filter
% to remove very high values.
%
% One of the better methods which gives the best results of all the
% filtering processes is the weiner filter. I also demonstrate its
% applicability on a motion blurred facial image.



