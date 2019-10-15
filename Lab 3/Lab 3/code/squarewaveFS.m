function A=squarewaveFS(T,T1,N)
w=2*pi/T;
A=zeros(2*N+1);
for k=-N:N
    if(k~=0)
          A(N+1+k)=(-2/(T*1j*k*w))+2*(cos(k*w*T1)/(T*1j*k*w));
          % it is the general fourier series coefficient formula
    else
        A(N+1)=0;
        % for k=0 the coefficent is the average of the funtion in one
        % period
    end
end
end