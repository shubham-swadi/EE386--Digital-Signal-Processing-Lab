Fs = 1200;
dt = 1 /Fs;
t = 0:dt:1;

do = sin(2 * pi * 261 * t);
re = sin(2 * pi * 294 * t);
mi = sin(2 * pi * 327 * t);
fa = sin(2 * pi * 348 * t);
sol = sin(2 * pi * 392 * t);
la = sin(2 * pi * 436 * t);
si = sin(2 * pi * 490 * t);
DO = sin(2 * pi * 522 * t);
notes = [do re mi fa sol la si DO];
sound(notes, Fs)

audiowrite('problem2.wav', notes, 5500)