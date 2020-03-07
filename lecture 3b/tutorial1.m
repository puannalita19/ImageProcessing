%Halftoning function () 
function [ imgOut ] = half_toning( imgIn ) 
imgOut = zeros(size(imgIn)*2);   

for i = 1 : size(imgIn, 1)   
 for j = 1: size(imgIn, 2)     
  if imgIn(i, j) > 50       
      imgOut(i*2, j*2 + 1) = 1;     
  end
  if imgIn(i, j) > 101       
      imgOut(i*2 + 1, j*2) = 1;     
  end
  if imgIn(i, j) > 152       
      imgOut(i*2 + 1, j*2 + 1) = 1;     
  end
  if imgIn(i, j) > 203       
      imgOut(i*2, j*2) = 1;     
  end
 end
end
end
 