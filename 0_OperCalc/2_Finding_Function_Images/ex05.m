clear
syms t p a b
f=t*cosh(b*t)
F=laplace(f,t,p)
% 1/(b^2 - p^2) + (2*p^2)/(b^2 - p^2)^2
F=collect(F)
% (b^2 + p^2)/(b^4 - 2*b^2*p^2 + p^4)