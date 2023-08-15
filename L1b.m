%Problem 2
alpha = 1 + mod(157, 3);
t = [-5:0.01:5];

x = inline('5 * exp(-t ./(1 + mod(157, 3)))', 't');
subplot(2,2,1), plot(t, x(t)),
title('Exponentially decaying function x(t)=5*exp(-t/a)'),
xlabel('Time'), ylabel('x(t)'), legend('x(t)=5*exp(-t/a)')
subplot(2,2,2), plot(t, x(-t)), xlabel('Time'), ylabel('x(-t)')
title('Time Reversal'), legend('x(-t)')
subplot(2,2,3), plot(t, x(t - 1.5 * (alpha))), xlabel('Time'), ylabel('x(t-1.5a)')
title('Time Shifting'), legend('x(t-1.5a)')
subplot(2,2,4), plot(t, x(2 * alpha * t)), xlabel('Time'), ylabel('x(2at)')
title('Time Scaling'), legend('x(2at)')