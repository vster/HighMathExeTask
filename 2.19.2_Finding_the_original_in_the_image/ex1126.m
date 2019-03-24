clear
syms t p
F=(p+3)/(p*(p^2-4*p+3))

f=ilaplace(F,p,t)
% exp(3*t) - 2*exp(t) + 1

F1=collect(laplace(f,t,p))
% (p + 3)/(p^3 - 4*p^2 + 3*p)