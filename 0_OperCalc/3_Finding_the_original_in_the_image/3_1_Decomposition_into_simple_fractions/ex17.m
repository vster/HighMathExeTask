clear
syms t p 
F=p/(p^2-2*p+5)
f=ilaplace(F,p,t)
% exp(t)*(cos(2*t) + sin(2*t)/2)
F2=laplace(f,t,p)
% (p - 1)/((p - 1)^2 + 4) + 1/((p - 1)^2 + 4)
F2=simplify(F2)
% p/(p^2 - 2*p + 5)