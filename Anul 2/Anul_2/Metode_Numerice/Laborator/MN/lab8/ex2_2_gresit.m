a = 1; % 2*zeta*omega_n
b = 1; % omega_n^2
F1 = 1; % forta aplicată corpului
F2 = 0; % forta aplicată corpului
N = 100; % numarul de puncte in care se rezolvă ecuatia
t = linspace(0,10,N); % intervalul de timp pe care se rezolva ecuatia
x = zeros(4,N); % solutia sistemului
x0 = [0;0;0;0]; % soluția inițială

A = [0 1 0 0; -2 0 1 0; 0 0 0 1; 1/2 0 -1 0];
B = [0;F1;0;F2];


delta_t = 10/N;
x(:,1) = x0;
for i=2:N
 x(:,i) = x(:,i-1) + delta_t.*(A*x(:,i-1) + B);
end
x_euler = x;
figure;
subplot(2,2,1)
plot(t,x(1,:))
xlabel('Timp')
ylabel('Pozitie1')
subplot(2,2,2)
plot(t,x(2,:))
xlabel('Viteza1')
ylabel('Pozitie1')


subplot(2,2,3)
plot(t,x(3,:))
xlabel('Timp')
ylabel('Pozitie2')
subplot(2,2,4)
plot(t,x(4,:))
xlabel('Viteza2')
ylabel('Pozitie2')
