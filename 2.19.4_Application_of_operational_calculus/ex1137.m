clear
syms t p
syms y(t) Y
eq1=diff(y,t,2)-2*diff(y,t)-3*y-exp(3*t)
% y(0)=0,dy(0)=0

eq2=laplace(eq1,t,p)
% 2*y(0) - 2*p*laplace(y(t), t, p) - 1/(p - 3) - p*y(0) + p^2*laplace(y(t), t, p) - subs(diff(y(t), t), t, 0) - 3*laplace(y(t), t, p)

eq3= - 2*p*Y - 1/(p - 3) + p^2*Y - 3*Y
Y=solve(eq3==0,Y)
% 1/(p^3 - 5*p^2 + 3*p + 9)

y=ilaplace(Y,p,t)
% exp(-t)/16 - exp(3*t)/16 + (t*exp(3*t))/4

