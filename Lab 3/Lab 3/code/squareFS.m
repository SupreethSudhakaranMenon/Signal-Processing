function A=squareFS(T,T1,t,N)
% T=time period
% amplitude 1 in [-T1 T1]
% t is sampled continuous time
% N is number of fourier series coefficients to give as output
for k=-N:N
    if(k~=0)
          A(N+1+k)=sin(k*2*pi*(1/T)*T1)/(pi*k);
          % it is the general fourier series coefficient formula
    else
        A(N+1)=2*T1/T;
        % for k=0 the coefficent is the average of the funtion in one
        % period
    end
end
end