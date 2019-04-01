clear
syms t p
F=(5*p^3+3*p^2+12*p-12)/(p^4-16)
f=ilaplace(F,p,t)
% cos(2*t) + 2*exp(-2*t) + 2*exp(2*t) + (3*sin(2*t))/2
f=cos(2*t) + rewrite(2*exp(-2*t) + 2*exp(2*t),'cosh') + (3*sin(2*t))/2
% cos(2*t) + 4*cosh(2*t) + (3*sin(2*t))/2
F2=laplace(f,t,p)
% 2/(p - 2) + 2/(p + 2) + p/(p^2 + 4) + 3/(p^2 + 4)
F2=collect(F2)
% (5*p^3 + 3*p^2 + 12*p - 12)/(p^4 - 16)