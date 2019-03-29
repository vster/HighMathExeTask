clear
syms t p 
F=1/(p+2*p^2+p^3)
f=ilaplace(F,p,t)
% 1 - t*exp(-t) - exp(-t)
F2=laplace(f,t,p)
% 1/p - 1/(p + 1)^2 - 1/(p + 1)
F2=collect(F2)
% 1/(p^3 + 2*p^2 + p)