%Problem 5- Generating Signals-1

%Initializing a
a = 1 + mod(157, 3);

Fs = 1000;      %Sampling Frequency
dt = 1 / Fs;    %Time Resolution
t = 0:dt:5;     %Time Vector

%Generating two sinusoid signals
f1 = sin(2 * pi * 2002 * t);
f2 = sin(2 * pi * 2202 * t);

%Appending the two sinusoid signals
s = [f1 f2];

%Playing the signal at sampling frequency Fs
sound(s, Fs)

%Writing the appended signal into a wav file
audiowrite('problem5.wav', s, Fs)


