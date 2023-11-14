% Load the ECG data
ecg_data = load('ecg_data.txt');

% Design a low pass Butterworth filter
fs = 720; % Sampling frequency
Fp = 10; % Passband edge frequency
Fs = 20; % Stopband edge frequency
Ap = -2; % Passband ripple
As = -40; % Stopband attenuation

% Calculate the normalized cutoff frequencies
Wn1 = 2*Fp/fs;
Wn2 = 2*Fs/fs;

% Calculate the filter order
[N,Wn] = buttord(Wn1,Wn2,Ap,As);

% Design the filter coefficients
[b,a] = butter(N,Wn);

% Filter the ECG data
filtered_ecg_data = filter(b,a,ecg_data);

% Plot the original and filtered ECG signals
figure;
plot(ecg_data,'b');
hold on;
plot(filtered_ecg_data,'r');
title('Comparison between filtered and unfiltered data');
xlabel('Samples');
ylabel('Magnitude');
legend('Original ECG Signal','Filtered ECG Signal');
