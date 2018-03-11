syms x t;
BC=60
AC=285
v1=52
v2=20

s1=AC-x
s2=sqrt(x^2+BC^2)

t=s1/v1+s2/v2

ezplot(t,[-100 100])

dt=diff(t)

slv=solve(dt)

t3=subs(t,x,slv)
vpa(t3)

% x=25
% t=8.25