%Load two images and display them 
I = imread('cameraman.tif'); 
J = imread('cameraman2.tif'); 
figure(1); subplot(1,2,1), imshow(I), title('Original Image'); 
subplot(1,2,2), imshow(J), title('Altered Image'); 

%Subtract both image and display result 
diffim = imsubtract(I,J); 
figure(2) 
subplot(2,2,1), imshow(diffim), title('Subtracted Image'); 

%Zoom in the using zoom tool at the right area of the image. 
diffim2 = imabsdiff(I,J); 
subplot(2,2,2), imshow(diffim2), title('Abs Diff Image'); 