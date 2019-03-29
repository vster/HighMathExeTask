clear
syms t p
F=p^3/(p^2+1)^2
f=ilaplace(F,p,t)
% cos(t) - (t*sin(t))/2
F2=laplace(f,t,p)
% p/(p^2 + 1) - p/(p^2 + 1)^2
F2=collect(F2)
% p^3/(p^4 + 2*p^2 + 1)