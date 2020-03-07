% using mean/averaging filter using  fpspecial() function 
%figure 1
I = imread('cameraman.tif'); 
figure, subplot(1,2,1), imshow(I), title('Original Image'); 
fn = fspecial('average') 
I_new = imfilter(I,fn); 
subplot(1,2,2), imshow(I_new), title('Filtered Image'); 

%Create and use non-uniform filter on the same image 
%figure 2
fn2 = [1 2 1; 2 4 2; 1 2 1] 
fn2 = fn2 * (1/16) 
I_new2 = imfilter(I,fn2); 
figure, subplot(1,2,1), imshow(I_new), title('Uniform Average'); 
subplot(1,2,2), imshow(I_new2), title('Non-uniform Average'); 