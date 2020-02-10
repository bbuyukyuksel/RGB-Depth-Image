clc, clear, close all

[I,map] = imread('BURAK_BÜYÜKYÜKSEL.jpg');
I = imresize(I, 0.2)
I = imrotate(I, 180);
sharp = zeros(3);
sharp(2,2) = 1;
sharp = (2 * sharp) - ((1/9) * ones(3));
tt = imfilter(I, sharp, 'same');
figure; imshow(tt, []);

res = rgb2gray(tt);

%res = imresize(Igray, 0.2);
%tt = imresize(tt, 0.2);
figure; imshow(res);
res = imrotate(res, 180);
mask = uint8(ones(size(res)) * 255);

figure;surf(1:size(res,2), 1:size(res,1), 255- res, I);

%figure; mesh(mask -res);


