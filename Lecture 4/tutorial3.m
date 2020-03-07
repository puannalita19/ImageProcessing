%Create and use laplacian filter  
% load the image moon 
I = imread('moon.tif'); Id = im2double(I); 
figure, subplot(2,2,1), imshow(Id), title('Original Image'); 
 
% create laplacian filter 
f = fspecial('laplacian',0); 
I_filt = imfilter(Id,f); 
subplot(2,2,2), imshow(I_filt), title('Laplacian of Original'); 
 
% Display a scaled version of the Laplacian image for display purposes. 
subplot(2,2,3), imshow(I_filt,[]), title('Scaled Laplacian'); 
 
% Subtract the filtered image from the original image to create the  
% sharpened image. 
I_sharp = imsubtract(Id,I_filt); 
subplot(2,2,4), imshow(I_sharp), title('Sharpened Image'); 