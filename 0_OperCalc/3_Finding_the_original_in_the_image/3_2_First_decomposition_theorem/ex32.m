clear
syms t p
F=sin(1/p)
f=ilaplace(F,p,t)
% ilaplace(sin(1/p), p, t)
F2=laplace(f,t,p)
% sin(1/p)
F2=collect(F2)
% sin(1/p)