%Problem 2- Whistling Keylock

%Recording sample whistle to act as key
recObj = audiorecorder;
recDuration = 3;
disp("Begin speaking.")
recordblocking(recObj,recDuration);
disp("End of recording.")
play(recObj);
y = getaudiodata(recObj);

%Plot of the whistle vs time
figure;
plot(y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sample Whistle')

%Magnitude spectrum of whistle 
magnitude_spectrum(y, 11000)
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Spectrum')