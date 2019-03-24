clear
syms t p real
F=1/(p^3-8)

f=ilaplace(F,p,t)
% exp(2*t)/12 - (exp(-t)*(cos(3^(1/2)*t) + 3^(1/2)*sin(3^(1/2)*t)))/12

F1=collect(laplace(f,t,p))
% 1/(p^3 - 8)