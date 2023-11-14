% Parameters
filterOrder = 50;     % Filter order
cutoffFreq = 0.2;      % Desired cutoff frequency

% Design the FIR filter using fir1
windowedFIRFilter = fir1(filterOrder, cutoffFreq);

% Plot the results
subplot(2, 1, 1);
stem(idealFilter);
title('Ideal Low-Pass Filter');
xlabel('Sample Index');
ylabel('Amplitude');

subplot(2, 1, 2);
stem(windowedFIRFilter);
title('Windowing-Based FIR Filter Design');
xlabel('Sample Index');
ylabel('Amplitude');
