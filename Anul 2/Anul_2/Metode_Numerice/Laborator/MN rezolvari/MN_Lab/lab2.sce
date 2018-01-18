A=[1,2,1,3,4;2,1,5,9,8;5,0,6,4,3;2,5,8,9,8;7,3,4,2,7];
B=[11;25;18;32;23];
X=[];
M=eye(5,5);

for j=1:5      
M=eye(5,5);
    for  i=1:5
    if(i==j)
M(i,j) = 1/A(i,j);
     elseif(i>j)
M (i,j) = -A(i,j)/A(j,j);
end
end
z=M*A;
A=z;
y=M*B;
B=y;
end
disp("m:");
disp(M)
disp("a:");
disp(A);
X=zeros(B);
for j=i+1:5
    e=0;
    for j=i+1:5
        e=e+sum(A(i,j)*X(j));
        
        
    end
    X(i)=B(i)-e;
end
disp("x:")
disp(X);
