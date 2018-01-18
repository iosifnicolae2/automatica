n1=[1];
d1=[1 1 0];
n2=[2];
d2=[1 1];
Te=0.2;
[Nz1,Dz1]=c2dm(n1,d1,Te,'zoh');
[Nz2,Dz2]=c2dm(n2,d2,Te,'zoh');
[nf,df]=series(Nz1,Dz1,Nz2,Dz2);
printsys(nf,df,'z')