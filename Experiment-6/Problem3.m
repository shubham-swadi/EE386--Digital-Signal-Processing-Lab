% Step 1: Load the audio file
audioFile = 'instru2.wav';
[x, Fs] = audioread(audioFile);

% Step 2: Compute the spectrogram
windowSize = 1024;  % You can adjust this value as needed
overlap = windowSize/2;  % Overlap of 50%
nfft = 2048;  % FFT size
[S, F, T] = spectrogram(x, windowSize, overlap, nfft, Fs);
figure;
spectrogram(x, windowSize, overlap, nfft, Fs)
title('Unfiltered spectrogram')

% Step 3: Design a Butterworth bandpass filter
fc = 200;  % Center frequency in Hz
bw = 50;   % Bandwidth in Hz
order = 4;  % Filter order
[b, a] = butter(order, [fc-bw/2, fc+bw/2]/(Fs/2), 'bandpass');

% Step 4: Apply the filter to the audio signal
filteredSignal = filter(b, a, x);

% Step 5: Plot the spectrogram of the filtered audio
figure;
spectrogram(filteredSignal, windowSize, overlap, nfft, Fs);
title('Filtered Audio Spectrogram');

% Step 6: Save the filtered audio to a new WAV file
outputFile = 'filtered_instruα.wav';
audiowrite(outputFile, filteredSignal, Fs);

% Step 7: Listen to the filtered audio
sound(filteredSignal, Fs);
