%Problem 1

a = 1 + mod(157, 3);

f = 15*2;
fs = 120;

dt = 1/fs;
t = 0:dt:2-dt;

x = sin(2*pi*f*t);

y1 = fft(x, 120);
y2 = fft(x, 130);

f1 = (0:119)*120/120;
f2 = (0:129)*120/130;

N1 = length(y1);
N2 = length(y2);

subplot(2,1,1)
stem(f1, abs(y1/N1))
title('Magnitude of DFT for first 120 samples')
xlabel('Frequency (Hz)')
ylabel('Normalized Amplitude')

subplot(2,1,2)
stem(f2, abs(y2/N2))
title('Magnitude of DFT for first 130 samples')
xlabel('Frequency (Hz)')
ylabel('Normalized Amplitude')