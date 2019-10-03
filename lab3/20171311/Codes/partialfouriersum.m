function y = partialfouriersum(A,T,t)
% Compute N based on the length of a
y = zeros(size(t));
w=2*pi/T;
N=(length(A)-1)/2;
for k=-N:N
 y = y + A(k+N+1)*( cos(k*w*t)+ 1i*sin(k*w*t) );
end

plot(real(y));
end

