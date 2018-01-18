Wp=[60 260]; Ws=[100 150]; Gp=-2.2; Gs=-20;
%Butterworth
[n,Wn]=buttord(Wp,Ws,-Gp,-Gs,'s')
[num,den]=butter(n,Wn,'stop','s')
%Chebyshev
[n,Wn]=cheb1ord(Wp,Ws,-Gp,-Gs,'s')
[num,den]=cheby1(n,-Gp,Wn,'stop','s')
%Inverse Chebyshev
[n,Wn]=cheb2ord(Wp,Ws,-Gp,-Gs,'s')
[num,den]=cheby2(n,-Gs,Wn,'stop','s')
%Elliptic
[n,Wn]=ellipord(Wp,Ws,-Gp,-Gs,'s')
[num,den]=ellip(n,-Gp,-Gs,Wn,'stop','s')