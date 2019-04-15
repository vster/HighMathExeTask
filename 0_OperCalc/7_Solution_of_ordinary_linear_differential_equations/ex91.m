clear
syms t p
syms x(t) X
syms alfa beta
eq1=diff(x,t,3)-6*diff(x,t,2)-11*diff(x,t)-6*x
x0=0
dx0=1
d2x0=0

eq2=laplace(eq1,t,p)
% 11*x(0) - 11*p*laplace(x(t), t, p) + 6*p*x(0) - p*subs(diff(x(t), t), t, 0) - 6*p^2*laplace(x(t), t, p) + p^3*laplace(x(t), t, p) + 6*subs(diff(x(t), t), t, 0) - p^2*x(0) - subs(diff(x(t), t, t), t, 0) - 6*laplace(x(t), t, p)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)...
    subs(diff(x(t),t,t), t, 0)],[X x0 dx0 d2x0])
% X*p^3 - p - 11*X*p - 6*X*p^2 - 6*X + 6
X=solve(eq3==0,X)
% -(p - 6)/(- p^3 + 6*p^2 + 11*p + 6)
x1=ilaplace(X,p,t)
% 
x1=simplify(x1)

x2=opercalc(eq1,x0,dx0,d2x0)
% 

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0,subs(diff(x(t),t,t), t, 0)==d2x0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% 

adx0=[0 1 0]
x4=opercalc2(eq1,adx0)