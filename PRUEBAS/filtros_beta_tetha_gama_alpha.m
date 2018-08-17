%BETA BANDPASS FILTER (12-30)
load('lfpdata1K.mat')
Fs = 1000; % Sampling Frequency
be=eegfilt(lfp(1,:),Fs,12,30);
figure
plot(be)
title(' BETA band')

%ALPHA BAND PASS FILTER (8-12)
be=eegfilt(lfp(1,:),Fs,8,12);
figure
plot(be)
title(' ALPHA band')

%DELTA  BAND PASS FILTER (0-4)
be=eegfilt(lfp(1,:),Fs,0,4);
figure
plot(be)
title(' DELTA band')

%THETA- BAND PASS FILTER (4-7)
be=eegfilt(lfp(1,:),Fs,4,7);
figure
plot(be)
title(' THETA band')

% GAMMA-BAND PASS FILTER (>32)
be=eegfilt(lfp(1,:),Fs,32,0);
figure
ty=fft(lfp(1,:));
et=fftshift(ty);
plot(abs(et))
title(' GAMMA band')




