% Question 1.b
% Anand Preshob Kadumberi
% 
% Pseudo code for the solution
% 1. Read the images.
% 2. Resize both images to same scale and convert to grayscale.
% 3. Perform edge detection and calculate the total sum of all the pixels
% OR
% 3. Perform texture analysis by calculating the gray level co-occurance 
% matrix and also calculate the entropy of the images

%% Read Image
img1=imread('normal.jpg');
img2=imread('wrinky.JPG');
img1=imresize(img1,[825 869]);% Rezising both images to same scale
% Converting to Grayscale
nor=rgb2gray(img1);
wri=rgb2gray(img2);
% Ploting the image
subplot(1,2,1)
imshow(nor)
subplot(1,2,2)
imshow(wri)
%% The quantified values
% Edge detection
noredge=edge(nor,'sobel');
wriedge=edge(wri,'sobel');
new1=(uint8(noredge)).*(nor);
new2=(uint8(wriedge)).*(wri);
% Quantifier 1
sum(new1(:))
sum(new2(:))
% Quantfier 2
glcm1=graycomatrix(nor)
glcm2=graycomatrix(wri)
% Quantifier 3
stats1 = graycoprops(glcm1)
stats2 = graycoprops(glcm2)
% Quantifier 4
j1=entropy(nor)
j2=entropy(wri)