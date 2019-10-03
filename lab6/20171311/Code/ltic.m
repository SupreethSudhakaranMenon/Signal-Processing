w = -2*pi:0.01:2*pi; 
%h = zeros(length(w)); 
h = 1 ./ (1-(0.9*exp(-1j.*w))); 
figure ; 
subplot(211); plot(w,abs(h)); 
hold on; 
subplot(212); plot(w,angle(h)); 
hold on; 

figure ;
subplot(211); plot(w,real(h)); 
hold on; 
subplot(212); plot(w,imag(h)); 
hold on; 
