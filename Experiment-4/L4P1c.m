f = 15*2;
fs = 120;

dt = 1/fs;
t = 0:dt:2-dt;

x = sin(2*pi*f*t);

n = 120;
y3 = fft(x, n);
f3 = (0:n-1)*120/n;
N3 = length(y3);
stem(f3, abs(y3/N3))
title("Magnitude of DFT of 120 samples");
xlabel("Frequency (Hz)");
ylabel("Normalized Amplitude");

