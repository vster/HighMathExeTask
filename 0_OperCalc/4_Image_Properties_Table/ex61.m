clear
syms t p
F=1/(p^2+2*p) % 1/((p+1)^2-1)
f=ilaplace(F,p,t)
% 1/2 - exp(-2*t)/2
% exp(-t)*sinh(t)