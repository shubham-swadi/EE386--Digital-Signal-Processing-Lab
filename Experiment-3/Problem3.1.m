%Problem 3- Simulataneous time and frequency representations

%Reading the opera.wav file
[opera, fs] = audioread('E:\College\Sem 5\EE386 - DSP Lab\Experiment-3\Questions & Files\Opera.wav');
N = length(opera);
figure;
%Magnitude spectrum of entire file
magnitude_spectrum(opera, fs)

%Magnitude spectrum for first section
figure;
subplot(5,2,1)
magnitude_spectrum(opera(1:N/10-1), fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 1)')

%Magnitude spectrum for second section
subplot(5,2,2)
magnitude_spectrum(opera(N/10:2*N/10-1), fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 2)')

%Magnitude spectrum for third section
subplot(5,2,3)
magnitude_spectrum(opera(2*N/10:3*N/10-1), fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 3)')

%Magnitude spectrum for fourth section
subplot(5,2,4)
magnitude_spectrum(opera(3*N/10:4*N/10-1), fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 4)')

%Magnitude spectrum for fifth section
subplot(5,2,5)
magnitude_spectrum(opera(4*N/10:5*N/10-1), fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 5)')

%Magnitude spectrum for sixth section
subplot(5,2,6)
magnitude_spectrum(opera(5*N/10:6*N/10-1), fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 6)')

%Magnitude spectrum for seventh section
subplot(5,2,7)
magnitude_spectrum(opera(6*N/10:7*N/10-1), fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 7)')

%Magnitude spectrum for eight section
subplot(5,2,8)
magnitude_spectrum(opera(7*N/10:8*N/10-1), fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 8)')

%Magnitude spectrum for ninth section
subplot(5,2,9)
magnitude_spectrum(opera(8*N/10:9*N/10-1), fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 9)')

%Magnitude spectrum for tenth section
subplot(5,2,10)
magnitude_spectrum(opera(9*N/10:N) , fs)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum (Section 10)')