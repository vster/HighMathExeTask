clear
syms t p
F=(5*p^3+5*p^2-11*p+3)/(p^3*(p+3))
f=ilaplace(F,p,t)
% 2*exp(-3*t) - 4*t + t^2/2 + 3
f=simplify(f)
% 2*exp(-3*t) - 4*t + t^2/2 + 3 
F2=laplace(f,t,p)
% 2/(p + 3) + (4*((3*p)/4 - 1))/p^2 + 1/p^3
F2=collect(F2)
% (5*p^3 + 5*p^2 - 11*p + 3)/(p^4 + 3*p^3)