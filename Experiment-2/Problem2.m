%Problem 2- Generating digital music
%Generating sampling frequency
Fs = 1200;
dt = 1 /Fs;
t = 0:dt:1;

%Generating notes
do = sin(2 * pi * 261 * t);
re = sin(2 * pi * 294 * t);
mi = sin(2 * pi * 327 * t);
fa = sin(2 * pi * 348 * t);
sol = sin(2 * pi * 392 * t);
la = sin(2 * pi * 436 * t);
si = sin(2 * pi * 490 * t);
DO = sin(2 * pi * 522 * t);

%Appending notes and playing
notes = [do re mi fa sol la si DO];
sound(notes, Fs)

%Writing sampling frequency
Fs_new = 5500;

%Writing the sequence in a wav file
audiowrite('problem2.wav', notes, Fs_new)