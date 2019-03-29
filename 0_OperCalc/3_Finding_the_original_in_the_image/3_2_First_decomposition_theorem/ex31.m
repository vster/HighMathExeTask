clear
syms t p a 
syms k integer
assume(k>0)
F=1/(p^k+a^k)
f=ilaplace(F,p,t)
% ilaplace(1/(a^k + p^k), p, t)
F2=laplace(f,t,p)
% 1/(a^k + p^k)
F2=collect(F2)
% 1/(a^k + p^k)