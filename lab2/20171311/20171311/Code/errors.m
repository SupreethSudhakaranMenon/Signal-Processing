T1=0.1;T=1;t=-0.5:0.01:0.5;N=1000;
[A,y,sq] = squareFS(T,T1,t,N);
y1=zeros(1,N);
y2=zeros(1,N);
n=1:N;
for n1=1:N
    [A,y,sq] = squareFS(T,T1,t,n1);
    y1(n1)=max(abs(y-sq));%calculating max abs error for each N for all the values of T we are comparing ideal signal and 
    % regenerated signal.
    y2(n1)=mean( (y-sq).*(y-sq) ); % calculating mean squared error for each N , calculating variance.
end

figure
plot(n,y1)
figure
plot(n,y2)
