clear
syms t p a b
f=exp(-4*t)*sin(3*t)*cos(2*t)
F=laplace(f,t,p)
% 1/(2*((p + 4)^2 + 1)) + 5/(2*((p + 4)^2 + 25))
f2=ilaplace(F,p,t)
% (exp(-4*t)*sin(t))/2 + (sin(5*t)*exp(-4*t))/2