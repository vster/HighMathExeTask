clear
syms t p a b
f=1/3*sin(3*t)-5
F=laplace(f,t,p)
% 1/(p^2 + 9) - 5/p
f2=ilaplace(F,p,t)
% sin(3*t)/3 - 5
