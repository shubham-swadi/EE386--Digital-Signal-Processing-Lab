%Problem 4

%Importing speech.wav
[s,Fs]=audioread('speech.wav');

%Amplitude modulation of s
y=s*cos(2*pi*1000/10000);

subplot(2,2,1)
plot(s)
title('Original Signal')
legend('s(n)')
xlabel('Time')
ylabel('Amplitude')

subplot(2,2,2)
plot(y)
title('Amplitude Modulated Signal')
legend('y(n)')
xlabel('Time')
ylabel('Amplitude')

N=10000;
f=linspace(0,Fs,N);

Sfft=abs(fft(s,N));
Yfft=abs(fft(y,N));

subplot(2,2,3)
plot(f(1:N),Sfft(1:N));
title('Fourier Transform of s(n)')
legend('Fourier Transform of s(n)')
xlabel('Frequency')
ylabel('Amplitude')

subplot(2,2,4)
plot(f(1:N),Yfft(1:N));
title('Fourier Transform of s(n)')
legend('Fourier Transform of s(n)')
xlabel('Frequency')
ylabel('Amplitude')