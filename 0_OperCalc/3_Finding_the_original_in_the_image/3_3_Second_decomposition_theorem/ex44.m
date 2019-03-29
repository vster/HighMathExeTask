clear
syms t p
F=(2*p+3)/(p^3+4*p^2+5*p)
f=ilaplace(F,p,t)
% 3/5 - (3*exp(-2*t)*(cos(t) - (4*sin(t))/3))/5
F2=laplace(f,t,p)
% 3/(5*p) - (3*(p + 2))/(5*((p + 2)^2 + 1)) + 4/(5*((p + 2)^2 + 1))
F2=collect(F2)
% (2*p + 3)/(p^3 + 4*p^2 + 5*p)