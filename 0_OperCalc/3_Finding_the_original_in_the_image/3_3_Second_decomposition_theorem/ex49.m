clear
syms t p
F=1/(p^2*(p^2+1))
f=ilaplace(F,p,t)
% t - sin(t)
f=simplify(f)
% t - sin(t)
F2=laplace(f,t,p)
% 1/p^2 - 1/(p^2 + 1)
F2=collect(F2)
% 1/(p^4 + p^2)