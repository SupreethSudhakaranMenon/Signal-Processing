clear;clc;
T=2*pi;
t=-3*T:0.001:3*T;
A=ones(1,15);%given fourier coefficients
x=partialfouriersum(A,T,t);%generated x with the help of synthesis equation
[o n]=size(A);
w=1;%fundamental angular frequency
wc=3.5;%cut off of low pass filter
for k=1:n
    if abs((-((n+1)/2)+k)*w)>wc
        A(k)=0;
    end
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