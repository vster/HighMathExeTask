clear
syms t p
syms x(t) X
eq1=diff(x,t,2)-2*diff(x,t)-t^2*exp(t)
x0=0
dx0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% exp(2*t) - 2*exp(t) - t^2*exp(t) + 1

adx0=[x0 dx0]
x4=opercalc2(eq1,adx0)
% exp(2*t) - 2*exp(t) - t^2*exp(t) + 1