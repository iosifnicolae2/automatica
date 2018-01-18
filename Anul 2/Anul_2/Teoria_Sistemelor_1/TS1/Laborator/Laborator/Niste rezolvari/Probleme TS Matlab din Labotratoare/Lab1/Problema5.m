X=[5 2 -9 10 -1 9 1]
sum=0;
for i=1:length(X)
    if X(i)<=8
        sum=sum+X(i);
    else break
    end
end
sum