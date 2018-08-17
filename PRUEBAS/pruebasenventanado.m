load('lfp30k.mat')
x=raw(1,:);
x1=x;
a=20; % Limite superior de la ventana
b=10; % Limite inferior de la vamtana
p1 = find(t>a);
p2 = find(t<b);
p=[p1 p2];
t = linspace(0,length(x)/fs,length(x));
subplot(211), plot(t,x);    
title('SEÑAL ORIGINAL')
subplot(212),plot(t,x1) 
title(' SEÑAL ENVENTANADA')
axis([b a -inf inf])



