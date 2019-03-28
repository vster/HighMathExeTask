clear
syms t p a b
f=t^2*exp(t)+2*t*exp(-t)+4*cosh(2*t)
F=laplace(f,t,p)
% 2/(p + 1)^2 + 2/(p - 1)^3 + (4*p)/(p^2 - 4)
