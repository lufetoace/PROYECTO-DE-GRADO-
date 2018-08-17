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
           figure
plot(t,openLoop,t,buttLoop)



