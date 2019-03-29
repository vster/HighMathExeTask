clear
syms t p
F=(p^2+2*p-1)/(p^3+3*p^2+3*p+1)
f=ilaplace(F,p,t)
% exp(-t) - t^2*exp(-t)
f=simplify(f)
% -exp(-t)*(t^2 - 1)
F2=laplace(f,t,p)
% 1/(p + 1) - 2/(p + 1)^3
F2=collect(F2)
% (p^2 + 2*p - 1)/(p^3 + 3*p^2 + 3*p + 1)