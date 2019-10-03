N = 1; 
D = [1 -0.9]; 
w = -3*pi:0.01:3*pi; 
[h,w] = freqz(N,D,w);
plot(w,real(h)); 
title("Plot frequency response of filter"); 
xlabel("frequency w");
ylabel("Magnitude (Real(H(z)))");
