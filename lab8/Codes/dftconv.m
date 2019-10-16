function [conv_circ,conv_lin] = dftconv(h,x,N)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
lx = length(x);
lh = length(h);
w = zeros(N,1);
z = zeros(N,1);
if N<max([lx lh])
    error('N must be atleast the length  of the longer signal');
end
w = [x;zeros(N-lx,1)];
z = [h;zeros(N-lh,1)];
X = fft(w);
Y = fft(z);
conv_circ = ifft(X.*Y);
w = [x;zeros(lh-1,1)];
z = [h;zeros(lx-1,1)];
X = fft(w);
Y = fft(z);
conv_lin = ifft(X.*Y);
conv_lin1=conv(x,h);
conv_circ1=cconv(x,h,N);
subplot(4,1,1)
stem(conv_circ);
subplot(4,1,2)
stem(conv_circ1);
subplot(4,1,3)
stem(conv_lin);
subplot(4,1,4)
stem(conv_lin1);
end