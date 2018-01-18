numg=poly([-0.2;-1]);
numg=150.*numg;
numg=[0 0 numg];
rad=roots([0.01 0.1 1]);
rad=[0;-3;rad];
deng=poly(rad);
numh=[0 0 20 20 20];
rad=roots([0.01 0.1 1]);
rad=[0;-2;rad];
denh=poly(rad);
subplot(2,2,1);
bode(numg,deng);
subplot(2,2,2);
bode(numh,denh);
subplot(2,2,3);
[mag,phase,w]=bode(numg,deng);
mag=20*log(mag);
plot(mag,w,'r',phase,w,'g')
subplot(2,2,4);
[mag1,phase1,w1]=bode(numh,denh);
mag1=20*log(mag1);
plot(mag1,w1,'r',phase1,w1,'g')
%tb sa tragem concluziile, stabil,instabil
margin(numg,deng);
margin(numh,denh);