FI = [0 -.25; 1 1];
TAU = [1; 1];
C = [0 1];
x0 = [1; 1];
D = 0;

u = ones(1, length(t)); %step de t ori

dlsim(FI, TAU, C, D, u, x0)