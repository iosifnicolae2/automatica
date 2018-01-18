A = [-2 0; 1 0]; 
B = [1; 0];
C = [0 4];
D = 0;

[numi, deni] = ss2tf(A, B, C, D);         %ft in circuit deschis  
[num, den] = feedback(numi, deni, 1, 1);  %ft in circuit inchis

F = freqs(num, den);
plot(abs(F))