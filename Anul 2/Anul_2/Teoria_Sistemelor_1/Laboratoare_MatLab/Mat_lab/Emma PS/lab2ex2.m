w = 0:0.1:20;
z = [-2-j -2+j];
p = [-5+j*10 -5-j*10];

[nr,num] = zp2tf(z,p,k);
Gw = bode(nr,num,w);


%(-2-j)(-2+j) = 4-2j+2j-j2 = 4+1=5 zerouri
%(-5-j*10)(-5+j*10) =  25-50j+50j+100=125 poli

% wn2(s-5)*1/5
%