clear
syms t p
syms x(t) X
eq1=diff(x,t,2)-x-sinh(t)
x0=0
dx0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% (exp(-t)*(t - exp(2*t) + t*exp(2*t) + 1))/4

adx0=[x0 dx0]
x4=opercalc(eq1,adx0)
% exp(-t)/4 - exp(t)/4 + (t*exp(-t))/4 + (t*exp(t))/4

check=simplify(x3-x4)