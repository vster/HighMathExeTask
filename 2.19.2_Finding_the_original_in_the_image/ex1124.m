clear
syms t p
F=1/(p*(p^2+1)*(p^2+4))

f=ilaplace(F,p,t)
% cos(2*t)/12 - cos(t)/3 + 1/4

F1=collect(laplace(f,t,p))
% 1/(p^5 + 5*p^3 + 4*p)