num1=[0 0 1];
den1=[1 1 0];
num2=[0 0 1];
den2=[0 1 2];
[nums,dens]=feedback(num1,num2,den1,den2,-1);
[re,im,w]=nyquist(nums,dens);
nyquist(nums,dens,w)
