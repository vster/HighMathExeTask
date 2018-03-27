syms a;
% I=int(1/sqrt(a^2-x^2))
% u=x/a

syms u du;
x=a*u
dx=a*du

df=dx/sqrt(a^2-x^2)
% (a*du)/(a^2 - a^2*u^2)^(1/2)
% du/(1-u^2)^(1/2)
f=1/(1-u^2)^(1/2)

I=int(f)
% asin(u)
syms a x;
I=asin(x/a)