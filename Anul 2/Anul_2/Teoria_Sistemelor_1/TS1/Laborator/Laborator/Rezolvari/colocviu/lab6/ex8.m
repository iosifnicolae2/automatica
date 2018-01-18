num=25
den1=[1 0]
den2=[1 1]
den3=[1 10]
den=conv(den1,conv(den2,den3))
[mag,phase,w]=bode(num,den)
plot(log10(w),20*log10(mag),log10(w),phase)