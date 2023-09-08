%Problem 3- Simulataneous time and frequency representations
%Finding spectrogram of entire Opera.wav file

%Reading the opera.wav file
[opera, fs] = audioread('E:\College\Sem 5\EE386 - DSP Lab\Experiment-3\Questions & Files\Opera.wav');
spectrogram(opera)

