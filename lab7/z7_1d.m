N = 1; 
D = [1 -0.9]; 
[h,t] = impz(N,D); 
stem(t,h); 
title("Plot impulse response of filter"); 
xlabel("time"); 
ylabel("Magnitude(h(n))"); 