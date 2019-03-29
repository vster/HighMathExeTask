clear
syms t p
F=(4-p+p^2)/(p^3-p^2)
f=ilaplace(F,p,t)
% 4*exp(t) - 4*t - 3
F2=laplace(f,t,p)
% 4/(p - 1) - (4*((3*p)/4 + 1))/p^2
F2=collect(F2)
% (p^2 - p + 4)/(p^3 - p^2)