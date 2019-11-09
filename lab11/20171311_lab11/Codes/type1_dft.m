function [w,h] = type1_dft(N,wc)
w = 0:2*pi/N:2*pi*(N-1)/N;
Ad = zeros(1,N);
for n=1:length(w)
    if w(n) < wc | w(n) > (2*pi-wc)
        Ad(n)=1; 
    end 
end 
M = (N-1)/2; 
phi = exp(-1j*w*M); 
H = Ad.*phi; 
h = ifft(H); 
h = real(h); 
subplot(3,1,1); 
plot(w,h); 
subplot(3,1,2); 
F = fft(h,1001); 
F = fftshift(F); 
plot(-500:500,abs(F)); 
subplot(3,1,3); 
plot(-500:500,angle(F)); 
end 