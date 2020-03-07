%Histogram shrinking with gamma value 
I_shrink = imadjust(I,stretchlim(I),[0.25 0.75],2); 
X = reshape(I,1,prod(size(I))); 
Y = reshape(I_shrink,1,prod(size(I_shrink))); 
figure 
subplot(2,2,1), imshow(I), title('Original Image') 
subplot(2,2,2), imhist(I), axis tight, ... 
title('Original Histogram') 
subplot(2,2,3), imshow(I_shrink), title('Adjusted Image') 
subplot(2,2,4), imhist(I_shrink), axis tight, ... 
title('Adjusted Histogram') 
figure, plot(X,Y,'.'), xlim([0 255]), ylim([0 255]) 