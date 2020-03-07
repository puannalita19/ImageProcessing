 %Histogram streching 
 img_limits = stretchlim(I); 
 I_stretch = imadjust(I,img_limits,[]); 
 figure; subplot(3,2,1), imshow(I), title('Original Image') 
 subplot(3,2,2), imhist(I), axis tight, ... 
 title('Original Histogram') 
 subplot(3,2,3), imshow(I_stretch), ... 
 title('Stretched Image') 
 subplot(3,2,4), imhist(I_stretch), axis tight, ... 
 title('Stretched Histogram') 

 % Perform histogram stretching with _imadjust_ using default parameters and  
 % confirm that the results are identical to the ones obtained before. 
 I_stretch2 = imadjust(I); 
 subplot(3,2,5), imshow(I_stretch2), ... 
 title('Stretched Image') 
 subplot(3,2,6), imhist(I_stretch2), axis tight, ... 
 title('Stretched Histogram') 
 I_stretch_diff = imabsdiff(I_stretch, I_stretch2); 
 figure, imshow(I_stretch_diff,[]) 
 min(I_stretch_diff(:)) 
 max(I_stretch_diff(:)) 