clear
syms x
lam=5
f(x)=piecewise(x<0,0,x>=0,lam*exp(-lam*x))

F1=int(f(x),x,0.3,inf)
vpa(F1)
% 0.223