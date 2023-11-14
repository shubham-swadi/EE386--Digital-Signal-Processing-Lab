%Defining alpha
a = 1 + mod(157, 3);

%Normalized cutoff frequency
Wn = 1 / (a + 1);

%Window length
N = 21;

%Creating FIR filter with rectangular window
b_rect = fir1(N-1, Wn,"low", rectwin(N));

%Creating FIR filter with blackman window
b_blackman = fir1(N-1, Wn, "low", blackman(N));

%Stem plots of both filters
figure;
subplot(2,1,1);
stem(b_rect)
subplot(2,1,2);
stem(b_blackman)

%Impulse response of reactangular windowed filter
figure;
impz(b_rect)

%Impulse resposne of blackman windowed filter
figure;
impz(b_blackman)

%Bode analysis of rectangular windowed filter
figure;
freqz(b_rect)

%Bode analysis of blackman windowed filter
figure;
freqz(b_blackman)