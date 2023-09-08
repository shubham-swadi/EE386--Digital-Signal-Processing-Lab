%Problem 2- Whistling Keylock
%Function to record whistles to open lock & write into a .wav file
function whistle_recorder()
recObj = audiorecorder;
recDuration = 3;
disp("Begin speaking.")
recordblocking(recObj,recDuration);
disp("End of recording.")
play(recObj);
whistle = getaudiodata(recObj);
audiowrite('whistle.wav', whistle, 11000)
