clear
syms t p omega
F=p/(p^2+omega^2)^2
f=ilaplace(F,p,t)
% (t*sin(omega*t))/(2*omega)