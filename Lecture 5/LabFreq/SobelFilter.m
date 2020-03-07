%Create the Frequency Filtered Image
f = imread('coat_of_arms.png');
h = fspecial('sobel');
PQ = paddedsize(size(f));
F = fft2(double(f), PQ(1), PQ(2));
H = fft2(double(h), PQ(1), PQ(2));
F_fH = H.*F;
ffi = ifft2(F_fH);
ffi = ffi(2:size(f,1)+1, 2:size(f,2)+1);

%Display results (show all values)
figure, imshow(ffi,[])
pause;   

%The abs function gets correct magnitude
%when used on complex numbers
ffim = abs(ffi);
figure, imshow(ffim, []);

pause;
%threshold into a binary image
figure, imshow(ffim > 0.2*max(ffim(:)));
