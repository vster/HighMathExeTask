clear
syms t x p
f=int((1+exp(-x*t))*sin(x*t)/t,t,0,inf)
% (3*pi)/4

F=laplace(f,t,p)
% (3*pi)/(4*p)
f1=ilaplace(F,p,t)
% (3*pi)/4