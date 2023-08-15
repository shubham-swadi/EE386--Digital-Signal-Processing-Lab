%Problem 3- Importing Signals

%Subproblem 3.1
%Reading the ECG Data
E = readmatrix('ECG_Data.txt');

%Plotting the ECG Data against Samples
subplot(3,1,1)
plot(E)
title('3.1 ECG')
legend('ECG Data')
xlabel('Samples')
ylabel('ECG Data')

%Subproblem 3.2
%Reading the rainfall data
rain_jan = readmatrix('RainFallIndia_Jan.txt');
rain_jul = readmatrix('RainFallIndia_July');

%Plotting histogram of the data for January
subplot(3,1,2)
histogram(rain_jan)
title('3.2 Average Rainfall(January)')
legend('Rainfall in India in January')
xlabel('No. of samples')
ylabel('Rainfall (in mm)')

%Calculating mean and standard deviation for data belonging to January
meanJan = mean(rain_jan)
sdJan = std(rain_jan)

%Plotting histogram of data for July
subplot(3,1,3)
histogram(rain_jul)
title('3.2 Average Rainfall(July)')
legend('Rainfall in India in July')
xlabel('No. of samples')
ylabel('Rainfall (in mm)')

%Calculating mean and standard deviation for data belonging to July
meanJul = mean(rain_jul)
sdJul = std(rain_jul)

%Subproblem 3.3
%Reading the audio file data into matrix Y with sampling frequency FS
[Y, FS] = audioread('track002.wav');
sound(Y, FS)