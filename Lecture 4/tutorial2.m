% create and show in bar graph 
fn_gau = fspecial('gaussian',9,1.5); 
figure, bar3(fn_gau,'b'), title('Gaussian filter as a 3D graph'); 
 
% apply on the cameran image 
I_new3 = imfilter(I,fn_gau); 
figure 
subplot(1,3,1), imshow(I), title('Original Image'); 
subplot(1,3,2), imshow(I_new), title('Average Filter'); 
subplot(1,3,3), imshow(I_new3), title('Gaussian Filter'); 
