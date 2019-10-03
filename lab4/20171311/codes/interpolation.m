function [a,b,c] = interpolation() 
t_fine = 0:0.001:2;
t_sample = 0:0.1:2; 
Ts = 0.1; 
x = 1 + sin(3*pi*t_sample) + cos(5*pi*t_sample);
y = 1 + sin(3*pi*t_fine) + cos(5*pi*t_fine);


figure
plot(t_sample,x);
figure
plot(t_fine,y);

a = interp1(t_sample, x, t_fine, 'previous'); 
%plot(t_fine,a);
b = interp1(t_sample, x, t_fine, 'linear'); 
%plot(t_fine,b); 
c = zeros(size(t_fine));
%omega = (((2*pi)/Ts)/2);

for n=0:20
    %c = c + Ts * (1 + sin(3*pi*n*Ts) + cos(5*pi*n*Ts)) * sin(omega*(t_fine-(n*Ts))/(pi*(t_fine - (n*Ts)))); 
    c = c + ((1 + sin(3*pi*n*Ts) + cos(5*pi*n*Ts)) * sinc(10*(t_fine-n*0.1))); 
    
end
figure
plot(t_sample, x, 'r', t_fine, a, 'g', t_fine, b, 'k', t_fine, c, 'ro'); 


