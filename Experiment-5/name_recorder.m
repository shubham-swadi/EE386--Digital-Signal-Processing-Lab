function name_recorder()
recObj = audiorecorder;
recDuration = 1;
disp("Begin speaking.")
recordblocking(recObj,recDuration);
disp("End of recording.")
play(recObj);
name = getaudiodata(recObj);
audiowrite('name.wav', name, 8000)