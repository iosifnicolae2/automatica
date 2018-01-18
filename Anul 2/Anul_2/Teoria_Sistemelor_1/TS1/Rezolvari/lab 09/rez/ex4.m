num=1
den=[2 2]
[nume,dene]=cloop(num,den,-1)
sistem=tf(nume,dene)
nyquist(nume,dene)