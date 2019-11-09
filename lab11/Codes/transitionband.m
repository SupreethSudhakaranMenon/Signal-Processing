function [h] = transitionband(N,wc,tbvals)
% Create vector of N equally-spaced frequencies
w = 0:2*pi/N:2*pi*(N-1)/N;
% Create ideal amplitude response of low-pass filter (remember,
%it should be symmetric about w = pi)
Ad=zeros(size(w));
%for p=0:2*pi/N:2*pi
for p=0:N-1
if(p<=(wc*N/(2*pi)) | p>=(N-wc*N/(2*pi)))
        Ad(p+1)=1;
    else
        Ad(p+1)=0;
    end
end
% Determine which indices correspond to the samples just to the
% left and the right of the cutoff frequency (if cutoff freq
%falls exactly
% on a sample, use that sample and the one to the right).
wleftind = floor(wc*N/(2*pi))+1;
wrightind = wleftind + 1;
wrightind1 = floor(N-(wc*N/(2*pi)))+1;
wleftind1 = wrightind1 - 1;
% Update amplitude response with given transition band values at
%these frequencies (remember the symmetry around pi);
Ad(wleftind) = tbvals(1);
Ad(wrightind) = tbvals(2);
Ad(wleftind1) = tbvals(2);
Ad(wrightind1) = tbvals(1);
% Compute linear phase vector using correct slope
phi=zeros(size(w));
phi = exp(-j*w*(N-1)/2);
% Compute ideal frequency samples as product of Ad and phi
H = Ad.*phi;
% Compute filter taps via inverse DFT
h = ifft(H);
% Make result real to get rid of near-zero imaginary parts
h = real(h);
% Compute finely-spaced frequency response of designed filter
[H,wfine] = freqz(h,1,1024);
H=fft(h,1024);
H=fftshift(H);
figure(1);
plot(h);
figure(2);
subplot(2,1,1)
plot(wfine,abs(H));
subplot(2,1,2)
plot(wfine,angle(H));
end