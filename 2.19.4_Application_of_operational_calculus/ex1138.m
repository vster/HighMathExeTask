clear
syms t p
syms y(t) Y
eq1=diff(y,t,2)+diff(y,t)-2*y-exp(-t)
% y(0)=0,dy(0)=1

eq2=laplace(eq1,t,p)
% p*laplace(y(t), t, p) - y(0) - 1/(p + 1) - p*y(0) + p^2*laplace(y(t), t, p) - subs(diff(y(t), t), t, 0) - 2*laplace(y(t), t, p)

eq3=subs(eq2,[laplace(y(t),t,p) y(0) subs(diff(y(t),t),t,0)],[Y 0 1])
% Y*p - 2*Y - 1/(p + 1) + Y*p^2 - 1

Y=solve(eq3==0,Y)
% 1/(p^2 - 1)

y=ilaplace(Y,p,t)
% exp(t)/2 - exp(-t)/2
% sinh(t)