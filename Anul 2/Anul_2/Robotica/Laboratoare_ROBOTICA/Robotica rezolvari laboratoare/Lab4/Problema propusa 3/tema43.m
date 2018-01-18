T0=transl(0,0,0);
Tf=transl(0,0,0)* trotx(1)*troty(1)*trotz(1);
Ts=trinterp(T0,Tf,[0:49]/49);
figure
tranimate(Ts)