Ws=100;Wp=165;Gp=-2;Gs=-20;
%Butterworth
[n,Wn]=buttord(Wp,Ws,-Gp,-Gs,'s')
[num,den]=butter(n,Wn,'high','s')
%Chebyshev
[n,Wn]=cheb1ord(Wp,Ws,-Gp,-Gs,'s')
[num,den]=cheby1(n,-Gp,Wn,'high','s')
%Inverse Chebyshev
[n,Wn]=cheb1ord(Wp,Ws,-Gp,-Gs,'s')
[num,den]=cheby2(n,-Gs,Wn,'high','s')
%Elliptic
[n,Wn]=ellipord(Wp,Ws,-Gp,-Gs,'s')
[num,den]=ellip(n,-Gp,-Gs,Wn,'high','s')