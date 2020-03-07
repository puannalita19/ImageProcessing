%Histogram shrinking 
I = imread('salzburg.png'); 
I_shrink = imadjust(I,stretchlim(I),[0.25 0.75]); 
figure; subplot(2,2,1), imshow(I), title('Original Image') 
subplot(2,2,2), imhist(I), axis tight, ... 
title('Original Histogram') 
subplot(2,2,3), imshow(I_shrink), ... 
title('Shrunk Image') 
subplot(2,2,4), imhist(I_shrink), axis tight, ... 
title('Shrunk Histogram') 

% Display the transformation function for the adjustment performed in the  
% previous step. 
X = reshape(I,1,prod(size(I))); 
Y = reshape(I_shrink,1,prod(size(I_shrink))); 
figure, plot(X,Y,'.') 
xlim([0 255]); ylim([0 255]); 
xlabel('Original Image'); 
ylabel('Adjusted Image'); 