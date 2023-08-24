%Problem 1- Sampling and frequency-domain aliasing

%Initializing alpha i.e. a
a = 1 + mod(157, 3);

%Subproblem 1
%Initializing time array
t = 0:0.001:(1/a);

%Defining the signal functions
A = a * cos(2*pi*5*a*t);
B = (a/2) * cos(2*pi*6*a*t);
C = (a/4) * cos(2*pi*10*a*t);

%Plotting all three functions in the same plot
figure;
plot(t, A, t, B, t, C)
title('Subproblem 1')
xlabel('Time (in s)')
ylabel('Amplitude')
legend('a*cos(2*pi*5a*t)', '(a/2)*cos(2*pi*6a*t)', '(a/4)*cos(2*pi*10a*t)')

%Subproblem 2
%Plotting the sum of all three functions
figure;
total = A + B + C;
plot(t, total)
title('Subproblem 2- Sum of all 3 cosine functions')
xlabel('Time (in s)')
ylabel('Amplitude')
legend('Sum')

%Subproblem 3
%a: Fs = 14a
%Initializing new time array corresponding to the sampling frequency
Fsa = 14 * a;
dta = 1 / Fsa;
ta = 0:dta:(1/a)-dta;

%Sampling the signals with the new time array
Aa = a * cos(2*pi*5*a*ta);
Ba = (a/2) * cos(2*pi*6*a*ta);
Ca = (a/4) * cos(2*pi*10*a*ta);
totala = Aa + Ba + Ca;

%b: Fs = Nyquist rate i.e. 10a = 20
%Initializing new time array corresponding to the sampling frequency
Fsb = 2 * 10 * a;
dtb = 1 / Fsb;
tb = 0:dtb:(1/a)-dtb;

%Sampling the signals with the new time array
Ab = a * cos(2*pi*5*a*tb);
Bb = (a/2) * cos(2*pi*6*a*tb);
Cb = (a/4) * cos(2*pi*10*a*tb);
totalb = Ab + Bb + Cb;

%c: Fs where 6a is aliased to 3a
%Initializing new time array corresponding to the sampling frequency
Fsc = 9 * a;
dtc = 1 / Fsc;
tc = 0:dtc:(1/a)-dtc;

%Sampling the signals with the new time array
Ac = a * cos(2*pi*5*a*tc);
Bc = (a/2) * cos(2*pi*6*a*tc);
Cc = (a/4) * cos(2*pi*10*a*tc);
totalc = Ac + Bc + Cc;

%Plotting all the sampled signals in the same plot
figure;
subplot(3,1,1)
stem(totala)
title('3(a) Fs = 14a'), xlabel('Samples'), ylabel('Amplitude')
subplot(3,1,2)
stem(totalb)
title('3(b) Fs = Nyquist rate = 2*10a'), xlabel('Samples'), ylabel('Amplitude')
subplot(3,1,3)
stem(totalc)
title('3(c) Fs at which 6a is aliased to 3a'), xlabel('Samples'), ylabel('Amplitude')

%Subproblem 4
%Plotting linear interpolation of all the sampled signals using plot
figure;
subplot(3,1,1)
plot(totala)
title('Linear Interpolation of 3a'), xlabel('Samples'), ylabel('Amplitude')
subplot(3,1,2)
plot(totalb)
title('Linear Interpolation of 3b'), xlabel('Samples'), ylabel('Amplitude')
subplot(3,1,3)
plot(totalc)
title('Linear Interpolation of 3c'), xlabel('Samples'), ylabel('Amplitude')

%Subproblem 5
%Computing two sided fft and energy density spectrum
ffta = fft(totala);
fka = (-length(ta)/2:length(ta)/2-1) * (Fsa/length(ta));

fftb = fft(totalb);
fkb = (-length(tb)/2:length(tb)/2-1) * (Fsa/length(tb));

fftc = fft(totalc);
fkc = (-4.5:3.5) * (Fsa/length(tc));

%Plotting the energy density spectrum
figure;
subplot(3,1,1)
stem(fka, abs(ffta))
title('Energy density spectrum for 3a'), xlabel('Square of Frequency (in Hz^2)'), ylabel('Amplitude')
subplot(3,1,2)
stem(fkb, abs(fftb))
title('Energy density spectrum for 3b'), xlabel('Square of Frequency (in Hz^2)'), ylabel('Amplitude')
subplot(3,1,3)
stem(fkc, abs(fftc))
title('Energy density spectrum for 3c'), xlabel('Square of Frequency (in Hz^2)'), ylabel('Amplitude')