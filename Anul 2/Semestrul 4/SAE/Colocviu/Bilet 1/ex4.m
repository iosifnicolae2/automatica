A = [1 1 .5; 0 1 1; 0 0 1];
B = [1 0; 0 0; 0 1];
C = [1 0 0; 0 0 1];
D = [0 0; 0 0];

t = 0: 30;
u = [ones(1, length(t)); ones(1, length(t)); ones(1, length(t))];
U = transpose(u);
dlsim(A, B, C, D, U)