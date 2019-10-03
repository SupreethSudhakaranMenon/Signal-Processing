function [xr1, xr2, xr3] = aliasing() 

Ts1 = 0.1; 
Ts2 = 0.2; 
Ts3 = 0.3;
t_fine = 0:0.0001:2; 
t1 = 0:0.1:2; 
t2 = 0:0.2:2; 
t3 = 0:0.3:2; 
x1 = cos(5*pi*t1); 
x2 = cos(5*pi*t2); 
x3 = cos(5*pi*t3); 
y = cos(5*pi*t_fine); 




c1 = zeros(size(t_fine)) ; 
for n=0:20
    %c1 = c1 + (1+sin(3*pi*n*Ts1) + cos(5*pi*n*Ts1))*sinc((t_fine - n*Ts1)/Ts1); 
    c1 = c1+x1(n+1)*sinc((1/Ts1)*(t_fine - n*Ts1)); 
end

c2 = zeros(size(t_fine)) ; 
for n=0:10
    %c2 = c2 + (1+sin(3*pi*n*Ts2) + cos(5*pi*n*Ts2))*sinc((t_fine - n*Ts2)/Ts2); 
    c2 = c2 +x2(n+1)*sinc((1/Ts2)*(t_fine - n*Ts2)); 
end

c3 = zeros(size(t_fine)) ; 
for n=0:6
    %c3 = c3 + (1+sin(3*pi*n*Ts3) + cos(5*pi*n*Ts3))*sinc((t_fine - n*Ts3)/Ts3); 
    c3 = c3+x3(n+1)*sinc((1/Ts3)*(t_fine - n*Ts3)); 
end


plot(t1,x1, 'ro',t_fine, c1, 'rx', t_fine,y, 'r--'); pause(5); 
plot(t2,x2, 'bo',t_fine, c2, 'bx', t_fine,y, 'r--'); pause(5); 
plot(t3,x3, 'go',t_fine, c3, 'gx', t_fine,y, 'r--'); pause(5);
end