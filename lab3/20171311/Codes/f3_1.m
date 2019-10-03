A=ones(1,15);
T=2*pi;
t=-3*T:0.001:3*T;
x=partialfouriersum(A,T,t);

subplot(2,2,1)
plot(t,x)
title("Original Image")
xlabel("t")
ylabel("Amplitude")


N=7;
B1=zeros(size(A));
for k=-N:1:N
    if k>=-3 && k<=3
        B1(k+N+1)=1;     %calculating FS coeff of high pass
    end
end

C1=A.*B1;     %FS coeff of y(t)
y=partialfouriersum(C1,T,t);

subplot(2,2,2)
plot(t,y)
title("Low Pass Filter")
xlabel("w")
ylabel("Amplitude")

%%
B2=zeros(size(A));
for k=-N:1:N
    if k>-3 && k>3
        B2(k+N+1)=1;      %calculating FS coeff of low pass
    end
end
C2=A.*B2;       %FS coeff of y(t)
y2=partialfouriersum(C2,T,t);
subplot(2,2,3)
plot(t,y2)
title("High Pass Filter")
xlabel("w")
ylabel("Amplitude")

%%
B3=zeros(size(A));
for k=-N:1:N
    B3(k+N+1)=A(k+N+1)*(1/(1+j*k*1));     %calculating FS coeff of H(jw)
end
C3=A.*B3;      %FS coeff of y(t)
y3=partialfouriersum(C3,T,t);
subplot(2,2,4)
plot(t,y3)
title("H(jw)")
xlabel("w")
ylabel("Amplitude")





