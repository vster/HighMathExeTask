clear
syms t p
syms x(t) X
eq1=t*diff(x,t,2)+diff(x,t)+t*x
x0=1
dx0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
% besselj(0, t)
