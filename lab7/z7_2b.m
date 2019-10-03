w = -3*pi:0.01:3*pi; 
r = 0.95; 
for q = 0:pi/6:pi
    [h,w] = freqz([0 1 0], [1 -2*r*cos(q) r*r],w);
    plot(w,real(h));
    title("Plot frequency response of filter") ;
    xlabel("frequency w"); 
    ylabel("Magnitude(Real(H(z)))"); 
    pause(1) ; 
end
