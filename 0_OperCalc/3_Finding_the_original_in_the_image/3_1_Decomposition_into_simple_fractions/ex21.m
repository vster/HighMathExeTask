clear
syms t p 
F=1/(p*(p^4-5*p^2+4))
f=ilaplace(F,p,t)
% exp(-2*t)/24 - exp(-t)/6 + exp(2*t)/24 - exp(t)/6 + 1/4
F2=laplace(f,t,p)
% 1/(24*(p - 2)) - 1/(6*(p + 1)) - 1/(6*(p - 1)) + 1/(24*(p + 2)) + 1/(4*p)
F2=collect(F2)
% 1/(p^5 - 5*p^3 + 4*p)