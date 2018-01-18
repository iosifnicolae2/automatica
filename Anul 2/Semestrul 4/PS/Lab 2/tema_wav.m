[y,fs] = wavread('exemplu.wav');

%wavplay(y,fs);

nf=1048576; %number of point in DTFT 2^20
Y = fft(y,nf);
f = fs/2*linspace(0,1,nf/2+1);
subplot(4,1,1); plot(y); title ('semnalul inregistrat');
subplot(4,1,2); plot(f,abs(Y(1:nf/2+1))); title('spectrul Fourier');

%aplicam filtrul FTJ pe semnalul inregistrat

numF = [1];
denF = [1 .75 .21];


yF = filter(numF, denF, y);
subplot(4,1,3); plot(yF); title('semnalul filtrat');

%spectrul semnalului filtrat
nf=1048576; %number of point in DTFT 2^20
spectruFiltrat = fft(yF,nf);
fF = fs/2*linspace(0,1,nf/2+1);
subplot(4,1,4); plot(fF,abs(Y(1:nf/2+1))); title('spectrul Fourier al semnalului filtrat');

%wavplay(fFTJ);
