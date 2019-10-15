clear;clc;
T1=1/4;
t=-30:0.001:30;
for T=1:0.5:20 %increasinig time period of square pulse
    n=round(2*T/T1);% n increases
    A=squareFS(T,T1,t,n); %generate fourier coefficients for differrent T
    k=-n:n;
    subplot(2,1,2);
    %plot coefficients of square pulse
    stem(k,A);
    title("coefficents");
    xlabel("k");
    ylabel("a_k");
    subplot(2,1,1);
    %plot square pulse
    y=partialfouriersum(A,T,t);
    plot(t,y);
    title("square pulse ");
    xlabel("t");
    ylabel("square pulse");
    pause(0.5);
end
%as T increases the a_k values converges to the envelope of the plot as w
%changes and converges to zero if T tends to infinity so here if for example T=Tx
%and k0 a_k0=0 but if T=Ty and Ty>Tx then a_k1=0 where k1>k0 so then a_k
%converges to envelope of the plot if x axis is continuous w.