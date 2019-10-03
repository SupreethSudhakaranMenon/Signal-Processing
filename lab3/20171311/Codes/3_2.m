T1=0.25;
for T=1:0.5:20
    N=round(2*T/T1);     %calculating N for each iteration
    t=-3*T:0.001:3*T
    [A,y,sq] = squareFS(T,T1,t,N);      %calc. A(k) and Square wave for each iteration
   
    subplot(2,1,1)
    plot(sq)
    title("Square Wave")
    xlabel("Angular Freq")
    ylabel("Amplitude")

    
    subplot(2,1,2)
    stem(A,'Color',[ 0 0.49803921 0])
    title("Fourier Wave to Fourier Transform")
    xlabel("Angular Freq")
    ylabel("Amplitude")

    pause(0.5);
end
    
    