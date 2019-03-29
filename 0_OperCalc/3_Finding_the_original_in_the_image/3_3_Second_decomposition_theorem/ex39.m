clear
syms t p
F=1/(p^4-6*p^3+11*p^2-6*p)
f=ilaplace(F,p,t)
% exp(3*t)/6 - exp(2*t)/2 + exp(t)/2 - 1/6
F2=laplace(f,t,p)
% 1/(2*(p - 1)) - 1/(2*(p - 2)) + 1/(6*(p - 3)) - 1/(6*p)
F2=collect(F2)
% 1/(p^4 - 6*p^3 + 11*p^2 - 6*p)