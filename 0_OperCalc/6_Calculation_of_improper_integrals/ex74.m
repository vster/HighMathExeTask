clear
syms t x p
f=int((1-cos(x*t))/t^2,t,0,inf)
% (pi*x)/2

F=laplace(f,t,p)
% (pi*x)/(2*p)
f1=ilaplace(F,p,t)
% (pi*x)/2