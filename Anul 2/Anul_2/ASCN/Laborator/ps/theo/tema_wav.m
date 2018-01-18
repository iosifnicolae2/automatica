[y,fs] = wavread('exemplu.wav');

wavplay(y,fs);

nf=1048576; %number of point in DTFT 2^20
Y = fft(y,nf);
f = fs/2*linspace(0,1,nf/2+1);
subplot(2,1,1); plot(y); title ('semnalul inregistrat');
subplot(2,1,2); plot(f,abs(Y(1:nf/2+1))); title('spectrul Fourier');
%%
%aplicam filtrul FTJ de la ex_2_4 pe acest semnal
w=0:0.1:30; 
z = [-2+1i; -2-1i]; 
p = [-5+10*1i -5-10*1i 4 3 2 1]; 
k = prod(p); 
[num, den] = zp2tf(z,p,k);
Gw = bode(num,den,w);

plot(w,Gw);hold;
pzmap(num, den); 
plot(5, .9, 'r*');  
plot(15, .1, 'r*'); title('FTJ');

final = filter(num, den, y);

Y = fft(final,nf);
f = fs/2*linspace(0,1,nf/2+1);

wavplay(f, fs);
