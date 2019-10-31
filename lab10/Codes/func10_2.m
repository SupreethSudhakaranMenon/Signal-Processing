function func10_2(N,window,len)


% window is the function which we are using as the window, which is multiplied to the shifted sinc function 
% this is done to reduce the disturbances in the filter's frequency response   

% window we use are of 5 types 

% rectangular 
% bartlett
% hamming
% hanning 
% blackman


k = (N-1)/2;
x = -k:k;
f = zeros(1,N);
for x = -k:k;
    f(x+k+1) = (sin(0.4*pi*x)/(pi*x))*(window(x+k+1));
end
f(k+1)=1/pi;
F = fftshift(abs(fft(f,len)));

subplot(4,1,1);
%stem(0:1000,[f,zeros(1,len-N)]);
stem(f);
title("Low pass filter (blackman window) - impulse response");


subplot(4,1,2);
stem(-pi:2*pi/1000:pi,F);
title("Low pass filter (blackman window) - frequency response");

for x = -k:k;
    f(x+k+1) = f(x+k+1)*((-1)^x);
    f(k+1)=1/pi;
end

subplot(4,1,3);
%stem(0:1000,[f,zeros(1,len-N)]);
stem(f);
title("High pass filter (blackman window) - impulse response");


FH = fftshift(abs(fft(f,len)));

subplot(4,1,4);
stem(-pi:2*pi/1000:pi,FH);
title("High pass filter (blackman window) - frequency response");


end
