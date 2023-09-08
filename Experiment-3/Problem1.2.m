%Problem 1- Plotting Signal Spectra
%Subproblem 2

%Reading piano2 and plotting its spectrum
[y1, fs1] = audioread('piano2.wav');
magnitude_spectrum(y1, fs1)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Piano2)')

%Reading flute1 and plotting its spectrum
[y1, fs1] = audioread('flute1.wav');
subplot(2,2,1)
magnitude_spectrum(y1, fs1)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Flute1)')

%Reading flute2 and plotting its spectrum
[y2, fs2] = audioread('flute2.wav');
subplot(2,2,2)
magnitude_spectrum(y2, fs2)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Flute2)')

%Reading flute3 and plotting its spectrum
[y3, fs3] = audioread('flute3.wav');
subplot(2,2,3)
magnitude_spectrum(y3, fs3)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Flute3)')

%Reading flute4 and plotting its spectrum
[y4, fs4] = audioread('flute4.wav');
subplot(2,2,4)
magnitude_spectrum(y4, fs4)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Flute4)')