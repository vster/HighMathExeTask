clear
syms t p a b
f=sin(t)^2
F=laplace(f,t,p)
% 2/(p*(p^2 + 4))
F=collect(F)
% 2/(p^3 + 4*p)
f2=ilaplace(F,p,t)
% 1/2 - cos(2*t)/2
% sin(t)^2