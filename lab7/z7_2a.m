for r = 0.25:0.25:1 
for q = 0:pi/6:pi
zplane([0 1 0],[1 -2*r*cos(q) r*r]); 
title ("z domain plot") ; 
xlabel ("Real part(z)"); 
ylabel ("Imaginarypart(z)"); 
pause(1); 
end
end 
