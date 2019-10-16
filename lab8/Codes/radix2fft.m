
function X = radix2fft(x)
N = length(x); 
X = zeros(1,N); 
if ~isequal(unique(factor(N)),2)
    error('N is not a power of 2!'); 
end

if N == 2
    X = [x(1) + x(2) ; x(1) - x(2)]; 
else 
    x_even = x(1:2:end); 
    x_odd = x(2:2:end); 
    X_even = radix2fft(x_even); 
    X_odd = radix2fft(x_odd); 
    for p = 1:N/2
        X(p) = X_even(p)+exp(-1i*(p-1)*2*pi/N)*X_odd(p); 
        X(p+N/2) = X_even(p) - exp(-1i*(p-1)*2*pi/N)*X_odd(p); 
    end
end
end
