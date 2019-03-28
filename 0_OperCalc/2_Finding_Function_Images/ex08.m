clear
syms t p a b
f=4*t^2-2*t+3
F=laplace(f,t,p)
% (2*((3*p)/2 - 1))/p^2 + 8/p^3
f2=ilaplace(F,p,t)
% 4*t^2 - 2*t + 3