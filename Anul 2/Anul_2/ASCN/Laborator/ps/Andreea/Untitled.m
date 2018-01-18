[sunet,fs]=wavread('sunet.wav')
 
%sound(sunet,fs);
 
t=0:1/fs:(length(sunet)-1)/fs;
 
%plot(t,sunet);
stem(t,sunet);