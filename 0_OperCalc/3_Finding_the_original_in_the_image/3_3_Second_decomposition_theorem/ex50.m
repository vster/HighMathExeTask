clear
syms t p
F=log(1+1/p)
f=ilaplace(F,p,t)
% -(exp(-t) - 1)/t
f=simplify(f)
% -(exp(-t) - 1)/t
F2=laplace(f,t,p)
% log(p + 1) - log(p)
F2=collect(F2)
% log(p + 1) - log(p)