clear
syms t p
F=p/((p+1)*(p+2)*(p+3)*(p+4))
f=ilaplace(F,p,t)
% exp(-2*t) - exp(-t)/6 - (3*exp(-3*t))/2 + (2*exp(-4*t))/3
F2=laplace(f,t,p)
% 1/(p + 2) - 1/(6*(p + 1)) - 3/(2*(p + 3)) + 2/(3*(p + 4))
F2=collect(F2)
% p/(p^4 + 10*p^3 + 35*p^2 + 50*p + 24)