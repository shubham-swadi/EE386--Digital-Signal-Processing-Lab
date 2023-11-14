% Generate a sine signal
f = 100; % Frequency of the sine signal
fs = 1024; % Sampling frequency
t = linspace(0, 1, fs); % Time vector
x = sin(2 * pi * f * t);

% Choose a window function
window = hamming(fs);

% Multiply the signal by the window function
y = x .* window;

% Create a stem plot of the windowed signal
figure;
stem(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Stem Plot of Windowed Sine Signal');
