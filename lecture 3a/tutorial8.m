 %Addition / sliding in histogram 
 J = imread('pout.tif'); 
 I = im2double(J); 
 clear J 
 figure, subplot(3,2,1), imshow(I), title('Original Image') 
 subplot(3,2,2), imhist(I), axis tight, ... 
 title('Original Histogram') 

 % Obtain a brighter version of the input image by adding 0.1 to each pixel.  
 const = 0.1; 
 I2 = I + const; 
 subplot(3,2,3), imshow(I2), title('Original Image + 0.1') 
 subplot(3,2,4), imhist(I2), axis tight, ... 
 title('Original Hist + 0.1') 