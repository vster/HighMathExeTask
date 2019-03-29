clear
syms t p 
F=1/(p^2+4*p+5)
f=ilaplace(F,p,t)
% exp(-2*t)*sin(t)
F2=laplace(f,t,p)
% 1/((p + 2)^2 + 1)
F2=collect(F2)
% 1/(p^2 + 4*p + 5)