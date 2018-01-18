num1=[1];
den1=[1 1 0];

num2=[1];
den2=[1 2];

nume=conv(num1,num2);
dene=conv(den1,den2);

nyquist(nume,dene);