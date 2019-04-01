clear
syms t p
F=(6*p^3+4*p+1)/(p^4+p^2)
f=ilaplace(F,p,t)
% t + 2*cos(t) - sin(t) + 4
f=simplify(f)
% t + 2*cos(t) - sin(t) + 4
F2=laplace(f,t,p)
% (4*p + 1)/p^2 + (2*p)/(p^2 + 1) - 1/(p^2 + 1)
F2=collect(F2)
% (6*p^3 + 4*p + 1)/(p^4 + p^2)