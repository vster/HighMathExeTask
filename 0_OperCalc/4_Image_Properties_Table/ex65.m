clear
syms t p omega
F=(4*p-3)/(p^2+2*p+10)^2
f=ilaplace(F,p,t)
% (exp(-t)*(21*t*cos(3*t) - 7*sin(3*t) + 36*t*sin(3*t)))/54
F2=laplace(f,t,p)
% (7/36 - 1i/3)/(p + 1 - 3i)^2 + (7/36 + 1i/3)/(p + 1 + 3i)^2 - 7/(18*((p + 1)^2 + 9))
F2=collect(F2)
% (4*p - 3)/(p^4 + 4*p^3 + 24*p^2 + 40*p + 100)