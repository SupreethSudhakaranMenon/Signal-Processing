clear;clc;
T=2*pi;
t=-3*T:0.001:3*T;
A=[1/2 0 0 0 -1/(2*1i) 0 1/(2*1i) 0 0 0 1/2];%{a_k} of sin(t)+cos(5t)
x=partialfouriersum(A,T,t);%generated sint(t)+cos(5t) with the help of synthesis equation
[o,n]=size(A);
w=1;%fundamental angular frequency is 1 of x(t)
for k=1:n
    A(k)=A(k)*(1/(1+(1i*(-((n+1)/2)+k)*w)));
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