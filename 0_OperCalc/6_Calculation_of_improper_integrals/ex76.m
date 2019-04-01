clear
syms t x p a
assume(a>0)
f=int(cos(x*t)/(a^2+t^2),t,0,inf)
% (pi*exp(-a*x))/(2*a)

F=laplace(f,t,p)
% (pi*exp(-a*x))/(2*a*p)
f1=ilaplace(F,p,t)
% (pi*exp(-a*x))/(2*a)