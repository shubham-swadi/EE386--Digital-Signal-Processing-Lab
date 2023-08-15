%Problem 4- Amplitude Modulation

%Importing speech.wav
[s,Fs]=audioread('speech.wav');

%Amplitude modulation of s(n)
y=s*cos(2*pi*1000/10000);

%Plotting s(n)
subplot(2,2,1)
plot(s)
title('Original Signal')
legend('s(n)')
xlabel('Time')
ylabel('Amplitude')

%Plotting y(n)
subplot(2,2,2)
plot(y)
title('Amplitude Modulated Signal')
legend('y(n)')
xlabel('Time')
ylabel('Amplitude')

%Variables for sampling
N=10000;
f=linspace(0,Fs,N);

%Computing Fourier Transforms for s(n) & y(n)
Sfft=abs(fft(s,N));
Yfft=abs(fft(y,N));

%Plotting frequncy spectrum for s(n)
subplot(2,2,3)
plot(f(1:N),Sfft(1:N));
title('Fourier Transform of s(n)')
legend('Fourier Transform of s(n)')
xlabel('Frequency')
ylabel('Amplitude')

%Plotting frequency spectrum for y(n)
subplot(2,2,4)
plot(f(1:N),Yfft(1:N));
title('Fourier Transform of s(n)')
legend('Fourier Transform of s(n)')
xlabel('Frequency')
ylabel('Amplitude')