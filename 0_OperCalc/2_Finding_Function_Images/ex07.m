clear
syms t p a b
f=exp(t)*cos(t)^2
F=laplace(f,t,p)
% (p - 1)/(2*((p - 1)^2 + 4)) + 1/(2*(p - 1))
F=collect(F)
% (p^2 - 2*p + 3)/(p^3 - 3*p^2 + 7*p - 5)
f2=ilaplace(F,p,t)
% exp(t)/2 + (cos(2*t)*exp(t))/2
% exp(t)*cos(t)^2
