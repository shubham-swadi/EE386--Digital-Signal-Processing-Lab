%Problem 3- Simulataneous time and frequency representations
%Spectrogram for all sections of Opera.wav

%Reading the opera.wav file
[opera, fs] = audioread('E:\College\Sem 5\EE386 - DSP Lab\Experiment-3\Questions & Files\Opera.wav');
N = length(opera);
%magnitude_spectrum(opera, fs)

%Spectrogram for first section
figure;
spectrogram(opera(1:N/10-1))
title('Spectrogram (Section 1)')

%Spectrogram for second section
figure;
spectrogram(opera(N/10:2*N/10-1))
title('Spectrogram (Section 2)')

%Spectrogram for third section
figure;
spectrogram(opera(2*N/10:3*N/10-1))
title('Spectrogram (Section 3)')

%Spectrogram for fourth section
figure;
spectrogram(opera(3*N/10:4*N/10-1))
title('Spectrogram (Section 4)')

%Spectrogram for fifth section
figure;
spectrogram(opera(4*N/10:5*N/10-1))
title('Spectrogram (Section 5)')

%Spectrogram for sixth section
figure;
spectrogram(opera(5*N/10:6*N/10-1))
title('Spectrogram (Section 6)')

%Spectrogram for seventh section
figure;
spectrogram(opera(6*N/10:7*N/10-1))
title('Spectrogram (Section 7)')

%Spectrogram for eight section
figure;
spectrogram(opera(7*N/10:8*N/10-1))
title('Spectrogram (Section 8)')

%Spectrogram for ninth section
figure;
spectrogram(opera(8*N/10:9*N/10-1))
title('Spectrogram (Section 9)')

%Spectrogram for tenth section
figure;
spectrogram(opera(9*N/10:N))
title('Spectrogram (Section 10)')