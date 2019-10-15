clear;clc;
T=2*pi;
t=-3*T:0.001:3*T;
A=squarewaveFS(T,(1/4)*T,100);%generate fourier coefficients of square wave
x=partialfouriersum(A,T,t);%generate square wave with the help of synthesis equation
[o,n]=size(A);
w=1;%fundamental angular frequency is 1 of x(t)
for k=1:n
    A(k)=A(k)*(1/(1+i*(-((n+1)/2)+k)));
end
y=partialfouriersum(A,T,t);%genrated output of LTI system with the help of frequency response of LTI system
%ploting thing is done below
subplot(2,1,1);
plot(t,x);
xlabel("t");
ylabel("x(t)");
title("INPUT");
subplot(2,1,2);
plot(t,y);
ylabel("y(t)");
xlabel("t");
title("OUTPUT");