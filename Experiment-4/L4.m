%Problem 1

a = 1 + mod(157, 3);

f = 30;
fs = 120;

dt = 1/fs;
t = 0:dt:2-dt;

x = sin(2*pi*f*t);

ln = length(x);
xk = zeros(1, 120);
xk2 = zeros(1, 130);

for k = 0:120-1
    for n = 0:120-1
        xk(k+1) = xk(k+1) + (x(n+1)*exp((1i)*2*pi*k*n/ln));
    end
end

for k = 0:130-1
    for n = 0:130-1
        xk2(k+1) = xk2(k+1) + (x(n+1)*exp((1i)*2*pi*k*n/ln));
    end
end

mag1 = abs(xk);
mag2 = abs(xk2);
stem(t(1:120), mag1)
figure;
stem(t(1:130), mag2)
%figure;
%plot(t, x)
