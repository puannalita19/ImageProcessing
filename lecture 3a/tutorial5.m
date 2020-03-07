 %Use bitxor op to fiind the different of two images 
 I = imread('cameraman.tif'); 
 I2 = imread('cameraman2.tif'); 
 I_xor = bitxor(I,I2); 
 figure; subplot(1,3,1), imshow(I), title('Image 1'); 
 subplot(1,3,2), imshow(I2), title('Image 2'); 
 subplot(1,3,3), imshow(I_xor,[]), title('XOR Image'); 
 
 %Make lindsay eyes dark ..  
 I = imread('lindsay.tif'); 
 I_adj = imdivide(I,1.5); 
 subplot(1,2,1); imshow(I); 
 subplot(1,2,2); imshow(I_adj);  
 bw = im2uint8(roipoly(I)); 
 
 % Generate a mask by creating a region of interest polygon. 
 % Use logic operators to show the darker image only within the region of 
 % interest while displaying the original image elsewhere.  
 bw_cmp = bitcmp(bw);            %mask complement 
 roi = bitor(I_adj,bw_cmp);      %roi image 
 not_roi = bitor(I,bw);          %non_roi image 
 new_img = bitand(roi,not_roi);  %generate new image 
 imshow(new_img)                 %display new image 