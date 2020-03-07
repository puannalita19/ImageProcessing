%How to Display a Fourier Spectrum using MATLAB
f=zeros(30,30); %Create a black 30x30 image 
f(5:24,13:17)=1; %With a white rectangle in it. 
imshow(f,'InitialMagnification', 'fit');  % show the image
F=fft2(f);   %Calculate the DFT.  

%There are real and imaginary parts to F. Use the abs function to compute the 
% magnitude of the combined components. 
F2=abs(F); 
figure, imshow(F2,[], 'InitialMagnification','fit')  % show the image

%To create a finer sampling of the Fourier transform, you can add zero % 
%padding to f when computing its DFT. Also note that we use a power of 2, 
%2^256 . This is because the FFT -Fast Fourier Transform - is fastest when the 
% image size has many factors. 
F=fft2(f, 256, 256); F2=abs(F); 
figure, imshow(F2, []) 

%The zero-frequency coefficient is displayed in the upper left hand corner. To 
% display it in the center, you can use the function fftshift.
F2=fftshift(F); F2=abs(F2); figure,imshow(F2,[])

%In Fourier transforms, high peaks are so high they hide details. 
%Reduce contrast with the log function. 
F2=log(1+F2); figure,imshow(F2,[]) 