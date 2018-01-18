[data,fs]=wavread('rec.wav')


t=0:1/fs:(length(data)-1)/fs;

%plot(t,data)
stem(t,data)

