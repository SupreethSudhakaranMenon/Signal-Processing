function y = hanningFIR()
L= 51;
t = 0:L-1;
y = hann(L);
%y = [j' ones(1,1001-L)];

k = fft(y,1001);
z = fftshift(k);
l = abs (z);
m = mag2db(l);

subplot(4,1,1);
plot (t,y);
title('time domain rep of hanning window (L=51)');
xlabel('time');
ylabel('magnitude');
subplot(4,1,2);
plot(0:1000, m);
title('frequency domain rep of hanning window in decibels(L=51)');
xlabel('time');
ylabel('magnitude in decibels');

L= 71;
t = 0:L-1;
y = hann(L);
%y = [j' ones(1,1001-L)];

k = fft(y,1001);
z = fftshift(k);
l = abs (z);
m = mag2db(l);

subplot(4,1,3);
plot(0:1000, m);
title('frequency domain rep of hanning window in decibels(L=71)');
xlabel('time');
ylabel('magnitude in decibels');

L= 91;
t = 0:L-1;
y = hann(L);
%y = [j' ones(1,1001-L)];

k = fft(y,1001);
z = fftshift(k);
l = abs (z);
m = mag2db(l);
subplot(4,1,4);
plot(0:1000, m);
title('frequency domain rep of hanning window in decibels(L=91)');
xlabel('time');
ylabel('magnitude in decibels');
