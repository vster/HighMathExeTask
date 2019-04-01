clear
syms t p
F=(3-2*p^3)/p^4
f=ilaplace(F,p,t)
% t^3/2 - 2
f=simplify(f)
% t^3/2 - 2
F2=laplace(f,t,p)
% 3/p^4 - 2/p
F2=collect(F2)
% (3 - 2*p^3)/p^4