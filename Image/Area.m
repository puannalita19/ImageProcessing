function [A]= Area(a,b,c)
% comment
s = (a+b+c)/2;
A = sqrt(s*(s-1)*(s-b)*(s-c));   
end