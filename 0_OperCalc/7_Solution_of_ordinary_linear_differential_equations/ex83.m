clear
syms t p c1 c2
syms x(t) X
eq1=diff(x,t,2)+2*diff(x,t)+10*x-2*exp(-t)*cos(3*t)
x0=c1 
dx0=c2
d2x0=0

eq2=laplace(eq1,t,p)
% 2*p*laplace(x(t), t, p) - 2*x(0) - (2*(p + 1))/((p + 1)^2 + 9) - p*x(0) + p^2*laplace(x(t), t, p) - subs(diff(x(t), t), t, 0) + 10*laplace(x(t), t, p)
eq3=subs(eq2,[laplace(x(t),t,p) x(0) subs(diff(x(t), t), t, 0)],[X x0 dx0])
% 10*X - 2*c1 - c2 - (2*(p + 1))/((p + 1)^2 + 9) + 2*X*p - c1*p + X*p^2
X=solve(eq3==0,X)
% (2*c1 + c2 + (2*(p + 1))/((p + 1)^2 + 9) + c1*p)/(p^2 + 2*p + 10)
x1=ilaplace(X,p,t)
% c1*exp(-t)*(cos(3*t) + sin(3*t)*((2*c1 + c2)/(3*c1) - 1/3)) + (t*sin(3*t)*exp(-t))/3

x2=opercalc(eq1,x0,dx0,d2x0)
% c1*exp(-t)*(cos(3*t) + sin(3*t)*((2*c1 + c2)/(3*c1) - 1/3)) + (t*sin(3*t)*exp(-t))/3

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% (exp(-t)*(c1*sin(3*t) + c2*sin(3*t) + t*sin(3*t) + 3*c1*cos(3*t)))/3

adx0=[c1 c2 0]
x4=opercalc2(eq1,adx0)
% c1*exp(-t)*(cos(3*t) + sin(3*t)*((2*c1 + c2)/(3*c1) - 1/3)) + (t*sin(3*t)*exp(-t))/3

simplify(x2-x3)
% 0
