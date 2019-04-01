clear
syms t x p
f=int(sin(x*t)/(t*(t^4+4)),t,0,inf)
% -(pi*(exp(-x)*cos(x) - 1))/8

F=laplace(f,t,p)
% -(pi*(exp(-x)*cos(x) - 1))/(8*p)
f1=ilaplace(F,p,t)
% -(pi*(exp(-x)*cos(x) - 1))/8