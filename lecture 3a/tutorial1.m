%Brighten an image using imadd() 
I = imread('tire.tif'); 
I2 = imadd(I,75); 
figure 
subplot(1,2,1), imshow(I), title('Original Image'); 
subplot(1,2,2), imshow(I2), title('Brighter Image'); 

%Blend 2 images 
Ia = imread('rice.png'); 
Ib = imread('cameraman.tif'); 
Ic = imadd(Ia, Ib); 
figure; subplot(2,2,1); imshow(Ia), title('Image 1'); 
subplot(2,2,2),imshow(Ib), title('Image 2'); 
subplot(2,2,3:4),imshow(Ic), title('Blended Image'); 