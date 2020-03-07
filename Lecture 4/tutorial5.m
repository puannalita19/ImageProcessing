 %Another way in using lapacian filter on blur image 
 I = imread('moon.tif'); 
 f_blur = fspecial('average',13); 
 I_blur = imfilter(I,f_blur); 
 figure, subplot(1,3,1), imshow(I), title('Original Image'); 
 subplot(1,3,2), imshow(I_blur), title('Blurred Image'); 
 
%shrink the histogram of the blur image 
I_blur_adj = imadjust(I_blur,stretchlim(I_blur),[0 0.4]); 
 
% Now subtract the blurred image from the original image 
I_sharp = imsubtract(I,I_blur_adj);  
 
% Stretch the sharpened image histogram to the full dynamic grayscale 
% range and display the final result. 
 
I_sharp_adj = imadjust(I_sharp); 
subplot(1,3,3), imshow(I_sharp_adj), title('Sharp Image'); 