clear
syms t p 
F=1/(p^2+4*p+3)
f=ilaplace(F,p,t)
% exp(-t)/2 - exp(-3*t)/2
F2=laplace(f,t,p)
% 1/(2*(p + 1)) - 1/(2*(p + 3))
F2=collect(F2)
% 1/(p^2 + 4*p + 3)