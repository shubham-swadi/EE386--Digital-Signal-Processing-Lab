%Problem 7- Convolution

%Loading the wav file
[y, Fs] = audioread('Track002.wav');

%Loading the filter
x = readmatrix('ConvFile2.txt');

%Applying 2D convolution on samples and filter
f = conv2(y, x);

%Playing the convolved result at sampling frequency Fs
sound(f, Fs)

%Plotting all 3 functions
subplot(3,1,1)
plot(y)
title('Audio signal')
legend('y(t)')
xlabel('Time')
ylabel('Amplitude')

subplot(3,1,2)
plot(x)
title('Text data')
legend('x(t)')
xlabel('Time')
ylabel('Amplitude')

subplot(3,1,3)
plot(f)
title('Convolved audio signal')
legend('f(t)')
xlabel('Time')
ylabel('Amplitude')

%Writing the convolved result in a wav file
audiowrite('problem7.wav', f, Fs)