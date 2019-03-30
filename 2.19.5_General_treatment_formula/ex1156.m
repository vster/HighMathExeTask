clear
syms t p
F=1/((p-1)^3*(p^3+1))

f1=ilaplace(F,p,t)
% (3*exp(t))/8 - exp(-t)/24 + (t^2*exp(t))/4 - (3*t*exp(t))/4 - (exp(t/2)*(cos((3^(1/2)*t)/2) - 3^(1/2)*sin((3^(1/2)*t)/2)))/3
