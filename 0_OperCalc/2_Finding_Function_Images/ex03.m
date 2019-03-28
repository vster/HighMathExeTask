clear
syms t p
f=cos(t)^3
F=laplace(f,t,p)
% (p^3 + 7*p)/((p^2 + 1)*(p^2 + 9))