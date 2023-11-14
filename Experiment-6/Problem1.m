close all;

alpha = 2;
fs = 720;
Fp = 10;
Fs = 20;
Ap = 1 * alpha;
As = 40;

% Normalized Frequencies
Wn1 = Fp / (fs/2);
Wn2 = Fs / (fs/2);

% Order of Butterworth filter
[N, Wn] = buttord(Wn1, Wn2, Ap, As);

% Coeeficients of Butterworth filter 
[b, a] = butter(N, Wn);

% Computing Transfer Function
sys = tf(b,a,1/fs);

% Plot the pole zero plot
figure;
pzmap(sys)
figure;
zplane(b, a)
legend('zeros', 'poles');
title('Pole-Zero plot');

% Plot the Bode plot
figure;
f = linspace(0, 50, 100);
[mag, phase] = bode(sys, 2*pi*f);
plot(f, db(squeeze(mag)))
xlabel('Frequency');
ylabel('Magnitude (in dB)');
title('Bode plot')
figure;
bode(sys, f)

% Plot the impulse and step responses
figure;
impulse(sys);
figure;
step(sys);

t = 0:1/fs:1; % 1 second duration
impulse_response = filter(b, a, [1 zeros(1, length(t) - 1)]);
step_response = cumsum(impulse_response);

plot(t, impulse_response);
grid on;

hold on;
plot(t, step_response);
grid on;
legend('Impulse Response', 'Step Response')
title('Response of system');
xlabel('Time (s)');
ylabel('Amplitude');