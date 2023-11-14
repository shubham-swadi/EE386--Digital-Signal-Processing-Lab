close all;

a = 1 + mod(157, 3);

%Sampling frequency
fs = 100;

%Creating time axis
dfs = 1/fs;
t = 0:dfs:10-dfs;

%Generating function f
lower_end = 2 + 2*a; 
upper_end = 5 + 5*a;
slope = (upper_end - lower_end) / (10);
f = lower_end + t * slope;
%plot(t, f)

%Generating chirp signal
x = sin(2*pi*f.*t);
figure;
plot(t,x)
title("Chirp Signal")
xlabel('Time (s)')
ylabel('Amplitude')

% Plot frequency domain representation using FFT
figure;
Nfft = 1024; % number of FFT points
X = fft(x, Nfft);
f = linspace(0, fs, Nfft);
plot(f, abs(X)/Nfft);
xlabel('Frequency (Hz)');
ylabel('Normalized Magnitude');
title('Frequency Spectrum of Chirp Signal');

% Plot spectrogram of the signal
%Hamming window of 100 points
figure;
spectrogram(x, hamming(100), 10, 1024, 100);
ylabel('Time (s)');
xlabel('Frequency (Hz)');
xlim([0 25])
title('Spectrogram of Chirp Signal [hamming(100)]');

%Hamming window of 150 points
figure;
spectrogram(x, hamming(150), 10, 1024, 100);
ylabel('Time (s)');
xlabel('Frequency (Hz)');
xlim([0 25])
title('Spectrogram of Chirp Signal [hamming(150)]');

%Hamming window of 200 points
figure;
spectrogram(x, hamming(200), 10, 1024, 100);
ylabel('Time (s)');
xlabel('Frequency (Hz)');
xlim([0 25])
title('Spectrogram of Chirp Signal [hamming(200)]');

%Hanning window of 100 points
figure;
spectrogram(x, hanning(100), 10, 1024, 100);
ylabel('Time (s)');
xlabel('Frequency (Hz)');
xlim([0 25])
title('Spectrogram of Chirp Signal [hanning(100)]');

%Hanning window of 150 points
figure;
spectrogram(x, hanning(150), 10, 1024, 100);
ylabel('Time (s)');
xlabel('Frequency (Hz)');
xlim([0 25])
title('Spectrogram of Chirp Signal [hanning(150)]');

%Hanning window of 200 points
figure;
spectrogram(x, hanning(200), 10, 1024, 100);
ylabel('Time (s)');
xlabel('Frequency (Hz)');
xlim([0 25])
title('Spectrogram of Chirp Signal [hanning(200)]');

%Blackman window of 100 points
figure;
spectrogram(x, blackman(100), 10, 1024, 100);
ylabel('Time (s)');
xlabel('Frequency (Hz)');
xlim([0 25])
title('Spectrogram of Chirp Signal [blackman(100)]');

%Blackman window of 150 points
figure;
spectrogram(x, blackman(150), 10, 1024, 100);
ylabel('Time (s)');
xlabel('Frequency (Hz)');
xlim([0 25])
title('Spectrogram of Chirp Signal [blackman(150)]');

%Blackman window of 200 points
figure;
spectrogram(x, blackman(200), 10, 1024, 100);
ylabel('Time (s)');
xlabel('Frequency (Hz)');
xlim([0 25])
title('Spectrogram of Chirp Signal [blackman(200)]');