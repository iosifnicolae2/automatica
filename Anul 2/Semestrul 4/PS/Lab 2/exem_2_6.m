w = 0:0.1:100;
k1 = .2;
k2 = .5;
num1 = k1.*[1 10 250]; den1 = [1 10 50];  % z1,2 = -5+-15j p1,2 = -5+-5j
num2 = k2.*[1 10 50]; den2 = [1 10 250];  % z1,2 = -5+-5j p1,2 = -5+-15j
G1 = bode(num1, den1, w); % filtru opreste-banda
G2 = bode(num2, den2, w); % filtru trece-banda

subplot(2,1,1); plot(w, G1);
subplot(2,1,2); plot(w, G2);