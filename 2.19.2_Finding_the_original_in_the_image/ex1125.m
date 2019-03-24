clear
syms t p real
F=1/((p-1)*(p^2-4))

f=ilaplace(F,p,t)
% exp(-2*t)/12 + exp(2*t)/4 - exp(t)/3

F1=collect(laplace(f,t,p))
% 1/(p^3 - p^2 - 4*p + 4)