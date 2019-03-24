clear
syms t p
F=(p+1)/(p*(p-1)*(p-2)*(p-3))

f=ilaplace(F,p,t)
% (2*exp(3*t))/3 - (3*exp(2*t))/2 + exp(t) - 1/6

F1=collect(laplace(f,t,p))
% (p + 1)/(p^4 - 6*p^3 + 11*p^2 - 6*p)