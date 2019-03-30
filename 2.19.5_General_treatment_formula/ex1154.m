clear
syms t p
F=(4-p-p^2)/(p^3-p^2)

f1=ilaplace(F,p,t)
% 2*exp(t) - 4*t - 3