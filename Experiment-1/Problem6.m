%Problem 6- Generating Signals-2

Fs = 1200;      %Sampling Frequency
dt = 1 /Fs;     %Time Resolution
t = 0:dt:1;     %Time Vector

%Generating all 8 musical notes with their unique frequency
do = sin(2 * pi * 261 * t);
re = sin(2 * pi * 294 * t);
mi = sin(2 * pi * 327 * t);
fa = sin(2 * pi * 348 * t);
sol = sin(2 * pi * 392 * t);
la = sin(2 * pi * 436 * t);
si = sin(2 * pi * 490 * t);
DO = sin(2 * pi * 522 * t);

%Appending all 8 notes into one vector
notes = [do re mi fa sol la si DO];

%Playing the notes at sampling frequency Fs
sound(notes, Fs)

%Writing the notes into a wav file
audiowrite('problem6.wav', notes, Fs)