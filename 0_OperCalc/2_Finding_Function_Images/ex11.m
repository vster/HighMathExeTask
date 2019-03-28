clear
syms t p a b
f=4-5*exp(2*t)
F=laplace(f,t,p)
% 4/p - 5/(p - 2)
F=collect(F)
% (- p - 8)/(p^2 - 2*p)
f2=ilaplace(F,p,t)
% 4 - 5*exp(2*t)

