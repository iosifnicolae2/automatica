Ws=100;Wp=165;Gp=-2;Gs=-20;
%Butterworth

[n,Wn]=buttord(Wp/100,Ws/100,-Gp,-Gs,'s');
[num,den]=butter(n,Wn,'high','s');
w=0:0.01:10;
figure;
[mag,phase]=bode(num,den,w);
plot(w,mag);

%Chebyshev
[n,Wn]=cheb1ord(Ws/100,Wp/100,-Gp,-Gs,'s');
[num,den]=cheby1(n,-Gp,Wn,'high','s');
w=0:0.01:10;
figure;
[mag,phase]=bode(num,den,w);
plot(w,mag);
%Inverse Chebyshev
[n,Wn]=cheb2ord(Wp/100,Ws/100,-Gp,-Gs,'s');
[num,den]=cheby2(n,-Gs,Wn,'high','s');
w=0:0.01:10;
figure;
[mag,phase]=bode(num,den,w);
plot(w,mag);
%Elliptic
[n,Wn]=ellipord(Wp/100,Ws/100,-Gp,-Gs,'s');
[num,den]=ellip(n,-Gp,-Gs,Wn,'high','s');
w=0:0.01:10;
figure;
[mag,phase]=bode(num,den,w);
plot(w,mag);