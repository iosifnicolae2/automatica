Wp=[1000 2000]; Ws=[450 4000]; Gp=-2.4; Gs=-20;
%Butterworth
[n,Wn]=buttord(Wp/1000,Ws/1000,-Gp,-Gs,'s');
[num,den]=butter(n,Wn,'s');
w=0:0.01:20;
figure;
[mag,phase]=bode(num,den,w);
plot(w,mag);
%Chebyshev
[n,Wn]=cheb1ord(Wp/1000,Ws/1000,-Gp,-Gs,'s');
[num,den]=cheby1(n,-Gp,Wn,'s');
w=0:0.01:20;
figure;
[mag,phase]=bode(num,den,w);
plot(w,mag);
%Inverse Chebyshev
[n,Ws]=cheb2ord(Wp/1000, Ws/1000,-Gp,-Gs,'s' );
[num,den]=cheby2(n,-Gs,Ws,'s');
w=0:0.01:20;
figure;
[mag,phase]=bode(num,den,w);
plot(w,mag);
%Elliptic filter

[n,Wn]=ellipord(Wp/1000,Ws/1000,-Gp,-Gs,'s');
[num,den]=ellip(n, -Gp, -Gs, Wn,'s');
w=0:0.01:20;
figure;
[mag,phase]=bode(num,den,w);
plot(w,mag);