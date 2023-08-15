%Problem 2- Operation on user-defined functions

%Initializing a (i.e. alpha)
a = 1 + mod(157, 3);

%Initializing time vector
t = -5:0.01:5;

%Defining function x(t)
x = inline('5 * exp(-t ./(1 + mod(157, 3)))', 't');

%Subproblem 2.1
subplot(2,2,1), plot(t, x(t)),
title('Exponentially decaying function x(t)=5*exp(-t/a)'),
xlabel('Time'), ylabel('x(t)'), legend('x(t)=5*exp(-t/a)')

%Subproblem 2.2
subplot(2,2,2), plot(t, x(-t)), xlabel('Time'), ylabel('x(-t)')
title('Time Reversal'), legend('x(-t)')

%Subproblem 2.3
subplot(2,2,3), plot(t, x(t - 1.5 * (a))), xlabel('Time'), ylabel('x(t-1.5a)')
title('Time Shifting'), legend('x(t-1.5a)')

%Subproblem 2.4
subplot(2,2,4), plot(t, x(2 * a * t)), xlabel('Time'), ylabel('x(2at)')
title('Time Scaling'), legend('x(2at)')