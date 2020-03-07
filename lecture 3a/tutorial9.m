%Histogram sliding 
%continue ffrom previous exmple 
const = 0.5; 
I3 = I + const; 
bad_values = find(I3 > 1); 
I3(bad_values) = 1; 
subplot(3,2,5), imshow(I3), title('Original Image + 0.5') 
subplot(3,2,6), imhist(I3), axis tight, ... 
title('Original Hist + 0.5') 