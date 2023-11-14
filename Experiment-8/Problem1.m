R0 = 2.5;

sys = tf([1, 0], [1, -R0], 1, 'Variable', 'z');

sys

figure;
pzmap(sys)
