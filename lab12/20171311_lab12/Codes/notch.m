function [b,a] = notch(w0,r)
% Compute denominator polynomial from r and w0
a =zeros(1,3);
a=[1,-2*r*cos(w0),r*r]
% Compute numerator polynomial from w0
b =zeros(1,3);
b=[1,-2*cos(w0),1];
% Determine gain so that frequency response has magnitude 1 at w=0
b = b*(1-2*r*cos(w0)+r*r)/(1-2*cos(w0)+1);
% Diagnostic display
freqz(b,a);
figure(1);
fvtool(b,a);

%t=0:pi/50:2*pi;
t=0:500;
%y=zeros(size(t));
y=filter(b,a,sin(w0*t)+sin(2*w0*t));
x=sin(w0*t)+sin(2*w0*t);
z=x-y;
figure(2);
subplot(3,1,1)
plot(t,x);
subplot(3,1,2)
plot(t,y);
subplot(3,1,3)
plot(t,z);
end