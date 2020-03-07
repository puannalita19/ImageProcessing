%Call function . Make sure the image is within the same folder 
imgIn=imread('lindsay.tif'); 
figure('Position', [0 0 10 10]); 
title('source'); 
imshow(imgIn);   

figure('Position', [0 400 10 10]); 
title('half toned'); 
imgOut = half_toning(imgIn); 
imshow(imgOut);