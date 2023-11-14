
% Different windows of length 100
% Hamming window
figure;
plot(hamming(100))
title('Hamming window of length 100')
xlabel('Samples')
ylabel('Magnitude')

% Hanning window
figure;
plot(hanning(100))
title('Hanning window of length 100')
xlabel('Samples')
ylabel('Magnitude')

% Blackman window
figure;
plot(blackman(100))
title('Blackman window of length 100')
xlabel('Samples')
ylabel('Magnitude')

% Rectangular window
figure;
plot(rectwin(100))
title('Rectangular window of length 100')
xlabel('Samples')
ylabel('Magnitude')

% Window lengths array
N = [100, 200, 300];

% Calculating the DFT of the window signal
for i = 1:length(N)
    % Generating the window signal
    window = blackman(N(i));

    % Calculating the DFT
    X = fft(window, 1024);

    % Normalizing the magnitude
    X_norm = abs(X) / N(i);

    % Plotting the spectrum
    figure;
    plot((-1024/2:1024/2 - 1) ./ 1024, X_norm);
    xlabel('Frequency (normalised)');
    ylabel('Magnitude (normalised)');
    title(['Spectrum of Blackman Window (N = ', num2str(N(i)), ')']);
end

% Calculating the DFT of the window signal in decibels
for i = 1:length(N)
    % Generating the window signal
    window = blackman(N(i));

    % Calculating the DFT
    X = fft(window, 1024);

    % Normalizing the magnitude
    X_norm = abs(X) / N(i);

    % Plotting the spectrum
    figure;
    plot((-1024/2:1024/2 - 1) ./ 1024, db(X_norm));
    xlabel('Frequency (normalised)');
    ylabel('Magnitude (normalised) in dB');
    title(['Spectrum of Blackman Window (N = ', num2str(N(i)), ')']);
end