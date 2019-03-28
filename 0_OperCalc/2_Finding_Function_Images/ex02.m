clear
syms t p
f=heaviside(t)
F=laplace(f,t,p)
% 1/p
f2=ilaplace(F,p,t)
% 1
