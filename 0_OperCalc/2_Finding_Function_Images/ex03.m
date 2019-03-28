clear
syms t p
f=cos(t)^3
F=laplace(f,t,p)
% (p^3 + 7*p)/((p^2 + 1)*(p^2 + 9))
f2=ilaplace(F,p,t)
% cos(3*t)/4 + (3*cos(t))/4