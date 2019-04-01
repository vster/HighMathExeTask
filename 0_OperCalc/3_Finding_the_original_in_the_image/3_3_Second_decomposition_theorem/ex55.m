clear
syms t p
F=(4-p)/(p-2)^3
f=ilaplace(F,p,t)
% t^2*exp(2*t) - t*exp(2*t)
f=simplify(f)
% t*exp(2*t)*(t - 1)
F2=laplace(f,t,p)
% 2/(p - 2)^3 - 1/(p - 2)^2
F2=collect(F2)
% (4 - p)/(p^3 - 6*p^2 + 12*p - 8)