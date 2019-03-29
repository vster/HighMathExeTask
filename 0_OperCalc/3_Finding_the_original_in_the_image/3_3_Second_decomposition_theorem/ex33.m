clear
syms t p
F=1/(p^3*(p-1))
f=ilaplace(F,p,t)
% exp(t) - t - t^2/2 - 1
F2=laplace(f,t,p)
% 1/(p - 1) - 1/p^3 - (p + 1)/p^2
F2=collect(F2)
% 1/(p^4 - p^3)