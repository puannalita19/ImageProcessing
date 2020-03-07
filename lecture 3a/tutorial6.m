%Displaying an image and its histogram using 256 bins 
I = imread('circuit.tif'); 
figure,  subplot(2,2,1), imshow(I), title('Image') 
subplot(2,2,2),  imhist(I,256), axis  tight, title('Histogram') 
 
%Using different bins 
subplot(2,2,3), imhist(I,64),  axis  tight, ... 
title('Histogram with  64 bins') 
subplot(2,2,4), imhist(I,32),  axis  tight, ... 
title('Histogram with  32 bins') 

%Get the value of the hist to C and normalize the value  
c = imhist(I,32); 
c_norm = c / numel(I); 

%Displaying using bar chart 
figure, subplot(1,2,1), bar_1 = bar(c); 
set(gca, 'XLim', [0 32], 'YLim', [0 max(c)]); 
set(gca, 'XTick', [0:8:32], 'YTick', ... 
[linspace(0,7000,8) max(c)]); 
set(bar_1, 'FaceColor', 'r'), title('Bar Chart') 
subplot(1,2,2), bar_2 = bar(c_norm); 
set(gca, 'XTick', [0:8:32], 'YTick', ... 
[linspace(0,0.09,10) max(c_norm)]) 
xlim([0 32]), ylim([0 max(c_norm)]) 
title('Normalized Bar Chart') 
set(bar_2, 'FaceColor', 'g') 