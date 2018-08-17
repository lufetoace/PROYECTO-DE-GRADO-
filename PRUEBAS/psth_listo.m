x = randn(100,1);
binranges = -0.5:6;
[bincounts] = histc(x,binranges)
figure
bar(binranges,bincounts,'histc')
% histogram(x)
