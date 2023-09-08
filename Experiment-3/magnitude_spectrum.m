%Creating a user defined function to compute and plot magnitude spectrum
function magnitude_spectrum(signal, fs)

%Finding length and fft of input signal
N = length(signal);
y = fft(signal);

%Finding magnitude spectrum
magnitude_spectrum = abs(y);

%Converting magnitude spectrum into decibels
magnitude_spectrum_db = 20 * log10(magnitude_spectrum);

%Creating frquency axis
f = (0:N-1) * (fs/N);

%Finding fundamental frequency
[~, idx] = max(magnitude_spectrum_db);
fundamental_frequeny = f(idx);

%Plotting magnitude spectrum
plot(f, magnitude_spectrum_db);
grid on;

%Displaying fundamental frequency value
disp(['Fundamental frequency: ', num2str(fundamental_frequeny), 'Hz'])

end