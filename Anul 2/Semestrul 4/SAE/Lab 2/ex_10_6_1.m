Te = .1;
t = 0:.1:5;
num = 9;
den = [1 7 0];
[numc, denc] = cloop(num, den); % sistem continuu

[numz, denz] = c2dm(num, den, Te, 'zoh'); % discret cu ER0 inchis
[numzcloop, denzcloop] = cloop(numz, denz);

numER0 = 9; %inmultim cu un s
denER0 = [1 7];
numz=[1 0]; % z/(z-1)
denz=[1 -1];
[n, d] = c2dm(numER0, denER0,Te,'zoh');
[ns, ds] = series(n, d, numz, denz);%functia de trasnfer in sist discret
[n1, d1] = cloop(ns, ds);

subplot(3,1,1); step(numc, denc);
subplot(3,1,2); dstep(numzcloop, denzcloop);
subplot(3,1,3); dstep(n1,d1);