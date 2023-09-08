%Problem 1- Plotting Signal Spectra
%Subproblem 1

%Finding value of alpha i.e. a = 2
a = 1 + mod(157, 3);

%Reading piano2 and plotting its spectrum
[piano, fs1] = audioread('E:\College\Sem 5\EE386 - DSP Lab\Experiment-3\piano2.wav');
subplot(2,2,1)
magnitude_spectrum(piano, fs1)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Piano)')

%Reading trumpet2 and plotting its spectrum
[trumpet, fs2] = audioread('E:\College\Sem 5\EE386 - DSP Lab\Experiment-3\trumpet2.wav');
subplot(2,2,2)
magnitude_spectrum(trumpet, fs2)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Trumpet)')

%Reading violin2 and plotting its spectrum
[violin, fs3] = audioread('E:\College\Sem 5\EE386 - DSP Lab\Experiment-3\violin2.wav');
subplot(2,2,3)
magnitude_spectrum(violin, fs3)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Violin)')

%Reading flute2 and plotting its spectrum
[flute, fs4] = audioread('E:\College\Sem 5\EE386 - DSP Lab\Experiment-3\flute2.wav');
subplot(2,2,4)
magnitude_spectrum(flute, fs4)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Flute)')