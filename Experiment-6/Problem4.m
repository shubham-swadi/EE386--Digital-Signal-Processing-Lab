% Design a low pass Butterworth filter
fs = 720; % Sampling frequency
Fp = 10; % Passband edge frequency
Fs = 20; % Stopband edge frequency
Ap = 2; % Passband ripple
As = 40; % Stopband attenuation

% Calculate the normalized cutoff frequencies
Wn1 = 2*Fp/fs;
Wn2 = 2*Fs/fs;

% Calculate the filter order
[N_butter,Wn] = buttord(Wn1,Wn2,Ap,As);

% Design the filter coefficients
[b_butter,a_butter] = butter(N_butter,Wn);

% Design a low pass Chebyshev type I filter
[N_cheby,Wn] = cheb1ord(Wn1,Wn2,Ap,As);

% Design the filter coefficients
[b_cheby,a_cheby] = cheby1(N_cheby,Ap,Wn);

% Plot the Bode plots
%figure;
%freqz(b_butter,a_butter,1024);
%hold on;
%freqz(b_cheby,a_cheby,1024);
%legend('Butterworth','Chebyshev');
%xlabel('Frequency (Hz)');
%ylabel('Magnitude');
%title('Bode plots of Butterworth and Chebyshev filters');

f = linspace(0, 50, 100);
sys_butter = tf(b_butter, a_butter, 1/fs);
sys_cheby = tf(b_cheby, a_cheby, 1/fs);

[mag_butter, phase_butter] = bode(sys_butter, 2*pi*f);
[mag_cheby, phase_cheby] = bode(sys_cheby, 2*pi*f);

figure;
plot(f, db(squeeze(mag_butter)), f, db(squeeze(mag_cheby)))
xlabel('Frequency');
ylabel('Magnitude (in dB)');
title('Bode plot');
legend('Butterworth', 'Chebyshev')

figure;
bode(sys_butter, f)
hold on;
bode(sys_cheby, f)
legend('Butterworth', 'Chebyshev')
title('Bode plot')
xlabel('Frequency');
ylabel('Magnitude (in dB)');

% Plot the impulse and step responses
%figure;
%impulse(b_butter,a_butter);
%hold on;
%impulse(b_cheby,a_cheby);
%legend('Butterworth','Chebyshev');
%xlabel('Time (s)');
%ylabel('Magnitude');
%title('Impulse responses of Butterworth and Chebyshev filters');

%figure;
%step(b_butter,a_butter);
%hold on;
%step(b_cheby,a_cheby);
%legend('Butterworth','Chebyshev');
%xlabel('Time (s)');
%ylabel('Magnitude');
%title('Step responses of Butterworth and Chebyshev filters');

% Plot the impulse and step responses

t = 0:1/fs:1; % 1 second duration

impulse_response_butter = filter(b_butter, a_butter, [1 zeros(1, length(t) - 1)]);
step_response_butter = cumsum(impulse_response_butter);

impulse_response_cheby = filter(b_cheby, a_cheby, [1 zeros(1, length(t) - 1)]);
step_response_cheby = cumsum(impulse_response_cheby);

plot(t, impulse_response_butter);
grid on;

hold on;
plot(t, impulse_response_cheby);
grid on;
title('Impulse Responses of both filters');
legend('Butterworth', 'Chebyshev');
xlabel('Time (s)');
ylabel('Amplitude');
hold off;

plot(t, step_response_butter);
grid on;

hold on;
plot(t, step_response_cheby);
grid on;
title('Step Responses of both filters');
legend('Butterworth', 'Chebyshev');
xlabel('Time (s)');
ylabel('Amplitude');

