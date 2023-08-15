%Problem 3- Importing Signals
%3.1
E = readmatrix('ECG_Data.txt');
%e = [1:length(E)];
subplot(3,1,1)
plot(E)
title('3.1 ECG')
legend('ECG Data')
xlabel('Samples')
ylabel('ECG Data')
%ylim

%3.2
rain_jan = readmatrix('RainFallIndia_Jan.txt');
rain_jul = readmatrix('RainFallIndia_July');

subplot(3,1,2)
histogram(rain_jan)
title('3.2 Average Rainfall(January)')
legend('Rainfall in India in January')
xlabel('No. of samples')
ylabel('Rainfall (in mm)')
meanJan = mean(rain_jan)
sdJan = std(rain_jan)

subplot(3,1,3)
histogram(rain_jul)
title('3.2 Average Rainfall(July)')
legend('Rainfall in India in July')
xlabel('No. of samples')
ylabel('Rainfall (in mm)')
meanJul = mean(rain_jul)
sdJul = std(rain_jul)

%3.3
[Y, FS] = audioread('track002.wav');
sound(Y, FS)