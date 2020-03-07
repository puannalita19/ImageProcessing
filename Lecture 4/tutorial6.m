% Subtract the blurred image from original image to generate a sharpening  image. 
I_sharpening = imsubtract(I,I_blur); 
 
% Add sharpening image to original image to produce final result.  
I_sharp2 = imadd(I,I_sharpening); 
figure, subplot(1,2,1), imshow(I), title('Original Image'); 
subplot(1,2,2), imshow(I_sharp2), title('Sharp Image'); 
 