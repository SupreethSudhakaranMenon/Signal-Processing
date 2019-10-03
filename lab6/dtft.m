function X = dtft(x, N0, w)
X = zeros(1,length(w)); 
for j=1:length(w)
    for n=1:length(x)
        X(j) = X(j) + x(n)*exp(1i*w(j)*(n-N0));
    end
end

figure;
subplot(2,1,1);
plot(w,abs(X)); 
subplot(2,1,2);
plot(w,angle(X));

figure;
subplot(2,1,1);
plot(w,real(X));
subplot(2,1,2);
plot(w,imag(X)); 


end
