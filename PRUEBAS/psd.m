load('lfp30k.mat'), openLoop = raw(1,:);
Fs = 30000;
t = (0:length(openLoop)-1)/Fs;
[popen,fopen] = periodogram(openLoop,[],[],Fs);
grid
plot(fopen,20*log10(abs(popen)))
ylabel('Power/frequency (dB/Hz)')
xlabel('Frequency (Hz)')
title('Power Spectrum')
grid
