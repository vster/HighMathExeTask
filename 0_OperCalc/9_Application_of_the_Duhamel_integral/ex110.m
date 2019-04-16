clear
syms t p
syms x(t) X
eq1=diff(x,t,2)+2*diff(x,t)+2*x-sin(t)
x0=0
dx0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% sin(t)/5 - (2*cos(t))/5 + (2*exp(-t)*cos(t))/5 + (exp(-t)*sin(t))/5

adx0=[x0 dx0]
x4=opercalc(eq1,adx0)
% sin(t)/5 - (2*cos(t))/5 + (2*exp(-t)*(cos(t) + sin(t)/2))/5