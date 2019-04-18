clear
syms t p
syms x(t) X
eq1=diff(x,t,2)-2*diff(x,t)+x-cosh(t)
x0=0
dx0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% exp(-t)/8 - exp(t)/8 + (t^2*exp(t))/4 + (t*exp(t))/4

adx0=[x0 dx0]
x4=opercalc(eq1,adx0)
% exp(-t)/8 - exp(t)/8 + (t^2*exp(t))/4 + (t*exp(t))/4

check=simplify(x3-x4)