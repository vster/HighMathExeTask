clear
syms t p alfa omega
f=cosh(t)*sin(t)
F=laplace(f,t,p)
% 1/(2*((p - 1)^2 + 1)) + 1/(2*((p + 1)^2 + 1))
F=simplify(F)
% (p^2 + 2)/(p^4 + 4)