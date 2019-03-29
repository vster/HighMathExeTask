clear
syms t p 
F=1/((p-1)*(p^2-4))
f=ilaplace(F,p,t)
% exp(-2*t)/12 + exp(2*t)/4 - exp(t)/3
F2=laplace(f,t,p)
% 1/(4*(p - 2)) - 1/(3*(p - 1)) + 1/(12*(p + 2))
F2=collect(F2)
% 1/(p^3 - p^2 - 4*p + 4)