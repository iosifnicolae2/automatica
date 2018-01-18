%A=[3 2 -1; -1 3 2; 1 -1 -1]
%B=[10;5;-1]
%X=A\B;
%X
%X=inv(A)*B
%X

f=[4 0 -2 0 3 -1 4];
%g=[0 0 0 0 2 1 -16];
%s=f+g
%s=f-g

%a=polyval(f,3)-polyval(g,7)

%b=[1 3 4 9]
%polyval(f,b)
%polyval(g,b)

%c=conv(f,g)
%g=[2 1 -16];
%[d,r]=deconv(f,g)
%d 
%r

%cc=polyder(conv(f,g))

%polyder(f,g)

%[M,N]=polyder(f,g)

%r=roots(f)
%r1=roots(g)

%B=[1 2 0 -2];
%A=[1 0 1];
%[r,p,k]=residue(B,A)

%G=[11 12; 4 6];
%H=[G eye(2);2*G ones(2)]

A=[11 12 13 14;2 3 4 5;21 22 23 24;31 32 33 34];
%B=A(2,2:4)
%C=A(2,:)
%D=[A(1,:);A(3,:)]
%F=[A(1,:);A(3,:);A(2,:);A(4,:)]
A=[A(1,1:2) A(1,4);A(2,1:2) A(2,4);A(3,1:2) A(3,4);A(4,1:2) A(4,4)]

