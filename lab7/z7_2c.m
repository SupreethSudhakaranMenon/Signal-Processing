w = -3*pi:0.01:3*pi; 
q = pi/ 3; 
for r = 0:0.2:1
    [h,w]= freqz([0 1 0], [1 -2*r*cos(q) r*r],w); 
    plot(w,real(h)); 
    title("Plot frequency response of the filter"); 
    xlabel("frequency w"); 
    ylabel("Magnitude(Real(H(z)))");
    pause(1);
end