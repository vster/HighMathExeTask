clear
syms t p omega
F=1/(p^2+omega^2)^2
f=ilaplace(F,p,t)
% (sin(omega*t) - omega*t*cos(omega*t))/(2*omega^3)