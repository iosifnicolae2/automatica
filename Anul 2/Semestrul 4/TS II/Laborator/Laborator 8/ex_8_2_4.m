t = 0: .05: 4;
x0 = [1; .5; -.5];

A = [0 1 0; 0 0 1; -6 -11 -6]; B = [1; 1; 1]; C = [1 1 1]; D = 0;

u = ones(1, length(t)); %step de t ori
%raspuns la treapta
subplot(2,1,1); lsim(A, B, C, D, u, t, x0);  title('treapta');
%raspuns la sin(2*pi*t)
subplot(2,1,2); lsim(A, B, C, D, sin(2*pi*t), t, x0); title('sin(2*pi*t)');
