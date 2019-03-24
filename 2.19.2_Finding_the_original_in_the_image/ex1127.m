clear
syms t p real
F=1/(p*(p^4-5*p^2+4))

f=ilaplace(F,p,t)
% exp(-2*t)/24 - exp(-t)/6 + exp(2*t)/24 - exp(t)/6 + 1/4

F1=collect(laplace(f,t,p))
% 1/(p^5 - 5*p^3 + 4*p)