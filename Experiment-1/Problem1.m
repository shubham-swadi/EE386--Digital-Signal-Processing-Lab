%Problem 1- Generating Signals

%Initializing a (i.e. alpha)
a = 1 + mod(157, 3);

%Initializing time vector
t = -1:0.01:1;

%Subproblem 1.1
y1 = sin(20 * pi * a * t);
subplot(2,2,1)
plot(t, y1)
title('1. y1(t)=sin(20*pi*a*t)')
xlabel('Time')
ylabel('y4(t)')

%Subproblem 1.2
y2 = cos(5 * pi * a * t + pi/4);
subplot(2,2,2)
plot(t, y2)
title('2. y2(t)=cos(5*pi*a*t+pi/4)')
xlabel('Time')
ylabel('y2(t)')

%Subproblem 1.3
y3 = exp(-2 * a * t);
subplot(2,2,3)
plot(t, y3)
title('3. y3=exp(-2*a*t)')
xlabel('Time')
ylabel('y3(t)')

%Subproblem 1.4
y4 = (exp(-0.25 * a * t)) .* sin(20 * pi * t);
subplot(2,2,4)
plot(t, y4)
title('exp(-0.25*a*t) * sin(20*pi*t)')
xlabel('Time')
ylabel('y4(t)')
