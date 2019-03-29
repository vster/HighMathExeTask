clear
syms t p
F=1/((p-1)^2*(p+2))
f=ilaplace(F,p,t)
% exp(-2*t)/9 - exp(t)/9 + (t*exp(t))/3
F2=laplace(f,t,p)
% 1/(3*(p - 1)^2) - 1/(9*(p - 1)) + 1/(9*(p + 2))
F2=collect(F2)
% 1/(p^3 - 3*p + 2)