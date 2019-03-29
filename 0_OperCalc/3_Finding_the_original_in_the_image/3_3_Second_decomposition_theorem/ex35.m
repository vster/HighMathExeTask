clear
syms t p
F=1/(p-1)^3
f=ilaplace(F,p,t)
% (t^2*exp(t))/2
F2=laplace(f,t,p)
% 1/(p - 1)^3
F2=collect(F2)
% 1/(p^3 - 3*p^2 + 3*p - 1)