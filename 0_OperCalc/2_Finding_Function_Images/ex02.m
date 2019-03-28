clear
syms t p
f=heaviside(t)
F=laplace(f,t,p)
% 1/p
