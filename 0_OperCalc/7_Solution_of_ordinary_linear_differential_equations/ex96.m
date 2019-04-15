clear
syms t p
syms x(t) X
eq1=diff(x,t,5)+2*diff(x,t,3)+diff(x,t)-(2*t+cos(t))
x0=0
dx0=0
d2x0=0
d3x0=0
d4x0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0,subs(diff(x(t),t,t), t, 0)==d2x0,...
    subs(diff(x(t),t,t,t), t, 0)==d3x0,subs(diff(x(t),t,t,t,t), t, 0)==d4x0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% 4*cos(t) + (3*sin(t))/8 - (t^2*sin(t))/8 - (3*t*cos(t))/8 + t*sin(t) + t^2 - 4

adx0=[0 0 0 0 0]
x4=opercalc2(eq1,adx0)
% 4*cos(t) - (t^2*((3*cos(t))/t - sin(t)*(3/t^2 - 1)))/8 + t*sin(t) + t^2 - 4