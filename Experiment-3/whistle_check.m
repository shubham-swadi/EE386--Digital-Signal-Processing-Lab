%Problem 2- Whistling Keylock
%Program to find fundamemtal frequency of whistle and compare it to sample
%whistle

%Record whistle
whistle_recorder()

%Read whistle from wav file
[w, fs] = audioread('whistle.wav');

%Plotting the whistle vs time
figure;
plot(w)
xlabel('Time (s)');
ylabel('Amplitude');
title('Plot of whistle')

%Setting sample fundamental frequency and tolerance values
ff = 1774.6667;
tolerance = 0.05;
upper_ff = (1+tolerance) * ff;
lower_ff = (1-tolerance) * ff;

%Plotting magnitude spectrum of whistle
magnitude_spectrum(w, fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum of whistle')

%Finding fundamental frequency of whistle
N = length(w);
y = fft(w);
mag_spectrum = abs(y);
mag_spectrum_db = 20 * log10(mag_spectrum);
f = (0:N-1) * (fs/N);
[~, idx] = max(mag_spectrum_db);
fundamental_frequency = f(idx);

%Using if-else to check whether the whistle can open the lock
if fundamental_frequency <= upper_ff && fundamental_frequency >= lower_ff
    disp('ACCESS GRANTED')
else
    disp('ACCESS DENIED')
end
