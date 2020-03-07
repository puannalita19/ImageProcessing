%Use division operation to dynamically darken the image 
I = imread('moon.tif'); 
I2 = imdivide(I,2); 
figure 
subplot(1,3,1), imshow(I), title('Original Image'); 
subplot(1,3,2), imshow(I2), title('Darker Image w/ Division'); 

%Get the same result using multiply 
I3 = immultiply(I,0.5); 
subplot(1,3,3), imshow(I3), title('Darker Image w/ Multiplication'); 