clear
syms t p a b
f=t*cosh(b*t)
F=laplace(f,t,p)
% 1/(b^2 - p^2) + (2*p^2)/(b^2 - p^2)^2
F=collect(F)
% (b^2 + p^2)/(b^4 - 2*b^2*p^2 + p^4)
f2=ilaplace(F,p,t)
% (t*exp(b*t))/2 + (t*exp(-b*t))/2
% t*cosh(b*t)