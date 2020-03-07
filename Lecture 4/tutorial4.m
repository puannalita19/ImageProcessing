%Another way in using lapacian filter – composite mask 

% This script assume the variable fro previous tutorial is active   
f2 = [0 -1 0; -1 5 -1; 0 -1 0] 
I_sharp2 = imfilter(Id,f2); 
figure, subplot(1,2,1), imshow(Id), title('Original Image'); 
subplot(1,2,2), imshow(I_sharp2), title('Composite Laplacian'); 