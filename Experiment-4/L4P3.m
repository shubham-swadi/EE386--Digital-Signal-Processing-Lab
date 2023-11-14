A = 140;
B = 146;

fs = 200;
dt = 1/fs;

t = 0:dt:10-dt;

xa = 0.1*sin(A*pi*t) + cos(B*pi*t);
xa = xa.*transpose(hanning(length(xa)));

y1 = fft(xa, 215);
f1 = (0:214)*fs/215;
N1 = length(y1);

figure;
stem(f1, abs(y1/N1))

y2 = fft(xa, 415);
f2 = (0:414)*fs/415;
N2 = length(y2);

figure;
stem(f2, abs(y2/N2))

y3 = fft(xa, 1115);
f3 = (0:1114)*fs/1115;
N3 = length(y3);

figure;
stem(f3, abs(y3/N3))

y4 = fft(xa, 1515);
f4 = (0:1514)*fs/1515;
N4 = length(y4);

figure;
stem(f4, abs(y4/N4))

y5 = fft((xa), 1915);
f5 = (0:1914)*fs/1915;
N5 = length(y5);

figure;
stem(f5, abs(y5/N5))