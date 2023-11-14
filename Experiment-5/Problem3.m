close all;
[y, fs] = audioread("audioin.wav");
y=y(:,1);

figure;
plot(y)
title('Plot of Name audio file')
xlabel('Samples')
ylabel('Magnitude')

figure;
spectrogram(y, blackman(1000), 10, length(y), fs)
title('Spectrogram of name file')