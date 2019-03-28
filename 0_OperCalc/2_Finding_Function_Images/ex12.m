clear
syms t p a b
f=3*t^3*exp(-t)+2*t^2-1
F=laplace(f,t,p)
% 18/(p + 1)^4 - 1/p + 4/p^3
