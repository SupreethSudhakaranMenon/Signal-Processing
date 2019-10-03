function [A,y,sq] = squareFS(T,T1,t,N)
% take square wave form , for this we calc fourier transform 
% First, compute A vector (via formula)
w=2*pi/T;
A=zeros(1,2*N+1);
for k=-N:N
  for t1=-T1:0.01:T1
      A(k+N+1)= A(k+N+1)+ exp(-1*1i*k*w*t1);
  end   
end
plot(real(A));
figure;
A=A/(2*N+1);
% Compute Fourier partial sum (see Problem 1.1)
y = zeros(size(t));
y = partialfouriersum(A,T,t);
% In this problem, we know the signal is real
y = real(y);
% Determine the ideal periodic square pulse at the given
%time samples
sq = rectangularPulse(-T1,T1,t);
% here t is used for how much of time period it should run.
end
