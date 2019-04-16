clear
syms t p
syms x(t) X
eq1=diff(x,t,3)+diff(x,t)-exp(t)
x0=0
dx0=0
d2x0=0

cond=([x(0)==x0,subs(diff(x(t), t),t, 0)==dx0,subs(diff(x(t),t,t), t, 0)==d2x0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% exp(t)/2 + (2^(1/2)*cos(t + pi/4))/2 - 1

adx0=[x0 dx0 d2x0]
x4=opercalc(eq1,adx0)
% cos(t)/2 + exp(t)/2 - sin(t)/2 - 1

check=simplify(x3-x4)