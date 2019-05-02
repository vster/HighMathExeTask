function [I,Rn]=intrect(f,a,b,n)
syms x
h=(b-a)/n;
X=a:h:(b-h);
Y=vpa(f(X));
I=h*sum(Y);
df(x)=diff(f);
M1=max(abs(df(X)));
Rn=vpa(h/2*(b-a)*M1);
end