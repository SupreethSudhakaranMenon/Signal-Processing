function y = partialfouriersum(A,T,t)
% takes input A as coefficients vector,T as time period and t as vector of time sampels 
y=zeros(size(t));
[o n]=size(A);
n=n/2;
n=floor(n);
y=0;
for k=-n:n
    y=y+A(n+1+k)*exp(1i*k*2*pi*(1/T)*t);
end
% y is the partial sum of exponential which approches to
% correct signal if A has taken all valid coefficents
end

