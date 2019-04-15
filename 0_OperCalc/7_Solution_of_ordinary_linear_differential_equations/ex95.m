clear
syms t p
syms x(t) X
eq1=diff(x,t,4)+4*x-t^2
x0=0
dx0=0
d2x0=0
d3x0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0,subs(diff(x(t),t,t), t, 0)==d2x0,subs(diff(x(t),t,t,t), t, 0)==d3x0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% (exp(-t)*sin(t))/8 - (exp(t)*sin(t))/8 + t^2/4

adx0=[0 0 0 0]
x4=opercalc2(eq1,adx0)
% (exp(-t)*sin(t))/8 - (exp(t)*sin(t))/8 + t^2/4