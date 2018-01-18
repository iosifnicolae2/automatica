ws=100;
wp=165;
Gp=-2;
Gs=-20;

%Butterworth
[n,wn]=buttord(wp,ws,-Gp,-Gs,'s')
[num,den]=butter(n,wn,'high','s')
%Chebyshev
[n,wn]=cheb1ord(wp,ws,-Gp,-Gs,'s')
[num,den]=cheby1(n,-Gp,wn,'high','s')
%Inverse Chebyshev
[n,wn]=cheb2ord(wp,ws,-Gp,-Gs,'s')
 [num,den]=cheby2(n,-Gs,wn,'high','s')
% % %ELLIPTIC
 [n,wn]=ellipord(wp,ws,-Gp,-Gs,'s')
 [num,den]=ellip(n,-Gp,-Gs,wn,'high','s')