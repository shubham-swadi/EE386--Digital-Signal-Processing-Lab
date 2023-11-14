close all;

[x1, fs1] = audioread("instru2.wav");
[x2, fs2] = audioread("Opera.wav");

figure;
spectrogram(x1, blackman(100), 10, 1024, fs1)
title('Spectrogram of instru file')

figure;
Nfft = 1024;
X1 = fft(x1, Nfft);
f1 = linspace(0, fs1, Nfft);
plot(f1, abs(X1));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum of instru file');

figure;
spectrogram(x2, blackman(100), 10, 1024, fs2)
title('Spectrogram of Opera file')

figure;
Nfft = length(x2);
X2 = fft(x2, length(x2));
f2 = linspace(0, fs2, Nfft);
plot(f2, abs(X2));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum of opera file');