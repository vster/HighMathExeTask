clear
syms t p real
F=1/(p*(1+p^4))

f=ilaplace(F,p,t)
% 1 - cos((2^(1/2)*t)/2)*cosh((2^(1/2)*t)/2)

F1=collect(laplace(f,t,p))
% 1/(p^5 + p)