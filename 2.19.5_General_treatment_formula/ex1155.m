clear
syms t p
F=1/(p^4-6*p^3+11*p^2-6*p)

f1=ilaplace(F,p,t)
% exp(3*t)/6 - exp(2*t)/2 + exp(t)/2 - 1/6
