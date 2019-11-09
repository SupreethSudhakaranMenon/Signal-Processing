function []=eleven_three(N,wc)
t=-50:50;
a=sin(0.2*pi*t);
b=sin(0.8*pi*t);
c=a+b;
[w,h] = type1_dft(N,wc);
z=conv(h,c);
C=fftshift(fft(c,1001));
Z=fft(z,1001);
Z=fftshift(Z);
subplot(3,1,1)
stem(abs(C));
subplot(3,1,2)
stem(z);
subplot(3,1,3)
stem(abs(Z));
end