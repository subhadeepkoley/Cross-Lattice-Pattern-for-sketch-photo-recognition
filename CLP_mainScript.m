close all
clear
clc

img = imread('0001-1_NIR.bmp');
img = im2single(img);
if ndims(img) == 3
    img = rgb2gray(img);
end
img = imresize(img, [128, 128]);

window = [3, 3];
clp1_img = nlfilter(img, window, @clp1);
clp2_img = nlfilter(img, window, @clp2);
clp3_img = nlfilter(img, window, @clp3);
clp4_img = nlfilter(img, window, @clp4);

figure
subplot(151)
imshow(img, [])
title('Face Sample')
subplot(152)
imshow(clp1_img, [])
title('CLP 1')
subplot(153)
imshow(clp2_img, [])
title('CLP 2')
subplot(154)
imshow(clp3_img, [])
title('CLP 3')
subplot(155)
imshow(clp4_img, [])
title('CLP 4')