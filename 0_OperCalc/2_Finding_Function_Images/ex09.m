clear
syms t p a b
f=1/3*t^3+4*cos(2*t)
F=laplace(f,t,p)
% (4*p)/(p^2 + 4) + 2/p^4
f2=ilaplace(F,p,t)
% 4*cos(2*t) + t^3/3
