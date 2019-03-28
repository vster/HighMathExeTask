clear
syms t p a b
f=2*sin(2*t)+3*sinh(2*t)
F=laplace(f,t,p)
% 6/(p^2 - 4) + 4/(p^2 + 4)
F=simplify(F)
% (2*(5*p^2 + 4))/(p^4 - 16)
f2=ilaplace(F,p,t)
% (3*exp(2*t))/2 - (3*exp(-2*t))/2 + 2*sin(2*t)
% 2*sin(2*t)+3*sinh(2*t)