% lucrarea 13 pana data viitoare
num = 4;
den = [1 2 4];
w = 0: .01 : 3;
M = freqs(num, den,w);

plot(w, abs(M))