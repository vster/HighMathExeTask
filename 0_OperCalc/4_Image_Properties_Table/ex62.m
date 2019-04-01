clear
syms t p
F=(3*p-1)/(p^2-4*p+7)
f=ilaplace(F,p,t)
% 3*exp(2*t)*(cos(3^(1/2)*t) + (5*3^(1/2)*sin(3^(1/2)*t))/9)