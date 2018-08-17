 load('lfpdata1K.mat'), openLoop = lfp(1,:);

Fs = 1000;
t = (0:length(openLoop)-1)/Fs;

plot(t,openLoop)
ylabel('Voltage (V)')
xlabel('Time (s)')
title('senal sin filtro')
hold on 
grid
d = designfilt('bandstopiir','FilterOrder',2,'HalfPowerFrequency1',59,'HalfPowerFrequency2',61, ...
               'DesignMethod','butter','SampleRate',Fs);
%            fvtool(d,'Fs',Fs)
           buttLoop = filtfilt(d,openLoop);
plot(t,openLoop,t,buttLoop)
hold on ;
[popen,fopen] = periodogram(openLoop,[],[],Fs);
[pbutt,fbutt] = periodogram(buttLoop,[],[],Fs);
grid
figure;
plot(fopen,20*log10(abs(popen)),fbutt,20*log10(abs(pbutt)),'--')
ylabel('Power/frequency (dB/Hz)')
xlabel('Frequency (Hz)')
title('Power Spectrum')
legend('Unfiltered','Filtered')
grid

