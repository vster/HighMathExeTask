clear
syms t p 
F=p/(p^2+1)^2
f=ilaplace(F,p,t)
% (t*sin(t))/2
F2=laplace(f,t,p)
% p/(p^2 + 1)^2
F2=collect(F2)
% p/(p^4 + 2*p^2 + 1)