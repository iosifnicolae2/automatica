 t=[0:0.1:30];
num1=[0 1];
den1=[1 1];
[num2,den2]=c2dm(num1,den1,0.3,'zoh')
printsys(num2,den2)
 [num3,den3]=cloop(num2,den2,-1)
 subplot(2,2,1)
 dimpluse(num3,den3,t)
 subplot(2,2,2)
 dstep(num3,den3,t)
 [num4]=conv(num3,[0 0.3])
 [den4]=conv(den3,[1 -1])
  subplot(2,2,3)
 dstep(num4,den4,t)  
 
 
 