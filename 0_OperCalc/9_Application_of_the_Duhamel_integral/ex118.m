clear
syms t p
syms x(t) X
eq1=diff(x,t,3)+diff(x,t)-1/(2+sin(t))
x0=0
dx0=0
d2x0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0,subs(diff(x(t), t,2), t, 0)==d2x0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% 

adx0=[x0 dx0 d2x0]
x4=opercalc(eq1,adx0)
% 

check=simplify(x3-x4)