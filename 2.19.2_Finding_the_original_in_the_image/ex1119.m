clear
syms t p real
F=p/(p^2-2*p+5)

f=ilaplace(F,p,t)
% exp(t)*(cos(2*t) + sin(2*t)/2)

F1=collect(laplace(f,t,p))
% p/(p^2 - 2*p + 5)