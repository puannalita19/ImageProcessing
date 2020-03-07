%Comparing between normal brightening and dynamic brightening using multiply op 
I = imread('moon.tif'); 
I2 = imadd(I, 50); 
I3 = immultiply(I, 1.2); 
figure 
subplot(1,3,1), imshow(I), title('Original Image'); 
subplot(1,3,2), imshow(I2), title('Normal Brightening'); 
subplot(1,3,3), imshow(I3), title('Dynamic Scaling'); 

%Blend two images using multiply op. 
I = im2double(imread('earth1.tif')); 
J = im2double(imread('earth2.tif')); 
K = immultiply(I,J); 
figure 
subplot(1,3,1), imshow(I), title('Planet Image'); 
subplot(1,3,2), imshow(J), title('Gradient'); 
subplot(1,3,3), imshow(K,[]), title('3D Planet'); 