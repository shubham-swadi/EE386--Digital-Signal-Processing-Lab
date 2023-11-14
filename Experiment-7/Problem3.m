% Problem 3- Filtering using FIR filters

% Load the instru2.wav file
[y1, fs] = audioread("E:\College\Sem 5\EE386 - DSP Lab\Experiment-7\instru2.wav");

% Plotting ther spectrogram of the file
figure;
spectrogram(y1, hanning(101), 10, 256, fs)
title('Spectrogram of instru2.wav')
% Desiging a FIR filter to extract the fundamental
% The upper and lower limit frequencies of the fundamental taken from the
% spectrogram is used for the bandpass filter
% The frequencies are further normalized by dividing with fs/2
b3 = fir1(99, [600/(fs/2) 1000/(fs/2)], "bandpass", hanning(100));

% Filtering the signal
y2 = filter(b3, 1, y1);

% Writing the signal into a .wav file
audiowrite("instru2_filtered.wav", y2, fs)

% Plotting the spectrogram of the filtered signal
figure;
spectrogram(y2, hanning(101), 10, 256, fs)
title('Spectrogram after extracting the fundamental')
