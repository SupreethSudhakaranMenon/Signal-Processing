function y = partialfouriersum(A,T,t)
% A = array
% T = Time period
% t = array -2:0.01:2
% Compute N based on the length of a
y = zeros(size(t));
% wrote y as a function of time 
% size(t) is an array size t
w=2*pi/T;
% w = freq
N=(length(A)-1)/2;
% 401 is size of array
% -2 to 2 , gap of 0.01
for k=-N:N
    % here gap is 1
    % indexing here 
    % 1 to 2N+1
 y = y + A(k+N+1)*( cos(k*w*t)+ 1i*sin(k*w*t) );
 % y wrt t
end


plot(t,real(y));
% to remove imaginary part
end

