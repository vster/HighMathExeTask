clear
syms t p
F=p/(p^3+1)
f=ilaplace(F,p,t)
% (exp(t/2)*(cos((3^(1/2)*t)/2) + 3^(1/2)*sin((3^(1/2)*t)/2)))/3 - exp(-t)/3
F2=laplace(f,t,p)
% (p - 1/2)/(3*((p - 1/2)^2 + 3/4)) - 1/(3*(p + 1)) + 1/(2*((p - 1/2)^2 + 3/4))
F2=collect(F2)
% p/(p^3 + 1)