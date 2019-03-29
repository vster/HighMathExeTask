clear
syms t p 
F=(2*p^3+p^2+2*p+2)/(p^5+2*p^4+2*p^3)
f=ilaplace(F,p,t)
% 2*exp(-t)*sin(t) + t^2/2
F2=laplace(f,t,p)
% 1/p^3 + 2/((p + 1)^2 + 1)
F2=collect(F2)
% (2*p^3 + p^2 + 2*p + 2)/(p^5 + 2*p^4 + 2*p^3)