ng1=[1]
dg1=[1 10]
ng2=[1]
dg2=[1 1]
ng3=[1 0 1]
dg3=[1 4 4]
ng4=[1 1]
dg4=[1 6]
nh1=[2]
dh1=[1]
nh2=[1 1]
dh2=[1 2]
nh3=[1]
dh3=[1]
%mutarea punctului de ramificatie al lui h1 inainte rezultant h1=h1/g4
nh1=conv(nh1,dg4)
dh1=conv(dh1,ng4)
%eliminarea seriei g3, g4 rezultant g34=g3*g4
[ng34,dg34]=series(ng3,dg3,ng4,dg4)
%eliminarea buclei g34 h2
[ng34h2,dg34h2]=feedback(ng34,dg34,nh2,dh2)
%eliminarea seriei g2, g34h2
[ng234h2,dg234h2]=series(ng2,dg2,ng34h2,dg34h2)
%eliminarea buclei g234h2, h1
[ng234h12,dg234h12]=feedback(ng234h2,dg234h2,nh1,dh1)
%eliminarea seriei g234h12, g1
[ng1234h12,dg1234h12]=series(ng1,dg1,ng234h12,dg234h12)
%eliminarea buclei finale g1234h12, h3
[ng1234h123,dg1234h123]=feedback(ng1234h12,dg1234h12,nh3,dh3)
%crearea functie de transfer:
g=tf(ng1234h123,dg1234h123)
%calcularea zerourilor:
roots(ng1234h123)
%calcularea polilor:
roots(dg1234h123)
%reprezentarea polilor si zerourilor
pzmap(ng1234h123,dg1234h123)