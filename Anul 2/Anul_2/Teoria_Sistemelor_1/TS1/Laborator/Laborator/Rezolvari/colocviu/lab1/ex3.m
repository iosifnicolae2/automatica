X=[1 0 2; 0 0 1; 0 0 4]
b=any(X)
c=all(X)
for i=1:1:3
    r=0;
    for j=1:1:3
        if X(j,i)>-1 
        r=r+1;
        end
    end
    if r>0 i
    end
end