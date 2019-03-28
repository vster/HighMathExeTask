clear
syms t p a b
f=sin(t)^2
F=laplace(f,t,p)
% 2/(p*(p^2 + 4))
F=collect(F)
% 2/(p^3 + 4*p)