clear
syms t p
syms x(t) X
eq1=diff(x,t,2)+x-1/(2+cos(t))
x0=0
dx0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
% x3=dsolve(eq1,cond)
% x3=simplify(x3)
% 

adx0=[x0 dx0]
x4=opercalc(eq1,adx0)
% ilaplace(laplace(1/(cos(t) + 2), t, p)/(p^2 + 1), p, t)
% ...?

